contract main {




// =====================  Runtime code  =====================


address _owner;

function _owner() {
    return _owner
}

function _fallback() payable {
  stop
}

function buy() payable {
    call _owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw() {
    if _owner != msg.sender:
        revert with 0, 'Not authorized'
    call _owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
