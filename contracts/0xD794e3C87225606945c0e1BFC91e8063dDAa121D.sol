contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    require not calldata.size
    if eth.balance(this.address) and 50 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call stor0 with:
       value 50 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) and 50 > -1 / eth.balance(this.address):
        revert with 'NH{q', 17
    call stor1 with:
       value 50 * eth.balance(this.address) / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
