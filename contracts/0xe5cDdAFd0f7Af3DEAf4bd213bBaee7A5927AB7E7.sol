contract main {




// =====================  Runtime code  =====================


address sub_1fa5cbb6Address;

function sub_1fa5cbb6(?) {
    return sub_1fa5cbb6Address
}

function _fallback() payable {
    revert
}

function repayBehalfExplicit(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    call arg2.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    if msg.value <= ext_call.return_data[0]:
        call arg2.repayBorrowBehalfNative(address rg1) with:
           value msg.value wei
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        call arg2.repayBorrowBehalfNative(address rg1) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call msg.sender with:
           value msg.value - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function repayBehalf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_1fa5cbb6Address)
    call sub_1fa5cbb6Address.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_1fa5cbb6Address)
    if msg.value <= ext_call.return_data[0]:
        call sub_1fa5cbb6Address.repayBorrowBehalfNative(address rg1) with:
           value msg.value wei
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        call sub_1fa5cbb6Address.repayBorrowBehalfNative(address rg1) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call msg.sender with:
           value msg.value - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
