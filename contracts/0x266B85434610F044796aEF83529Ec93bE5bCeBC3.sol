contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_cfb820f4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'SL'
}

function sub_b60840dc(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == uint8(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    if arg3:
        if arg4:
            if arg3 < arg4:
                revert with 0, 'SL'
        if uint8(arg1) == 1:
            require ext_code.size(address(arg2))
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args 0xe78388b4ce79068e89bf8aa7f218ef6b9ab0e9d0, arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if uint8(arg1) == 2:
                require ext_code.size(address(arg2))
                call address(arg2).unwrap(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args arg3, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if uint8(arg1) == 4:
            revert with 0, 'AR'
        if uint8(arg1) == 5:
            revert with 0, 'AR'
        require ext_code.size(address(arg2))
        staticcall address(arg2).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if arg4:
            if ext_call.return_data[0] < arg4:
                revert with 0, 'SL'
        if uint8(arg1) == 1:
            require ext_code.size(address(arg2))
            call address(arg2).0xa9059cbb with:
                 gas gas_remaining wei
                args 0xe78388b4ce79068e89bf8aa7f218ef6b9ab0e9d0, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if uint8(arg1) == 2:
                require ext_code.size(address(arg2))
                call address(arg2).unwrap(uint256 arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
