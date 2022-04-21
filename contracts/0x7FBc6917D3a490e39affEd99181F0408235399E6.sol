contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_da045b1b(?) payable {
    idx = 0
    while idx < ('cd', 4).length:
        call address(cd[((32 * idx) + cd[4] + 36)]) with:
           value cd[36] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
