contract main {




// =====================  Runtime code  =====================


#
#  - sub_4994e51c(?)
#
function _fallback() payable {
    revert
}

function sub_b3545dfb(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    mem[196 len 96] = approve(address arg1, uint256 arg2), 0xc1daa16e6979c2d1229cb1fd, 0, -1, mem[196 len 28]
    call address(arg1).mem[196 len 4] with:
         gas gas_remaining wei
        args mem[200 len 64]
    if not return_data.size:
        mem[296 len 96] = 0, 0x66357dcace80431aee0a7507e2e361b7e2402370, -1, mem[296 len 28]
        call address(arg1).mem[296 len 4] with:
             gas gas_remaining wei
            args mem[300 len 64]
        if not ext_call.success:
            revert with 0, 'Approve not success'
        if block.timestamp > -121:
            revert with 'NH{q', 17
        if not return_data.size:
            mem[460 len 160] = 0, address(arg1), arg2, msg.sender, block.timestamp + 120, mem[460 len 28]
            call 0x66357dcace80431aee0a7507e2e361b7e2402370.mem[460 len 4] with:
                 gas gas_remaining wei
                args mem[464 len 128]
        else:
            mem[ceil32(return_data.size) + 461 len 160] = 0, address(arg1), arg2, msg.sender, block.timestamp + 120, mem[ceil32(return_data.size) + 461 len 28]
            call 0x66357dcace80431aee0a7507e2e361b7e2402370.mem[ceil32(return_data.size) + 461 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 465 len 128]
    else:
        mem[ceil32(return_data.size) + 297 len 96] = 0, 0x66357dcace80431aee0a7507e2e361b7e2402370, -1, mem[ceil32(return_data.size) + 297 len 28]
        call address(arg1).mem[ceil32(return_data.size) + 297 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(return_data.size) + 301 len 64]
        if not ext_call.success:
            revert with 0, 'Approve not success'
        if block.timestamp > -121:
            revert with 'NH{q', 17
        if not return_data.size:
            mem[ceil32(return_data.size) + 461 len 160] = 0, address(arg1), arg2, msg.sender, block.timestamp + 120, mem[ceil32(return_data.size) + 461 len 28]
            call 0x66357dcace80431aee0a7507e2e361b7e2402370.mem[ceil32(return_data.size) + 461 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(return_data.size) + 465 len 128]
        else:
            mem[(2 * ceil32(return_data.size)) + 462 len 160] = 0, address(arg1), arg2, msg.sender, block.timestamp + 120, mem[(2 * ceil32(return_data.size)) + 462 len 28]
            call 0x66357dcace80431aee0a7507e2e361b7e2402370.mem[(2 * ceil32(return_data.size)) + 462 len 4] with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 466 len 128]
    if not ext_call.success:
        revert with 0, 'Not success'
}



}
