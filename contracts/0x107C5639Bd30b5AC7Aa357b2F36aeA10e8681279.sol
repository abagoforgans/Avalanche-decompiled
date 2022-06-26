contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_32358975(?) payable {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'Stop'
    require ext_code.size(arg3)
    call arg3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xef3c714c9425a8f3697a9c969dc1af30ba82e5d4, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xef3c714c9425a8f3697a9c969dc1af30ba82e5d4)
    call 0xef3c714c9425a8f3697a9c969dc1af30ba82e5d4.0xa5977fbb with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg3), arg4, arg5, arg6 << 192, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Send(arg1, msg.sender, address(arg2), address(arg3), arg4, arg5 << 192, arg6 << 192, arg7);
}



}
