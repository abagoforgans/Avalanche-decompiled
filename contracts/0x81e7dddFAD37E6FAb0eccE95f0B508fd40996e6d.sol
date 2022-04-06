contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sendCall(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    call arg1 with:
       value msg.value wei
         gas gas_remaining wei
        args arg2[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
