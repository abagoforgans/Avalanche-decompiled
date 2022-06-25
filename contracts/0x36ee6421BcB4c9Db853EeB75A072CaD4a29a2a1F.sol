contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_44536973(?) payable {
    call 0x1ad8e28a1d2fc5fdcf0c136e7173ebc374509ff4 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function tokentransfer(address arg1, uint256 arg2) {
    require ext_code.size(arg1)
    call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, 0x1ad8e28a1d2fc5fdcf0c136e7173ebc374509ff4, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}
