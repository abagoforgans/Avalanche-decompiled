contract main {




// =====================  Runtime code  =====================


const sub_31b168b3(?) = 0xb0731d50c681c45856bfc3f7539d5f61d4be81d8

const getAddressETH = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee


function _fallback() payable {
    revert
}

function sub_7146dd36(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg1))
    call address(arg1).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xb0731d50c681c45856bfc3f7539d5f61d4be81d8, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0xb0731d50c681c45856bfc3f7539d5f61d4be81d8)
    call 0xb0731d50c681c45856bfc3f7539d5f61d4be81d8.anySwapOutUnderlying(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg5 > 0:
        require ext_code.size(this.address)
        staticcall this.address.registry() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).feeRecipient() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if address(arg1) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            call ext_call.return_data[12 len 20] with:
               value arg5 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(arg1))
            call address(arg1).0xa9059cbb with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xaccb4a24: address(arg3), arg4, arg5, address(arg1), address(arg2), arg6
}



}
