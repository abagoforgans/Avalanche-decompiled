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
address stor1;

function sub_a3015773(?) {
    return sub_a3015773
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
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_42bc0777(?) {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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

function sub_34821a80(?) {
    require calldata.size - 4 >= 32
    mem[96] = 2
    mem[128] = 0xecc5748b1ff6b23f284ec81e8bf034409961d8dc
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

function sub_b138d471(?) {
    require calldata.size - 4 >= 32
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
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[(2 * ceil32(return_data.size)) + 160] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[(2 * ceil32(return_data.size)) + 192] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg1
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
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(2 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _65 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    _66 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require return_data.size >= _65 + (32 * _66) + 32
    mem[(4 * ceil32(return_data.size)) + 224 len 32 * _66] = mem[(2 * ceil32(return_data.size)) + _65 + 224 len 32 * _66]
    require ext_code.size(0x5c0401e81bc07ca70fad469b451682c0d747ef1c)
    call 0x5c0401e81bc07ca70fad469b451682c0d747ef1c.mint() with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x5c0401e81bc07ca70fad469b451682c0d747ef1c)
    staticcall 0x5c0401e81bc07ca70fad469b451682c0d747ef1c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _115 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _116 = mem[_115]
    if mem[_115] < 1:
        revert with 0, 17
    mem[mem[64] + 68] = 473256 * 24 * 3600
    mem[mem[64] + 100] = _116 - 1
    mem[mem[64] + 132] = this.address
    require ext_code.size(0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52)
    call 0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52.tokenizeYield(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
         gas gas_remaining wei
        args 0x42656e5169000000000000000000000000000000000000000000000000000000, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 473256 * 24 * 3600, _116 - 1, this.address
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _119 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_119] == mem[_119 + 12 len 20]
    require mem[_119 + 32] == mem[_119 + 44 len 20]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xecc5748b1ff6b23f284ec81e8bf034409961d8dc)
    staticcall 0xecc5748b1ff6b23f284ec81e8bf034409961d8dc.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _125 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _126 = mem[_125]
    mem[(2 * ceil32(return_data.size)) + 128] = 0xecc5748b1ff6b23f284ec81e8bf034409961d8dc
    mem[(2 * ceil32(return_data.size)) + 160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _126
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
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
        args _126, 0, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[mem[64] + 196 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _154 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _155 = mem[_154]
    require mem[_154] <= test266151307()
    require _154 + mem[_154] + 31 < _154 + return_data.size
    _156 = mem[_154 + mem[_154]]
    if mem[_154 + mem[_154]] > test266151307():
        revert with 0, 65
    if _154 + ceil32(return_data.size) + ceil32(32 * mem[_154 + mem[_154]]) + 1 > test266151307() or ceil32(32 * mem[_154 + mem[_154]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _154 + ceil32(return_data.size) + ceil32(32 * mem[_154 + mem[_154]]) + 1
    mem[_154 + ceil32(return_data.size)] = _156
    require return_data.size >= _155 + (32 * _156) + 32
    mem[_154 + ceil32(return_data.size) + 32 len 32 * _156] = mem[_154 + _155 + 32 len 32 * _156]
    mem[mem[64] + 36] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[mem[64] + 68] = _126
    mem[mem[64] + 100] = 0
    mem[mem[64] + 132] = 'Generic' << 200
    require ext_code.size(0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52)
    call 0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
         gas gas_remaining wei
        args 0x30a6f8949d4ce66918f393318d5f9d3bd1304461, 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, _126, 0, 'Generic' << 200
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _180 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _181 = mem[_180]
    if mem[_180] <= sub_a3015773:
        revert with 0, '1337'
    mem[mem[64] + 4] = stor1
    mem[mem[64] + 36] = _181
    require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
    call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, _181
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _186 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_186] == bool(mem[_186])
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x5c42fdbf(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x32fe7b26(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 0x60ae616a2155ee3d9a68541ba4544862310933d4
            if unknown_0x34821a80(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                mem[128] = 2
                mem[160] = 0xecc5748b1ff6b23f284ec81e8bf034409961d8dc
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
                _127 = mem[224 len 4], Mask(224, 32, arg1) >> 32
                require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255 < return_data.size + 224
                _130 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                if mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
                    revert with 0, 65
                if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                require return_data.size >= _127 + (32 * _130) + 32
                mem[ceil32(return_data.size) + 256 len 32 * _130] = mem[_127 + 256 len 32 * _130]
                if 1 >= _130:
                    revert with 0, 50
                mem[mem[64]] = mem[ceil32(return_data.size) + 288]
            else:
                if unknown_0x3c97b00d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52
                if uint32(call.func_hash) >> 224 != unknown_0x42bc0777(?????):
                    if unknown_0x58b02822(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 0xecc5748b1ff6b23f284ec81e8bf034409961d8dc
                    require unknown_0x5b8faafa(?????) == uint32(call.func_hash) >> 224
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
                        args stor1, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require not msg.value
                require calldata.size - 4 >= 32
                mem[128] = 2
                mem[160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                mem[192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
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
                _128 = mem[224 len 4], Mask(224, 32, arg1) >> 32
                require mem[224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
                require mem[224 len 4], Mask(224, 32, arg1) >> 32 + 255 < return_data.size + 224
                _131 = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                if mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
                    revert with 0, 65
                if ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
                    revert with 0, 65
                mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
                mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg1) >> 32 + 224]
                require return_data.size >= _128 + (32 * _131) + 32
                mem[ceil32(return_data.size) + 256 len 32 * _131] = mem[_128 + 256 len 32 * _131]
                if 0 >= _131:
                    revert with 0, 50
                mem[mem[64]] = mem[ceil32(return_data.size) + 256]
            return memory
              from mem[64]
               len 32
        if unknown_0x5c42fdbf(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return 0x5c0401e81bc07ca70fad469b451682c0d747ef1c
        if unknown_0x73b295c2(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        if unknown_0x89a30271(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
        if unknown_0xa3015773(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return sub_a3015773
        if uint32(call.func_hash) >> 224 != unknown_0xb138d471(?????):
            require unknown_0xbd8f96b2(?????) == uint32(call.func_hash) >> 224
            require not msg.value
            return 0x30a6f8949d4ce66918f393318d5f9d3bd1304461
        require not msg.value
        require calldata.size - 4 >= 32
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
        mem[(2 * ceil32(return_data.size)) + 128] = 2
        mem[(2 * ceil32(return_data.size)) + 160] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
        mem[(2 * ceil32(return_data.size)) + 192] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        mem[(2 * ceil32(return_data.size)) + 224] = 0x676528d100000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 228] = arg1
        mem[(2 * ceil32(return_data.size)) + 260] = 0
        mem[(2 * ceil32(return_data.size)) + 292] = 160
        mem[(2 * ceil32(return_data.size)) + 388] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 160
        t = (2 * ceil32(return_data.size)) + 420
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 324] = this.address
        mem[(2 * ceil32(return_data.size)) + 356] = 0xf000000000000000000000000000000000000000000000000000000000000000
        require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
        call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg1, 0, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[(2 * ceil32(return_data.size)) + 420 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _129 = mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
        _132 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 1 < 0:
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]) + 225
        mem[(4 * ceil32(return_data.size)) + 224] = _132
        require return_data.size >= _129 + (32 * _132) + 32
        mem[(4 * ceil32(return_data.size)) + 256 len 32 * _132] = mem[(2 * ceil32(return_data.size)) + _129 + 256 len 32 * _132]
        require ext_code.size(0x5c0401e81bc07ca70fad469b451682c0d747ef1c)
        call 0x5c0401e81bc07ca70fad469b451682c0d747ef1c.mint() with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0x5c0401e81bc07ca70fad469b451682c0d747ef1c)
        staticcall 0x5c0401e81bc07ca70fad469b451682c0d747ef1c.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _203 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _204 = mem[_203]
        if mem[_203] < 1:
            revert with 0, 17
        mem[mem[64] + 68] = 473256 * 24 * 3600
        mem[mem[64] + 100] = _204 - 1
        mem[mem[64] + 132] = this.address
        require ext_code.size(0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52)
        call 0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52.tokenizeYield(bytes32 arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) with:
             gas gas_remaining wei
            args 0x42656e5169000000000000000000000000000000000000000000000000000000, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, 473256 * 24 * 3600, _204 - 1, this.address
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _207 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_207] == mem[_207 + 12 len 20]
        require mem[_207 + 32] == mem[_207 + 44 len 20]
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xecc5748b1ff6b23f284ec81e8bf034409961d8dc)
        staticcall 0xecc5748b1ff6b23f284ec81e8bf034409961d8dc.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _213 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _214 = mem[_213]
        mem[(2 * ceil32(return_data.size)) + 160] = 0xecc5748b1ff6b23f284ec81e8bf034409961d8dc
        mem[(2 * ceil32(return_data.size)) + 192] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _214
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 160
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
            args _214, 0, 160, address(this.address), 0xf000000000000000000000000000000000000000000000000000000000000000, 2, mem[mem[64] + 196 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _242 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _243 = mem[_242]
        require mem[_242] <= test266151307()
        require _242 + mem[_242] + 31 < _242 + return_data.size
        _244 = mem[_242 + mem[_242]]
        if mem[_242 + mem[_242]] > test266151307():
            revert with 0, 65
        if _242 + ceil32(return_data.size) + ceil32(32 * mem[_242 + mem[_242]]) + 1 > test266151307() or ceil32(32 * mem[_242 + mem[_242]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _242 + ceil32(return_data.size) + ceil32(32 * mem[_242 + mem[_242]]) + 1
        mem[_242 + ceil32(return_data.size)] = _244
        require return_data.size >= _243 + (32 * _244) + 32
        mem[_242 + ceil32(return_data.size) + 32 len 32 * _244] = mem[_242 + _243 + 32 len 32 * _244]
        mem[mem[64] + 36] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
        mem[mem[64] + 68] = _214
        mem[mem[64] + 100] = 0
        mem[mem[64] + 132] = 'Generic' << 200
        require ext_code.size(0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52)
        call 0x771ad65bf2837c89a1cc0a0fc601d9de7f217b52.swapExactIn(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes32 arg5) with:
             gas gas_remaining wei
            args 0x30a6f8949d4ce66918f393318d5f9d3bd1304461, 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, _214, 0, 'Generic' << 200
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        staticcall 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _268 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _269 = mem[_268]
        if mem[_268] <= sub_a3015773:
            revert with 0, '1337'
        mem[mem[64] + 4] = stor1
        mem[mem[64] + 36] = _269
        require ext_code.size(0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664)
        call 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664.0xa9059cbb with:
             gas gas_remaining wei
            args stor1, _269
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _274 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_274] == bool(mem[_274])
}



}
