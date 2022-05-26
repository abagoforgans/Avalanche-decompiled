contract main {




// =====================  Runtime code  =====================


const sub_08dc6924(?) = 0xb7e446ff1a2eeea8cd07331c7e06b0276d0b06b7

const sub_3c97b00d(?) = 0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52

const sub_9bc82818(?) = 0xceb4181f8e80837437a0a2dd4d97e5688471c4b3

const sub_d4052545(?) = 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9

const sub_d5ede55a(?) = 0x96bbfb78311227b805c968b070a81d358c13379

const WMEMO = 0xda67235dd5787d67955420c84ca1cecd4e5bb3b

const ROUTER = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const TIME = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3

const MEMO = 0x136acd46c134e8269052c62a67042d6bdedde3c9

const MIM = 0x130966628846bfd36ff31a822705796e8cb8c18d


uint256 stor0; offset 32
uint256 sub_f7cff226;
uint256 stor1; offset 32
uint256 sub_427e4a11;
address stor2;

function sub_427e4a11(?) payable {
    return sub_427e4a11
}

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
        args stor2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_0cb526dd(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[160] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
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

function sub_d42244e4(?) payable {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0xb7e446ff1a2eeea8cd07331c7e06b0276d0b06b7
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
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[(2 * ceil32(return_data.size)) + 160] = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = sub_f7cff226
    mem[(2 * ceil32(return_data.size)) + 228] = 0
    mem[(2 * ceil32(return_data.size)) + 260] = 160
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 292] = this.address
    mem[(2 * ceil32(return_data.size)) + 324] = 0xf000000000000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args sub_f7cff226, 0, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _718 = mem[(2 * ceil32(return_data.size)) + 192 len 4], stor0
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], stor0 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], stor0 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    _719 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], stor0 + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], stor0 + 192] > test266151307():
        revert with 0, 65
    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], stor0 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], stor0 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], stor0 + 192]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], stor0 + 192]
    require return_data.size >= _718 + (32 * _719) + 32
    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _719] = mem[(2 * ceil32(return_data.size)) + _718 + 224 len 32 * _719]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xb54f16fb19478766a268f172c9480f8da1a7c9c3)
    staticcall 0xb54f16fb19478766a268f172c9480f8da1a7c9c3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1419 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1420 = mem[_1419]
    sub_427e4a11 = mem[_1419]
    _1421 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1421] = 19
    mem[_1421 + 32] = 'Balance Track: TIME' << 104
    _1422 = mem[64]
    mem[mem[64] + 36] = 64
    mem[mem[64] + 100] = 19
    mem[mem[64] + 132] = 'Balance Track: TIME' << 104
    mem[mem[64] + 151] = 0
    mem[mem[64] + 68] = _1420
    _2115 = mem[64]
    mem[mem[64]] = 132
    mem[64] = mem[64] + 164
    mem[_2115 + 32 len 4] = 2534451664
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args mem[_2115 + 36 len mem[_2115] - 4]
    mem[_1422 + 200] = this.address
    require ext_code.size(0x96bbfb78311227b805c968b070a81d358c13379)
    call 0x096bbfb78311227b805c968b070a81d358c13379.stake(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args sub_427e4a11, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_1422 + 168] = this.address
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    staticcall 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[_1422 + 164] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_427e4a11 = ext_call.return_data[0]
    mem[_1422 + ceil32(return_data.size) + 164] = 19
    mem[_1422 + ceil32(return_data.size) + 196] = 'Balance Track: MEMO' << 104
    mem[_1422 + ceil32(return_data.size) + 264] = 64
    mem[_1422 + ceil32(return_data.size) + 328] = 19
    mem[_1422 + ceil32(return_data.size) + 360] = 'Balance Track: MEMO' << 104
    mem[_1422 + ceil32(return_data.size) + 379] = 0
    mem[_1422 + ceil32(return_data.size) + 296] = ext_call.return_data[0]
    mem[_1422 + ceil32(return_data.size) + 228] = 132
    mem[_1422 + ceil32(return_data.size) + 264 len 28] = 0
    mem[_1422 + ceil32(return_data.size) + 260 len 4] = 2534451664
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 0, ext_call.return_data[0], 19, 'Balance Track: MEMO', 0
    mem[_1422 + ceil32(return_data.size) + 396] = sub_427e4a11
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
    call 0x0da67235dd5787d67955420c84ca1cecd4e5bb3b.wrap(uint256 arg1) with:
         gas gas_remaining wei
        args sub_427e4a11
    mem[_1422 + ceil32(return_data.size) + 392] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[_1422 + (2 * ceil32(return_data.size)) + 396] = this.address
    require ext_code.size(0xda67235dd5787d67955420c84ca1cecd4e5bb3b)
    staticcall 0xda67235dd5787d67955420c84ca1cecd4e5bb3b.0x70a08231 with:
            gas gas_remaining wei
           args mem[_1422 + (2 * ceil32(return_data.size)) + 396 len ceil32(return_data.size) + 32]
    mem[_1422 + (2 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_427e4a11 = ext_call.return_data[0]
    mem[_1422 + (4 * ceil32(return_data.size)) + 392] = 20
    mem[_1422 + (4 * ceil32(return_data.size)) + 424] = 'Balance Track: WMEMO' << 96
    mem[_1422 + (4 * ceil32(return_data.size)) + 492] = 64
    mem[_1422 + (4 * ceil32(return_data.size)) + 556] = 20
    mem[_1422 + (4 * ceil32(return_data.size)) + 588] = 'Balance Track: WMEMO' << 96
    mem[_1422 + (4 * ceil32(return_data.size)) + 608] = 0
    mem[_1422 + (4 * ceil32(return_data.size)) + 524] = ext_call.return_data[0]
    mem[_1422 + (4 * ceil32(return_data.size)) + 456] = (5 * ceil32(return_data.size)) + 132
    mem[_1422 + (4 * ceil32(return_data.size)) + 492 len 28] = 0
    mem[_1422 + (4 * ceil32(return_data.size)) + 488 len 4] = 2534451664
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args mem[_1422 + (4 * ceil32(return_data.size)) + 492 len (5 * ceil32(return_data.size)) + 128]
    if sub_427e4a11 < 1:
        revert with 0, 17
    mem[_1422 + (4 * ceil32(return_data.size)) + 688] = 457128 * 24 * 3600
    mem[_1422 + (4 * ceil32(return_data.size)) + 720] = sub_427e4a11 - 1
    mem[_1422 + (4 * ceil32(return_data.size)) + 752] = this.address
    require ext_code.size(0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52)
    call 0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52.tokenizeYield(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
         gas gas_remaining wei
        args 0x576f6e6465726c616e6400000000000000000000000000000000000000000000, 0x136acd46c134e8269052c62a67042d6bdedde3c9, 457128 * 24 * 3600, sub_427e4a11 - 1, this.address
    mem[_1422 + (4 * ceil32(return_data.size)) + 620 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    mem[_1422 + (6 * ceil32(return_data.size)) + 624] = this.address
    require ext_code.size(0xb7e446ff1a2eeea8cd07331c7e06b0276d0b06b7)
    staticcall 0xb7e446ff1a2eeea8cd07331c7e06b0276d0b06b7.0x70a08231 with:
            gas gas_remaining wei
           args this.address, mem[_1422 + (6 * ceil32(return_data.size)) + 656 len 9 * ceil32(return_data.size)]
    mem[_1422 + (6 * ceil32(return_data.size)) + 620] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_427e4a11 = ext_call.return_data[0]
    mem[_1422 + (8 * ceil32(return_data.size)) + 620] = 21
    mem[_1422 + (8 * ceil32(return_data.size)) + 652] = 'Balance Track: OTMEMO' << 88
    mem[_1422 + (8 * ceil32(return_data.size)) + 720] = 64
    mem[_1422 + (8 * ceil32(return_data.size)) + 784] = 21
    mem[_1422 + (8 * ceil32(return_data.size)) + 816] = 'Balance Track: OTMEMO' << 88
    mem[_1422 + (8 * ceil32(return_data.size)) + 837] = 0
    mem[_1422 + (8 * ceil32(return_data.size)) + 752] = ext_call.return_data[0]
    mem[_1422 + (8 * ceil32(return_data.size)) + 684] = (13 * ceil32(return_data.size)) + 132
    mem[_1422 + (8 * ceil32(return_data.size)) + 720 len 28] = 0
    mem[_1422 + (8 * ceil32(return_data.size)) + 716 len 4] = 2534451664
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args mem[_1422 + (8 * ceil32(return_data.size)) + 720 len (13 * ceil32(return_data.size)) + 128]
    mem[_1422 + (8 * ceil32(return_data.size)) + 848] = 2
    mem[_1422 + (8 * ceil32(return_data.size)) + 880] = 0xb7e446ff1a2eeea8cd07331c7e06b0276d0b06b7
    mem[_1422 + (8 * ceil32(return_data.size)) + 912] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[_1422 + (8 * ceil32(return_data.size)) + 944] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[_1422 + (8 * ceil32(return_data.size)) + 948] = sub_427e4a11
    mem[_1422 + (8 * ceil32(return_data.size)) + 980] = 0
    mem[_1422 + (8 * ceil32(return_data.size)) + 1012] = 160
    mem[_1422 + (8 * ceil32(return_data.size)) + 1108] = 2
    idx = 0
    s = _1422 + (8 * ceil32(return_data.size)) + 880
    t = _1422 + (8 * ceil32(return_data.size)) + 1140
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1422 + (8 * ceil32(return_data.size)) + 1044] = this.address
    mem[_1422 + (8 * ceil32(return_data.size)) + 1076] = 0xf000000000000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args sub_427e4a11, 0, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[_1422 + (8 * ceil32(return_data.size)) + 1140 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[_1422 + (8 * ceil32(return_data.size)) + 944 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = _1422 + (10 * ceil32(return_data.size)) + 944
    require return_data.size >= 32
    _4599 = mem[_1422 + (8 * ceil32(return_data.size)) + 944 len 4], stor1
    require mem[_1422 + (8 * ceil32(return_data.size)) + 944 len 4], stor1 <= test266151307()
    require _1422 + (8 * ceil32(return_data.size)) + mem[_1422 + (8 * ceil32(return_data.size)) + 944 len 4], stor1 + 975 < _1422 + (8 * ceil32(return_data.size)) + return_data.size + 944
    _4615 = mem[_1422 + (8 * ceil32(return_data.size)) + mem[_1422 + (8 * ceil32(return_data.size)) + 944 len 4], stor1 + 944]
    if mem[_1422 + (8 * ceil32(return_data.size)) + mem[_1422 + (8 * ceil32(return_data.size)) + 944 len 4], stor1 + 944] > test266151307():
        revert with 0, 65
    if _1422 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_1422 + (8 * ceil32(return_data.size)) + mem[_1422 + (8 * ceil32(return_data.size)) + 944 len 4], stor1 + 944]) + 945 > test266151307() or ceil32(32 * mem[_1422 + (8 * ceil32(return_data.size)) + mem[_1422 + (8 * ceil32(return_data.size)) + 944 len 4], stor1 + 944]) + 1 < 0:
        revert with 0, 65
    mem[64] = _1422 + (10 * ceil32(return_data.size)) + ceil32(32 * mem[_1422 + (8 * ceil32(return_data.size)) + mem[_1422 + (8 * ceil32(return_data.size)) + 944 len 4], stor1 + 944]) + 945
    mem[_1422 + (10 * ceil32(return_data.size)) + 944] = mem[_1422 + (8 * ceil32(return_data.size)) + mem[_1422 + (8 * ceil32(return_data.size)) + 944 len 4], stor1 + 944]
    require return_data.size >= _4599 + (32 * _4615) + 32
    mem[_1422 + (10 * ceil32(return_data.size)) + 976 len 32 * _4615] = mem[_1422 + (8 * ceil32(return_data.size)) + _4599 + 976 len 32 * _4615]
    mem[mem[64] + 36] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[mem[64] + 68] = sub_427e4a11
    mem[mem[64] + 100] = 0
    mem[mem[64] + 132] = 'Generic' << 200
    require ext_code.size(0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52)
    call 0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
         gas gas_remaining wei
        args 0xceb4181f8e80837437a0a2dd4d97e5688471c4b3, 0x130966628846bfd36ff31a822705796e8cb8c18d, sub_427e4a11, 0, 'Generic' << 200
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
    staticcall 0x130966628846bfd36ff31a822705796e8cb8c18d.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _4999 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _5015 = mem[_4999]
    if mem[_4999] <= sub_f7cff226:
        revert with 0, '1337'
    mem[mem[64] + 4] = stor2
    mem[mem[64] + 36] = _5015
    require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
    call 0x130966628846bfd36ff31a822705796e8cb8c18d.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, _5015
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _5095 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_5095] == bool(mem[_5095])
}



}
