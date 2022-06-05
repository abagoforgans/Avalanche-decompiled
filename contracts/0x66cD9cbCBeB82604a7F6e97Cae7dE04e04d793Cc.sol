contract main {




// =====================  Runtime code  =====================


address owner;
address sub_1bf43d40Address;
address sub_30c65101Address;
uint256 sub_527a9228;

function sub_1bf43d40(?) {
    return sub_1bf43d40Address
}

function sub_30c65101(?) {
    return sub_30c65101Address
}

function sub_527a9228(?) {
    return sub_527a9228
}

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

function sub_997f2e30(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_527a9228 = arg1
}

function setStorage(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1bf43d40Address = arg1
}

function sub_e8c65fc5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_30c65101Address = address(arg1)
}

function sub_f50c0f99(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1bf43d40Address = address(arg1)
    sub_30c65101Address = address(arg2)
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

function sub_dcfac924(?) payable {
    require calldata.size - 4 >= 256
    require arg2 == uint32(arg2)
    require arg3 == uint32(arg3)
    require arg4 == uint32(arg4)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg6.length)) + 98 < 97 or ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + 98 > test266151307():
        revert with 0, 65
    require arg6 + arg6.length + 36 <= calldata.size
    require arg7 == bool(arg7)
    require arg8 <= test266151307()
    require arg8 + 35 < calldata.size
    if arg8.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg8.length)) + 99 < 98 or ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg8.length)) + 99 > test266151307():
        revert with 0, 65
    require arg8 + arg8.length + 36 <= calldata.size
    if sub_527a9228 != msg.value:
        revert with 0, 'Wrong amount of funds sent to create contest'
    if ceil32(arg5.length) <= arg5.length:
        if ceil32(arg6.length) <= arg6.length:
            require ext_code.size(sub_30c65101Address)
            call sub_30c65101Address.0x6db3a67e with:
                 gas gas_remaining wei
                args msg.sender, arg1, arg2 << 224, arg3 << 224, arg4 << 224, Array(len=arg5.length, data=Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, arg6.length) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256) << (8 * ceil32(arg5.length)) - 256, arg6.length, Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], Mask(8 * ceil32(arg6.length) - arg6.length, -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256, arg8.length) >> -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256) << (8 * ceil32(arg6.length)) - 256, arg8.length, Mask(8 * ceil32(arg8.length), -(8 * ceil32(arg8.length)) + 256, arg8[all], Mask(8 * ceil32(arg8.length) - arg8.length, -(8 * ceil32(arg8.length) + -ceil32(ceil32(arg8.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg8.length) + -ceil32(ceil32(arg8.length)) + 27) + 256) << (8 * ceil32(arg8.length)) - 256), ceil32(arg5.length) + 320, bool(arg7), ceil32(arg6.length) + ceil32(arg5.length) + 352
        else:
            mem[ceil32(arg6.length) + ceil32(arg5.length) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg8.length)) + 455] = arg8.length
            mem[ceil32(arg6.length) + ceil32(arg5.length) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg8.length)) + 487 len ceil32(arg8.length)] = arg8[all], Mask(8 * ceil32(arg8.length) - arg8.length, -(8 * ceil32(arg8.length) + -ceil32(ceil32(arg8.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg8.length) + -ceil32(ceil32(arg8.length)) + 27) + 256
            if ceil32(arg8.length) > arg8.length:
                mem[ceil32(arg6.length) + ceil32(arg5.length) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg8.length)) + arg8.length + 487] = 0
            require ext_code.size(sub_30c65101Address)
            call sub_30c65101Address.0x6db3a67e with:
                 gas gas_remaining wei
                args msg.sender, arg1, arg2 << 224, arg3 << 224, arg4 << 224, Array(len=arg5.length, data=Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, arg6.length) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256) << (8 * ceil32(arg5.length)) - 256, arg6.length, Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], Mask(8 * ceil32(arg6.length) - arg6.length, -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256, arg8.length) >> -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256) << (8 * ceil32(arg6.length)) - 256, Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg8.length)) + ceil32(arg5.length) + arg6.length + 487 len ceil32(arg8.length) - arg6.length + ceil32(arg6.length)]), ceil32(arg5.length) + 320, bool(arg7), ceil32(arg6.length) + ceil32(arg5.length) + 352
    else:
        mem[ceil32(arg5.length) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg8.length)) + 423] = arg6.length
        mem[ceil32(arg5.length) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg8.length)) + 455 len ceil32(arg6.length)] = arg6[all], Mask(8 * ceil32(arg6.length) - arg6.length, -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256, arg8.length) >> -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256
        if ceil32(arg6.length) > arg6.length:
            mem[ceil32(arg5.length) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg8.length)) + arg6.length + 455] = 0
        mem[ceil32(arg6.length) + ceil32(arg5.length) + ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg8.length)) + 455] = arg8.length
        require ext_code.size(sub_30c65101Address)
        call sub_30c65101Address.0x6db3a67e with:
             gas gas_remaining wei
            args msg.sender, arg1, arg2 << 224, arg3 << 224, arg4 << 224, Array(len=arg5.length, data=Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, arg6.length) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256) << (8 * ceil32(arg5.length)) - 256, Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(ceil32(arg5.length)) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg8.length)) + arg5.length + 455 len ceil32(arg6.length) + ceil32(arg5.length) + -arg5.length + 32], Mask(8 * ceil32(arg8.length), -(8 * ceil32(arg8.length)) + 256, arg8[all], Mask(8 * ceil32(arg8.length) - arg8.length, -(8 * ceil32(arg8.length) + -ceil32(ceil32(arg8.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg8.length) + -ceil32(ceil32(arg8.length)) + 27) + 256) << (8 * ceil32(arg8.length)) - 256), ceil32(arg5.length) + 320, bool(arg7), ceil32(arg6.length) + ceil32(arg5.length) + 352
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_1bf43d40Address)
    call sub_1bf43d40Address.0x311824b4 with:
         gas gas_remaining wei
        args msg.sender, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if msg.value > 0:
        call address(ext_call.return_data[0]) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x421f21b5: address(ext_call.return_data[0]), msg.sender
}



}
