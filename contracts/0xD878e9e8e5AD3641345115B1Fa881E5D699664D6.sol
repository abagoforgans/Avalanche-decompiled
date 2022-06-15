contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function aaa() payable {
    require ext_code.size(0x3e07a2334f8f9ea2830bac046f8fd5e9c7e4b1a1)
    call 0x3e07a2334f8f9ea2830bac046f8fd5e9c7e4b1a1.stor1() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
