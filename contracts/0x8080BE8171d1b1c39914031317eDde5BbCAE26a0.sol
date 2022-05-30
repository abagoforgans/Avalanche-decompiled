contract main {




// =====================  Runtime code  =====================


address storA3F0;

function _fallback() payable {
    require ext_code.size(storA3F0)
    staticcall storA3F0.implementation() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    delegate ext_call.return_data[0] with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}



}
