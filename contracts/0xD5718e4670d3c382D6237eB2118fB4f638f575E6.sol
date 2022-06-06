contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function withdrawAll() {
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function get_balance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_4f1aef8d(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 0
    require 0 < arg4.length
    require ext_code.size(this.address)
    staticcall this.address.0xe08be849 with:
            gas gas_remaining wei
           args address(arg2), address(arg3), arg1, mem[140 len 20]
    mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0 < arg4.length
    require ext_code.size(this.address)
    call this.address.0x7dc20382 with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg1, ext_call.return_data[0], msg.sender, mem[140 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg4.length) + 132] = arg3
    mem[(32 * arg4.length) + 164] = msg.sender
    require ext_code.size(this.address)
    staticcall this.address.0x7716a93c with:
            gas gas_remaining wei
           args address(arg3), msg.sender
    mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < arg4.length
    require ext_code.size(this.address)
    staticcall this.address.0xe08be849 with:
            gas gas_remaining wei
           args address(arg3), address(arg2), ext_call.return_data[0], mem[172 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg4.length) + 132] = arg3
    mem[(32 * arg4.length) + 164] = msg.sender
    require ext_code.size(this.address)
    staticcall this.address.0x7716a93c with:
            gas gas_remaining wei
           args address(arg3), msg.sender
    mem[(32 * arg4.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < arg4.length
    require ext_code.size(this.address)
    call this.address.0x7dc20382 with:
         gas gas_remaining wei
        args address(arg3), address(arg2), ext_call.return_data[0], ext_call.return_data[0], msg.sender, mem[172 len 20]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'arb trade not profit'
}

function swap(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5, address arg6) {
    require calldata.size - 4 >= 192
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(arg5), address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg6), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        mem[160] = arg2
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = arg4
        mem[292] = arg5
        mem[324] = block.timestamp
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(arg6)
        call arg6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg3, arg4, Array(len=2, data=mem[388 len 64]), address(arg5), block.timestamp
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    else:
        if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
            mem[192] = arg2
            mem[224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[228] = arg3
            mem[260] = arg4
            mem[324] = arg5
            mem[356] = block.timestamp
            mem[292] = 160
            mem[388] = 3
            mem[420 len 0] = None
            require ext_code.size(arg6)
            call arg6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=3, data=mem[420 len 96]), address(arg5), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 224
            require return_data.size >= 32
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        else:
            mem[160] = arg2
            mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[196] = arg3
            mem[228] = arg4
            mem[292] = arg5
            mem[324] = block.timestamp
            mem[260] = 160
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(arg6)
            call arg6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args arg3, arg4, Array(len=2, data=mem[388 len 64]), address(arg5), block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
}

function getAmountOutMin(address arg1, address arg2, uint256 arg3, address arg4) {
    require calldata.size - 4 >= 128
    if arg1 == 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        mem[160] = arg2
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg3
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(arg4)
        staticcall arg4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _68 = mem[192 len 4], Mask(224, 32, arg3) >> 32
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
        _77 = mem[_68 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_68 + 192])] = mem[_68 + 224 len floor32(mem[_68 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        mem[(32 * _77) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
        return memory
          from (32 * _77) + ceil32(return_data.size) + 224
           len 32
    if arg2 != 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7:
        mem[192] = arg2
        mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[228] = arg3
        mem[260] = 64
        mem[292] = 3
        mem[324 len 0] = None
        require ext_code.size(arg4)
        staticcall arg4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=3, data=mem[324 len 96])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 224
        require return_data.size >= 32
        _70 = mem[224 len 4], Mask(224, 32, arg3) >> 32
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[224 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg3) >> 32 + 224]
        _78 = mem[_70 + 224]
        mem[ceil32(return_data.size) + 256 len floor32(mem[_70 + 224])] = mem[_70 + 256 len floor32(mem[_70 + 224])]
        require 2 < mem[ceil32(return_data.size) + 224]
        mem[(32 * _78) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 320]
        return memory
          from (32 * _78) + ceil32(return_data.size) + 256
           len 32
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(arg4)
    staticcall arg4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _72 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _79 = mem[_72 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_72 + 192])] = mem[_72 + 224 len floor32(mem[_72 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _79) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _79) + ceil32(return_data.size) + 224
       len 32
}



}
