contract main {




// =====================  Runtime code  =====================


address owner;
address sub_54992808Address;
address sub_1bf43d40Address;
address moderatorAddress;

function sub_1bf43d40(?) payable {
    return sub_1bf43d40Address
}

function moderator() payable {
    return moderatorAddress
}

function sub_54992808(?) payable {
    return sub_54992808Address
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_c5d2747f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_54992808Address = address(arg1)
    sub_1bf43d40Address = address(arg2)
    moderatorAddress = address(arg3)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_6db3a67e(?) payable {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg3 == uint32(arg3)
    require arg4 == uint32(arg4)
    require arg5 == uint32(arg5)
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg6.length)) + 97 < 96 or ceil32(ceil32(arg6.length)) + 97 > test266151307():
        revert with 0, 65
    require arg6 + arg6.length + 36 <= calldata.size
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    if arg7.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg7.length)) + 98 < 97 or ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + 98 > test266151307():
        revert with 0, 65
    require arg7 + arg7.length + 36 <= calldata.size
    require arg8 == bool(arg8)
    require arg9 <= test266151307()
    require arg9 + 35 < calldata.size
    if arg9.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg9.length)) + 99 < 98 or ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(ceil32(arg9.length)) + 99 > test266151307():
        revert with 0, 65
    require arg9 + arg9.length + 36 <= calldata.size
    if ceil32(arg6.length) <= arg6.length:
        if ceil32(arg7.length) <= arg7.length:
            create contract with 0 wei
                            code: code.data[1879 len 8660], address(arg1), arg2, arg3 << 224, arg4 << 224, arg5 << 224, Array(len=ceil32(arg7.length) + ceil32(arg6.length) + 384, data=arg6.length, Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], Mask(8 * ceil32(arg6.length) - arg6.length, -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256, arg7.length) >> -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256) << (8 * ceil32(arg6.length)) - 256, arg7.length, Mask(8 * ceil32(arg7.length), -(8 * ceil32(arg7.length)) + 256, arg7[all], Mask(8 * ceil32(arg7.length) - arg7.length, -(8 * ceil32(arg7.length) + -ceil32(ceil32(arg7.length)) + 31) + 256, arg9.length) >> -(8 * ceil32(arg7.length) + -ceil32(ceil32(arg7.length)) + 31) + 256) << (8 * ceil32(arg7.length)) - 256, arg9.length, Mask(8 * ceil32(arg9.length), -(8 * ceil32(arg9.length)) + 256, arg9[all], code.data[arg9.length + -ceil32(ceil32(arg9.length)) + 1910 len ceil32(arg9.length) - arg9.length]) << (8 * ceil32(arg9.length)) - 256), ceil32(arg6.length) + 352, bool(arg8), owner
        else:
            mem[ceil32(arg7.length) + ceil32(arg6.length) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(ceil32(arg9.length)) + 9143] = arg9.length
            mem[ceil32(arg7.length) + ceil32(arg6.length) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(ceil32(arg9.length)) + 9175 len ceil32(arg9.length)] = arg9[all], code.data[arg9.length + -ceil32(ceil32(arg9.length)) + 1910 len ceil32(arg9.length) - arg9.length]
            if ceil32(arg9.length) > arg9.length:
                mem[ceil32(arg7.length) + ceil32(arg6.length) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(ceil32(arg9.length)) + arg9.length + 9175] = 0
            create contract with 0 wei
                            code: code.data[1879 len 8660], address(arg1), arg2, arg3 << 224, arg4 << 224, arg5 << 224, Array(len=ceil32(arg7.length) + ceil32(arg6.length) + 384, data=arg6.length, Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], Mask(8 * ceil32(arg6.length) - arg6.length, -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256, arg7.length) >> -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256) << (8 * ceil32(arg6.length)) - 256, arg7.length, Mask(8 * ceil32(arg7.length), -(8 * ceil32(arg7.length)) + 256, arg7[all], Mask(8 * ceil32(arg7.length) - arg7.length, -(8 * ceil32(arg7.length) + -ceil32(ceil32(arg7.length)) + 31) + 256, arg9.length) >> -(8 * ceil32(arg7.length) + -ceil32(ceil32(arg7.length)) + 31) + 256) << (8 * ceil32(arg7.length)) - 256, Mask(8 * -ceil32(arg7.length) + arg7.length + 32, 0, 0), mem[ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(ceil32(arg9.length)) + ceil32(arg6.length) + arg7.length + 9175 len ceil32(arg9.length) - arg7.length + ceil32(arg7.length)]), ceil32(arg6.length) + 352, bool(arg8), owner
    else:
        mem[ceil32(arg6.length) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(ceil32(arg9.length)) + 9111] = arg7.length
        mem[ceil32(arg6.length) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(ceil32(arg9.length)) + 9143 len ceil32(arg7.length)] = arg7[all], Mask(8 * ceil32(arg7.length) - arg7.length, -(8 * ceil32(arg7.length) + -ceil32(ceil32(arg7.length)) + 31) + 256, arg9.length) >> -(8 * ceil32(arg7.length) + -ceil32(ceil32(arg7.length)) + 31) + 256
        if ceil32(arg7.length) > arg7.length:
            mem[ceil32(arg6.length) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(ceil32(arg9.length)) + arg7.length + 9143] = 0
        mem[ceil32(arg7.length) + ceil32(arg6.length) + ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(ceil32(arg9.length)) + 9143] = arg9.length
        create contract with 0 wei
                        code: code.data[1879 len 8660], address(arg1), arg2, arg3 << 224, arg4 << 224, arg5 << 224, Array(len=ceil32(arg7.length) + ceil32(arg6.length) + 384, data=arg6.length, Mask(8 * ceil32(arg6.length), -(8 * ceil32(arg6.length)) + 256, arg6[all], Mask(8 * ceil32(arg6.length) - arg6.length, -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256, arg7.length) >> -(8 * ceil32(arg6.length) + -ceil32(ceil32(arg6.length)) + 31) + 256) << (8 * ceil32(arg6.length)) - 256, Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(ceil32(arg6.length)) + ceil32(ceil32(arg7.length)) + ceil32(ceil32(arg9.length)) + arg6.length + 9143 len ceil32(arg7.length) + ceil32(arg6.length) + -arg6.length + 32], Mask(8 * ceil32(arg9.length), -(8 * ceil32(arg9.length)) + 256, arg9[all], code.data[arg9.length + -ceil32(ceil32(arg9.length)) + 1910 len ceil32(arg9.length) - arg9.length]) << (8 * ceil32(arg9.length)) - 256), ceil32(arg6.length) + 352, bool(arg8), owner
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xc5d2747f with:
         gas gas_remaining wei
        args sub_54992808Address, sub_1bf43d40Address, moderatorAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
