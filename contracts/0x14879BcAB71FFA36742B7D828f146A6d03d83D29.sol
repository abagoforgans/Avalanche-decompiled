contract main {




// =====================  Runtime code  =====================


#
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
array of uint256 sub_cedb8a81;

function sub_cedb8a81(?) payable {
    return sub_cedb8a81[0 len sub_cedb8a81.length]
}

function _fallback() payable {
    revert
}

function sub_bf9bd4bd(?) payable {
    require calldata.size - 4 >= 224
    require ext_code.size(arg5)
    staticcall arg5.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'This pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg3, arg4, address(this.address), 128, 160, address(arg5), address(arg6), address(arg7), address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
