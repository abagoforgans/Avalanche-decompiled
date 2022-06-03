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

function sub_3a08e6a3(?) payable {
    require ext_code.size(0xf56d29df26c6d512d73864bb56277a2e5242e369)
    staticcall 0xf56d29df26c6d512d73864bb56277a2e5242e369.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 1000:
        revert with 0, 'ERC20: You need at least 1000 Mu Coins'
    require ext_code.size(0xf56d29df26c6d512d73864bb56277a2e5242e369)
    call 0xf56d29df26c6d512d73864bb56277a2e5242e369.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), 24000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
