contract main {




// =====================  Runtime code  =====================


const sub_08dc6924(?) = 0xb7e446ff1a2eeea8cd07331c7e06b0276d0b06b7

const sub_3c97b00d(?) = 0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52

const sub_9bc82818(?) = 0xceb4181f8e80837437a0a2dd4d97e5688471c4b3

const sub_d4052545(?) = 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9

const WMEMO = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b

const ROUTER = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const TIME = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3

const MEMO = 0x136acd46c134e8269052c62a67042d6bdedde3c9

const MIM = 0x130966628846bfd36ff31a822705796e8cb8c18d


uint256 sub_f7cff226;
address stor1;

function sub_f7cff226(?) payable {
    return sub_f7cff226
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
    mem[128] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[160] = 0xb7e446ff1a2eeea8cd07331c7e06b0276d0b06b7
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

function sub_0cb526dd(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    mem[160] = 0x130966628846bfd36ff31a822705796e8cb8c18d
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

function sub_b138d471(?) payable {
    require calldata.size - 4 >= 32
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg1
    require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
    call 0x130966628846bfd36ff31a822705796e8cb8c18d.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
    staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_f7cff226 = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
    staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 100] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[(4 * ceil32(return_data.size)) + 132] = 0xceb4181f8e80837437a0a2dd4d97e5688471c4b3
    mem[(4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] / 2
    mem[(4 * ceil32(return_data.size)) + 196] = 0
    mem[(4 * ceil32(return_data.size)) + 228] = 'Generic' << 200
    require ext_code.size(0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52)
    call 0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
         gas gas_remaining wei
        args 0x130966628846bfd36ff31a822705796e8cb8c18d, 0xceb4181f8e80837437a0a2dd4d97e5688471c4b3, Mask(255, 1, ext_call.return_data[0]), 0, 'Generic' << 200
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 96] = 2
    mem[(6 * ceil32(return_data.size)) + 128] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[(6 * ceil32(return_data.size)) + 160] = 0xb7e446ff1a2eeea8cd07331c7e06b0276d0b06b7
    mem[(6 * ceil32(return_data.size)) + 192] = 2
    mem[(6 * ceil32(return_data.size)) + 292] = this.address
    require ext_code.size(0xceb4181f8e80837437a0a2dd4d97e5688471c4b3)
    staticcall 0xceb4181f8e80837437a0a2dd4d97e5688471c4b3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 224] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[(6 * ceil32(return_data.size)) + 256] = 0xb7e446ff1a2eeea8cd07331c7e06b0276d0b06b7
    mem[(7 * ceil32(return_data.size)) + 288] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(7 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 324] = 64
    mem[(7 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (6 * ceil32(return_data.size)) + 224
    t = (7 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=2, data=mem[(7 * ceil32(return_data.size)) + 388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(7 * ceil32(return_data.size)) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (8 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _107 = mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28]
    require mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 319 < (7 * ceil32(return_data.size)) + return_data.size + 288
    _108 = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
    if mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288] > test266151307():
        revert with 0, 65
    if (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 289 > test266151307() or ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 1 < 0:
        revert with 0, 65
    mem[64] = (8 * ceil32(return_data.size)) + ceil32(32 * mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]) + 289
    mem[(8 * ceil32(return_data.size)) + 288] = mem[(7 * ceil32(return_data.size)) + mem[(7 * ceil32(return_data.size)) + 288 len 4], ext_call.return_data[0 len 28] + 288]
    require return_data.size >= _107 + (32 * _108) + 32
    mem[(8 * ceil32(return_data.size)) + 320 len 32 * _108] = mem[(7 * ceil32(return_data.size)) + _107 + 320 len 32 * _108]
    if 0 >= _108:
        revert with 0, 50
    _181 = mem[(8 * ceil32(return_data.size)) + 320]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _181
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
        args _181, 0, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[mem[64] + 196 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _250 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _251 = mem[_250]
    require mem[_250] <= test266151307()
    require _250 + mem[_250] + 31 < _250 + return_data.size
    _252 = mem[_250 + mem[_250]]
    if mem[_250 + mem[_250]] > test266151307():
        revert with 0, 65
    if _250 + ceil32(return_data.size) + ceil32(32 * mem[_250 + mem[_250]]) + 1 > test266151307() or ceil32(32 * mem[_250 + mem[_250]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _250 + ceil32(return_data.size) + ceil32(32 * mem[_250 + mem[_250]]) + 1
    mem[_250 + ceil32(return_data.size)] = _252
    require return_data.size >= _251 + (32 * _252) + 32
    mem[_250 + ceil32(return_data.size) + 32 len 32 * _252] = mem[_250 + _251 + 32 len 32 * _252]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xceb4181f8e80837437a0a2dd4d97e5688471c4b3)
    staticcall 0xceb4181f8e80837437a0a2dd4d97e5688471c4b3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _315 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _316 = mem[_315]
    if mem[_315] < 1:
        revert with 0, 17
    mem[mem[64] + 36] = 0x136acd46c134e8269052c62a67042d6bdedde3c9
    mem[mem[64] + 68] = 457128 * 24 * 3600
    mem[mem[64] + 100] = _316 - 1
    require ext_code.size(0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52)
    call 0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52.redeemUnderlying(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0x576f6e6465726c616e6400000000000000000000000000000000000000000000, 0x136acd46c134e8269052c62a67042d6bdedde3c9, 457128 * 24 * 3600, _316 - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
    staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _323 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
    call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args mem[_323]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _331 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = mem[_331]
    mem[mem[64] + 36] = 1
    require ext_code.size(0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9)
    call 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _335 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_335]:
        revert with 0, 50
    mem[_335 + 32] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    if 1 >= mem[_335]:
        revert with 0, 50
    mem[_335 + 64] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[_335 + 100] = this.address
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[_335 + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _335 + ceil32(return_data.size) + 96
    require return_data.size >= 32
    mem[_335 + ceil32(return_data.size) + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_335 + ceil32(return_data.size) + 100] = ext_call.return_data[0]
    mem[_335 + ceil32(return_data.size) + 132] = 64
    mem[_335 + ceil32(return_data.size) + 164] = mem[_335]
    idx = 0
    s = _335 + 32
    t = _335 + ceil32(return_data.size) + 196
    while idx < mem[_335]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _335 + ceil32(return_data.size) + (32 * mem[_335]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _372 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _373 = mem[_372]
    require mem[_372] <= test266151307()
    require _372 + mem[_372] + 31 < _372 + return_data.size
    _374 = mem[_372 + mem[_372]]
    if mem[_372 + mem[_372]] > test266151307():
        revert with 0, 65
    if _372 + ceil32(return_data.size) + ceil32(32 * mem[_372 + mem[_372]]) + 1 > test266151307() or ceil32(32 * mem[_372 + mem[_372]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _372 + ceil32(return_data.size) + ceil32(32 * mem[_372 + mem[_372]]) + 1
    mem[_372 + ceil32(return_data.size)] = _374
    require return_data.size >= _373 + (32 * _374) + 32
    mem[_372 + ceil32(return_data.size) + 32 len 32 * _374] = mem[_372 + _373 + 32 len 32 * _374]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = ext_call.return_data[0]
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _398 = mem[_335]
    mem[mem[64] + 164] = mem[_335]
    idx = 0
    s = _335 + 32
    t = mem[64] + 196
    while idx < _398:
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
        args ext_call.return_data[0], 0, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, mem[mem[64] + 164 len (32 * _398) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _418 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _419 = mem[_418]
    require mem[_418] <= test266151307()
    require _418 + mem[_418] + 31 < _418 + return_data.size
    _420 = mem[_418 + mem[_418]]
    if mem[_418 + mem[_418]] > test266151307():
        revert with 0, 65
    if _418 + ceil32(return_data.size) + ceil32(32 * mem[_418 + mem[_418]]) + 1 > test266151307() or ceil32(32 * mem[_418 + mem[_418]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _418 + ceil32(return_data.size) + ceil32(32 * mem[_418 + mem[_418]]) + 1
    mem[_418 + ceil32(return_data.size)] = _420
    require return_data.size >= _419 + (32 * _420) + 32
    mem[_418 + ceil32(return_data.size) + 32 len 32 * _420] = mem[_418 + _419 + 32 len 32 * _420]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
    staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _436 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _437 = mem[_436]
    if mem[_436] <= sub_f7cff226:
        revert with 0, '1337'
    mem[mem[64] + 4] = stor1
    mem[mem[64] + 36] = _437
    require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
    call 0x130966628846bfd36ff31a822705796e8cb8c18d.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, _437
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _442 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_442] == bool(mem[_442])
}



}
