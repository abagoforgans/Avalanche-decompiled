contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

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

function sub_07ebadc0(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4 > -arg5 - 1:
        revert with 'NH{q', 17
    if arg4 + arg5 > -arg6 - 1:
        revert with 'NH{q', 17
    require ext_code.size(stor1)
    staticcall stor1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg3), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg4 + arg5 + arg6:
        revert with 0, '1'
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args address(arg3), address(arg2), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '2'
    if arg4 > -arg5 - 1:
        revert with 'NH{q', 17
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining wei
        args address(arg3), owner, arg4 + arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, '2'
    emit 0x337b1d5e: arg1, address(arg2), address(arg3), arg4 + arg5 + arg6, arg4, arg5, arg6
}



}
