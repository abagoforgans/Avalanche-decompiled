contract main {




// =====================  Runtime code  =====================


address sub_0e8aafc4Address;
address sub_260ecb9fAddress;

function sub_0e8aafc4(?) payable {
    return sub_0e8aafc4Address
}

function sub_260ecb9f(?) payable {
    return sub_260ecb9fAddress
}

function _fallback() payable {
    revert
}

function sub_eb5d9286(?) payable {
    sub_260ecb9fAddress = msg.sender
}

function sub_1f4e843e(?) payable {
    sub_0e8aafc4Address = msg.sender
    require ext_code.size(this.address)
    call this.address.0xeb5d9286 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
