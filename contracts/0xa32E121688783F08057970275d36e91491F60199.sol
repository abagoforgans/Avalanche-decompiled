contract main {




// =====================  Runtime code  =====================


address sub_f10e38afAddress;

function sub_f10e38af(?) payable {
    return sub_f10e38afAddress
}

function _fallback() payable {
    revert
}

function sub_e584b654(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require ext_code.size(sub_f10e38afAddress)
    call sub_f10e38afAddress.setApprovalForAll(address arg1, bool arg2) with:
         gas gas_remaining wei
        args address(arg1), bool(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if arg5 < arg4:
        revert with 'NH{q', 17
    idx = 0
    while idx < arg5 - arg4:
        if arg4 > -idx - 1:
            revert with 'NH{q', 17
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = arg1
        mem[132] = arg2
        mem[164] = arg4 + idx
        require ext_code.size(sub_f10e38afAddress)
        call sub_f10e38afAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg4 + idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
