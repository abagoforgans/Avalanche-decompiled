contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_74e1bb2c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return 1
}

function sub_a74deabe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return 1
}

function sub_c66bc927(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    call address(arg2).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 0x322eaf5cd78c59e59b614f1d7aecb3e13b25dca0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
