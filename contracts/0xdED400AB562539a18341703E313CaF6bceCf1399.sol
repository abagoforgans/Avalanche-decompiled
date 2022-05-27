contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_b0225563(?) payable {
    require calldata.size - 4 >= 128
    mem[96] = 3
    mem[128] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    mem[160] = 0x1ace5dd13ba14ca42695a905526f2ec366720b13
    mem[192] = 0xf35ccfbce1228014f66809edafcdb836bfe388f5
    mem[224] = 0xb77d239b00000000000000000000000000000000000000000000000000000000
    mem[228] = 192
    mem[420] = 3
    idx = 0
    s = 128
    t = 452
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[260] = msg.value
    mem[292] = arg2
    mem[324] = 0
    mem[356] = 0
    mem[388] = 0
    require ext_code.size(0xb3fa5dcf7506d146485856439eb5e401e0796b5d)
    call 0xb3fa5dcf7506d146485856439eb5e401e0796b5d.convertByPath(address[] arg1, uint256 arg2, uint256 arg3, address arg4, address arg5, uint256 arg6) with:
       value msg.value wei
         gas gas_remaining wei
        args 192, msg.value, arg2, 0, 0, 0, 3, mem[452 len 96]
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 228] = this.address
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 224] = 2
    mem[(2 * ceil32(return_data.size)) + 256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[(2 * ceil32(return_data.size)) + 288] = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd
    mem[(2 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 356] = arg3
    mem[(2 * ceil32(return_data.size)) + 388] = 160
    mem[(2 * ceil32(return_data.size)) + 484] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 256
    t = (2 * ceil32(return_data.size)) + 516
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 420] = this.address
    mem[(2 * ceil32(return_data.size)) + 452] = arg1
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 516 len 64]), address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _102 = mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
    require mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351 < (2 * ceil32(return_data.size)) + return_data.size + 320
    _103 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
    mem[(4 * ceil32(return_data.size)) + 320] = _103
    require return_data.size >= _102 + (32 * _103) + 32
    mem[(4 * ceil32(return_data.size)) + 352 len 32 * _103] = mem[(2 * ceil32(return_data.size)) + _102 + 352 len 32 * _103]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _135 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
         gas gas_remaining wei
        args 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 3000, msg.sender, arg1, mem[_135], arg4, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.refundETH() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'refund failed'
}

function sub_957c83b4(?) payable {
    mem[100] = msg.sender
    require ext_code.size(0x346a59146b9b4a77100d369a3d18e8007a9f46a6)
    staticcall 0x346a59146b9b4a77100d369a3d18e8007a9f46a6.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 3
    mem[ceil32(return_data.size) + 128] = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    mem[ceil32(return_data.size) + 160] = 0x1ace5dd13ba14ca42695a905526f2ec366720b13
    mem[ceil32(return_data.size) + 192] = 0xf35ccfbce1228014f66809edafcdb836bfe388f5
    mem[ceil32(return_data.size) + 224] = 0xb77d239b00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 228] = 192
    mem[ceil32(return_data.size) + 420] = 3
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 452
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 260] = msg.value
    mem[ceil32(return_data.size) + 292] = 1
    mem[ceil32(return_data.size) + 324] = 0
    mem[ceil32(return_data.size) + 356] = 0
    mem[ceil32(return_data.size) + 388] = 0
    require ext_code.size(0xb3fa5dcf7506d146485856439eb5e401e0796b5d)
    call 0xb3fa5dcf7506d146485856439eb5e401e0796b5d.convertByPath(address[] arg1, uint256 arg2, uint256 arg3, address arg4, address arg5, uint256 arg6) with:
       value msg.value wei
         gas gas_remaining wei
        args 192, msg.value, 1, 0, 0, 0, 3, mem[ceil32(return_data.size) + 452 len 96]
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(2 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 224] = 2
    mem[(4 * ceil32(return_data.size)) + 256] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[(4 * ceil32(return_data.size)) + 288] = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd
    mem[(4 * ceil32(return_data.size)) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 356] = 1
    mem[(4 * ceil32(return_data.size)) + 388] = 160
    mem[(4 * ceil32(return_data.size)) + 484] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 256
    t = (4 * ceil32(return_data.size)) + 516
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 420] = this.address
    mem[(4 * ceil32(return_data.size)) + 452] = block.timestamp + 300
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 516 len 64]), address(this.address), block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _130 = mem[(4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
    require mem[(4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351 < (4 * ceil32(return_data.size)) + return_data.size + 320
    _131 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0
    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
    mem[(6 * ceil32(return_data.size)) + 320] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
    require return_data.size >= _130 + (32 * _131) + 32
    mem[(6 * ceil32(return_data.size)) + 352 len 32 * _131] = mem[(4 * ceil32(return_data.size)) + _130 + 352 len 32 * _131]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _175 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _176 = mem[_175]
    _177 = mem[64]
    mem[64] = mem[64] + 256
    mem[_177] = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd
    mem[_177 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[_177 + 64] = 3000
    mem[_177 + 96] = msg.sender
    mem[_177 + 128] = block.timestamp + 300
    mem[_177 + 160] = _176
    mem[_177 + 192] = 1
    mem[_177 + 224] = 0
    mem[mem[64] + 36] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[mem[64] + 68] = 3000
    mem[mem[64] + 100] = msg.sender
    mem[mem[64] + 132] = block.timestamp + 300
    mem[mem[64] + 164] = _176
    mem[mem[64] + 196] = 1
    mem[mem[64] + 228] = 0
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
         gas gas_remaining wei
        args 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 3000, msg.sender, block.timestamp + 300, _176, 1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require ext_code.size(0xe54ca86531e17ef3616d22ca28b0d458b6c89106)
    call 0xe54ca86531e17ef3616d22ca28b0d458b6c89106.refundETH() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'refund failed'
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0x346a59146b9b4a77100d369a3d18e8007a9f46a6)
        staticcall 0x346a59146b9b4a77100d369a3d18e8007a9f46a6.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _203 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64]] = mem[_203] - ext_call.return_data[0]
    else:
        _194 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_194] = return_data.size
        mem[_194 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'refund failed'
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0x346a59146b9b4a77100d369a3d18e8007a9f46a6)
        staticcall 0x346a59146b9b4a77100d369a3d18e8007a9f46a6.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _204 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64]] = mem[_204] - ext_call.return_data[0]
    return memory
      from mem[64]
       len 32
}



}
