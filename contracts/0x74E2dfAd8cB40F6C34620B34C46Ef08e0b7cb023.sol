contract main {




// =====================  Runtime code  =====================


#
#  - sub_e923cd98(?)
#
address stor0;

function _fallback() payable {
    revert
}

function cashOut(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, 'Only the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
