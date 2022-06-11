contract main {




// =====================  Runtime code  =====================


address owner;
address routerAddress;
address sub_c37ad011Address;
address daiAddress;

function Dai() payable {
    return daiAddress
}

function owner() payable {
    return owner
}

function sub_c37ad011(?) payable {
    return sub_c37ad011Address
}

function Router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDai(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    daiAddress = arg1
}

function setRouter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routerAddress = arg1
}

function sub_60b6571c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c37ad011Address = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_8981876b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_9d07799c(?) payable {
    require calldata.size - 4 >= 32
    if msg.sender == sub_c37ad011Address:
        mem[96] = 2
        mem[128] = sub_c37ad011Address
        mem[160] = daiAddress
        mem[196] = routerAddress
        mem[228] = arg1
        require ext_code.size(sub_c37ad011Address)
        call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, arg1
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg1
        mem[ceil32(return_data.size) + 228] = 1
        mem[ceil32(return_data.size) + 260] = 160
        mem[ceil32(return_data.size) + 356] = 2
        idx = 0
        s = ceil32(return_data.size) + 388
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 292] = this.address
        mem[ceil32(return_data.size) + 324] = 0xf000000000000000000000000000000000000000000000000000000000000000
        require ext_code.size(routerAddress)
        call routerAddress.0x38ed1739 with:
             gas gas_remaining wei
            args arg1, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _53 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _55 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require return_data.size >= _53 + (32 * _55) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _55] = mem[ceil32(return_data.size) + _53 + 224 len 32 * _55]
        if 1 >= _55:
            revert with 0, 50
        _77 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 4] = owner
        mem[mem[64] + 36] = _77
        require ext_code.size(daiAddress)
        call daiAddress.0xa9059cbb with:
             gas gas_remaining wei
            args owner, _77
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _83 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_83] == bool(mem[_83])
    else:
        if owner != msg.sender:
            revert with 0, 'No permissions'
        mem[96] = 2
        mem[128] = sub_c37ad011Address
        mem[160] = daiAddress
        mem[196] = routerAddress
        mem[228] = arg1
        require ext_code.size(sub_c37ad011Address)
        call sub_c37ad011Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args routerAddress, arg1
        mem[192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 196] = arg1
        mem[ceil32(return_data.size) + 228] = 1
        mem[ceil32(return_data.size) + 260] = 160
        mem[ceil32(return_data.size) + 356] = 2
        idx = 0
        s = ceil32(return_data.size) + 388
        t = 128
        while idx < 2:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 292] = this.address
        mem[ceil32(return_data.size) + 324] = 0xf000000000000000000000000000000000000000000000000000000000000000
        require ext_code.size(routerAddress)
        call routerAddress.0x38ed1739 with:
             gas gas_remaining wei
            args arg1, 1, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[ceil32(return_data.size) + 388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _54 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
        require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
        _56 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
        mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        require return_data.size >= _54 + (32 * _56) + 32
        mem[(2 * ceil32(return_data.size)) + 224 len 32 * _56] = mem[ceil32(return_data.size) + _54 + 224 len 32 * _56]
        if 1 >= _56:
            revert with 0, 50
        _79 = mem[(2 * ceil32(return_data.size)) + 256]
        mem[mem[64] + 4] = owner
        mem[mem[64] + 36] = _79
        require ext_code.size(daiAddress)
        call daiAddress.0xa9059cbb with:
             gas gas_remaining wei
            args owner, _79
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _84 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_84] == bool(mem[_84])
}



}
