contract main {




// =====================  Runtime code  =====================


address sub_a2a5236cAddress;
address sub_caa8c3c7Address;

function sub_a2a5236c(?) {
    return sub_a2a5236cAddress
}

function sub_caa8c3c7(?) {
    return sub_caa8c3c7Address
}

function _fallback() payable {
    revert
}

function deposit() payable {
    require ext_code.size(sub_a2a5236cAddress)
    call sub_a2a5236cAddress.submit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a2a5236cAddress)
    call sub_a2a5236cAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_caa8c3c7Address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_caa8c3c7Address)
    call sub_caa8c3c7Address.depositFor(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
