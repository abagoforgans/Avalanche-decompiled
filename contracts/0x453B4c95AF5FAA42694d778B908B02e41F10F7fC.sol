contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_c9b4250c(?) payable {
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
                call address(arg2).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if uint8(arg1) == 3:
                    require ext_code.size(address(arg2))
                    call address(arg2).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(address(arg2))
        if uint8(arg1) != 3:
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
        else:
            staticcall address(arg2).0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
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
                call address(arg2).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if uint8(arg1) == 3:
                    require ext_code.size(address(arg2))
                    call address(arg2).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
