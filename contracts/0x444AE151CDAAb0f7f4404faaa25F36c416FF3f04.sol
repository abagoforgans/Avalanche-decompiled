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
    _39 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _40 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _40
    require _39 + (32 * _40) + 32 <= return_data.size
    idx = ceil32(return_data.size) + _39 + 224
    s = (2 * ceil32(return_data.size)) + 224
    while idx < ceil32(return_data.size) + _39 + (32 * _40) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 1 >= _40:
        revert with 'NH{q', 50
    _65 = mem[(2 * ceil32(return_data.size)) + 256]
    _66 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_66]:
        revert with 'NH{q', 50
    mem[_66 + 32] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
    if 1 >= mem[_66]:
        revert with 'NH{q', 50
    mem[_66 + 64] = 0xf34919404a290e71fc6a510cb4a6acb8d764b24
    mem[_66 + 96] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
    mem[_66 + 100] = _65
    mem[_66 + 132] = 128
    mem[_66 + 228] = mem[_66]
    idx = 0
    s = _66 + 32
    t = _66 + 260
    while idx < mem[_66]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_66 + 164] = this.address
    mem[_66 + 196] = block.timestamp
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.mem[mem[64] len 4] with:
       value _65 wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len _66 + (32 * mem[_66]) + -mem[64] + 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _86 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _87 = mem[_86]
    require mem[_86] <= test266151307()
    require _86 + mem[_86] + 31 < _86 + return_data.size
    _88 = mem[_86 + mem[_86]]
    if mem[_86 + mem[_86]] > test266151307():
        revert with 'NH{q', 65
    if _86 + ceil32(return_data.size) + floor32(mem[_86 + mem[_86]]) + 1 > test266151307() or floor32(mem[_86 + mem[_86]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _86 + ceil32(return_data.size) + floor32(mem[_86 + mem[_86]]) + 1
    mem[_86 + ceil32(return_data.size)] = _88
    require _87 + (32 * _88) + 32 <= return_data.size
    idx = _86 + _87 + 32
    s = _86 + ceil32(return_data.size) + 32
    while idx < _86 + _87 + (32 * _88) + 32:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if _65 and 995 > -1 / _65:
        revert with 'NH{q', 17
    mem[mem[64] + 68] = 995 * _65 / 1000
    mem[mem[64] + 100] = eth.balance(this.address) / 2
    mem[mem[64] + 132] = this.address
    mem[mem[64] + 164] = block.timestamp
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value _65 wei
         gas gas_remaining wei
        args 0xf34919404a290e71fc6a510cb4a6acb8d764b24, _65, 995 * _65 / 1000, Mask(255, 1, eth.balance(this.address)), address(this.address), block.timestamp
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _100 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_100] == mem[_100]
    require mem[_100 + 32] == mem[_100 + 32]
    require mem[_100 + 64] == mem[_100 + 64]
}



}
