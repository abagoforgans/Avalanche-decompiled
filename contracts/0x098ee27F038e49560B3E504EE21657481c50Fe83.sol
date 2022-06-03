contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_509f2a42(?) payable {
    require ext_code.size(0xf56d29df26c6d512d73864bb56277a2e5242e369)
    call 0xf56d29df26c6d512d73864bb56277a2e5242e369.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 24000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
