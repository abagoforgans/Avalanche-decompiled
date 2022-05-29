contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    mem[64] = 128
    if stor0 != msg.sender:
    mem[0 len calldata.size] = call.data[0 len calldata.size]
    call mem[calldata.size - 32] with:
       funct call.data[0 len 4]
       value msg.value wei
         gas gas_remaining wei
        args mem[4 len calldata.size - 36]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
