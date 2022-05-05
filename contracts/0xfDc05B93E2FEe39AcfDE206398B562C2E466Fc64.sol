contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sendToContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
