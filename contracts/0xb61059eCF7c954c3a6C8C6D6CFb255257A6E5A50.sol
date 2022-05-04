contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function convert(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33 == arg1:
        require ext_code.size(0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33)
        call 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33)
        call 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33.leave(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
        staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
        call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd
}



}
