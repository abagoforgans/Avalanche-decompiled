contract main {




// =====================  Runtime code  =====================


#
#  - swap(address arg1, address arg2, uint256 arg3, address arg4)
#  - sub_be022e71(?)
#  - _fallback()
#
address owner;
array of uint256 stor1;
mapping of uint8 stor2;
mapping of struct tokens;
mapping of uint8 stor4;
array of struct stor5;
mapping of address sub_df29f8e9;
array of struct sub_92a8e371;
array of struct sub_65c91c45;
address feeAddress;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint8 stor13; offset 160
uint128 stor13; offset 160
address sub_5464f3c4Address;
mapping of uint8 stor99;
array of struct stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function tokens(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return address(tokens[arg1[all]].field_0), uint256(tokens[arg1[all]].field_256), uint256(tokens[arg1[all]].field_512)
}

function uniswapV2Router() {
    return address(stor1.length)
}

function sub_2da76a99(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return bool(stor4[arg1[all]])
}

function feeAddress() {
    return feeAddress
}

function sub_5464f3c4(?) {
    return sub_5464f3c4Address
}

function sub_5ad4b222(?) {
    return stor5.length
}

function sub_65c91c45(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < uint256(sub_65c91c45[arg1].field_0)
    return address(sub_65c91c45[arg1][arg2].field_0)
}

function processedNonces(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return bool(uint8(stor2[arg1][arg2]))
}

function owner() {
    return owner
}

function sub_92a8e371(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 < uint256(sub_92a8e371[arg1].field_0)
    return address(sub_92a8e371[arg1][arg2].field_0)
}

function sub_df29f8e9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_df29f8e9[arg1]
}

function sub_9e910348(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x5be25812: stor11, arg1
    stor11 = arg1
}

function setTransferFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x940334a9: stor10, arg1
    stor10 = arg1
}

function setUniswapRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor1.length) = arg1
}

function setFeeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit FeeAddressUpdated(feeAddress, arg1);
    feeAddress = arg1
}

function setTaxEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit TaxEnabled(arg1);
    Mask(96, 0, stor13.field_160) = Mask(96, 0, arg1)
}

function sub_c5979a24(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0xed8d5d70: sub_5464f3c4Address, address(arg1)
    sub_5464f3c4Address = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_e999b2da(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) <= 0:
        revert with 0, 'Balance is zero'
    call address(arg1) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_29407841(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1).claim(address arg1) with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ea86ef5d(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1).claimWithResolver(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_8c037845(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1).setName(string arg1) with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_2efc7a94(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
    if not uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]):
        revert with 0, 'Token not registered with that name'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 3
    address(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) = address(arg2)
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    emit 0x26b201b7: sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length]), address(arg2)
}

function transferTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3:
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(arg2), arg3
    else:
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args this.address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args this.address, address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cf0ab3d1(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
    if not uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]):
        revert with 0, 'Token not registered with that name'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 3
    uint256(stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) = arg2
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 3
    uint256(stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]) = arg3
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    emit 0x95421aeb: arg2, arg3, sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length])
}

function sub_6cbd659f(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_df29f8e9[address(cd[4])] = address(cd[36])
    uint256(sub_92a8e371[address(cd[4])].field_0) = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while uint256(sub_92a8e371[address(cd[4])].field_0) > idx:
            uint256(sub_92a8e371[address(cd[4])][idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            address(sub_92a8e371[address(cd[4])][s].field_0) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while uint256(sub_92a8e371[address(cd[4])].field_0) > idx:
            uint256(sub_92a8e371[address(cd[4])][idx].field_0) = 0
            idx = idx + 1
            continue 
    uint256(sub_65c91c45[address(cd[4])].field_0) = ('cd', 100).length
    if not ('cd', 100).length:
        idx = 0
        while uint256(sub_65c91c45[address(cd[4])].field_0) > idx:
            uint256(sub_65c91c45[address(cd[4])][idx].field_0) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[100] + 36
        while cd[100] + (32 * ('cd', 100).length) + 36 > idx:
            address(sub_65c91c45[address(cd[4])][s].field_0) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
        while uint256(sub_65c91c45[address(cd[4])].field_0) > idx:
            uint256(sub_65c91c45[address(cd[4])][idx].field_0) = 0
            idx = idx + 1
            continue 
}

function sub_00523d67(?) {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 4
    if uint8(stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]):
        revert with 0, 'Token already registered with that name'
    address(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 3)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], 0) << (8 * ceil32(arg1.length)) - 256]) = uint64(arg2) << 96
    uint256(stor1[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), 0)), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 3))]) = arg3
    uint256(stor2[('map', ('mask_shl', ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('add', 256, ('mul', -1, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))))), ('add', -256, ('mask_shl', 248, 5, 3, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), 0)), ('mask_shl', ('mul', 8, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1')))))), ('cd', ('add', 4, ('param', 'arg1'))))), 0, 0, 3))]) = arg4
    uint8(stor[Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 4)][Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], 0) << (8 * ceil32(arg1.length)) - 256]) = 1
    stor5.length++
    if bool(stor36B6[stor5.length].field_0):
        if bool(stor36B6[stor5.length].field_0) == uint255(uint256(stor36B6[stor5.length].field_0)) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor[sha3(stor5.length + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0)][]) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor36B6[stor5.length].field_0) = 0
            idx = 0
            while (uint255(uint256(stor36B6[stor5.length].field_0)) * 0.5) + 31 / 32 > idx:
                uint256(stor[idx + sha3(stor5.length + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0)]) = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor36B6[stor5.length].field_0) == stor36B6[stor5.length].field_1 % 128 < 32:
            revert with 0, 34
        if arg1.length:
            uint256(stor[sha3(stor5.length + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0)][]) = Array(len=arg1.length, data=arg1[all])
        else:
            uint256(stor36B6[stor5.length].field_0) = 0
            idx = 0
            while stor36B6[stor5.length].field_1 % 128 + 31 / 32 > idx:
                uint256(stor[idx + sha3(stor5.length + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0)]) = 0
                idx = idx + 1
                continue 
    emit 0xd438b401: arg3, arg4, sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], 0) << (8 * arg1.length) - 256), address(arg2)
}

function registeredTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor5.length
    if bool(stor5[arg1].field_0):
        if bool(stor5[arg1].field_0) == uint255(uint256(stor5[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5[arg1].field_0):
            if bool(stor5[arg1].field_0) == uint255(uint256(stor5[arg1].field_0)) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, uint256(stor5[arg1].field_0)):
                if 31 < uint255(uint256(stor5[arg1].field_0)) * 0.5:
                    mem[128] = uint256(stor5[arg1].field_0)
                    idx = 128
                    s = 0
                    while (uint255(uint256(stor5[arg1].field_0)) * 0.5) + 96 > idx:
                        mem[idx + 32] = uint256(stor5[arg1 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor5[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor5[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor5[arg1].field_8)
        else:
            if bool(stor5[arg1].field_0) == stor5[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor5[arg1].field_1 % 128:
                if 31 < stor5[arg1].field_1 % 128:
                    mem[128] = uint256(stor5[arg1].field_0)
                    idx = 128
                    s = 0
                    while stor5[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = uint256(stor5[arg1 + s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint256(stor5[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor5[arg1].field_0)) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor5[arg1].field_8)
        mem[ceil32(uint255(uint256(stor5[arg1].field_0)) * 0.5) + 192 len ceil32(uint255(uint256(stor5[arg1].field_0)) * 0.5)] = mem[128 len ceil32(uint255(uint256(stor5[arg1].field_0)) * 0.5)]
        if ceil32(uint255(uint256(stor5[arg1].field_0)) * 0.5) > uint255(uint256(stor5[arg1].field_0)) * 0.5:
            mem[(uint255(uint256(stor5[arg1].field_0)) * 0.5) + ceil32(uint255(uint256(stor5[arg1].field_0)) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint256(stor5[arg1].field_0)), data=mem[128 len ceil32(uint255(uint256(stor5[arg1].field_0)) * 0.5)], mem[(2 * ceil32(uint255(uint256(stor5[arg1].field_0)) * 0.5)) + 192 len 2 * ceil32(uint255(uint256(stor5[arg1].field_0)) * 0.5)]), 
    if bool(stor5[arg1].field_0) == stor5[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor5[arg1].field_0):
        if bool(stor5[arg1].field_0) == uint255(uint256(stor5[arg1].field_0)) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, uint256(stor5[arg1].field_0)):
            if 31 < uint255(uint256(stor5[arg1].field_0)) * 0.5:
                mem[128] = uint256(stor5[arg1].field_0)
                idx = 128
                s = 0
                while (uint255(uint256(stor5[arg1].field_0)) * 0.5) + 96 > idx:
                    mem[idx + 32] = uint256(stor5[arg1 + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5[arg1].field_0 % 128, data=mem[128 len ceil32(stor5[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor5[arg1].field_8)
    else:
        if bool(stor5[arg1].field_0) == stor5[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor5[arg1].field_1 % 128:
            if 31 < stor5[arg1].field_1 % 128:
                mem[128] = uint256(stor5[arg1].field_0)
                idx = 128
                s = 0
                while stor5[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = uint256(stor5[arg1 + s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5[arg1].field_0 % 128, data=mem[128 len ceil32(stor5[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor5[arg1].field_8)
    mem[ceil32(stor5[arg1].field_1 % 128) + 192 len ceil32(stor5[arg1].field_1 % 128)] = mem[128 len ceil32(stor5[arg1].field_1 % 128)]
    if ceil32(stor5[arg1].field_1 % 128) > stor5[arg1].field_1 % 128:
        mem[stor5[arg1].field_1 % 128 + ceil32(stor5[arg1].field_1 % 128) + 192] = 0
    return Array(len=stor5[arg1].field_0 % 128, data=mem[128 len ceil32(stor5[arg1].field_1 % 128)], mem[(2 * ceil32(stor5[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor5[arg1].field_1 % 128)]), 
}

function swapTokens(address arg1, address arg2, uint256 arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall address(stor1.length).WAVAX() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2 == ext_call.return_data[12 len 20]:
        mem[ceil32(return_data.size) + 96] = 2
        mem[ceil32(return_data.size) + 128] = arg1
        staticcall address(stor1.length).WAVAX() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
        mem[(2 * ceil32(return_data.size)) + 196] = address(stor1.length)
        mem[(2 * ceil32(return_data.size)) + 228] = arg3
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + 196 len ceil32(return_data.size) + 64]
        mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 196] = arg3
        mem[(4 * ceil32(return_data.size)) + 228] = 0
        mem[(4 * ceil32(return_data.size)) + 260] = 160
        mem[(4 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = ceil32(return_data.size) + 128
        t = (4 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 292] = this.address
        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp
        require ext_code.size(address(stor1.length))
        call address(stor1.length).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 192] = arg3
        mem[(4 * ceil32(return_data.size)) + 224] = 64
        _76 = mem[ceil32(return_data.size) + 96]
        mem[(4 * ceil32(return_data.size)) + 256] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = (4 * ceil32(return_data.size)) + 288
        while idx < _76:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit SwapTokensForETH(uint256 arg1, address[] arg2):
                              arg3,
                              64,
                              mem[(4 * ceil32(return_data.size)) + 256 len (32 * _76) + 32],
    else:
        staticcall address(stor1.length).WAVAX() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg1 == ext_call.return_data[12 len 20]:
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            staticcall address(stor1.length).WAVAX() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 160] = arg2
            if 300 > !block.timestamp:
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + 192] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = 0
            mem[(4 * ceil32(return_data.size)) + 228] = 128
            mem[(4 * ceil32(return_data.size)) + 324] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 356
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 260] = this.address
            mem[(4 * ceil32(return_data.size)) + 292] = block.timestamp + 300
            require ext_code.size(address(stor1.length))
            call address(stor1.length).swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value arg3 wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), block.timestamp + 300, 2, mem[(4 * ceil32(return_data.size)) + 356 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192] = arg3
            mem[(4 * ceil32(return_data.size)) + 224] = 64
            _75 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[(4 * ceil32(return_data.size)) + 256] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 288
            while idx < _75:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                  arg3,
                                  64,
                                  mem[(4 * ceil32(return_data.size)) + 256 len (32 * _75) + 32],
        else:
            mem[(2 * ceil32(return_data.size)) + 96] = 3
            mem[(2 * ceil32(return_data.size)) + 128] = arg1
            staticcall address(stor1.length).WAVAX() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 192] = arg2
            mem[(4 * ceil32(return_data.size)) + 228] = address(stor1.length)
            mem[(4 * ceil32(return_data.size)) + 260] = arg3
            call arg1.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 228 len (5 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 120 > !block.timestamp:
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + 224] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 228] = arg3
            mem[(4 * ceil32(return_data.size)) + 260] = 0
            mem[(4 * ceil32(return_data.size)) + 292] = 160
            mem[(4 * ceil32(return_data.size)) + 388] = 3
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 420
            while idx < mem[(2 * ceil32(return_data.size)) + 96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 324] = arg4
            mem[(4 * ceil32(return_data.size)) + 356] = block.timestamp + 120
            require ext_code.size(address(stor1.length))
            call address(stor1.length).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, address(arg4), block.timestamp + 120, mem[(4 * ceil32(return_data.size)) + 388 len (32 * mem[(2 * ceil32(return_data.size)) + 96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 224] = arg3
            mem[(4 * ceil32(return_data.size)) + 256] = 64
            _74 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[(4 * ceil32(return_data.size)) + 288] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 320
            while idx < _74:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit SwapTokensForTokens(uint256 arg1, address[] arg2):
                                     arg3,
                                     64,
                                     mem[(4 * ceil32(return_data.size)) + 288 len (32 * _74) + 32],
}

function sub_14217eed(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    require arg6 == uint8(arg6)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'From Token address can not be zero address'
    if not address(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'To Token Address can not be zero address'
    if not address(arg4):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'To Address can not be zero address'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The value can not be less than zero'
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg3
    mem[196] = arg5
    mem[228] = uint8(arg6)
    mem[260] = arg7
    mem[292] = arg8
    call address(arg1).transferFromWithPermit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), this.address, arg3, arg5, arg6 << 248, arg7, arg8
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall address(stor1.length).WAVAX() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(arg2) == ext_call.return_data[12 len 20]:
        call sub_5464f3c4Address.maxTxAmount() with:
             gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg3 > ext_call.return_data[0]:
            revert with 0, 'Amount exceeds the max tx amount'
        mem[0] = address(arg1)
        mem[32] = 6
        if sub_df29f8e9[address(arg1)]:
            mem[0] = address(arg1)
            mem[32] = 8
            mem[(4 * ceil32(return_data.size)) + 96] = uint256(sub_65c91c45[address(arg1)].field_0)
            if not uint256(sub_65c91c45[address(arg1)].field_0):
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 132] = sub_df29f8e9[address(arg1)]
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 164] = arg3
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_df29f8e9[address(arg1)], arg3
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 300 > !block.timestamp:
                    revert with 0, 17
                mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128] = 0x676528d100000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 132] = arg3
                mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 164] = 0
                mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 196] = 160
                mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 292] = uint256(sub_65c91c45[address(arg1)].field_0)
                idx = 0
                s = (4 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 324
                while idx < uint256(sub_65c91c45[address(arg1)].field_0):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 228] = this.address
                mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 260] = block.timestamp + 300
                call sub_df29f8e9[address(arg1)].swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 132 len (96 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128
                require return_data.size >= 32
                _497 = mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32
                require mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 159 < (6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + return_data.size + 128
                _501 = mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]
                if mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 1 < 0 or (7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 129
                mem[(7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128] = mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]
                require _497 + (32 * _501) + 32 <= return_data.size
                mem[(7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 160 len ceil32(32 * _501)] = mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + _497 + 160 len ceil32(32 * _501)]
                _906 = mem[64]
                mem[mem[64]] = arg3
                mem[mem[64] + 32] = 64
                mem[mem[64] + 64] = uint256(sub_65c91c45[address(arg1)].field_0)
                idx = 0
                s = (4 * ceil32(return_data.size)) + 128
                t = mem[64] + 96
                while idx < uint256(sub_65c91c45[address(arg1)].field_0):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                      mem[mem[64] len _906 + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + -mem[64] + 96],
            else:
                mem[0] = sha3(address(arg1), 8)
                mem[(4 * ceil32(return_data.size)) + 128] = address(sub_65c91c45[address(arg1)].field_0)
                idx = (4 * ceil32(return_data.size)) + 128
                s = 0
                while (4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 96 > idx:
                    mem[idx + 32] = address(sub_65c91c45[address(arg1)][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 132] = sub_df29f8e9[address(arg1)]
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 164] = arg3
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_df29f8e9[address(arg1)], arg3
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 300 > !block.timestamp:
                    revert with 0, 17
                mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128] = 0x676528d100000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 132] = arg3
                mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 164] = 0
                mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 196] = 160
                mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 292] = uint256(sub_65c91c45[address(arg1)].field_0)
                idx = 0
                s = (4 * ceil32(return_data.size)) + 128
                t = (6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 324
                while idx < uint256(sub_65c91c45[address(arg1)].field_0):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 228] = this.address
                mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 260] = block.timestamp + 300
                call sub_df29f8e9[address(arg1)].swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 132 len (96 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128
                require return_data.size >= 32
                _1524 = mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32
                require mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 159 < (6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + return_data.size + 128
                _1527 = mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]
                if mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 1 < 0 or (7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 129
                mem[(7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128] = mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]
                require _1524 + (32 * _1527) + 32 <= return_data.size
                mem[(7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 160 len ceil32(32 * _1527)] = mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + _1524 + 160 len ceil32(32 * _1527)]
                _2098 = mem[64]
                mem[mem[64]] = arg3
                mem[mem[64] + 32] = 64
                mem[mem[64] + 64] = uint256(sub_65c91c45[address(arg1)].field_0)
                idx = 0
                s = (4 * ceil32(return_data.size)) + 128
                t = mem[64] + 96
                while idx < uint256(sub_65c91c45[address(arg1)].field_0):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                      mem[mem[64] len _2098 + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + -mem[64] + 96],
            if 1 >= mem[(7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128]:
                revert with 0, 50
            if not uint8(stor13.field_160):
                call address(arg4) with:
                   value mem[(7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] wei
                     gas 2300 * is_zero(value) wei
            else:
                if mem[(7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] and stor10 > -1 / mem[(7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192]:
                    revert with 0, 17
                if not stor12:
                    revert with 0, 18
                call feeAddress with:
                   value mem[(7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] * stor10 / stor12 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[(7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] and stor11 > -1 / mem[(7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192]:
                    revert with 0, 17
                if not stor12:
                    revert with 0, 18
                call sub_5464f3c4Address with:
                   value mem[(7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] * stor11 / stor12 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[(7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] < mem[(7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] * stor10 / stor12:
                    revert with 0, 17
                if mem[(7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] - (mem[(7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] * stor10 / stor12) < mem[(7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] * stor11 / stor12:
                    revert with 0, 17
                call address(arg4) with:
                   value mem[(7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] - (mem[(7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] * stor10 / stor12) - (mem[(7 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] * stor11 / stor12) wei
                     gas 2300 * is_zero(value) wei
        else:
            mem[(4 * ceil32(return_data.size)) + 96] = 2
            mem[(4 * ceil32(return_data.size)) + 128] = address(arg1)
            staticcall address(stor1.length).WAVAX() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
            mem[(6 * ceil32(return_data.size)) + 196] = address(stor1.length)
            mem[(6 * ceil32(return_data.size)) + 228] = arg3
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(stor1.length), arg3, mem[(6 * ceil32(return_data.size)) + 260 len 9 * ceil32(return_data.size)]
            mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 300 > !block.timestamp:
                revert with 0, 17
            mem[(8 * ceil32(return_data.size)) + 192] = 0x676528d100000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 196] = arg3
            mem[(8 * ceil32(return_data.size)) + 228] = 0
            mem[(8 * ceil32(return_data.size)) + 260] = 160
            mem[(8 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = (8 * ceil32(return_data.size)) + 388
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + 292] = this.address
            mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp + 300
            call address(stor1.length).swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, address(this.address), block.timestamp + 300, 2, mem[(8 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _498 = mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
            require mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (8 * ceil32(return_data.size)) + return_data.size + 192
            _502 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0 or (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
            mem[(10 * ceil32(return_data.size)) + 192] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require _498 + (32 * _502) + 32 <= return_data.size
            mem[(10 * ceil32(return_data.size)) + 224 len ceil32(32 * _502)] = mem[(8 * ceil32(return_data.size)) + _498 + 224 len ceil32(32 * _502)]
            _908 = mem[64]
            mem[mem[64]] = arg3
            mem[mem[64] + 32] = 64
            _914 = mem[(4 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 64] = mem[(4 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (4 * ceil32(return_data.size)) + 128
            t = mem[64] + 96
            while idx < _914:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                  mem[mem[64] len _908 + (32 * _914) + -mem[64] + 96],
            if 1 >= mem[(10 * ceil32(return_data.size)) + 192]:
                revert with 0, 50
            if not uint8(stor13.field_160):
                call address(arg4) with:
                   value mem[(10 * ceil32(return_data.size)) + 256] wei
                     gas 2300 * is_zero(value) wei
            else:
                if mem[(10 * ceil32(return_data.size)) + 256] and stor10 > -1 / mem[(10 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if not stor12:
                    revert with 0, 18
                call feeAddress with:
                   value mem[(10 * ceil32(return_data.size)) + 256] * stor10 / stor12 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[(10 * ceil32(return_data.size)) + 256] and stor11 > -1 / mem[(10 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if not stor12:
                    revert with 0, 18
                call sub_5464f3c4Address with:
                   value mem[(10 * ceil32(return_data.size)) + 256] * stor11 / stor12 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[(10 * ceil32(return_data.size)) + 256] < mem[(10 * ceil32(return_data.size)) + 256] * stor10 / stor12:
                    revert with 0, 17
                if mem[(10 * ceil32(return_data.size)) + 256] - (mem[(10 * ceil32(return_data.size)) + 256] * stor10 / stor12) < mem[(10 * ceil32(return_data.size)) + 256] * stor11 / stor12:
                    revert with 0, 17
                call address(arg4) with:
                   value mem[(10 * ceil32(return_data.size)) + 256] - (mem[(10 * ceil32(return_data.size)) + 256] * stor10 / stor12) - (mem[(10 * ceil32(return_data.size)) + 256] * stor11 / stor12) wei
                     gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        mem[0] = address(arg1)
        mem[32] = 6
        if sub_df29f8e9[address(arg1)]:
            mem[0] = address(arg1)
            mem[32] = 8
            mem[(2 * ceil32(return_data.size)) + 96] = uint256(sub_65c91c45[address(arg1)].field_0)
            if not uint256(sub_65c91c45[address(arg1)].field_0):
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 132] = sub_df29f8e9[address(arg1)]
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 164] = arg3
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_df29f8e9[address(arg1)], arg3
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 300 > !block.timestamp:
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128] = 0x676528d100000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 132] = arg3
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 164] = 0
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 196] = 160
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 292] = uint256(sub_65c91c45[address(arg1)].field_0)
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 324
                while idx < uint256(sub_65c91c45[address(arg1)].field_0):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 228] = this.address
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 260] = block.timestamp + 300
                call sub_df29f8e9[address(arg1)].swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 132 len (96 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128
                require return_data.size >= 32
                _495 = mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32
                require mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 159 < (4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + return_data.size + 128
                _499 = mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]
                if mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 1 < 0 or (6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 129
                mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128] = mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]
                require _495 + (32 * _499) + 32 <= return_data.size
                mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 160 len ceil32(32 * _499)] = mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + _495 + 160 len ceil32(32 * _499)]
                _903 = mem[64]
                mem[mem[64]] = arg3
                mem[mem[64] + 32] = 64
                _909 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = mem[64] + 96
                while idx < _909:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                      mem[mem[64] len _903 + (32 * _909) + -mem[64] + 96],
                if 1 >= mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128]:
                    revert with 0, 50
                _1517 = mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192]
                if not uint8(stor13.field_160):
                    mem[0] = address(arg2)
                    mem[32] = 6
                    if sub_df29f8e9[address(arg2)]:
                        mem[0] = address(arg2)
                        mem[32] = 7
                        _1535 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(sub_92a8e371[address(arg2)].field_0)) + 32
                        mem[_1535] = uint256(sub_92a8e371[address(arg2)].field_0)
                        if not uint256(sub_92a8e371[address(arg2)].field_0):
                            if 300 > !block.timestamp:
                                revert with 0, 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = uint256(sub_92a8e371[address(arg2)].field_0)
                            idx = 0
                            s = _1535 + 32
                            t = mem[64] + 164
                            while idx < uint256(sub_92a8e371[address(arg2)].field_0):
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 300
                            call sub_df29f8e9[address(arg2)].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value _1517 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, uint256(sub_92a8e371[address(arg2)].field_0), mem[mem[64] + 164 len 32 * uint256(sub_92a8e371[address(arg2)].field_0)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2111 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2125 = mem[_2111]
                            require mem[_2111] <= test266151307()
                            require _2111 + mem[_2111] + 31 < _2111 + return_data.size
                            _2139 = mem[_2111 + mem[_2111]]
                            if mem[_2111 + mem[_2111]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_2111 + mem[_2111]]) + 1 < 0 or _2111 + ceil32(return_data.size) + ceil32(32 * mem[_2111 + mem[_2111]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _2111 + ceil32(return_data.size) + ceil32(32 * mem[_2111 + mem[_2111]]) + 1
                            mem[_2111 + ceil32(return_data.size)] = _2139
                            require _2125 + (32 * _2139) + 32 <= return_data.size
                            mem[_2111 + ceil32(return_data.size) + 32 len ceil32(32 * _2139)] = mem[_2111 + _2125 + 32 len ceil32(32 * _2139)]
                            _2567 = mem[64]
                            mem[mem[64]] = _1517
                            mem[mem[64] + 32] = 64
                            _2583 = mem[_1535]
                            mem[mem[64] + 64] = mem[_1535]
                            idx = 0
                            s = _1535 + 32
                            t = mem[64] + 96
                            while idx < _2583:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  mem[mem[64] len _2567 + (32 * _2583) + -mem[64] + 96],
                            if 1 >= mem[_2111 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _3101 = mem[_2111 + ceil32(return_data.size) + 64]
                            call sub_5464f3c4Address.maxTxAmount() with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3147 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if _3101 > mem[_3147]:
                                revert with 0, 'Amount exceeds the max tx amount'
                            mem[mem[64] + 4] = address(arg4)
                            mem[mem[64] + 36] = _3101
                            call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), _3101
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3237 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3237] == bool(mem[_3237])
                        else:
                            mem[0] = sha3(address(arg2), 7)
                            mem[_1535 + 32] = address(sub_92a8e371[address(arg2)].field_0)
                            if (32 * uint256(sub_92a8e371[address(arg2)].field_0)) + 32 <= 64:
                                if 300 > !block.timestamp:
                                    revert with 0, 17
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = uint256(sub_92a8e371[address(arg2)].field_0)
                                idx = 0
                                s = _1535 + 32
                                t = mem[64] + 164
                                while idx < uint256(sub_92a8e371[address(arg2)].field_0):
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = block.timestamp + 300
                                call sub_df29f8e9[address(arg2)].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value _1517 wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 300, uint256(sub_92a8e371[address(arg2)].field_0), mem[mem[64] + 164 len 32 * uint256(sub_92a8e371[address(arg2)].field_0)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2112 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2126 = mem[_2112]
                                require mem[_2112] <= test266151307()
                                require _2112 + mem[_2112] + 31 < _2112 + return_data.size
                                _2140 = mem[_2112 + mem[_2112]]
                                if mem[_2112 + mem[_2112]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_2112 + mem[_2112]]) + 1 < 0 or _2112 + ceil32(return_data.size) + ceil32(32 * mem[_2112 + mem[_2112]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _2112 + ceil32(return_data.size) + ceil32(32 * mem[_2112 + mem[_2112]]) + 1
                                mem[_2112 + ceil32(return_data.size)] = _2140
                                require _2126 + (32 * _2140) + 32 <= return_data.size
                                mem[_2112 + ceil32(return_data.size) + 32 len ceil32(32 * _2140)] = mem[_2112 + _2126 + 32 len ceil32(32 * _2140)]
                                _2568 = mem[64]
                                mem[mem[64]] = _1517
                                mem[mem[64] + 32] = 64
                                _2585 = mem[_1535]
                                mem[mem[64] + 64] = mem[_1535]
                                idx = 0
                                s = _1535 + 32
                                t = mem[64] + 96
                                while idx < _2585:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                      mem[mem[64] len _2568 + (32 * _2585) + -mem[64] + 96],
                                if 1 >= mem[_2112 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _3103 = mem[_2112 + ceil32(return_data.size) + 64]
                                call sub_5464f3c4Address.maxTxAmount() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3149 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3103 > mem[_3149]:
                                    revert with 0, 'Amount exceeds the max tx amount'
                                mem[mem[64] + 4] = address(arg4)
                                mem[mem[64] + 36] = _3103
                                call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), _3103
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3239 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3239] == bool(mem[_3239])
                            else:
                                mem[_1535 + 64] = address(sub_92a8e371[address(arg2)].field_256)
                                idx = _1535 + 64
                                s = 1
                                while _1535 + (32 * uint256(sub_92a8e371[address(arg2)].field_0)) > idx:
                                    mem[idx + 32] = address(sub_92a8e371[address(arg2)][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if 300 > !block.timestamp:
                                    revert with 0, 17
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = uint256(sub_92a8e371[address(arg2)].field_0)
                                idx = 0
                                s = _1535 + 32
                                t = mem[64] + 164
                                while idx < uint256(sub_92a8e371[address(arg2)].field_0):
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = block.timestamp + 300
                                call sub_df29f8e9[address(arg2)].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value _1517 wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 300, uint256(sub_92a8e371[address(arg2)].field_0), mem[mem[64] + 164 len 32 * uint256(sub_92a8e371[address(arg2)].field_0)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3102 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3148 = mem[_3102]
                                require mem[_3102] <= test266151307()
                                require _3102 + mem[_3102] + 31 < _3102 + return_data.size
                                _3170 = mem[_3102 + mem[_3102]]
                                if mem[_3102 + mem[_3102]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_3102 + mem[_3102]]) + 1 < 0 or _3102 + ceil32(return_data.size) + ceil32(32 * mem[_3102 + mem[_3102]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _3102 + ceil32(return_data.size) + ceil32(32 * mem[_3102 + mem[_3102]]) + 1
                                mem[_3102 + ceil32(return_data.size)] = _3170
                                require _3148 + (32 * _3170) + 32 <= return_data.size
                                mem[_3102 + ceil32(return_data.size) + 32 len ceil32(32 * _3170)] = mem[_3102 + _3148 + 32 len ceil32(32 * _3170)]
                                _3453 = mem[64]
                                mem[mem[64]] = _1517
                                mem[mem[64] + 32] = 64
                                _3463 = mem[_1535]
                                mem[mem[64] + 64] = mem[_1535]
                                idx = 0
                                s = _1535 + 32
                                t = mem[64] + 96
                                while idx < _3463:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                      mem[mem[64] len _3453 + (32 * _3463) + -mem[64] + 96],
                                if 1 >= mem[_3102 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _3697 = mem[_3102 + ceil32(return_data.size) + 64]
                                call sub_5464f3c4Address.maxTxAmount() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3729 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3697 > mem[_3729]:
                                    revert with 0, 'Amount exceeds the max tx amount'
                                mem[mem[64] + 4] = address(arg4)
                                mem[mem[64] + 36] = _3697
                                call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), _3697
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3785 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3785] == bool(mem[_3785])
                    else:
                        _1536 = mem[64]
                        staticcall address(stor1.length).WAVAX() with:
                                gas gas_remaining wei
                        mem[mem[64] + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= mem[_1536]:
                            revert with 0, 50
                        mem[_1536 + 32] = ext_call.return_data[12 len 20]
                        if 1 >= mem[_1536]:
                            revert with 0, 50
                        mem[_1536 + 64] = address(arg2)
                        if 300 > !block.timestamp:
                            revert with 0, 17
                        mem[_1536 + ceil32(return_data.size) + 96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[_1536 + ceil32(return_data.size) + 100] = 0
                        mem[_1536 + ceil32(return_data.size) + 132] = 128
                        mem[_1536 + ceil32(return_data.size) + 228] = mem[_1536]
                        idx = 0
                        s = _1536 + 32
                        t = _1536 + ceil32(return_data.size) + 260
                        while idx < mem[_1536]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1536 + ceil32(return_data.size) + 164] = this.address
                        mem[_1536 + ceil32(return_data.size) + 196] = block.timestamp + 300
                        call address(stor1.length).mem[mem[64] len 4] with:
                           value _1517 wei
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _1536 + ceil32(return_data.size) + (32 * mem[_1536]) + -mem[64] + 256]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2113 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2127 = mem[_2113]
                        require mem[_2113] <= test266151307()
                        require _2113 + mem[_2113] + 31 < _2113 + return_data.size
                        _2141 = mem[_2113 + mem[_2113]]
                        if mem[_2113 + mem[_2113]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_2113 + mem[_2113]]) + 1 < 0 or _2113 + ceil32(return_data.size) + ceil32(32 * mem[_2113 + mem[_2113]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _2113 + ceil32(return_data.size) + ceil32(32 * mem[_2113 + mem[_2113]]) + 1
                        mem[_2113 + ceil32(return_data.size)] = _2141
                        require _2127 + (32 * _2141) + 32 <= return_data.size
                        mem[_2113 + ceil32(return_data.size) + 32 len ceil32(32 * _2141)] = mem[_2113 + _2127 + 32 len ceil32(32 * _2141)]
                        _2569 = mem[64]
                        mem[mem[64]] = _1517
                        mem[mem[64] + 32] = 64
                        _2586 = mem[_1536]
                        mem[mem[64] + 64] = mem[_1536]
                        idx = 0
                        s = _1536 + 32
                        t = mem[64] + 96
                        while idx < _2586:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              mem[mem[64] len _2569 + (32 * _2586) + -mem[64] + 96],
                        if 1 >= mem[_2113 + ceil32(return_data.size)]:
                            revert with 0, 50
                        _3104 = mem[_2113 + ceil32(return_data.size) + 64]
                        call sub_5464f3c4Address.maxTxAmount() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3150 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if _3104 > mem[_3150]:
                            revert with 0, 'Amount exceeds the max tx amount'
                        mem[mem[64] + 4] = address(arg4)
                        mem[mem[64] + 36] = _3104
                        call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), _3104
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3241 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3241] == bool(mem[_3241])
                else:
                    if mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] and stor10 > -1 / mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192]:
                        revert with 0, 17
                    if not stor12:
                        revert with 0, 18
                    call feeAddress with:
                       value mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] * stor10 / stor12 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] and stor11 > -1 / mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192]:
                        revert with 0, 17
                    if not stor12:
                        revert with 0, 18
                    call sub_5464f3c4Address with:
                       value mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] * stor11 / stor12 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] < mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] * stor10 / stor12:
                        revert with 0, 17
                    if mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] - (mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] * stor10 / stor12) < mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] * stor11 / stor12:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = 6
                    if not sub_df29f8e9[address(arg2)]:
                        _1697 = mem[64]
                        staticcall address(stor1.length).WAVAX() with:
                                gas gas_remaining wei
                        mem[mem[64] + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= mem[_1697]:
                            revert with 0, 50
                        mem[_1697 + 32] = ext_call.return_data[12 len 20]
                        if 1 >= mem[_1697]:
                            revert with 0, 50
                        mem[_1697 + 64] = address(arg2)
                        if 300 > !block.timestamp:
                            revert with 0, 17
                        mem[_1697 + ceil32(return_data.size) + 96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[_1697 + ceil32(return_data.size) + 100] = 0
                        mem[_1697 + ceil32(return_data.size) + 132] = 128
                        mem[_1697 + ceil32(return_data.size) + 228] = mem[_1697]
                        idx = 0
                        s = _1697 + 32
                        t = _1697 + ceil32(return_data.size) + 260
                        while idx < mem[_1697]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1697 + ceil32(return_data.size) + 164] = this.address
                        mem[_1697 + ceil32(return_data.size) + 196] = block.timestamp + 300
                        call address(stor1.length).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value _1517 - (_1517 * stor10 / stor12) - (_1517 * stor11 / stor12) wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, mem[_1697 + ceil32(return_data.size) + 228 len (32 * mem[_1697]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1697 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _1697 + (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _2130 = mem[_1697 + ceil32(return_data.size) + 96 len 4], 0
                        require mem[_1697 + ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
                        require _1697 + ceil32(return_data.size) + mem[_1697 + ceil32(return_data.size) + 96 len 4], 0 + 127 < _1697 + ceil32(return_data.size) + return_data.size + 96
                        _2144 = mem[_1697 + ceil32(return_data.size) + mem[_1697 + ceil32(return_data.size) + 96 len 4], 0 + 96]
                        if mem[_1697 + ceil32(return_data.size) + mem[_1697 + ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_1697 + ceil32(return_data.size) + mem[_1697 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0 or _1697 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1697 + ceil32(return_data.size) + mem[_1697 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = _1697 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1697 + ceil32(return_data.size) + mem[_1697 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97
                        mem[_1697 + (2 * ceil32(return_data.size)) + 96] = mem[_1697 + ceil32(return_data.size) + mem[_1697 + ceil32(return_data.size) + 96 len 4], 0 + 96]
                        require _2130 + (32 * _2144) + 32 <= return_data.size
                        mem[_1697 + (2 * ceil32(return_data.size)) + 128 len ceil32(32 * _2144)] = mem[_1697 + ceil32(return_data.size) + _2130 + 128 len ceil32(32 * _2144)]
                        _2572 = mem[64]
                        mem[mem[64]] = _1517 - (_1517 * stor10 / stor12) - (_1517 * stor11 / stor12)
                        mem[mem[64] + 32] = 64
                        _2590 = mem[_1697]
                        mem[mem[64] + 64] = mem[_1697]
                        idx = 0
                        s = _1697 + 32
                        t = mem[64] + 96
                        while idx < _2590:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              mem[mem[64] len _2572 + (32 * _2590) + -mem[64] + 96],
                        if 1 >= mem[_1697 + (2 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        _3108 = mem[_1697 + (2 * ceil32(return_data.size)) + 160]
                        call sub_5464f3c4Address.maxTxAmount() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3154 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if _3108 > mem[_3154]:
                            revert with 0, 'Amount exceeds the max tx amount'
                        mem[mem[64] + 4] = address(arg4)
                        mem[mem[64] + 36] = _3108
                        call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), _3108
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3247 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3247] == bool(mem[_3247])
                    else:
                        mem[0] = address(arg2)
                        mem[32] = 7
                        _1696 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(sub_92a8e371[address(arg2)].field_0)) + 32
                        mem[_1696] = uint256(sub_92a8e371[address(arg2)].field_0)
                        if not uint256(sub_92a8e371[address(arg2)].field_0):
                            if 300 > !block.timestamp:
                                revert with 0, 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = uint256(sub_92a8e371[address(arg2)].field_0)
                            idx = 0
                            s = _1696 + 32
                            t = mem[64] + 164
                            while idx < uint256(sub_92a8e371[address(arg2)].field_0):
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 300
                            call sub_df29f8e9[address(arg2)].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value _1517 - (_1517 * stor10 / stor12) - (_1517 * stor11 / stor12) wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, uint256(sub_92a8e371[address(arg2)].field_0), mem[mem[64] + 164 len 32 * uint256(sub_92a8e371[address(arg2)].field_0)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2114 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2128 = mem[_2114]
                            require mem[_2114] <= test266151307()
                            require _2114 + mem[_2114] + 31 < _2114 + return_data.size
                            _2142 = mem[_2114 + mem[_2114]]
                            if mem[_2114 + mem[_2114]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_2114 + mem[_2114]]) + 1 < 0 or _2114 + ceil32(return_data.size) + ceil32(32 * mem[_2114 + mem[_2114]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _2114 + ceil32(return_data.size) + ceil32(32 * mem[_2114 + mem[_2114]]) + 1
                            mem[_2114 + ceil32(return_data.size)] = _2142
                            require _2128 + (32 * _2142) + 32 <= return_data.size
                            mem[_2114 + ceil32(return_data.size) + 32 len ceil32(32 * _2142)] = mem[_2114 + _2128 + 32 len ceil32(32 * _2142)]
                            _2570 = mem[64]
                            mem[mem[64]] = _1517 - (_1517 * stor10 / stor12) - (_1517 * stor11 / stor12)
                            mem[mem[64] + 32] = 64
                            _2587 = mem[_1696]
                            mem[mem[64] + 64] = mem[_1696]
                            idx = 0
                            s = _1696 + 32
                            t = mem[64] + 96
                            while idx < _2587:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  mem[mem[64] len _2570 + (32 * _2587) + -mem[64] + 96],
                            if 1 >= mem[_2114 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _3105 = mem[_2114 + ceil32(return_data.size) + 64]
                            call sub_5464f3c4Address.maxTxAmount() with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3151 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if _3105 > mem[_3151]:
                                revert with 0, 'Amount exceeds the max tx amount'
                            mem[mem[64] + 4] = address(arg4)
                            mem[mem[64] + 36] = _3105
                            call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), _3105
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3243 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3243] == bool(mem[_3243])
                        else:
                            mem[0] = sha3(address(arg2), 7)
                            mem[_1696 + 32] = address(sub_92a8e371[address(arg2)].field_0)
                            if (32 * uint256(sub_92a8e371[address(arg2)].field_0)) + 32 <= 64:
                                if 300 > !block.timestamp:
                                    revert with 0, 17
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = uint256(sub_92a8e371[address(arg2)].field_0)
                                idx = 0
                                s = _1696 + 32
                                t = mem[64] + 164
                                while idx < uint256(sub_92a8e371[address(arg2)].field_0):
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = block.timestamp + 300
                                call sub_df29f8e9[address(arg2)].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value _1517 - (_1517 * stor10 / stor12) - (_1517 * stor11 / stor12) wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 300, uint256(sub_92a8e371[address(arg2)].field_0), mem[mem[64] + 164 len 32 * uint256(sub_92a8e371[address(arg2)].field_0)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2115 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2129 = mem[_2115]
                                require mem[_2115] <= test266151307()
                                require _2115 + mem[_2115] + 31 < _2115 + return_data.size
                                _2143 = mem[_2115 + mem[_2115]]
                                if mem[_2115 + mem[_2115]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_2115 + mem[_2115]]) + 1 < 0 or _2115 + ceil32(return_data.size) + ceil32(32 * mem[_2115 + mem[_2115]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _2115 + ceil32(return_data.size) + ceil32(32 * mem[_2115 + mem[_2115]]) + 1
                                mem[_2115 + ceil32(return_data.size)] = _2143
                                require _2129 + (32 * _2143) + 32 <= return_data.size
                                mem[_2115 + ceil32(return_data.size) + 32 len ceil32(32 * _2143)] = mem[_2115 + _2129 + 32 len ceil32(32 * _2143)]
                                _2571 = mem[64]
                                mem[mem[64]] = _1517 - (_1517 * stor10 / stor12) - (_1517 * stor11 / stor12)
                                mem[mem[64] + 32] = 64
                                _2589 = mem[_1696]
                                mem[mem[64] + 64] = mem[_1696]
                                idx = 0
                                s = _1696 + 32
                                t = mem[64] + 96
                                while idx < _2589:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                      mem[mem[64] len _2571 + (32 * _2589) + -mem[64] + 96],
                                if 1 >= mem[_2115 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _3107 = mem[_2115 + ceil32(return_data.size) + 64]
                                call sub_5464f3c4Address.maxTxAmount() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3153 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3107 > mem[_3153]:
                                    revert with 0, 'Amount exceeds the max tx amount'
                                mem[mem[64] + 4] = address(arg4)
                                mem[mem[64] + 36] = _3107
                                call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), _3107
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3245 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3245] == bool(mem[_3245])
                            else:
                                mem[_1696 + 64] = address(sub_92a8e371[address(arg2)].field_256)
                                idx = _1696 + 64
                                s = 1
                                while _1696 + (32 * uint256(sub_92a8e371[address(arg2)].field_0)) > idx:
                                    mem[idx + 32] = address(sub_92a8e371[address(arg2)][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if 300 > !block.timestamp:
                                    revert with 0, 17
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = uint256(sub_92a8e371[address(arg2)].field_0)
                                idx = 0
                                s = _1696 + 32
                                t = mem[64] + 164
                                while idx < uint256(sub_92a8e371[address(arg2)].field_0):
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = block.timestamp + 300
                                call sub_df29f8e9[address(arg2)].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value _1517 - (_1517 * stor10 / stor12) - (_1517 * stor11 / stor12) wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 300, uint256(sub_92a8e371[address(arg2)].field_0), mem[mem[64] + 164 len 32 * uint256(sub_92a8e371[address(arg2)].field_0)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3106 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3152 = mem[_3106]
                                require mem[_3106] <= test266151307()
                                require _3106 + mem[_3106] + 31 < _3106 + return_data.size
                                _3174 = mem[_3106 + mem[_3106]]
                                if mem[_3106 + mem[_3106]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_3106 + mem[_3106]]) + 1 < 0 or _3106 + ceil32(return_data.size) + ceil32(32 * mem[_3106 + mem[_3106]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _3106 + ceil32(return_data.size) + ceil32(32 * mem[_3106 + mem[_3106]]) + 1
                                mem[_3106 + ceil32(return_data.size)] = _3174
                                require _3152 + (32 * _3174) + 32 <= return_data.size
                                mem[_3106 + ceil32(return_data.size) + 32 len ceil32(32 * _3174)] = mem[_3106 + _3152 + 32 len ceil32(32 * _3174)]
                                _3454 = mem[64]
                                mem[mem[64]] = _1517 - (_1517 * stor10 / stor12) - (_1517 * stor11 / stor12)
                                mem[mem[64] + 32] = 64
                                _3464 = mem[_1696]
                                mem[mem[64] + 64] = mem[_1696]
                                idx = 0
                                s = _1696 + 32
                                t = mem[64] + 96
                                while idx < _3464:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                      mem[mem[64] len _3454 + (32 * _3464) + -mem[64] + 96],
                                if 1 >= mem[_3106 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _3698 = mem[_3106 + ceil32(return_data.size) + 64]
                                call sub_5464f3c4Address.maxTxAmount() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3730 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3698 > mem[_3730]:
                                    revert with 0, 'Amount exceeds the max tx amount'
                                mem[mem[64] + 4] = address(arg4)
                                mem[mem[64] + 36] = _3698
                                call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), _3698
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3787 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3787] == bool(mem[_3787])
            else:
                mem[0] = sha3(address(arg1), 8)
                mem[(2 * ceil32(return_data.size)) + 128] = address(sub_65c91c45[address(arg1)].field_0)
                idx = (2 * ceil32(return_data.size)) + 128
                s = 0
                while (2 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 96 > idx:
                    mem[idx + 32] = address(sub_65c91c45[address(arg1)][s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 132] = sub_df29f8e9[address(arg1)]
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 164] = arg3
                call address(arg1).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args sub_df29f8e9[address(arg1)], arg3
                mem[(2 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 300 > !block.timestamp:
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128] = 0x676528d100000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 132] = arg3
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 164] = 0
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 196] = 160
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 292] = uint256(sub_65c91c45[address(arg1)].field_0)
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = (4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 324
                while idx < uint256(sub_65c91c45[address(arg1)].field_0):
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 228] = this.address
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 260] = block.timestamp + 300
                call sub_df29f8e9[address(arg1)].swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 132 len (96 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128
                require return_data.size >= 32
                _1523 = mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32
                require mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 159 < (4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + return_data.size + 128
                _1525 = mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]
                if mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 1 < 0 or (6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 129
                mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128] = mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]
                require _1523 + (32 * _1525) + 32 <= return_data.size
                mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 160 len ceil32(32 * _1525)] = mem[(4 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + _1523 + 160 len ceil32(32 * _1525)]
                _2097 = mem[64]
                mem[mem[64]] = arg3
                mem[mem[64] + 32] = 64
                _2117 = mem[(2 * ceil32(return_data.size)) + 96]
                mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 96]
                idx = 0
                s = (2 * ceil32(return_data.size)) + 128
                t = mem[64] + 96
                while idx < _2117:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                      mem[mem[64] len _2097 + (32 * _2117) + -mem[64] + 96],
                if 1 >= mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 128]:
                    revert with 0, 50
                _2591 = mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192]
                if not uint8(stor13.field_160):
                    mem[0] = address(arg2)
                    mem[32] = 6
                    if not sub_df29f8e9[address(arg2)]:
                        _2706 = mem[64]
                        staticcall address(stor1.length).WAVAX() with:
                                gas gas_remaining wei
                        mem[mem[64] + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= mem[_2706]:
                            revert with 0, 50
                        mem[_2706 + 32] = ext_call.return_data[12 len 20]
                        if 1 >= mem[_2706]:
                            revert with 0, 50
                        mem[_2706 + 64] = address(arg2)
                        if 300 > !block.timestamp:
                            revert with 0, 17
                        mem[_2706 + ceil32(return_data.size) + 96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[_2706 + ceil32(return_data.size) + 100] = 0
                        mem[_2706 + ceil32(return_data.size) + 132] = 128
                        mem[_2706 + ceil32(return_data.size) + 228] = mem[_2706]
                        idx = 0
                        s = _2706 + 32
                        t = _2706 + ceil32(return_data.size) + 260
                        while idx < mem[_2706]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_2706 + ceil32(return_data.size) + 164] = this.address
                        mem[_2706 + ceil32(return_data.size) + 196] = block.timestamp + 300
                        call address(stor1.length).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value _2591 wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, mem[_2706 + ceil32(return_data.size) + 228 len (32 * mem[_2706]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2706 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _2706 + (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _3157 = mem[_2706 + ceil32(return_data.size) + 96 len 4], 0
                        require mem[_2706 + ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
                        require _2706 + ceil32(return_data.size) + mem[_2706 + ceil32(return_data.size) + 96 len 4], 0 + 127 < _2706 + ceil32(return_data.size) + return_data.size + 96
                        _3179 = mem[_2706 + ceil32(return_data.size) + mem[_2706 + ceil32(return_data.size) + 96 len 4], 0 + 96]
                        if mem[_2706 + ceil32(return_data.size) + mem[_2706 + ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_2706 + ceil32(return_data.size) + mem[_2706 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0 or _2706 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_2706 + ceil32(return_data.size) + mem[_2706 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = _2706 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_2706 + ceil32(return_data.size) + mem[_2706 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97
                        mem[_2706 + (2 * ceil32(return_data.size)) + 96] = mem[_2706 + ceil32(return_data.size) + mem[_2706 + ceil32(return_data.size) + 96 len 4], 0 + 96]
                        require _3157 + (32 * _3179) + 32 <= return_data.size
                        mem[_2706 + (2 * ceil32(return_data.size)) + 128 len ceil32(32 * _3179)] = mem[_2706 + ceil32(return_data.size) + _3157 + 128 len ceil32(32 * _3179)]
                        _3457 = mem[64]
                        mem[mem[64]] = _2591
                        mem[mem[64] + 32] = 64
                        _3468 = mem[_2706]
                        mem[mem[64] + 64] = mem[_2706]
                        idx = 0
                        s = _2706 + 32
                        t = mem[64] + 96
                        while idx < _3468:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              mem[mem[64] len _3457 + (32 * _3468) + -mem[64] + 96],
                        if 1 >= mem[_2706 + (2 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        _3702 = mem[_2706 + (2 * ceil32(return_data.size)) + 160]
                        call sub_5464f3c4Address.maxTxAmount() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3734 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if _3702 > mem[_3734]:
                            revert with 0, 'Amount exceeds the max tx amount'
                        mem[mem[64] + 4] = address(arg4)
                        mem[mem[64] + 36] = _3702
                        call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), _3702
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3793 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3793] == bool(mem[_3793])
                    else:
                        mem[0] = address(arg2)
                        mem[32] = 7
                        _2705 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(sub_92a8e371[address(arg2)].field_0)) + 32
                        mem[_2705] = uint256(sub_92a8e371[address(arg2)].field_0)
                        if not uint256(sub_92a8e371[address(arg2)].field_0):
                            if 300 > !block.timestamp:
                                revert with 0, 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = uint256(sub_92a8e371[address(arg2)].field_0)
                            idx = 0
                            s = _2705 + 32
                            t = mem[64] + 164
                            while idx < uint256(sub_92a8e371[address(arg2)].field_0):
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 300
                            call sub_df29f8e9[address(arg2)].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value _2591 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, uint256(sub_92a8e371[address(arg2)].field_0), mem[mem[64] + 164 len 32 * uint256(sub_92a8e371[address(arg2)].field_0)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3109 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3155 = mem[_3109]
                            require mem[_3109] <= test266151307()
                            require _3109 + mem[_3109] + 31 < _3109 + return_data.size
                            _3177 = mem[_3109 + mem[_3109]]
                            if mem[_3109 + mem[_3109]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_3109 + mem[_3109]]) + 1 < 0 or _3109 + ceil32(return_data.size) + ceil32(32 * mem[_3109 + mem[_3109]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _3109 + ceil32(return_data.size) + ceil32(32 * mem[_3109 + mem[_3109]]) + 1
                            mem[_3109 + ceil32(return_data.size)] = _3177
                            require _3155 + (32 * _3177) + 32 <= return_data.size
                            mem[_3109 + ceil32(return_data.size) + 32 len ceil32(32 * _3177)] = mem[_3109 + _3155 + 32 len ceil32(32 * _3177)]
                            _3455 = mem[64]
                            mem[mem[64]] = _2591
                            mem[mem[64] + 32] = 64
                            _3465 = mem[_2705]
                            mem[mem[64] + 64] = mem[_2705]
                            idx = 0
                            s = _2705 + 32
                            t = mem[64] + 96
                            while idx < _3465:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  mem[mem[64] len _3455 + (32 * _3465) + -mem[64] + 96],
                            if 1 >= mem[_3109 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _3699 = mem[_3109 + ceil32(return_data.size) + 64]
                            call sub_5464f3c4Address.maxTxAmount() with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3731 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if _3699 > mem[_3731]:
                                revert with 0, 'Amount exceeds the max tx amount'
                            mem[mem[64] + 4] = address(arg4)
                            mem[mem[64] + 36] = _3699
                            call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), _3699
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3789 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3789] == bool(mem[_3789])
                        else:
                            mem[0] = sha3(address(arg2), 7)
                            mem[_2705 + 32] = address(sub_92a8e371[address(arg2)].field_0)
                            if (32 * uint256(sub_92a8e371[address(arg2)].field_0)) + 32 <= 64:
                                if 300 > !block.timestamp:
                                    revert with 0, 17
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = uint256(sub_92a8e371[address(arg2)].field_0)
                                idx = 0
                                s = _2705 + 32
                                t = mem[64] + 164
                                while idx < uint256(sub_92a8e371[address(arg2)].field_0):
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = block.timestamp + 300
                                call sub_df29f8e9[address(arg2)].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value _2591 wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 300, uint256(sub_92a8e371[address(arg2)].field_0), mem[mem[64] + 164 len 32 * uint256(sub_92a8e371[address(arg2)].field_0)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3110 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3156 = mem[_3110]
                                require mem[_3110] <= test266151307()
                                require _3110 + mem[_3110] + 31 < _3110 + return_data.size
                                _3178 = mem[_3110 + mem[_3110]]
                                if mem[_3110 + mem[_3110]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_3110 + mem[_3110]]) + 1 < 0 or _3110 + ceil32(return_data.size) + ceil32(32 * mem[_3110 + mem[_3110]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _3110 + ceil32(return_data.size) + ceil32(32 * mem[_3110 + mem[_3110]]) + 1
                                mem[_3110 + ceil32(return_data.size)] = _3178
                                require _3156 + (32 * _3178) + 32 <= return_data.size
                                mem[_3110 + ceil32(return_data.size) + 32 len ceil32(32 * _3178)] = mem[_3110 + _3156 + 32 len ceil32(32 * _3178)]
                                _3456 = mem[64]
                                mem[mem[64]] = _2591
                                mem[mem[64] + 32] = 64
                                _3467 = mem[_2705]
                                mem[mem[64] + 64] = mem[_2705]
                                idx = 0
                                s = _2705 + 32
                                t = mem[64] + 96
                                while idx < _3467:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                      mem[mem[64] len _3456 + (32 * _3467) + -mem[64] + 96],
                                if 1 >= mem[_3110 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _3701 = mem[_3110 + ceil32(return_data.size) + 64]
                                call sub_5464f3c4Address.maxTxAmount() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3733 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3701 > mem[_3733]:
                                    revert with 0, 'Amount exceeds the max tx amount'
                                mem[mem[64] + 4] = address(arg4)
                                mem[mem[64] + 36] = _3701
                                call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), _3701
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3791 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3791] == bool(mem[_3791])
                            else:
                                mem[_2705 + 64] = address(sub_92a8e371[address(arg2)].field_256)
                                idx = _2705 + 64
                                s = 1
                                while _2705 + (32 * uint256(sub_92a8e371[address(arg2)].field_0)) > idx:
                                    mem[idx + 32] = address(sub_92a8e371[address(arg2)][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if 300 > !block.timestamp:
                                    revert with 0, 17
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = uint256(sub_92a8e371[address(arg2)].field_0)
                                idx = 0
                                s = _2705 + 32
                                t = mem[64] + 164
                                while idx < uint256(sub_92a8e371[address(arg2)].field_0):
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = block.timestamp + 300
                                call sub_df29f8e9[address(arg2)].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value _2591 wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 300, uint256(sub_92a8e371[address(arg2)].field_0), mem[mem[64] + 164 len 32 * uint256(sub_92a8e371[address(arg2)].field_0)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3700 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3732 = mem[_3700]
                                require mem[_3700] <= test266151307()
                                require _3700 + mem[_3700] + 31 < _3700 + return_data.size
                                _3744 = mem[_3700 + mem[_3700]]
                                if mem[_3700 + mem[_3700]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_3700 + mem[_3700]]) + 1 < 0 or _3700 + ceil32(return_data.size) + ceil32(32 * mem[_3700 + mem[_3700]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _3700 + ceil32(return_data.size) + ceil32(32 * mem[_3700 + mem[_3700]]) + 1
                                mem[_3700 + ceil32(return_data.size)] = _3744
                                require _3732 + (32 * _3744) + 32 <= return_data.size
                                mem[_3700 + ceil32(return_data.size) + 32 len ceil32(32 * _3744)] = mem[_3700 + _3732 + 32 len ceil32(32 * _3744)]
                                _3851 = mem[64]
                                mem[mem[64]] = _2591
                                mem[mem[64] + 32] = 64
                                _3853 = mem[_2705]
                                mem[mem[64] + 64] = mem[_2705]
                                idx = 0
                                s = _2705 + 32
                                t = mem[64] + 96
                                while idx < _3853:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                      mem[mem[64] len _3851 + (32 * _3853) + -mem[64] + 96],
                                if 1 >= mem[_3700 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _3889 = mem[_3700 + ceil32(return_data.size) + 64]
                                call sub_5464f3c4Address.maxTxAmount() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3895 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3889 > mem[_3895]:
                                    revert with 0, 'Amount exceeds the max tx amount'
                                mem[mem[64] + 4] = address(arg4)
                                mem[mem[64] + 36] = _3889
                                call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), _3889
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3905 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3905] == bool(mem[_3905])
                else:
                    if mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] and stor10 > -1 / mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192]:
                        revert with 0, 17
                    if not stor12:
                        revert with 0, 18
                    call feeAddress with:
                       value mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] * stor10 / stor12 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] and stor11 > -1 / mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192]:
                        revert with 0, 17
                    if not stor12:
                        revert with 0, 18
                    call sub_5464f3c4Address with:
                       value mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] * stor11 / stor12 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] < mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] * stor10 / stor12:
                        revert with 0, 17
                    if mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] - (mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] * stor10 / stor12) < mem[(6 * ceil32(return_data.size)) + (32 * uint256(sub_65c91c45[address(arg1)].field_0)) + 192] * stor11 / stor12:
                        revert with 0, 17
                    mem[0] = address(arg2)
                    mem[32] = 6
                    if not sub_df29f8e9[address(arg2)]:
                        _2932 = mem[64]
                        staticcall address(stor1.length).WAVAX() with:
                                gas gas_remaining wei
                        mem[mem[64] + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 0 >= mem[_2932]:
                            revert with 0, 50
                        mem[_2932 + 32] = ext_call.return_data[12 len 20]
                        if 1 >= mem[_2932]:
                            revert with 0, 50
                        mem[_2932 + 64] = address(arg2)
                        if 300 > !block.timestamp:
                            revert with 0, 17
                        mem[_2932 + ceil32(return_data.size) + 96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[_2932 + ceil32(return_data.size) + 100] = 0
                        mem[_2932 + ceil32(return_data.size) + 132] = 128
                        mem[_2932 + ceil32(return_data.size) + 228] = mem[_2932]
                        idx = 0
                        s = _2932 + 32
                        t = _2932 + ceil32(return_data.size) + 260
                        while idx < mem[_2932]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_2932 + ceil32(return_data.size) + 164] = this.address
                        mem[_2932 + ceil32(return_data.size) + 196] = block.timestamp + 300
                        call address(stor1.length).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value _2591 - (_2591 * stor10 / stor12) - (_2591 * stor11 / stor12) wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, mem[_2932 + ceil32(return_data.size) + 228 len (32 * mem[_2932]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_2932 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = _2932 + (2 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        _3160 = mem[_2932 + ceil32(return_data.size) + 96 len 4], 0
                        require mem[_2932 + ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
                        require _2932 + ceil32(return_data.size) + mem[_2932 + ceil32(return_data.size) + 96 len 4], 0 + 127 < _2932 + ceil32(return_data.size) + return_data.size + 96
                        _3182 = mem[_2932 + ceil32(return_data.size) + mem[_2932 + ceil32(return_data.size) + 96 len 4], 0 + 96]
                        if mem[_2932 + ceil32(return_data.size) + mem[_2932 + ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_2932 + ceil32(return_data.size) + mem[_2932 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0 or _2932 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_2932 + ceil32(return_data.size) + mem[_2932 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307():
                            revert with 0, 65
                        mem[64] = _2932 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_2932 + ceil32(return_data.size) + mem[_2932 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97
                        mem[_2932 + (2 * ceil32(return_data.size)) + 96] = mem[_2932 + ceil32(return_data.size) + mem[_2932 + ceil32(return_data.size) + 96 len 4], 0 + 96]
                        require _3160 + (32 * _3182) + 32 <= return_data.size
                        mem[_2932 + (2 * ceil32(return_data.size)) + 128 len ceil32(32 * _3182)] = mem[_2932 + ceil32(return_data.size) + _3160 + 128 len ceil32(32 * _3182)]
                        _3460 = mem[64]
                        mem[mem[64]] = _2591 - (_2591 * stor10 / stor12) - (_2591 * stor11 / stor12)
                        mem[mem[64] + 32] = 64
                        _3472 = mem[_2932]
                        mem[mem[64] + 64] = mem[_2932]
                        idx = 0
                        s = _2932 + 32
                        t = mem[64] + 96
                        while idx < _3472:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              mem[mem[64] len _3460 + (32 * _3472) + -mem[64] + 96],
                        if 1 >= mem[_2932 + (2 * ceil32(return_data.size)) + 96]:
                            revert with 0, 50
                        _3706 = mem[_2932 + (2 * ceil32(return_data.size)) + 160]
                        call sub_5464f3c4Address.maxTxAmount() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3738 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if _3706 > mem[_3738]:
                            revert with 0, 'Amount exceeds the max tx amount'
                        mem[mem[64] + 4] = address(arg4)
                        mem[mem[64] + 36] = _3706
                        call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), _3706
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3799 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3799] == bool(mem[_3799])
                    else:
                        mem[0] = address(arg2)
                        mem[32] = 7
                        _2931 = mem[64]
                        mem[64] = mem[64] + (32 * uint256(sub_92a8e371[address(arg2)].field_0)) + 32
                        mem[_2931] = uint256(sub_92a8e371[address(arg2)].field_0)
                        if not uint256(sub_92a8e371[address(arg2)].field_0):
                            if 300 > !block.timestamp:
                                revert with 0, 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = uint256(sub_92a8e371[address(arg2)].field_0)
                            idx = 0
                            s = _2931 + 32
                            t = mem[64] + 164
                            while idx < uint256(sub_92a8e371[address(arg2)].field_0):
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 300
                            call sub_df29f8e9[address(arg2)].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value _2591 - (_2591 * stor10 / stor12) - (_2591 * stor11 / stor12) wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, uint256(sub_92a8e371[address(arg2)].field_0), mem[mem[64] + 164 len 32 * uint256(sub_92a8e371[address(arg2)].field_0)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3112 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3158 = mem[_3112]
                            require mem[_3112] <= test266151307()
                            require _3112 + mem[_3112] + 31 < _3112 + return_data.size
                            _3180 = mem[_3112 + mem[_3112]]
                            if mem[_3112 + mem[_3112]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_3112 + mem[_3112]]) + 1 < 0 or _3112 + ceil32(return_data.size) + ceil32(32 * mem[_3112 + mem[_3112]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _3112 + ceil32(return_data.size) + ceil32(32 * mem[_3112 + mem[_3112]]) + 1
                            mem[_3112 + ceil32(return_data.size)] = _3180
                            require _3158 + (32 * _3180) + 32 <= return_data.size
                            mem[_3112 + ceil32(return_data.size) + 32 len ceil32(32 * _3180)] = mem[_3112 + _3158 + 32 len ceil32(32 * _3180)]
                            _3458 = mem[64]
                            mem[mem[64]] = _2591 - (_2591 * stor10 / stor12) - (_2591 * stor11 / stor12)
                            mem[mem[64] + 32] = 64
                            _3469 = mem[_2931]
                            mem[mem[64] + 64] = mem[_2931]
                            idx = 0
                            s = _2931 + 32
                            t = mem[64] + 96
                            while idx < _3469:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  mem[mem[64] len _3458 + (32 * _3469) + -mem[64] + 96],
                            if 1 >= mem[_3112 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _3703 = mem[_3112 + ceil32(return_data.size) + 64]
                            call sub_5464f3c4Address.maxTxAmount() with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3735 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if _3703 > mem[_3735]:
                                revert with 0, 'Amount exceeds the max tx amount'
                            mem[mem[64] + 4] = address(arg4)
                            mem[mem[64] + 36] = _3703
                            call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), _3703
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3795 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3795] == bool(mem[_3795])
                        else:
                            mem[0] = sha3(address(arg2), 7)
                            mem[_2931 + 32] = address(sub_92a8e371[address(arg2)].field_0)
                            if (32 * uint256(sub_92a8e371[address(arg2)].field_0)) + 32 <= 64:
                                if 300 > !block.timestamp:
                                    revert with 0, 17
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = uint256(sub_92a8e371[address(arg2)].field_0)
                                idx = 0
                                s = _2931 + 32
                                t = mem[64] + 164
                                while idx < uint256(sub_92a8e371[address(arg2)].field_0):
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = block.timestamp + 300
                                call sub_df29f8e9[address(arg2)].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value _2591 - (_2591 * stor10 / stor12) - (_2591 * stor11 / stor12) wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 300, uint256(sub_92a8e371[address(arg2)].field_0), mem[mem[64] + 164 len 32 * uint256(sub_92a8e371[address(arg2)].field_0)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3113 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3159 = mem[_3113]
                                require mem[_3113] <= test266151307()
                                require _3113 + mem[_3113] + 31 < _3113 + return_data.size
                                _3181 = mem[_3113 + mem[_3113]]
                                if mem[_3113 + mem[_3113]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_3113 + mem[_3113]]) + 1 < 0 or _3113 + ceil32(return_data.size) + ceil32(32 * mem[_3113 + mem[_3113]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _3113 + ceil32(return_data.size) + ceil32(32 * mem[_3113 + mem[_3113]]) + 1
                                mem[_3113 + ceil32(return_data.size)] = _3181
                                require _3159 + (32 * _3181) + 32 <= return_data.size
                                mem[_3113 + ceil32(return_data.size) + 32 len ceil32(32 * _3181)] = mem[_3113 + _3159 + 32 len ceil32(32 * _3181)]
                                _3459 = mem[64]
                                mem[mem[64]] = _2591 - (_2591 * stor10 / stor12) - (_2591 * stor11 / stor12)
                                mem[mem[64] + 32] = 64
                                _3471 = mem[_2931]
                                mem[mem[64] + 64] = mem[_2931]
                                idx = 0
                                s = _2931 + 32
                                t = mem[64] + 96
                                while idx < _3471:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                      mem[mem[64] len _3459 + (32 * _3471) + -mem[64] + 96],
                                if 1 >= mem[_3113 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _3705 = mem[_3113 + ceil32(return_data.size) + 64]
                                call sub_5464f3c4Address.maxTxAmount() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3737 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3705 > mem[_3737]:
                                    revert with 0, 'Amount exceeds the max tx amount'
                                mem[mem[64] + 4] = address(arg4)
                                mem[mem[64] + 36] = _3705
                                call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), _3705
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3797 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3797] == bool(mem[_3797])
                            else:
                                mem[_2931 + 64] = address(sub_92a8e371[address(arg2)].field_256)
                                idx = _2931 + 64
                                s = 1
                                while _2931 + (32 * uint256(sub_92a8e371[address(arg2)].field_0)) > idx:
                                    mem[idx + 32] = address(sub_92a8e371[address(arg2)][s].field_256)
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if 300 > !block.timestamp:
                                    revert with 0, 17
                                mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = uint256(sub_92a8e371[address(arg2)].field_0)
                                idx = 0
                                s = _2931 + 32
                                t = mem[64] + 164
                                while idx < uint256(sub_92a8e371[address(arg2)].field_0):
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = block.timestamp + 300
                                call sub_df29f8e9[address(arg2)].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                                   value _2591 - (_2591 * stor10 / stor12) - (_2591 * stor11 / stor12) wei
                                     gas gas_remaining wei
                                    args 0, 128, address(this.address), block.timestamp + 300, uint256(sub_92a8e371[address(arg2)].field_0), mem[mem[64] + 164 len 32 * uint256(sub_92a8e371[address(arg2)].field_0)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3704 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _3736 = mem[_3704]
                                require mem[_3704] <= test266151307()
                                require _3704 + mem[_3704] + 31 < _3704 + return_data.size
                                _3748 = mem[_3704 + mem[_3704]]
                                if mem[_3704 + mem[_3704]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_3704 + mem[_3704]]) + 1 < 0 or _3704 + ceil32(return_data.size) + ceil32(32 * mem[_3704 + mem[_3704]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _3704 + ceil32(return_data.size) + ceil32(32 * mem[_3704 + mem[_3704]]) + 1
                                mem[_3704 + ceil32(return_data.size)] = _3748
                                require _3736 + (32 * _3748) + 32 <= return_data.size
                                mem[_3704 + ceil32(return_data.size) + 32 len ceil32(32 * _3748)] = mem[_3704 + _3736 + 32 len ceil32(32 * _3748)]
                                _3852 = mem[64]
                                mem[mem[64]] = _2591 - (_2591 * stor10 / stor12) - (_2591 * stor11 / stor12)
                                mem[mem[64] + 32] = 64
                                _3854 = mem[_2931]
                                mem[mem[64] + 64] = mem[_2931]
                                idx = 0
                                s = _2931 + 32
                                t = mem[64] + 96
                                while idx < _3854:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                      mem[mem[64] len _3852 + (32 * _3854) + -mem[64] + 96],
                                if 1 >= mem[_3704 + ceil32(return_data.size)]:
                                    revert with 0, 50
                                _3890 = mem[_3704 + ceil32(return_data.size) + 64]
                                call sub_5464f3c4Address.maxTxAmount() with:
                                     gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3896 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if _3890 > mem[_3896]:
                                    revert with 0, 'Amount exceeds the max tx amount'
                                mem[mem[64] + 4] = address(arg4)
                                mem[mem[64] + 36] = _3890
                                call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg4), _3890
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3907 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_3907] == bool(mem[_3907])
        else:
            mem[(2 * ceil32(return_data.size)) + 96] = 2
            mem[(2 * ceil32(return_data.size)) + 128] = address(arg1)
            staticcall address(stor1.length).WAVAX() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 160] = ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 196] = address(stor1.length)
            mem[(4 * ceil32(return_data.size)) + 228] = arg3
            call address(arg1).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 196 len (5 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 300 > !block.timestamp:
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + 192] = 0x676528d100000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = arg3
            mem[(4 * ceil32(return_data.size)) + 228] = 0
            mem[(4 * ceil32(return_data.size)) + 260] = 160
            mem[(4 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = (4 * ceil32(return_data.size)) + 388
            while idx < mem[(2 * ceil32(return_data.size)) + 96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 292] = this.address
            mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 300
            call address(stor1.length).swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, address(this.address), block.timestamp + 300, mem[(4 * ceil32(return_data.size)) + 356 len (32 * mem[(2 * ceil32(return_data.size)) + 96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _496 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
            _500 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 1 < 0 or (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193 > test266151307():
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 193
            mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg3) >> 32 + 192]
            require _496 + (32 * _500) + 32 <= return_data.size
            mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _500)] = mem[(4 * ceil32(return_data.size)) + _496 + 224 len ceil32(32 * _500)]
            _905 = mem[64]
            mem[mem[64]] = arg3
            mem[mem[64] + 32] = 64
            _911 = mem[(2 * ceil32(return_data.size)) + 96]
            mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 96]
            idx = 0
            s = (2 * ceil32(return_data.size)) + 128
            t = mem[64] + 96
            while idx < _911:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit SwapTokensForETH(uint256 arg1, address[] arg2):
                                  mem[mem[64] len _905 + (32 * _911) + -mem[64] + 96],
            if 1 >= mem[(6 * ceil32(return_data.size)) + 192]:
                revert with 0, 50
            _1519 = mem[(6 * ceil32(return_data.size)) + 256]
            if not uint8(stor13.field_160):
                mem[0] = address(arg2)
                mem[32] = 6
                if not sub_df29f8e9[address(arg2)]:
                    _1542 = mem[64]
                    staticcall address(stor1.length).WAVAX() with:
                            gas gas_remaining wei
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= mem[_1542]:
                        revert with 0, 50
                    mem[_1542 + 32] = ext_call.return_data[12 len 20]
                    if 1 >= mem[_1542]:
                        revert with 0, 50
                    mem[_1542 + 64] = address(arg2)
                    if 300 > !block.timestamp:
                        revert with 0, 17
                    mem[_1542 + ceil32(return_data.size) + 96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[_1542 + ceil32(return_data.size) + 100] = 0
                    mem[_1542 + ceil32(return_data.size) + 132] = 128
                    mem[_1542 + ceil32(return_data.size) + 228] = mem[_1542]
                    idx = 0
                    s = _1542 + 32
                    t = _1542 + ceil32(return_data.size) + 260
                    while idx < mem[_1542]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1542 + ceil32(return_data.size) + 164] = this.address
                    mem[_1542 + ceil32(return_data.size) + 196] = block.timestamp + 300
                    call address(stor1.length).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                       value _1519 wei
                         gas gas_remaining wei
                        args 0, 128, address(this.address), block.timestamp + 300, mem[_1542 + ceil32(return_data.size) + 228 len (32 * mem[_1542]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1542 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = _1542 + (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 32
                    _2134 = mem[_1542 + ceil32(return_data.size) + 96 len 4], 0
                    require mem[_1542 + ceil32(return_data.size) + 96 len 4], 0 <= test266151307()
                    require _1542 + ceil32(return_data.size) + mem[_1542 + ceil32(return_data.size) + 96 len 4], 0 + 127 < _1542 + ceil32(return_data.size) + return_data.size + 96
                    _2149 = mem[_1542 + ceil32(return_data.size) + mem[_1542 + ceil32(return_data.size) + 96 len 4], 0 + 96]
                    if mem[_1542 + ceil32(return_data.size) + mem[_1542 + ceil32(return_data.size) + 96 len 4], 0 + 96] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_1542 + ceil32(return_data.size) + mem[_1542 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 1 < 0 or _1542 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1542 + ceil32(return_data.size) + mem[_1542 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97 > test266151307():
                        revert with 0, 65
                    mem[64] = _1542 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1542 + ceil32(return_data.size) + mem[_1542 + ceil32(return_data.size) + 96 len 4], 0 + 96]) + 97
                    mem[_1542 + (2 * ceil32(return_data.size)) + 96] = mem[_1542 + ceil32(return_data.size) + mem[_1542 + ceil32(return_data.size) + 96 len 4], 0 + 96]
                    require _2134 + (32 * _2149) + 32 <= return_data.size
                    mem[_1542 + (2 * ceil32(return_data.size)) + 128 len ceil32(32 * _2149)] = mem[_1542 + ceil32(return_data.size) + _2134 + 128 len ceil32(32 * _2149)]
                    _2575 = mem[64]
                    mem[mem[64]] = _1519
                    mem[mem[64] + 32] = 64
                    _2595 = mem[_1542]
                    mem[mem[64] + 64] = mem[_1542]
                    idx = 0
                    s = _1542 + 32
                    t = mem[64] + 96
                    while idx < _2595:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                          mem[mem[64] len _2575 + (32 * _2595) + -mem[64] + 96],
                    if 1 >= mem[_1542 + (2 * ceil32(return_data.size)) + 96]:
                        revert with 0, 50
                    _3118 = mem[_1542 + (2 * ceil32(return_data.size)) + 160]
                    call sub_5464f3c4Address.maxTxAmount() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3164 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if _3118 > mem[_3164]:
                        revert with 0, 'Amount exceeds the max tx amount'
                    mem[mem[64] + 4] = address(arg4)
                    mem[mem[64] + 36] = _3118
                    call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg4), _3118
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3253 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3253] == bool(mem[_3253])
                else:
                    mem[0] = address(arg2)
                    mem[32] = 7
                    _1541 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_92a8e371[address(arg2)].field_0)) + 32
                    mem[_1541] = uint256(sub_92a8e371[address(arg2)].field_0)
                    if not uint256(sub_92a8e371[address(arg2)].field_0):
                        if 300 > !block.timestamp:
                            revert with 0, 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = uint256(sub_92a8e371[address(arg2)].field_0)
                        idx = 0
                        s = _1541 + 32
                        t = mem[64] + 164
                        while idx < uint256(sub_92a8e371[address(arg2)].field_0):
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 300
                        call sub_df29f8e9[address(arg2)].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value _1519 wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, uint256(sub_92a8e371[address(arg2)].field_0), mem[mem[64] + 164 len 32 * uint256(sub_92a8e371[address(arg2)].field_0)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2118 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2132 = mem[_2118]
                        require mem[_2118] <= test266151307()
                        require _2118 + mem[_2118] + 31 < _2118 + return_data.size
                        _2147 = mem[_2118 + mem[_2118]]
                        if mem[_2118 + mem[_2118]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_2118 + mem[_2118]]) + 1 < 0 or _2118 + ceil32(return_data.size) + ceil32(32 * mem[_2118 + mem[_2118]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _2118 + ceil32(return_data.size) + ceil32(32 * mem[_2118 + mem[_2118]]) + 1
                        mem[_2118 + ceil32(return_data.size)] = _2147
                        require _2132 + (32 * _2147) + 32 <= return_data.size
                        mem[_2118 + ceil32(return_data.size) + 32 len ceil32(32 * _2147)] = mem[_2118 + _2132 + 32 len ceil32(32 * _2147)]
                        _2573 = mem[64]
                        mem[mem[64]] = _1519
                        mem[mem[64] + 32] = 64
                        _2592 = mem[_1541]
                        mem[mem[64] + 64] = mem[_1541]
                        idx = 0
                        s = _1541 + 32
                        t = mem[64] + 96
                        while idx < _2592:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              mem[mem[64] len _2573 + (32 * _2592) + -mem[64] + 96],
                        if 1 >= mem[_2118 + ceil32(return_data.size)]:
                            revert with 0, 50
                        _3115 = mem[_2118 + ceil32(return_data.size) + 64]
                        call sub_5464f3c4Address.maxTxAmount() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3161 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if _3115 > mem[_3161]:
                            revert with 0, 'Amount exceeds the max tx amount'
                        mem[mem[64] + 4] = address(arg4)
                        mem[mem[64] + 36] = _3115
                        call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), _3115
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3249 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3249] == bool(mem[_3249])
                    else:
                        mem[0] = sha3(address(arg2), 7)
                        mem[_1541 + 32] = address(sub_92a8e371[address(arg2)].field_0)
                        if (32 * uint256(sub_92a8e371[address(arg2)].field_0)) + 32 <= 64:
                            if 300 > !block.timestamp:
                                revert with 0, 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = uint256(sub_92a8e371[address(arg2)].field_0)
                            idx = 0
                            s = _1541 + 32
                            t = mem[64] + 164
                            while idx < uint256(sub_92a8e371[address(arg2)].field_0):
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 300
                            call sub_df29f8e9[address(arg2)].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value _1519 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, uint256(sub_92a8e371[address(arg2)].field_0), mem[mem[64] + 164 len 32 * uint256(sub_92a8e371[address(arg2)].field_0)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2119 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2133 = mem[_2119]
                            require mem[_2119] <= test266151307()
                            require _2119 + mem[_2119] + 31 < _2119 + return_data.size
                            _2148 = mem[_2119 + mem[_2119]]
                            if mem[_2119 + mem[_2119]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_2119 + mem[_2119]]) + 1 < 0 or _2119 + ceil32(return_data.size) + ceil32(32 * mem[_2119 + mem[_2119]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _2119 + ceil32(return_data.size) + ceil32(32 * mem[_2119 + mem[_2119]]) + 1
                            mem[_2119 + ceil32(return_data.size)] = _2148
                            require _2133 + (32 * _2148) + 32 <= return_data.size
                            mem[_2119 + ceil32(return_data.size) + 32 len ceil32(32 * _2148)] = mem[_2119 + _2133 + 32 len ceil32(32 * _2148)]
                            _2574 = mem[64]
                            mem[mem[64]] = _1519
                            mem[mem[64] + 32] = 64
                            _2594 = mem[_1541]
                            mem[mem[64] + 64] = mem[_1541]
                            idx = 0
                            s = _1541 + 32
                            t = mem[64] + 96
                            while idx < _2594:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  mem[mem[64] len _2574 + (32 * _2594) + -mem[64] + 96],
                            if 1 >= mem[_2119 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _3117 = mem[_2119 + ceil32(return_data.size) + 64]
                            call sub_5464f3c4Address.maxTxAmount() with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3163 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if _3117 > mem[_3163]:
                                revert with 0, 'Amount exceeds the max tx amount'
                            mem[mem[64] + 4] = address(arg4)
                            mem[mem[64] + 36] = _3117
                            call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), _3117
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3251 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3251] == bool(mem[_3251])
                        else:
                            mem[_1541 + 64] = address(sub_92a8e371[address(arg2)].field_256)
                            idx = _1541 + 64
                            s = 1
                            while _1541 + (32 * uint256(sub_92a8e371[address(arg2)].field_0)) > idx:
                                mem[idx + 32] = address(sub_92a8e371[address(arg2)][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if 300 > !block.timestamp:
                                revert with 0, 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = uint256(sub_92a8e371[address(arg2)].field_0)
                            idx = 0
                            s = _1541 + 32
                            t = mem[64] + 164
                            while idx < uint256(sub_92a8e371[address(arg2)].field_0):
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 300
                            call sub_df29f8e9[address(arg2)].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value _1519 wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, uint256(sub_92a8e371[address(arg2)].field_0), mem[mem[64] + 164 len 32 * uint256(sub_92a8e371[address(arg2)].field_0)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3116 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3162 = mem[_3116]
                            require mem[_3116] <= test266151307()
                            require _3116 + mem[_3116] + 31 < _3116 + return_data.size
                            _3184 = mem[_3116 + mem[_3116]]
                            if mem[_3116 + mem[_3116]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_3116 + mem[_3116]]) + 1 < 0 or _3116 + ceil32(return_data.size) + ceil32(32 * mem[_3116 + mem[_3116]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _3116 + ceil32(return_data.size) + ceil32(32 * mem[_3116 + mem[_3116]]) + 1
                            mem[_3116 + ceil32(return_data.size)] = _3184
                            require _3162 + (32 * _3184) + 32 <= return_data.size
                            mem[_3116 + ceil32(return_data.size) + 32 len ceil32(32 * _3184)] = mem[_3116 + _3162 + 32 len ceil32(32 * _3184)]
                            _3461 = mem[64]
                            mem[mem[64]] = _1519
                            mem[mem[64] + 32] = 64
                            _3473 = mem[_1541]
                            mem[mem[64] + 64] = mem[_1541]
                            idx = 0
                            s = _1541 + 32
                            t = mem[64] + 96
                            while idx < _3473:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  mem[mem[64] len _3461 + (32 * _3473) + -mem[64] + 96],
                            if 1 >= mem[_3116 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _3707 = mem[_3116 + ceil32(return_data.size) + 64]
                            call sub_5464f3c4Address.maxTxAmount() with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3739 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if _3707 > mem[_3739]:
                                revert with 0, 'Amount exceeds the max tx amount'
                            mem[mem[64] + 4] = address(arg4)
                            mem[mem[64] + 36] = _3707
                            call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), _3707
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3801 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3801] == bool(mem[_3801])
            else:
                if mem[(6 * ceil32(return_data.size)) + 256] and stor10 > -1 / mem[(6 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if not stor12:
                    revert with 0, 18
                call feeAddress with:
                   value mem[(6 * ceil32(return_data.size)) + 256] * stor10 / stor12 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[(6 * ceil32(return_data.size)) + 256] and stor11 > -1 / mem[(6 * ceil32(return_data.size)) + 256]:
                    revert with 0, 17
                if not stor12:
                    revert with 0, 18
                call sub_5464f3c4Address with:
                   value mem[(6 * ceil32(return_data.size)) + 256] * stor11 / stor12 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[(6 * ceil32(return_data.size)) + 256] < mem[(6 * ceil32(return_data.size)) + 256] * stor10 / stor12:
                    revert with 0, 17
                if mem[(6 * ceil32(return_data.size)) + 256] - (mem[(6 * ceil32(return_data.size)) + 256] * stor10 / stor12) < mem[(6 * ceil32(return_data.size)) + 256] * stor11 / stor12:
                    revert with 0, 17
                mem[0] = address(arg2)
                mem[32] = 6
                if sub_df29f8e9[address(arg2)]:
                    mem[0] = address(arg2)
                    mem[32] = 7
                    _1706 = mem[64]
                    mem[64] = mem[64] + (32 * uint256(sub_92a8e371[address(arg2)].field_0)) + 32
                    mem[_1706] = uint256(sub_92a8e371[address(arg2)].field_0)
                    if not uint256(sub_92a8e371[address(arg2)].field_0):
                        if 300 > !block.timestamp:
                            revert with 0, 17
                        mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0
                        mem[mem[64] + 36] = 128
                        mem[mem[64] + 132] = uint256(sub_92a8e371[address(arg2)].field_0)
                        idx = 0
                        s = _1706 + 32
                        t = mem[64] + 164
                        while idx < uint256(sub_92a8e371[address(arg2)].field_0):
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = block.timestamp + 300
                        call sub_df29f8e9[address(arg2)].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                           value _1519 - (_1519 * stor10 / stor12) - (_1519 * stor11 / stor12) wei
                             gas gas_remaining wei
                            args 0, 128, address(this.address), block.timestamp + 300, uint256(sub_92a8e371[address(arg2)].field_0), mem[mem[64] + 164 len 32 * uint256(sub_92a8e371[address(arg2)].field_0)]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2121 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _2135 = mem[_2121]
                        require mem[_2121] <= test266151307()
                        require _2121 + mem[_2121] + 31 < _2121 + return_data.size
                        _2150 = mem[_2121 + mem[_2121]]
                        if mem[_2121 + mem[_2121]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_2121 + mem[_2121]]) + 1 < 0 or _2121 + ceil32(return_data.size) + ceil32(32 * mem[_2121 + mem[_2121]]) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _2121 + ceil32(return_data.size) + ceil32(32 * mem[_2121 + mem[_2121]]) + 1
                        mem[_2121 + ceil32(return_data.size)] = _2150
                        require _2135 + (32 * _2150) + 32 <= return_data.size
                        mem[_2121 + ceil32(return_data.size) + 32 len ceil32(32 * _2150)] = mem[_2121 + _2135 + 32 len ceil32(32 * _2150)]
                        _2576 = mem[64]
                        mem[mem[64]] = _1519 - (_1519 * stor10 / stor12) - (_1519 * stor11 / stor12)
                        mem[mem[64] + 32] = 64
                        _2596 = mem[_1706]
                        mem[mem[64] + 64] = mem[_1706]
                        idx = 0
                        s = _1706 + 32
                        t = mem[64] + 96
                        while idx < _2596:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                              mem[mem[64] len _2576 + (32 * _2596) + -mem[64] + 96],
                        if 1 >= mem[_2121 + ceil32(return_data.size)]:
                            revert with 0, 50
                        _3119 = mem[_2121 + ceil32(return_data.size) + 64]
                        call sub_5464f3c4Address.maxTxAmount() with:
                             gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3165 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if _3119 > mem[_3165]:
                            revert with 0, 'Amount exceeds the max tx amount'
                        mem[mem[64] + 4] = address(arg4)
                        mem[mem[64] + 36] = _3119
                        call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg4), _3119
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3255 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3255] == bool(mem[_3255])
                    else:
                        mem[0] = sha3(address(arg2), 7)
                        mem[_1706 + 32] = address(sub_92a8e371[address(arg2)].field_0)
                        if (32 * uint256(sub_92a8e371[address(arg2)].field_0)) + 32 <= 64:
                            if 300 > !block.timestamp:
                                revert with 0, 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = uint256(sub_92a8e371[address(arg2)].field_0)
                            idx = 0
                            s = _1706 + 32
                            t = mem[64] + 164
                            while idx < uint256(sub_92a8e371[address(arg2)].field_0):
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 300
                            call sub_df29f8e9[address(arg2)].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value _1519 - (_1519 * stor10 / stor12) - (_1519 * stor11 / stor12) wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, uint256(sub_92a8e371[address(arg2)].field_0), mem[mem[64] + 164 len 32 * uint256(sub_92a8e371[address(arg2)].field_0)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2122 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _2136 = mem[_2122]
                            require mem[_2122] <= test266151307()
                            require _2122 + mem[_2122] + 31 < _2122 + return_data.size
                            _2151 = mem[_2122 + mem[_2122]]
                            if mem[_2122 + mem[_2122]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_2122 + mem[_2122]]) + 1 < 0 or _2122 + ceil32(return_data.size) + ceil32(32 * mem[_2122 + mem[_2122]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _2122 + ceil32(return_data.size) + ceil32(32 * mem[_2122 + mem[_2122]]) + 1
                            mem[_2122 + ceil32(return_data.size)] = _2151
                            require _2136 + (32 * _2151) + 32 <= return_data.size
                            mem[_2122 + ceil32(return_data.size) + 32 len ceil32(32 * _2151)] = mem[_2122 + _2136 + 32 len ceil32(32 * _2151)]
                            _2577 = mem[64]
                            mem[mem[64]] = _1519 - (_1519 * stor10 / stor12) - (_1519 * stor11 / stor12)
                            mem[mem[64] + 32] = 64
                            _2598 = mem[_1706]
                            mem[mem[64] + 64] = mem[_1706]
                            idx = 0
                            s = _1706 + 32
                            t = mem[64] + 96
                            while idx < _2598:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  mem[mem[64] len _2577 + (32 * _2598) + -mem[64] + 96],
                            if 1 >= mem[_2122 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _3121 = mem[_2122 + ceil32(return_data.size) + 64]
                            call sub_5464f3c4Address.maxTxAmount() with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3167 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if _3121 > mem[_3167]:
                                revert with 0, 'Amount exceeds the max tx amount'
                            mem[mem[64] + 4] = address(arg4)
                            mem[mem[64] + 36] = _3121
                            call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), _3121
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3257 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3257] == bool(mem[_3257])
                        else:
                            mem[_1706 + 64] = address(sub_92a8e371[address(arg2)].field_256)
                            idx = _1706 + 64
                            s = 1
                            while _1706 + (32 * uint256(sub_92a8e371[address(arg2)].field_0)) > idx:
                                mem[idx + 32] = address(sub_92a8e371[address(arg2)][s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if 300 > !block.timestamp:
                                revert with 0, 17
                            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0
                            mem[mem[64] + 36] = 128
                            mem[mem[64] + 132] = uint256(sub_92a8e371[address(arg2)].field_0)
                            idx = 0
                            s = _1706 + 32
                            t = mem[64] + 164
                            while idx < uint256(sub_92a8e371[address(arg2)].field_0):
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 68] = this.address
                            mem[mem[64] + 100] = block.timestamp + 300
                            call sub_df29f8e9[address(arg2)].swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
                               value _1519 - (_1519 * stor10 / stor12) - (_1519 * stor11 / stor12) wei
                                 gas gas_remaining wei
                                args 0, 128, address(this.address), block.timestamp + 300, uint256(sub_92a8e371[address(arg2)].field_0), mem[mem[64] + 164 len 32 * uint256(sub_92a8e371[address(arg2)].field_0)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3120 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _3166 = mem[_3120]
                            require mem[_3120] <= test266151307()
                            require _3120 + mem[_3120] + 31 < _3120 + return_data.size
                            _3188 = mem[_3120 + mem[_3120]]
                            if mem[_3120 + mem[_3120]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_3120 + mem[_3120]]) + 1 < 0 or _3120 + ceil32(return_data.size) + ceil32(32 * mem[_3120 + mem[_3120]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _3120 + ceil32(return_data.size) + ceil32(32 * mem[_3120 + mem[_3120]]) + 1
                            mem[_3120 + ceil32(return_data.size)] = _3188
                            require _3166 + (32 * _3188) + 32 <= return_data.size
                            mem[_3120 + ceil32(return_data.size) + 32 len ceil32(32 * _3188)] = mem[_3120 + _3166 + 32 len ceil32(32 * _3188)]
                            _3462 = mem[64]
                            mem[mem[64]] = _1519 - (_1519 * stor10 / stor12) - (_1519 * stor11 / stor12)
                            mem[mem[64] + 32] = 64
                            _3474 = mem[_1706]
                            mem[mem[64] + 64] = mem[_1706]
                            idx = 0
                            s = _1706 + 32
                            t = mem[64] + 96
                            while idx < _3474:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                                  mem[mem[64] len _3462 + (32 * _3474) + -mem[64] + 96],
                            if 1 >= mem[_3120 + ceil32(return_data.size)]:
                                revert with 0, 50
                            _3708 = mem[_3120 + ceil32(return_data.size) + 64]
                            call sub_5464f3c4Address.maxTxAmount() with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3740 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if _3708 > mem[_3740]:
                                revert with 0, 'Amount exceeds the max tx amount'
                            mem[mem[64] + 4] = address(arg4)
                            mem[mem[64] + 36] = _3708
                            call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg4), _3708
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3803 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3803] == bool(mem[_3803])
                else:
                    _1707 = mem[64]
                    staticcall address(stor1.length).WAVAX() with:
                            gas gas_remaining wei
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 0 >= mem[_1707]:
                        revert with 0, 50
                    mem[_1707 + 32] = ext_call.return_data[12 len 20]
                    if 1 >= mem[_1707]:
                        revert with 0, 50
                    mem[_1707 + 64] = address(arg2)
                    if 300 > !block.timestamp:
                        revert with 0, 17
                    mem[_1707 + ceil32(return_data.size) + 96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
                    mem[_1707 + ceil32(return_data.size) + 100] = 0
                    mem[_1707 + ceil32(return_data.size) + 132] = 128
                    mem[_1707 + ceil32(return_data.size) + 228] = mem[_1707]
                    idx = 0
                    s = _1707 + 32
                    t = _1707 + ceil32(return_data.size) + 260
                    while idx < mem[_1707]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1707 + ceil32(return_data.size) + 164] = this.address
                    mem[_1707 + ceil32(return_data.size) + 196] = block.timestamp + 300
                    call address(stor1.length).mem[mem[64] len 4] with:
                       value _1519 - (_1519 * stor10 / stor12) - (_1519 * stor11 / stor12) wei
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1707 + ceil32(return_data.size) + (32 * mem[_1707]) + -mem[64] + 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2123 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2137 = mem[_2123]
                    require mem[_2123] <= test266151307()
                    require _2123 + mem[_2123] + 31 < _2123 + return_data.size
                    _2152 = mem[_2123 + mem[_2123]]
                    if mem[_2123 + mem[_2123]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_2123 + mem[_2123]]) + 1 < 0 or _2123 + ceil32(return_data.size) + ceil32(32 * mem[_2123 + mem[_2123]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _2123 + ceil32(return_data.size) + ceil32(32 * mem[_2123 + mem[_2123]]) + 1
                    mem[_2123 + ceil32(return_data.size)] = _2152
                    require _2137 + (32 * _2152) + 32 <= return_data.size
                    mem[_2123 + ceil32(return_data.size) + 32 len ceil32(32 * _2152)] = mem[_2123 + _2137 + 32 len ceil32(32 * _2152)]
                    _2578 = mem[64]
                    mem[mem[64]] = _1519 - (_1519 * stor10 / stor12) - (_1519 * stor11 / stor12)
                    mem[mem[64] + 32] = 64
                    _2599 = mem[_1707]
                    mem[mem[64] + 64] = mem[_1707]
                    idx = 0
                    s = _1707 + 32
                    t = mem[64] + 96
                    while idx < _2599:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    emit SwapETHForTokens(uint256 arg1, address[] arg2):
                                          mem[mem[64] len _2578 + (32 * _2599) + -mem[64] + 96],
                    if 1 >= mem[_2123 + ceil32(return_data.size)]:
                        revert with 0, 50
                    _3122 = mem[_2123 + ceil32(return_data.size) + 64]
                    call sub_5464f3c4Address.maxTxAmount() with:
                         gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3168 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if _3122 > mem[_3168]:
                        revert with 0, 'Amount exceeds the max tx amount'
                    mem[mem[64] + 4] = address(arg4)
                    mem[mem[64] + 36] = _3122
                    call sub_5464f3c4Address.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg4), _3122
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3259 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3259] == bool(mem[_3259])
}



}
