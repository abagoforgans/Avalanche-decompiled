contract main {




// =====================  Runtime code  =====================


const sub_1e1c1f77(?) = 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33

const sub_3c97b00d(?) = 0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52

const sub_812122ba(?) = 0xd36a5269ee4621a8b6985f999e6a1f228e1b7737

const sub_bdec494d(?) = 0x7d1e8650abd5f8363d63dc7ab838cec8c726dd38

const sub_d06a88b7(?) = 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33

const ROUTER = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const USDC = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664

const JOE = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd


uint256 startBalance;
address stor1;

function startBalance() payable {
    return startBalance
}

function _fallback() payable {
    revert
}

function sub_5b8faafa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d42244e4(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[160] = 0x7d1e8650abd5f8363d63dc7ab838cec8c726dd38
    mem[192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _20 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
    _21 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _20 + (32 * _21) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _21] = mem[_20 + 224 len 32 * _21]
    if 0 >= _21:
        revert with 0, 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 224]
    return memory
      from mem[64]
       len 32
}

function sub_243562b2(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd
    mem[160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg1
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _20 = mem[192 len 4], Mask(224, 32, arg1) >> 32
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg1) >> 32 + 223 < return_data.size + 192
    _21 = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _20 + (32 * _21) + 32
    mem[ceil32(return_data.size) + 224 len 32 * _21] = mem[_20 + 224 len 32 * _21]
    if 1 >= _21:
        revert with 0, 50
    mem[mem[64]] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len 32
}

function sub_1c93b9e6(?) payable {
    require calldata.size - 4 >= 64
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    startBalance = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        revert with 0, 18
    mem[(4 * ceil32(return_data.size)) + 100] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[(4 * ceil32(return_data.size)) + 132] = 0xd36a5269ee4621a8b6985f999e6a1f228e1b7737
    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] / arg2
    mem[(4 * ceil32(return_data.size)) + 196] = 0
    mem[(4 * ceil32(return_data.size)) + 228] = 'Generic' << 200
    require ext_code.size(0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52)
    call 0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
         gas gas_remaining wei
        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0xd36a5269ee4621a8b6985f999e6a1f228e1b7737, ext_call.return_data[0] / arg2, 0, 'Generic' << 200
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 96] = 2
    mem[(6 * ceil32(return_data.size)) + 128] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[(6 * ceil32(return_data.size)) + 160] = 0x7d1e8650abd5f8363d63dc7ab838cec8c726dd38
    mem[(6 * ceil32(return_data.size)) + 196] = this.address
    require ext_code.size(0xd36a5269ee4621a8b6985f999e6a1f228e1b7737)
    staticcall 0xd36a5269ee4621a8b6985f999e6a1f228e1b7737.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(7 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 228] = 64
    mem[(7 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 128
    t = (7 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _86 = mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (7 * ceil32(return_data.size)) + return_data.size + 192
    _87 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(8 * ceil32(return_data.size)) + 192] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    require return_data.size >= _86 + (32 * _87) + 32
    mem[(8 * ceil32(return_data.size)) + 224 len 32 * _87] = mem[(7 * ceil32(return_data.size)) + _86 + 224 len 32 * _87]
    if 0 >= _87:
        revert with 0, 50
    _142 = mem[(8 * ceil32(return_data.size)) + 224]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _142
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 128
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = 0xf000000000000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _142, 0, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[mem[64] + 196 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _193 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _194 = mem[_193]
    require mem[_193] <= test266151307()
    require _193 + mem[_193] + 31 < _193 + return_data.size
    _195 = mem[_193 + mem[_193]]
    if mem[_193 + mem[_193]] > test266151307():
        revert with 0, 65
    if _193 + ceil32(return_data.size) + ceil32(32 * mem[_193 + mem[_193]]) + 1 > test266151307() or ceil32(32 * mem[_193 + mem[_193]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _193 + ceil32(return_data.size) + ceil32(32 * mem[_193 + mem[_193]]) + 1
    mem[_193 + ceil32(return_data.size)] = _195
    require return_data.size >= _194 + (32 * _195) + 32
    mem[_193 + ceil32(return_data.size) + 32 len 32 * _195] = mem[_193 + _194 + 32 len 32 * _195]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xd36a5269ee4621a8b6985f999e6a1f228e1b7737)
    staticcall 0xd36a5269ee4621a8b6985f999e6a1f228e1b7737.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _240 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _241 = mem[_240]
    mem[mem[64] + 36] = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd
    mem[mem[64] + 68] = 460152 * 24 * 3600
    mem[mem[64] + 100] = _241
    require ext_code.size(0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52)
    call 0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0x784a6f6500000000000000000000000000000000000000000000000000000000, 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd, 460152 * 24 * 3600, _241
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33)
    staticcall 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _248 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require ext_code.size(0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33)
    call 0x57319d41f71e81f3c65f2a47ca4e001ebafd4f33.leave(uint256 arg1) with:
         gas gas_remaining wei
        args mem[_248]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd)
    staticcall 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _254 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _255 = mem[_254]
    if 0 >= mem[(6 * ceil32(return_data.size)) + 96]:
        revert with 0, 50
    mem[(6 * ceil32(return_data.size)) + 128] = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd
    if 1 >= mem[(6 * ceil32(return_data.size)) + 96]:
        revert with 0, 50
    mem[(6 * ceil32(return_data.size)) + 160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    _258 = mem[64]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _255
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _259 = mem[(6 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 164] = mem[(6 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (6 * ceil32(return_data.size)) + 128
    t = mem[64] + 196
    while idx < _259:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_258 + 100] = this.address
    mem[_258 + 132] = 0xf000000000000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _258 + (32 * _259) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _279 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _280 = mem[_279]
    require mem[_279] <= test266151307()
    require _279 + mem[_279] + 31 < _279 + return_data.size
    _281 = mem[_279 + mem[_279]]
    if mem[_279 + mem[_279]] > test266151307():
        revert with 0, 65
    if _279 + ceil32(return_data.size) + ceil32(32 * mem[_279 + mem[_279]]) + 1 > test266151307() or ceil32(32 * mem[_279 + mem[_279]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _279 + ceil32(return_data.size) + ceil32(32 * mem[_279 + mem[_279]]) + 1
    mem[_279 + ceil32(return_data.size)] = _281
    require return_data.size >= _280 + (32 * _281) + 32
    mem[_279 + ceil32(return_data.size) + 32 len 32 * _281] = mem[_279 + _280 + 32 len 32 * _281]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _297 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _298 = mem[_297]
    if mem[_297] <= startBalance:
        revert with 0, '1337'
    mem[mem[64] + 4] = stor1
    mem[mem[64] + 36] = _298
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, _298
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _303 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_303] == bool(mem[_303])
}



}
