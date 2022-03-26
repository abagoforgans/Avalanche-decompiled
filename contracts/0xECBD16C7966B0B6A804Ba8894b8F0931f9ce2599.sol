contract main {




// =====================  Runtime code  =====================


#
#  - sub_5bf1b075(?)
#
address stor0;

function _fallback() payable {
  stop
}

function executeWithdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a33a22e6(?) {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
