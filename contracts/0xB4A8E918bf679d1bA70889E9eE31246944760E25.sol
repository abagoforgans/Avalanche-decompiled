contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_b0225563(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 228] = this.address
    require ext_code.size(0xf35ccfbce1228014f66809edafcdb836bfe388f5)
    staticcall 0xf35ccfbce1228014f66809edafcdb836bfe388f5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 224] = 2
    mem[(2 * ceil32(return_data.size)) + 256] = 0xf35ccfbce1228014f66809edafcdb836bfe388f5
    mem[(2 * ceil32(return_data.size)) + 288] = 0x9108ab1bb7d054a3c1cd62329668536f925397e5
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
    require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
    call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg3, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 516 len 64]), address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _67 = mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
    require mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351 < (2 * ceil32(return_data.size)) + return_data.size + 320
    _68 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
    require mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
    require (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307() and (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0
    mem[64] = (4 * ceil32(return_data.size)) + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
    mem[(4 * ceil32(return_data.size)) + 320] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
    require _67 + (32 * _68) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _67 + 352
    t = (4 * ceil32(return_data.size)) + 352
    while idx < _68:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x9108ab1bb7d054a3c1cd62329668536f925397e5)
    staticcall 0x9108ab1bb7d054a3c1cd62329668536f925397e5.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _100 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _101 = mem[_100]
    require mem[_100] == mem[_100]
    _102 = mem[64]
    mem[64] = mem[64] + 256
    mem[_102] = 0x9108ab1bb7d054a3c1cd62329668536f925397e5
    mem[_102 + 32] = 0xad6d458402f60fd3bd25163575031acdce07538d
    mem[_102 + 64] = 3000
    mem[_102 + 96] = msg.sender
    mem[_102 + 128] = arg1
    mem[_102 + 160] = _101
    mem[_102 + 192] = arg4
    mem[_102 + 224] = 0
    mem[mem[64] + 4] = 0x9108ab1bb7d054a3c1cd62329668536f925397e5
    mem[mem[64] + 36] = 0xad6d458402f60fd3bd25163575031acdce07538d
    mem[mem[64] + 68] = 3000
    mem[mem[64] + 100] = msg.sender
    mem[mem[64] + 132] = arg1
    mem[mem[64] + 164] = _101
    mem[mem[64] + 196] = arg4
    mem[mem[64] + 228] = 0
    require ext_code.size(0xe592427a0aece92de3edee1f18e0157c05861564)
    call 0xe592427a0aece92de3edee1f18e0157c05861564.exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
         gas gas_remaining wei
        args 0x9108ab1bb7d054a3c1cd62329668536f925397e5, 0xad6d458402f60fd3bd25163575031acdce07538d, 3000, msg.sender, arg1, _101, arg4, 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _113 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_113] == mem[_113]
    require ext_code.size(0xe592427a0aece92de3edee1f18e0157c05861564)
    call 0xe592427a0aece92de3edee1f18e0157c05861564.refundETH() with:
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
    require ext_code.size(0xad6d458402f60fd3bd25163575031acdce07538d)
    staticcall 0xad6d458402f60fd3bd25163575031acdce07538d.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(0xf35ccfbce1228014f66809edafcdb836bfe388f5)
    staticcall 0xf35ccfbce1228014f66809edafcdb836bfe388f5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 224] = 2
    mem[(4 * ceil32(return_data.size)) + 256] = 0xf35ccfbce1228014f66809edafcdb836bfe388f5
    mem[(4 * ceil32(return_data.size)) + 288] = 0x9108ab1bb7d054a3c1cd62329668536f925397e5
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
    require ext_code.size(0x1b02da8cb0d097eb8d57a175b88c7d8b47997506)
    call 0x1b02da8cb0d097eb8d57a175b88c7d8b47997506.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 516 len 64]), address(this.address), block.timestamp + 300
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _72 = mem[(4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28]
    require mem[(4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 351 < (4 * ceil32(return_data.size)) + return_data.size + 320
    _73 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320] <= test266151307()
    require (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352 <= test266151307() and (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 32 >= 0
    mem[64] = (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]) + 352
    mem[(6 * ceil32(return_data.size)) + 320] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 320 len 4], ext_call.return_data[0 len 28] + 320]
    require _72 + (32 * _73) + 32 <= return_data.size
    idx = 0
    s = (4 * ceil32(return_data.size)) + _72 + 352
    t = (6 * ceil32(return_data.size)) + 352
    while idx < _73:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x9108ab1bb7d054a3c1cd62329668536f925397e5)
    staticcall 0x9108ab1bb7d054a3c1cd62329668536f925397e5.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _117 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _118 = mem[_117]
    require mem[_117] == mem[_117]
    _119 = mem[64]
    mem[64] = mem[64] + 256
    mem[_119] = 0x9108ab1bb7d054a3c1cd62329668536f925397e5
    mem[_119 + 32] = 0xad6d458402f60fd3bd25163575031acdce07538d
    mem[_119 + 64] = 3000
    mem[_119 + 96] = msg.sender
    mem[_119 + 128] = block.timestamp + 300
    mem[_119 + 160] = _118
    mem[_119 + 192] = 1
    mem[_119 + 224] = 0
    mem[mem[64] + 4] = 0x9108ab1bb7d054a3c1cd62329668536f925397e5
    mem[mem[64] + 36] = 0xad6d458402f60fd3bd25163575031acdce07538d
    mem[mem[64] + 68] = 3000
    mem[mem[64] + 100] = msg.sender
    mem[mem[64] + 132] = block.timestamp + 300
    mem[mem[64] + 164] = _118
    mem[mem[64] + 196] = 1
    mem[mem[64] + 228] = 0
    require ext_code.size(0xe592427a0aece92de3edee1f18e0157c05861564)
    call 0xe592427a0aece92de3edee1f18e0157c05861564.exactInputSingle(address arg1, address arg2, uint24 arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint160 arg8) with:
         gas gas_remaining wei
        args 0x9108ab1bb7d054a3c1cd62329668536f925397e5, 0xad6d458402f60fd3bd25163575031acdce07538d, 3000, msg.sender, block.timestamp + 300, _118, 1, 0
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _130 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_130] == mem[_130]
    require ext_code.size(0xe592427a0aece92de3edee1f18e0157c05861564)
    call 0xe592427a0aece92de3edee1f18e0157c05861564.refundETH() with:
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
        require ext_code.size(0xad6d458402f60fd3bd25163575031acdce07538d)
        staticcall 0xad6d458402f60fd3bd25163575031acdce07538d.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _145 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_145] == mem[_145]
        mem[mem[64]] = mem[_145] - ext_call.return_data[0]
    else:
        _136 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_136] = return_data.size
        mem[_136 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'refund failed'
        mem[mem[64] + 4] = msg.sender
        require ext_code.size(0xad6d458402f60fd3bd25163575031acdce07538d)
        staticcall 0xad6d458402f60fd3bd25163575031acdce07538d.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _146 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_146] == mem[_146]
        mem[mem[64]] = mem[_146] - ext_call.return_data[0]
    return memory
      from mem[64]
       len 32
}



}
