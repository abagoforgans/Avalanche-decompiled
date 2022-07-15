contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_a8638fbb(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
