contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function transferFromWithReferenceAndFee(address arg1, address arg2, uint256 arg3, bytes arg4, uint256 arg5, address arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 == arg5
    require arg6 == arg6
    require ext_code.size(arg1)
    mem[228 len 128] = unknown_0x23b872dd(?????), msg.sender, address(arg2), arg3, mem[228 len 28]
    call arg1.mem[228 len 4] with:
         gas gas_remaining wei
        args mem[232 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'transferFrom() has been reverted'
        if arg5 > 0:
            if arg6:
                require ext_code.size(arg1)
                mem[360 len 128] = 0, msg.sender, address(arg6), arg5, mem[360 len 28]
                call arg1.mem[360 len 4] with:
                     gas gas_remaining wei
                    args mem[364 len 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'transferFrom() has been reverted'
                else:
                    require return_data.size == 32
                    if not ext_call.success:
                        revert with 0, 'transferFrom() has been reverted'
                    if not ext_call.return_data[0]:
                        revert with 0, 'fee transferFrom() failed'
    else:
        require return_data.size == 32
        if not ext_call.success:
            revert with 0, 'transferFrom() has been reverted'
        if not ext_call.return_data[0]:
            revert with 0, 'payment transferFrom() failed'
        if arg5 > 0:
            if arg6:
                require ext_code.size(arg1)
                mem[ceil32(return_data.size) + 361 len 128] = 0, msg.sender, address(arg6), arg5, mem[ceil32(return_data.size) + 361 len 28]
                call arg1.mem[ceil32(return_data.size) + 361 len 4] with:
                     gas gas_remaining wei
                    args mem[ceil32(return_data.size) + 365 len 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'transferFrom() has been reverted'
                else:
                    require return_data.size == 32
                    if not ext_call.success:
                        revert with 0, 'transferFrom() has been reverted'
                    if not ext_call.return_data[0]:
                        revert with 0, 'fee transferFrom() failed'
    emit TransferWithReferenceAndFee(address(arg1), address(arg2), arg3, arg5, arg6, sha3(arg4[all]));
}



}
