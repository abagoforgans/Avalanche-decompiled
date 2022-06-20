contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_a0e2e5f6;

function owner() {
    return owner
}

function sub_a0e2e5f6(?) {
    require calldata.size - 4 >= 32
    return sub_a0e2e5f6[arg1]
}

function getTokenAmount(address arg1) {
    require calldata.size - 4 >= 32
    return sub_a0e2e5f6[address(arg1)]
}

function _fallback() payable {
    revert
}

function test(address arg1) {
    require calldata.size - 4 >= 32
}

function getBalanceToken(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function request(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_26a0af67(?) {
    require calldata.size - 4 >= 160
    require ext_code.size(arg2)
    if arg5 != 1:
        call arg2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[160] = arg3
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = arg1
        mem[228] = 0
        mem[292] = this.address
        mem[324] = block.timestamp + 3000
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(arg4)
        call arg4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 0, 160, address(this.address), block.timestamp + 3000, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _53 = mem[192 len 4], Mask(224, 32, arg1) >> 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_53 + 192])] = mem[_53 + 224 len floor32(mem[_53 + 192])]
    else:
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        call arg2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg4), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[160] = arg3
        mem[192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[196] = ext_call.return_data[0]
        mem[228] = 0
        mem[292] = this.address
        mem[324] = block.timestamp + 3000
        mem[260] = 160
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(arg4)
        call arg4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 3000, 2, mem[388 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _55 = mem[192 len 4], ext_call.return_data[0 len 28]
        require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
        require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
        require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_55 + 192])] = mem[_55 + 224 len floor32(mem[_55 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    sub_a0e2e5f6[address(arg3)] = mem[ceil32(return_data.size) + 256]
}

function sub_9ac81333(?) {
    require calldata.size - 4 >= 160
    mem[160] = arg2
    if arg1 <= 0:
        if arg4:
            mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196] = 10^18
            mem[228] = 64
            mem[260] = 2
            mem[292 len 0] = None
            require ext_code.size(arg3)
            staticcall arg3.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args 10^18, 64, 2, mem[292 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _79 = mem[192 len 4], 232830643
            require mem[192 len 4], 232830643 <= 4294967296
            require mem[192 len 4], 232830643 + 32 <= return_data.size
            require mem[mem[192 len 4], 232830643 + 192] <= 4294967296 and mem[192 len 4], 232830643 + (32 * mem[mem[192 len 4], 232830643 + 192]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830643 + 192]
            _91 = mem[_79 + 192]
            mem[ceil32(return_data.size) + 224 len floor32(mem[_79 + 192])] = mem[_79 + 224 len floor32(mem[_79 + 192])]
            require 1 < mem[ceil32(return_data.size) + 192]
            mem[(32 * _91) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
            return memory
              from (32 * _91) + ceil32(return_data.size) + 224
               len 32
        mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        mem[196] = 10^18
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(arg3)
        staticcall arg3.getAmountsIn(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args 10^18, 64, 2, mem[292 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _81 = mem[192 len 4], 232830643
        require mem[192 len 4], 232830643 <= 4294967296
        require mem[192 len 4], 232830643 + 32 <= return_data.size
        require mem[mem[192 len 4], 232830643 + 192] <= 4294967296 and mem[192 len 4], 232830643 + (32 * mem[mem[192 len 4], 232830643 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830643 + 192]
        _92 = mem[_81 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_81 + 192])] = mem[_81 + 224 len floor32(mem[_81 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        mem[(32 * _92) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
        return memory
          from (32 * _92) + ceil32(return_data.size) + 224
           len 32
    if arg4:
        mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196] = arg1
        mem[228] = 64
        mem[260] = 2
        mem[292 len 0] = None
        require ext_code.size(arg3)
        staticcall arg3.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg1, Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _83 = mem[192 len 4], Mask(224, 32, arg1) >> 32
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
        _93 = mem[_83 + 192]
        mem[ceil32(return_data.size) + 224 len floor32(mem[_83 + 192])] = mem[_83 + 224 len floor32(mem[_83 + 192])]
        require 1 < mem[ceil32(return_data.size) + 192]
        mem[(32 * _93) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
        return memory
          from (32 * _93) + ceil32(return_data.size) + 224
           len 32
    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(arg3)
    staticcall arg3.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _85 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    _94 = mem[_85 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_85 + 192])] = mem[_85 + 224 len floor32(mem[_85 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _94) + ceil32(return_data.size) + 224] = mem[ceil32(return_data.size) + 256]
    return memory
      from (32 * _94) + ceil32(return_data.size) + 224
       len 32
}



}
