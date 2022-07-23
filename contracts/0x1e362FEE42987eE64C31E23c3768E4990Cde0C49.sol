contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;

function _fallback() payable {
    revert
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

function sub_b2a38901(?) payable {
    require ext_code.size(stor0)
    call stor0.claim(uint256 arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = this.address
    mem[132] = 0
    staticcall stor0.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args this.address, 0
    mem[96] = ext_call.return_data[0]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ext_call.return_data[0]
    staticcall stor0.tokenURI(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _10 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 127
    _11 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96])) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, ext_call.return_data[0]) >> 32 + 96]
    require _10 + _11 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_11)] = mem[ceil32(return_data.size) + _10 + 128 len ceil32(_11)]
    if ceil32(_11) <= _11:
        if _11 < 5:
            revert with 0, 17
        if _11 - 5 < 54:
            revert with 0, 17
        if _11 - 59 > test266151307():
            revert with 0, 65
        _65 = mem[64]
        mem[mem[64]] = _11 - 59
        mem[64] = mem[64] + floor32(_11 - 28) + 32
        if _11 - 59:
            mem[_65 + 32 len _11 - 59] = call.data[calldata.size len _11 - 59]
        idx = 54
        while idx < _11 - 5:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            if idx < 54:
                revert with 0, 17
            if idx - 54 >= mem[_65]:
                revert with 0, 50
            mem[idx + _65 - 22 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0), ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0), ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 32))), 0) - 256
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if 0 < mem[_65]:
            if 0 >= mem[_65]:
                revert with 0, 50
            revert with 0, 17
    else:
        mem[(2 * ceil32(return_data.size)) + _11 + 128] = 0
        if _11 < 5:
            revert with 0, 17
        if _11 - 5 < 54:
            revert with 0, 17
        if _11 - 59 > test266151307():
            revert with 0, 65
        _66 = mem[64]
        mem[mem[64]] = _11 - 59
        mem[64] = mem[64] + floor32(_11 - 28) + 32
        if _11 - 59:
            mem[_66 + 32 len _11 - 59] = call.data[calldata.size len _11 - 59]
        idx = 54
        while idx < _11 - 5:
            if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
                revert with 0, 50
            if idx < 54:
                revert with 0, 17
            if idx - 54 >= mem[_66]:
                revert with 0, 50
            mem[idx + _66 - 22 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0), ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0), ('mask_shl', 250, 5, 1, ('add', 31, 'returndatasize'))), 32))), 0) - 256
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if 0 < mem[_66]:
            if 0 >= mem[_66]:
                revert with 0, 50
            revert with 0, 17
    if not stor1[0]:
        revert with 0, 'Ether value sent is below the price'
    require ext_code.size(stor0)
    call stor0.safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, 0x68e10733d102592b73deb12f1742570978c07a06, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
