contract main {




// =====================  Runtime code  =====================


address stor1;

function _fallback() payable {
    require not calldata.size
    if msg.sender == stor1:
        if msg.value and 1 > -1 / msg.value:
            revert with 'NH{q', 17
        call msg.sender with:
           value msg.value / 10000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    idx = 1
    while idx <= 10000:
        if msg.value and 1 > -1 / msg.value:
            revert with 'NH{q', 17
        call stor1 with:
           value msg.value / 10000 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 5
        continue 
}



}
