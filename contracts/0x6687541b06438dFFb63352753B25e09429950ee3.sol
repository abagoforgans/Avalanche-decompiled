contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function sub_d7686eb7(?) payable {
    require msg.sender == stor2
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, 10^14
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor1)
    call stor1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 250000000000 * 10^18 * 3600, 0, stor2, 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
