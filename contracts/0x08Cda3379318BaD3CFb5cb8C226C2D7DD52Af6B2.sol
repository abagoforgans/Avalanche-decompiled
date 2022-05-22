contract main {




// =====================  Runtime code  =====================


address sub_a64f55aeAddress;
address stor1;

function sub_a64f55ae(?) {
    return sub_a64f55aeAddress
}

function _fallback() payable {
    revert
}

function sub_3c68e95b(?) {
    require ext_code.size(sub_a64f55aeAddress)
    call sub_a64f55aeAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), 999999999999999999999999999
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_063d11de(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_a64f55aeAddress)
    call sub_a64f55aeAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f689cf4b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_a64f55aeAddress)
    call sub_a64f55aeAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_881cb200(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_a64f55aeAddress)
    staticcall sub_a64f55aeAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
