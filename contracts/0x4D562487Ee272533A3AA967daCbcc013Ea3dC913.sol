contract main {




// =====================  Runtime code  =====================


address stor1;
address stor2;

function _fallback() payable {
    revert
}

function rugPull(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'amount not enough'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function emergencySell(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'FAIL TO APPROVE'
    mem[(32 * arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(stor2)
    call stor2.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, msg.sender, block.timestamp + 120, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buyToken(address arg1, address[] arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = 0
    mem[(32 * arg2.length) + (32 * arg3.length) + 228] = this.address
    mem[(32 * arg2.length) + (32 * arg3.length) + 260] = block.timestamp + 120
    mem[(32 * arg2.length) + (32 * arg3.length) + 196] = 128
    mem[(32 * arg2.length) + (32 * arg3.length) + 292] = arg2.length
    mem[(32 * arg2.length) + (32 * arg3.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(stor2)
    call stor2.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp + 120, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + (32 * arg3.length) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + (32 * arg3.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 160
    require return_data.size >= 32
    _53 = mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0
    require mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0 <= 4294967296
    require mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0 + 32 <= return_data.size
    require mem[mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0 + (32 * arg2.length) + (32 * arg3.length) + 160] <= 4294967296 and mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0 + (32 * mem[mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0 + (32 * arg2.length) + (32 * arg3.length) + 160]) + 32 <= return_data.size
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 160] = mem[mem[(32 * arg2.length) + (32 * arg3.length) + 160 len 4], 0 + (32 * arg2.length) + (32 * arg3.length) + 160]
    _56 = mem[_53 + (32 * arg2.length) + (32 * arg3.length) + 160]
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 192 len floor32(mem[_53 + (32 * arg2.length) + (32 * arg3.length) + 160])] = mem[_53 + (32 * arg2.length) + (32 * arg3.length) + 192 len floor32(mem[_53 + (32 * arg2.length) + (32 * arg3.length) + 160])]
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.allowance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), 0xe54ca86531e17ef3616d22ca28b0d458b6c89106
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xe54ca86531e17ef3616d22ca28b0d458b6c89106, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'FAIL TO APPROVE'
    mem[(32 * _56) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 192] = 0x7a42416a00000000000000000000000000000000000000000000000000000000
    mem[(32 * _56) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 196] = 10^11
    mem[(32 * _56) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
    mem[(32 * _56) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 292] = msg.sender
    mem[(32 * _56) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 324] = block.timestamp + 120
    mem[(32 * _56) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 260] = 160
    mem[(32 * _56) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 356] = arg3.length
    mem[(32 * _56) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 388 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(stor2)
    call stor2.swapTokensForExactAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 10^11, ext_call.return_data[0], 160, msg.sender, block.timestamp + 120, arg3.length, call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * _56) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + floor32(arg3.length) + 388 len (32 * arg3.length) - floor32(arg3.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _56) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _56) + (32 * arg2.length) + (32 * arg3.length) + (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require mem[(32 * _56) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 192 len 4], 23 <= 4294967296
    require mem[(32 * _56) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 192 len 4], 23 + 32 <= return_data.size
    require mem[mem[(32 * _56) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 192 len 4], 23 + (32 * _56) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _56) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 192 len 4], 23 + (32 * mem[mem[(32 * _56) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 192 len 4], 23 + (32 * _56) + (32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
}



}
