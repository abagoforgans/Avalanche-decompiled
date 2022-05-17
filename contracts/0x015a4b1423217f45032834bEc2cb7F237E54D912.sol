contract main {




// =====================  Runtime code  =====================


address sub_26498753Address;

function sub_26498753(?) payable {
    return sub_26498753Address
}

function _fallback() payable {
    revert
}

function sub_1c3917b8(?) payable {
    require ext_code.size(sub_26498753Address)
    call sub_26498753Address.createNode(address arg1, string arg2) with:
         gas gas_remaining wei
        args 0, 4290323046, 64, 22, 'aezazezaeajzejkazejajk'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
