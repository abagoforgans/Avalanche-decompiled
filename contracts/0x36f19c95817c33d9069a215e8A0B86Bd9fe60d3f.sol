contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_3e3ac5dd(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    if 0xef2af48e5167387cc0b32a22640deddecd736d50 != msg.sender:
        revert with 0, 'sb jj'
    call address(arg1).0x23b872dd with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
