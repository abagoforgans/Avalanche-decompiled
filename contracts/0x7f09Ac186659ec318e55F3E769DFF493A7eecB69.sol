contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getResult() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}



}
