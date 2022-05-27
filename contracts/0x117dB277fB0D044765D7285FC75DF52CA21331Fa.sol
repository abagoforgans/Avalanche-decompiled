contract main {




// =====================  Runtime code  =====================


const sub_3c97b00d(?) = 0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52

const sub_58b02822(?) = 0xecc5748b1ff6b23f284ec81e8bf034409961d8dc

const sub_5c42fdbf(?) = 0x5c0401e81bc07ca70fad469b451682c0d747ef1c

const sub_bd8f96b2(?) = 0x30a6f8949d4ce66918f393318d5f9d3bd1304461

const ROUTER = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const USDC = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664


uint256 sub_a3015773;
uint256 stor1; offset 32
uint256 balance;
address stor2;

function sub_a3015773(?) {
    return sub_a3015773
}

function balance() {
    return balance
}

function sub_5b8faafa(?) {
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
        args stor2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d42244e4(?) {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[160] = 0xecc5748b1ff6b23f284ec81e8bf034409961d8dc
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

function sub_b65a3d75(?) {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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

function sub_1c93b9e6(?) {
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
    sub_a3015773 = ext_call.return_data[0]
    if not arg2:
        revert with 0, 18
    mem[(2 * ceil32(return_data.size)) + 100] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[(2 * ceil32(return_data.size)) + 132] = 0x30a6f8949d4ce66918f393318d5f9d3bd1304461
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] / arg2
    mem[(2 * ceil32(return_data.size)) + 196] = 0
    mem[(2 * ceil32(return_data.size)) + 228] = 'Generic' << 200
    require ext_code.size(0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52)
    call 0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
         gas gas_remaining wei
        args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0x30a6f8949d4ce66918f393318d5f9d3bd1304461, ext_call.return_data[0] / arg2, 0, 'Generic' << 200
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0x30a6f8949d4ce66918f393318d5f9d3bd1304461)
    staticcall 0x30a6f8949d4ce66918f393318d5f9d3bd1304461.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balance = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 96] = 2
    mem[(6 * ceil32(return_data.size)) + 128] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[(6 * ceil32(return_data.size)) + 160] = 0xecc5748b1ff6b23f284ec81e8bf034409961d8dc
    mem[(6 * ceil32(return_data.size)) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 196] = balance
    mem[(6 * ceil32(return_data.size)) + 228] = 64
    mem[(6 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 128
    t = (6 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args balance, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _86 = mem[(6 * ceil32(return_data.size)) + 192 len 4], stor1
    require mem[(6 * ceil32(return_data.size)) + 192 len 4], stor1 <= test266151307()
    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], stor1 + 223 < (6 * ceil32(return_data.size)) + return_data.size + 192
    _87 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], stor1 + 192]
    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], stor1 + 192] > test266151307():
        revert with 0, 65
    if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], stor1 + 192]) + 193 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], stor1 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 192 len 4], stor1 + 192]) + 193
    mem[(7 * ceil32(return_data.size)) + 192] = _87
    require return_data.size >= _86 + (32 * _87) + 32
    mem[(7 * ceil32(return_data.size)) + 224 len 32 * _87] = mem[(6 * ceil32(return_data.size)) + _86 + 224 len 32 * _87]
    if 0 >= _87:
        revert with 0, 50
    _146 = mem[(7 * ceil32(return_data.size)) + 224]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _146
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
        args _146, 0, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[mem[64] + 196 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _201 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _202 = mem[_201]
    require mem[_201] <= test266151307()
    require _201 + mem[_201] + 31 < _201 + return_data.size
    _203 = mem[_201 + mem[_201]]
    if mem[_201 + mem[_201]] > test266151307():
        revert with 0, 65
    if _201 + ceil32(return_data.size) + ceil32(32 * mem[_201 + mem[_201]]) + 1 > test266151307() or ceil32(32 * mem[_201 + mem[_201]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _201 + ceil32(return_data.size) + ceil32(32 * mem[_201 + mem[_201]]) + 1
    mem[_201 + ceil32(return_data.size)] = _203
    require return_data.size >= _202 + (32 * _203) + 32
    mem[_201 + ceil32(return_data.size) + 32 len 32 * _203] = mem[_201 + _202 + 32 len 32 * _203]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xecc5748b1ff6b23f284ec81e8bf034409961d8dc)
    staticcall 0xecc5748b1ff6b23f284ec81e8bf034409961d8dc.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _252 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    balance = mem[_252]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x30a6f8949d4ce66918f393318d5f9d3bd1304461)
    staticcall 0x30a6f8949d4ce66918f393318d5f9d3bd1304461.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _256 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _257 = mem[_256]
    balance = mem[_256]
    if mem[_256] < 1:
        revert with 0, 17
    mem[mem[64] + 36] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[mem[64] + 68] = 473256 * 24 * 3600
    mem[mem[64] + 100] = _257 - 1
    require ext_code.size(0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52)
    call 0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0x42656e5169000000000000000000000000000000000000000000000000000000, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 473256 * 24 * 3600, _257 - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x5c0401e81bc07ca70fad469b451682c0d747ef1c)
    staticcall 0x5c0401e81bc07ca70fad469b451682c0d747ef1c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _264 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    balance = mem[_264]
    mem[mem[64]] = 0x852a12e300000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = -1
    require ext_code.size(0x5c0401e81bc07ca70fad469b451682c0d747ef1c)
    call 0x5c0401e81bc07ca70fad469b451682c0d747ef1c.redeemUnderlying(uint256 arg1) with:
         gas gas_remaining wei
        args -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 >= mem[(6 * ceil32(return_data.size)) + 96]:
        revert with 0, 50
    mem[(6 * ceil32(return_data.size)) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if 1 >= mem[(6 * ceil32(return_data.size)) + 96]:
        revert with 0, 50
    mem[(6 * ceil32(return_data.size)) + 160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 0
    mem[mem[64] + 36] = 128
    _271 = mem[(6 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 132] = mem[(6 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (6 * ceil32(return_data.size)) + 128
    t = mem[64] + 164
    while idx < _271:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = 0xf000000000000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args 0, 128, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, mem[mem[64] + 132 len (32 * _271) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _295 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _296 = mem[_295]
    require mem[_295] <= test266151307()
    require _295 + mem[_295] + 31 < _295 + return_data.size
    _297 = mem[_295 + mem[_295]]
    if mem[_295 + mem[_295]] > test266151307():
        revert with 0, 65
    if _295 + ceil32(return_data.size) + ceil32(32 * mem[_295 + mem[_295]]) + 1 > test266151307() or ceil32(32 * mem[_295 + mem[_295]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _295 + ceil32(return_data.size) + ceil32(32 * mem[_295 + mem[_295]]) + 1
    mem[_295 + ceil32(return_data.size)] = _297
    require return_data.size >= _296 + (32 * _297) + 32
    mem[_295 + ceil32(return_data.size) + 32 len 32 * _297] = mem[_295 + _296 + 32 len 32 * _297]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _317 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_317] <= sub_a3015773:
        revert with 0, '1337'
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _323 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _324 = mem[_323]
    mem[mem[64] + 4] = stor2
    mem[mem[64] + 36] = _324
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, _324
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _327 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_327] == bool(mem[_327])
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x73b295c2(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xb65a3d75(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x73b295c2(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                if unknown_0x89a30271(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                require unknown_0xa3015773(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return sub_a3015773
            if unknown_0xb65a3d75(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                mem[128] = 2
                mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
                mem[192] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
                mem[228] = arg1
                mem[260] = 64
                mem[292] = 2
                idx = 0
                s = 160
                t = 324
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg1, Array(len=2, data=mem[324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _151 = mem[224 len 4], Mask(224, 32, arg1) >> 32
                require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255 < return_data.size + 224
                _154 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                if mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
                    revert with 0, 65
                if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                require return_data.size >= _151 + (32 * _154) + 32
                mem[ceil32(return_data.size) + 256 len 32 * _154] = mem[_151 + 256 len 32 * _154]
                if 1 >= _154:
                    revert with 0, 50
                mem[mem[64]] = mem[ceil32(return_data.size) + 288]
            else:
                if unknown_0xb69ef8a8(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return balance
                if unknown_0xbd8f96b2(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 0x30a6f8949d4ce66918f393318d5f9d3bd1304461
                require unknown_0xd42244e4(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                mem[128] = 2
                mem[160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                mem[192] = 0xecc5748b1ff6b23f284ec81e8bf034409961d8dc
                mem[224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[228] = arg1
                mem[260] = 64
                mem[292] = 2
                idx = 0
                s = 160
                t = 324
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
                staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg1, Array(len=2, data=mem[324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(return_data.size) + 224
                require return_data.size >= 32
                _152 = mem[224 len 4], Mask(224, 32, arg1) >> 32
                require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255 < return_data.size + 224
                _155 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                if mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
                    revert with 0, 65
                if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                require return_data.size >= _152 + (32 * _155) + 32
                mem[ceil32(return_data.size) + 256 len 32 * _155] = mem[_152 + 256 len 32 * _155]
                if 0 >= _155:
                    revert with 0, 50
                mem[mem[64]] = mem[ceil32(return_data.size) + 256]
            return memory
              from mem[64]
               len 32
        if uint32(call.func_hash) >> 224 != unknown_0x1c93b9e6(?????):
            if unknown_0x32fe7b26(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 0x60ae616a2155ee3d9a68541ba4544862310933d4
            if unknown_0x3c97b00d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52
            if unknown_0x58b02822(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 0xecc5748b1ff6b23f284ec81e8bf034409961d8dc
            if uint32(call.func_hash) >> 224 != unknown_0x5b8faafa(?????):
                require unknown_0x5c42fdbf(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
            require not msg.value
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
                args stor2, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            require not msg.value
            require calldata.size - 4 >= 64
            mem[132] = msg.sender
            mem[164] = this.address
            mem[196] = arg1
            require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(return_data.size) + 132] = this.address
            require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
            staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            sub_a3015773 = ext_call.return_data[0]
            if not arg2:
                revert with 0, 18
            mem[(2 * ceil32(return_data.size)) + 132] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
            mem[(2 * ceil32(return_data.size)) + 164] = 0x30a6f8949d4ce66918f393318d5f9d3bd1304461
            mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0] / arg2
            mem[(2 * ceil32(return_data.size)) + 228] = 0
            mem[(2 * ceil32(return_data.size)) + 260] = 'Generic' << 200
            require ext_code.size(0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52)
            call 0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
                 gas gas_remaining wei
                args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, 0x30a6f8949d4ce66918f393318d5f9d3bd1304461, ext_call.return_data[0] / arg2, 0, 'Generic' << 200
            mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 132] = this.address
            require ext_code.size(0x30a6f8949d4ce66918f393318d5f9d3bd1304461)
            staticcall 0x30a6f8949d4ce66918f393318d5f9d3bd1304461.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            balance = ext_call.return_data[0]
            mem[(6 * ceil32(return_data.size)) + 128] = 2
            mem[(6 * ceil32(return_data.size)) + 160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
            mem[(6 * ceil32(return_data.size)) + 192] = 0xecc5748b1ff6b23f284ec81e8bf034409961d8dc
            mem[(6 * ceil32(return_data.size)) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            mem[(6 * ceil32(return_data.size)) + 228] = balance
            mem[(6 * ceil32(return_data.size)) + 260] = 64
            mem[(6 * ceil32(return_data.size)) + 292] = 2
            idx = 0
            s = (6 * ceil32(return_data.size)) + 160
            t = (6 * ceil32(return_data.size)) + 324
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args balance, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(6 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _150 = mem[(6 * ceil32(return_data.size)) + 224 len 4], stor1
            require mem[(6 * ceil32(return_data.size)) + 224 len 4], stor1 <= test266151307()
            require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], stor1 + 255 < (6 * ceil32(return_data.size)) + return_data.size + 224
            _153 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], stor1 + 224]
            if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], stor1 + 224] > test266151307():
                revert with 0, 65
            if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], stor1 + 224]) + 225 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], stor1 + 224]) + 1 < 0:
                revert with 0, 65
            mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], stor1 + 224]) + 225
            mem[(7 * ceil32(return_data.size)) + 224] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 224 len 4], stor1 + 224]
            require return_data.size >= _150 + (32 * _153) + 32
            mem[(7 * ceil32(return_data.size)) + 256 len 32 * _153] = mem[(6 * ceil32(return_data.size)) + _150 + 256 len 32 * _153]
            if 0 >= _153:
                revert with 0, 50
            _230 = mem[(7 * ceil32(return_data.size)) + 256]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _230
            mem[mem[64] + 36] = 0
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = 2
            idx = 0
            s = (6 * ceil32(return_data.size)) + 160
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
                args _230, 0, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[mem[64] + 196 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _291 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _292 = mem[_291]
            require mem[_291] <= test266151307()
            require _291 + mem[_291] + 31 < _291 + return_data.size
            _293 = mem[_291 + mem[_291]]
            if mem[_291 + mem[_291]] > test266151307():
                revert with 0, 65
            if _291 + ceil32(return_data.size) + ceil32(32 * mem[_291 + mem[_291]]) + 1 > test266151307() or ceil32(32 * mem[_291 + mem[_291]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _291 + ceil32(return_data.size) + ceil32(32 * mem[_291 + mem[_291]]) + 1
            mem[_291 + ceil32(return_data.size)] = _293
            require return_data.size >= _292 + (32 * _293) + 32
            mem[_291 + ceil32(return_data.size) + 32 len 32 * _293] = mem[_291 + _292 + 32 len 32 * _293]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xecc5748b1ff6b23f284ec81e8bf034409961d8dc)
            staticcall 0xecc5748b1ff6b23f284ec81e8bf034409961d8dc.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _342 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            balance = mem[_342]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x30a6f8949d4ce66918f393318d5f9d3bd1304461)
            staticcall 0x30a6f8949d4ce66918f393318d5f9d3bd1304461.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _346 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _347 = mem[_346]
            balance = mem[_346]
            if mem[_346] < 1:
                revert with 0, 17
            mem[mem[64] + 36] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            mem[mem[64] + 68] = 473256 * 24 * 3600
            mem[mem[64] + 100] = _347 - 1
            require ext_code.size(0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52)
            call 0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args 0x42656e5169000000000000000000000000000000000000000000000000000000, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 473256 * 24 * 3600, _347 - 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x5c0401e81bc07ca70fad469b451682c0d747ef1c)
            staticcall 0x5c0401e81bc07ca70fad469b451682c0d747ef1c.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _354 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            balance = mem[_354]
            mem[mem[64]] = 0x852a12e300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = -1
            require ext_code.size(0x5c0401e81bc07ca70fad469b451682c0d747ef1c)
            call 0x5c0401e81bc07ca70fad469b451682c0d747ef1c.redeemUnderlying(uint256 arg1) with:
                 gas gas_remaining wei
                args -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= mem[(6 * ceil32(return_data.size)) + 128]:
                revert with 0, 50
            mem[(6 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            if 1 >= mem[(6 * ceil32(return_data.size)) + 128]:
                revert with 0, 50
            mem[(6 * ceil32(return_data.size)) + 192] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
            mem[mem[64]] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 0
            mem[mem[64] + 36] = 128
            _361 = mem[(6 * ceil32(return_data.size)) + 128]
            mem[mem[64] + 132] = mem[(6 * ceil32(return_data.size)) + 128]
            idx = 0
            s = (6 * ceil32(return_data.size)) + 160
            t = mem[64] + 164
            while idx < _361:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = 0xf000000000000000000000000000000000000000000000000000000000000000
            require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
            call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args 0, 128, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, mem[mem[64] + 132 len (32 * _361) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _385 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _386 = mem[_385]
            require mem[_385] <= test266151307()
            require _385 + mem[_385] + 31 < _385 + return_data.size
            _387 = mem[_385 + mem[_385]]
            if mem[_385 + mem[_385]] > test266151307():
                revert with 0, 65
            if _385 + ceil32(return_data.size) + ceil32(32 * mem[_385 + mem[_385]]) + 1 > test266151307() or ceil32(32 * mem[_385 + mem[_385]]) + 1 < 0:
                revert with 0, 65
            mem[64] = _385 + ceil32(return_data.size) + ceil32(32 * mem[_385 + mem[_385]]) + 1
            mem[_385 + ceil32(return_data.size)] = _387
            require return_data.size >= _386 + (32 * _387) + 32
            mem[_385 + ceil32(return_data.size) + 32 len 32 * _387] = mem[_385 + _386 + 32 len 32 * _387]
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
            staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _407 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_407] <= sub_a3015773:
                revert with 0, '1337'
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
            staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _413 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _414 = mem[_413]
            mem[mem[64] + 4] = stor2
            mem[mem[64] + 36] = _414
            require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
            call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xa9059cbb with:
                 gas gas_remaining wei
                args stor2, _414
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _417 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_417] == bool(mem[_417])
}



}
