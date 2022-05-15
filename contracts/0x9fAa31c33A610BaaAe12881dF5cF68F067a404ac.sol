contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function bribe() payable {
    call block.coinbase with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
