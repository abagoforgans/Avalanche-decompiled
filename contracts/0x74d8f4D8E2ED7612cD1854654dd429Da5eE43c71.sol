contract main {




// =====================  Runtime code  =====================


address storB531;
uint256 storB531;

function _fallback() payable {
    revert
}

function postUpgrade() payable {
    if address(storB531):
        require address(storB531) == msg.sender
    else:
        uint256(storB531) = 0xffffffffffffffffffffffffffffffffffffffff
}

function claimRewards() payable {
    require ext_code.size(0xdc13687554205e5b89ac783db14bb5bba4a1edac)
    call 0xdc13687554205e5b89ac783db14bb5bba4a1edac.claimReward(uint8 arg1, address arg2) with:
         gas gas_remaining wei
        args 0, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    require return_data.size >= 32
    require ext_code.size(0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33)
    call 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33.enter(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    staticcall 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    require return_data.size >= 32
    require ext_code.size(0xd6a4f121ca35509af06a0be99093d08462f53052)
    call 0xd6a4f121ca35509af06a0be99093d08462f53052.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 24, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
