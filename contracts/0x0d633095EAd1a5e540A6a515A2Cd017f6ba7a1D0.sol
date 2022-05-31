contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_dc90fed0(?) payable {
    require calldata.size - 4 >= 64
    if 0x62c667e10dee592c00df45b5abd53fea132c6b09 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe596f7520617265206e6f742074686520726967687420706572736f6e20746f20646f2074686973,
                    mem[204 len 24]
    stor0 = arg1
    stor1 = arg2
}

function sub_12f1489f(?) payable {
    require calldata.size - 4 >= 64
    if 0x62c667e10dee592c00df45b5abd53fea132c6b09 != msg.sender:
        revert with 0, 'Don't charge in here.'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_00e495f4(?) payable {
    require calldata.size - 4 >= 64
    if 0x62c667e10dee592c00df45b5abd53fea132c6b09 != msg.sender:
        revert with 0, 'You can't approve for me.'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_af6f762f(?) payable {
    require calldata.size - 4 >= 64
    if 0x62c667e10dee592c00df45b5abd53fea132c6b09 != msg.sender:
        revert with 0, 'Don't even try to do this.'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0x62c667e10dee592c00df45b5abd53fea132c6b09, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_8f8e7a93(?) payable {
    require calldata.size - 4 >= 160
    if 0x62c667e10dee592c00df45b5abd53fea132c6b09 != msg.sender:
        revert with 0, 'You can't do this dude.'
    mem[160] = arg2
    if arg1 == stor1:
        mem[192] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[196] = arg4
        mem[260] = arg5
        mem[292] = block.timestamp + 600
        mem[228] = 128
        mem[324] = 2
        mem[356 len 0] = None
        require ext_code.size(stor0)
        call stor0.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args arg4, Array(len=2, data=mem[356 len 64]), address(arg5), block.timestamp + 600
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg4) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg4) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 32 <= return_data.size
    else:
        if arg2 != stor1:
            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = arg4
            mem[292] = arg5
            mem[324] = block.timestamp + 600
            mem[260] = 160
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(stor0)
            call stor0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=2, data=mem[388 len 64]), address(arg5), block.timestamp + 600
        else:
            mem[192] = 0x676528d100000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = arg4
            mem[292] = arg5
            mem[324] = block.timestamp + 600
            mem[260] = 160
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(stor0)
            call stor0.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=2, data=mem[388 len 64]), address(arg5), block.timestamp + 600
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
}



}
