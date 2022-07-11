contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function sub_bf9d8cc3(?) payable {
    require calldata.size - 4 >= 320
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if stor0 != msg.sender:
        revert with 0, 32, 57, code.data[19823 len 57], mem[ceil32(arg1.length) + 253 len 7]
    mem[ceil32(arg1.length) + 128 len 18794] = code.data[1029 len 18794]
    mem[ceil32(arg1.length) + 19370 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        create contract with 0 wei
                        code: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), code.data[arg1.length + -ceil32(arg1.length) + 1061 len -arg1.length + ceil32(arg1.length) + 18762], Array(len=stor1, data=stor2, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256), arg2, arg3, arg4, arg5, arg6, address(arg7), address(arg8), address(arg9), address(arg10), msg.sender
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + 19370] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 19402 len arg1.length % 32]
        create contract with 0 wei
                        code: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), code.data[arg1.length + -ceil32(arg1.length) + 1061 len -arg1.length + ceil32(arg1.length) + 18762], Array(len=stor1, data=stor2, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 19370 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), arg2, arg3, arg4, arg5, arg6, address(arg7), address(arg8), address(arg9), address(arg10), msg.sender
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0x2d06177a with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, uint128(create.new_address) << 96
}



}
