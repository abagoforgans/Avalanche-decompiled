contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint8 stor2;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function sub_c5ef3ec5(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if 0 >= arg1.length:
        return 0, 1
    if 0 >= arg1.length:
        revert with 0, 50
    revert with 0, 17
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_483fd70c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    call stor1.claim(uint256 arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    mem[132] = 0
    staticcall stor1.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args this.address, 0
    mem[96] = ext_call.return_data[0]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    staticcall stor1.tokenURI(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _12 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127
    _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96])) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _13
    require _12 + _13 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_13)] = mem[ceil32(return_data.size) + _12 + 128 len ceil32(_13)]
    if ceil32(_13) <= _13:
        if _13 < 5:
            revert with 0, 17
        if _13 - 5 < 54:
            revert with 0, 17
        if _13 - 59 > test266151307():
            revert with 0, 65
        _67 = mem[64]
        mem[mem[64]] = _13 - 59
        mem[64] = mem[64] + floor32(_13 - 28) + 32
        if _13 - 59:
            mem[_67 + 32 len _13 - 59] = call.data[calldata.size len _13 - 59]
        idx = 54
        while idx < _13 - 5:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            if idx < 54:
                revert with 0, 17
            if idx - 54 >= mem[_67]:
                revert with 0, 50
            mem[idx + _67 - 22 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0), ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0), ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 32))), 0) - 256
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if 0 < mem[_67]:
            if 0 >= mem[_67]:
                revert with 0, 50
            revert with 0, 17
    else:
        mem[(2 * ceil32(return_data.size)) + _13 + 128] = 0
        if _13 < 5:
            revert with 0, 17
        if _13 - 5 < 54:
            revert with 0, 17
        if _13 - 59 > test266151307():
            revert with 0, 65
        _68 = mem[64]
        mem[mem[64]] = _13 - 59
        mem[64] = mem[64] + floor32(_13 - 28) + 32
        if _13 - 59:
            mem[_68 + 32 len _13 - 59] = call.data[calldata.size len _13 - 59]
        idx = 54
        while idx < _13 - 5:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            if idx < 54:
                revert with 0, 17
            if idx - 54 >= mem[_68]:
                revert with 0, 50
            mem[idx + _68 - 22 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0), ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0), ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 32))), 0) - 256
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if 0 < mem[_68]:
            if 0 >= mem[_68]:
                revert with 0, 50
            revert with 0, 17
    if not stor2[0]:
        revert with 0, 'Ether value sent is below the price'
    require ext_code.size(stor1)
    call stor1.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
