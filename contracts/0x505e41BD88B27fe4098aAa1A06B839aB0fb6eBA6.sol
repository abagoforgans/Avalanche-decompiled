contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getTokenBalance(address arg1, address arg2) payable {
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

function withdrawTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
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
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), 0xda89941cf2e942833404833a5731620f93175697, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getEstimatedTokenForTokenWithSlippage(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
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
    _22 = mem[192 len 4], Mask(224, 32, arg3) >> 32
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192] <= 4294967296 and mem[192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg3) >> 32 + 192]
    _25 = mem[_22 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_22 + 192])] = mem[_22 + 224 len floor32(mem[_22 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _25) + ceil32(return_data.size) + 224] = 100 * mem[ceil32(return_data.size) + 256] / 105
    return memory
      from (32 * _25) + ceil32(return_data.size) + 224
       len 32
}

function StakeSnowBank() payable {
    require ext_code.size(0x7d1232b90d3f809a54eeaeebc639c62df8a8942f)
    staticcall 0x7d1232b90d3f809a54eeaeebc639c62df8a8942f.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x7d1232b90d3f809a54eeaeebc639c62df8a8942f)
    call 0x7d1232b90d3f809a54eeaeebc639c62df8a8942f.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x7d1232b90d3f809a54eeaeebc639c62df8a8942f)
    call 0x7d1232b90d3f809a54eeaeebc639c62df8a8942f.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x3d371d925db78f8e46130af95756789ece6387ce, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x7d1232b90d3f809a54eeaeebc639c62df8a8942f)
    call 0x7d1232b90d3f809a54eeaeebc639c62df8a8942f.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x85784d5e2ccae89bcb39ebf0ac6cdc93d42d99ad, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x3d371d925db78f8e46130af95756789ece6387ce)
    call 0x3d371d925db78f8e46130af95756789ece6387ce.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function buyAndStakeSnowBank() payable {
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
    mem[160] = 0x7d1232b90d3f809a54eeaeebc639c62df8a8942f
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
    _42 = mem[192 len 4], ext_call.return_data[0 len 28]
    require mem[192 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[192 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192] <= 4294967296 and mem[192 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], ext_call.return_data[0 len 28] + 192]
    _45 = mem[_42 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_42 + 192])] = mem[_42 + 224 len floor32(mem[_42 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _45) + ceil32(return_data.size) + 288] = 0x7d1232b90d3f809a54eeaeebc639c62df8a8942f
    mem[(32 * _45) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _45) + ceil32(return_data.size) + 324] = ext_call.return_data[0]
    mem[(32 * _45) + ceil32(return_data.size) + 356] = 100 * mem[ceil32(return_data.size) + 256] / 105
    mem[(32 * _45) + ceil32(return_data.size) + 420] = this.address
    mem[(32 * _45) + ceil32(return_data.size) + 452] = block.timestamp
    mem[(32 * _45) + ceil32(return_data.size) + 388] = 160
    mem[(32 * _45) + ceil32(return_data.size) + 484] = 2
    mem[(32 * _45) + ceil32(return_data.size) + 516 len 0] = None
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 100 * mem[ceil32(return_data.size) + 256] / 105, Array(len=2, data=mem[(32 * _45) + ceil32(return_data.size) + 516 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _45) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _45) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    require mem[(32 * _45) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _45) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _45) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * _45) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _45) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _45) + ceil32(return_data.size) + 320 len 4], ext_call.return_data[0 len 28] + (32 * _45) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
}



}
