contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function buyAll() {
    require msg.sender == stor0
    mem[100] = 0x8d426bfe128b171d8fd38a58dfea257f01206f34
    staticcall 0xb2ac04b71888e17aa2c5102cf3d0215467d74100.0x70a08231 with:
            gas gas_remaining wei
           args 0x8d426bfe128b171d8fd38a58dfea257f01206f34
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(0x8d426bfe128b171d8fd38a58dfea257f01206f34)
    call 0x8d426bfe128b171d8fd38a58dfea257f01206f34.0xba560803 with:
         gas gas_remaining wei
        args (ext_call.return_data[0] / 2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33)
    call 0x56d0fed06d2e0b5ac80d7a9ed0387694bdf90c33.withdrawETH(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args 0x70bbe4a294878a14cb3cdd9315f5eb490e346163, -1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    mem[ceil32(return_data.size) + 160] = 0xf34919404a290e71fc6a510cb4a6acb8d764b24
    mem[ceil32(return_data.size) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = eth.balance(this.address) / 2
    mem[ceil32(return_data.size) + 228] = 64
    mem[ceil32(return_data.size) + 260] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args Mask(255, 1, eth.balance(this.address)), Array(len=2, data=mem[ceil32(return_data.size) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _38 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _39 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
    require _38 + (32 * _39) + 32 <= return_data.size
    idx = ceil32(return_data.size) + _38 + 224
    s = (2 * ceil32(return_data.size)) + 224
    while idx < ceil32(return_data.size) + _38 + (32 * _39) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 1 >= _39:
        revert with 'NH{q', 50
    _64 = mem[(2 * ceil32(return_data.size)) + 256]
    if mem[(2 * ceil32(return_data.size)) + 256] and 995 > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
        revert with 'NH{q', 17
    _65 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_65]:
        revert with 'NH{q', 50
    mem[_65 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if 1 >= mem[_65]:
        revert with 'NH{q', 50
    mem[_65 + 64] = 0xf34919404a290e71fc6a510cb4a6acb8d764b24
    mem[_65 + 96] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
    mem[_65 + 100] = 995 * _64 / 1000
    mem[_65 + 132] = 128
    mem[_65 + 228] = mem[_65]
    idx = 0
    s = _65 + 32
    t = _65 + 260
    while idx < mem[_65]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_65 + 164] = this.address
    mem[_65 + 196] = block.timestamp
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len _65 + (32 * mem[_65]) + -mem[64] + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _85 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _86 = mem[_85]
    require mem[_85] <= test266151307()
    require _85 + mem[_85] + 31 < _85 + return_data.size
    _87 = mem[_85 + mem[_85]]
    if mem[_85 + mem[_85]] > test266151307():
        revert with 'NH{q', 65
    if _85 + ceil32(return_data.size) + floor32(mem[_85 + mem[_85]]) + 1 > test266151307() or floor32(mem[_85 + mem[_85]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _85 + ceil32(return_data.size) + floor32(mem[_85 + mem[_85]]) + 1
    mem[_85 + ceil32(return_data.size)] = _87
    require _86 + (32 * _87) + 32 <= return_data.size
    idx = _85 + _86 + 32
    s = _85 + ceil32(return_data.size) + 32
    while idx < _85 + _86 + (32 * _87) + 32:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 995 * _64 / 1000 and 995 > -1 / 995 * _64 / 1000:
        revert with 'NH{q', 17
    mem[mem[64] + 68] = 995 * 995 * _64 / 1000 / 1000
    mem[mem[64] + 100] = eth.balance(this.address) / 2
    mem[mem[64] + 132] = this.address
    mem[mem[64] + 164] = block.timestamp
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
         gas gas_remaining wei
        args 0xf34919404a290e71fc6a510cb4a6acb8d764b24, 995 * _64 / 1000, 995 * 995 * _64 / 1000 / 1000, Mask(255, 1, eth.balance(this.address)), address(this.address), block.timestamp
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _99 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_99] == mem[_99]
    require mem[_99 + 32] == mem[_99 + 32]
    require mem[_99 + 64] == mem[_99 + 64]
}



}
