contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_c3bb618c(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    idx = arg1
    while idx <= arg2:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = address(arg4)
        mem[164] = idx
        require ext_code.size(address(arg3))
        call address(arg3).0x42842e0e with:
             gas gas_remaining wei
            args msg.sender, address(arg4), idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}



}
