contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function get_balance(address arg1) {
    return eth.balance(arg1)
}

function sub_fc33f52d(?) payable {
    if stor0 != msg.sender:
        revert with 0, 'only Owner'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit(address arg1, uint256 arg2) payable {
    if stor0 != msg.sender:
        revert with 0, 'only Owner'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d55a74b7(?) payable {
    if stor0 != msg.sender:
        revert with 0, 'only Owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
