contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_d109be9c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(arg1) != 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33:
        return 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33
    return 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd
}

function getAmountOut(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 <= 0:
        return 0
    if arg1 != 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33:
        require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
        staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.balanceOf(address arg1) with:
                gas gas_remaining wei
               args 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33)
        staticcall 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33.totalSupply() with:
                gas gas_remaining wei
    else:
        require ext_code.size(0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33)
        staticcall 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33.totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
        staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.balanceOf(address arg1) with:
                gas gas_remaining wei
               args 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 and ext_call.return_data[0] > -1 / arg2:
        revert with 'NH{q', 17
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (arg2 * ext_call.return_data[0] / ext_call.return_data[0])
}

function convert(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if arg1 != 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33:
        require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
        call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33)
        call 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33.enter(uint256 arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33)
        staticcall 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33)
        call 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        return 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33
    require ext_code.size(0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33)
    call 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33.transferFrom(address arg1, address arg2, uint256 arg3) with:
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
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    call 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd
}



}
