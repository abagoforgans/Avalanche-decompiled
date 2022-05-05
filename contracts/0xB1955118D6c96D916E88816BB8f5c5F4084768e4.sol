contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getTokenBalance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if 0xda89941cf2e942833404833a5731620f93175697 != msg.sender:
        revert with 0, 'Only callable by owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    if 0xda89941cf2e942833404833a5731620f93175697 != msg.sender:
        revert with 0, 'Only callable by owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args 0xda89941cf2e942833404833a5731620f93175697
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), 0xda89941cf2e942833404833a5731620f93175697, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getEstimatedTokenForTokenWithSlippage(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if 0xda89941cf2e942833404833a5731620f93175697 != msg.sender:
        revert with 0, 'Only callable by owner'
    mem[160] = arg2
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg3
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _24 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _27 = mem[_24 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_24 + 192])] = mem[_24 + 224 len floor32(mem[_24 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _27) + ceil32(return_data.size) + 224] = 100 * mem[ceil32(return_data.size) + 256] / 101
    return memory
      from (32 * _27) + ceil32(return_data.size) + 224
       len 32
}

function sub_22061f22(?) payable {
    require calldata.size - 4 >= 128
    if 0xda89941cf2e942833404833a5731620f93175697 != msg.sender:
        revert with 0, 'Only callable by owner'
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg4), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg4)
    call arg4.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xda89941cf2e942833404833a5731620f93175697 != msg.sender:
        revert with 0, 'Only callable by owner'
    mem[96] = 2
    mem[128] = arg1
    mem[160] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = ext_call.return_data[0]
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _62 = mem[192 len 4], ext_call.return_data[0 len 28]
    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
    _65 = mem[_62 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_62 + 192])] = mem[_62 + 224 len floor32(mem[_62 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    if 0xda89941cf2e942833404833a5731620f93175697 != msg.sender:
        revert with 0, 'Only callable by owner'
    mem[(32 * _65) + ceil32(return_data.size) + 288] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[(32 * _65) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _65) + ceil32(return_data.size) + 324] = ext_call.return_data[0]
    mem[(32 * _65) + ceil32(return_data.size) + 356] = 100 * mem[ceil32(return_data.size) + 256] / 101
    mem[(32 * _65) + ceil32(return_data.size) + 420] = this.address
    mem[(32 * _65) + ceil32(return_data.size) + 452] = block.timestamp
    mem[(32 * _65) + ceil32(return_data.size) + 388] = 160
    mem[(32 * _65) + ceil32(return_data.size) + 484] = 2
    mem[(32 * _65) + ceil32(return_data.size) + 516 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 100 * mem[ceil32(return_data.size) + 256] / 101, Array(len=2, data=mem[(32 * _65) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _65) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _65) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    require mem[(32 * _65) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _65) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _65) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * _65) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _65) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _65) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * _65) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
}

function sub_90fbfd56(?) payable {
    require calldata.size - 4 >= 96
    if 0xda89941cf2e942833404833a5731620f93175697 != msg.sender:
        revert with 0, 'Only callable by owner'
    require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
    call 0x130966628846bfd36ff31a822705796e8cb8c18d.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
    staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xda89941cf2e942833404833a5731620f93175697 != msg.sender:
        revert with 0, 'Only callable by owner'
    mem[96] = 2
    mem[128] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[160] = arg1
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = ext_call.return_data[0]
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _64 = mem[192 len 4], ext_call.return_data[0 len 28]
    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
    _67 = mem[_64 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_64 + 192])] = mem[_64 + 224 len floor32(mem[_64 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    if 0xda89941cf2e942833404833a5731620f93175697 != msg.sender:
        revert with 0, 'Only callable by owner'
    mem[(32 * _67) + ceil32(return_data.size) + 288] = arg1
    mem[(32 * _67) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _67) + ceil32(return_data.size) + 324] = ext_call.return_data[0]
    mem[(32 * _67) + ceil32(return_data.size) + 356] = 100 * mem[ceil32(return_data.size) + 256] / 101
    mem[(32 * _67) + ceil32(return_data.size) + 420] = this.address
    mem[(32 * _67) + ceil32(return_data.size) + 452] = block.timestamp
    mem[(32 * _67) + ceil32(return_data.size) + 388] = 160
    mem[(32 * _67) + ceil32(return_data.size) + 484] = 2
    mem[(32 * _67) + ceil32(return_data.size) + 516 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 100 * mem[ceil32(return_data.size) + 256] / 101, Array(len=2, data=mem[(32 * _67) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _67) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _67) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _141 = mem[(32 * _67) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28]
    require mem[(32 * _67) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _67) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _67) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * _67) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _67) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _67) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * _67) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    mem[(32 * _67) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _67) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * _67) + ceil32(return_data.size) + 320]
    mem[(32 * _67) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_141 + (32 * _67) + ceil32(return_data.size) + 320])] = mem[_141 + (32 * _67) + ceil32(return_data.size) + 352 len floor32(mem[_141 + (32 * _67) + ceil32(return_data.size) + 320])]
    require 1 < mem[(32 * _67) + (2 * ceil32(return_data.size)) + 320]
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args mem[(32 * _67) + (2 * ceil32(return_data.size)) + 384], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
