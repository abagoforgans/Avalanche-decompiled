contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_3de2f6b2(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    require ext_code.size(address(arg2))
    call address(arg2).balanceOfUnderlying(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if 1 > !(10000 * arg3 / 9999):
        revert with 0, 17
    if ext_call.return_data[0] <= (10000 * arg3 / 9999) + 1:
        require ext_code.size(address(arg2))
        call address(arg2).borrow(uint256 rg1) with:
             gas gas_remaining wei
            args arg3
    else:
        if arg3 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 0, 17
        if 1 > !(10000 * arg3 / 9999):
            revert with 0, 17
        require ext_code.size(address(arg2))
        call address(arg2).redeemUnderlying(uint256 rg1) with:
             gas gas_remaining wei
            args ((10000 * arg3 / 9999) + 1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg2))
    if address(arg2) == 0x5c0401e81bc07ca70fad469b451682c0d747ef1c:
        call address(arg2).liquidateBorrow(address rg1, address rg2) with:
           value arg3 wei
             gas gas_remaining wei
            args address(arg1), address(arg4)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call address(arg2).liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, address(arg4)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'liquidateBorrow'
}



}
