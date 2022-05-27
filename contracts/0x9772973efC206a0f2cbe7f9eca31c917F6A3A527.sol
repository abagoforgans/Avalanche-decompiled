contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function swap(address arg1, address arg2, address arg3, uint256 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg5 == arg5
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = arg4
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg4
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = arg1
    mem[ceil32(return_data.size) + 132] = arg4
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg4
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = 2
    mem[(2 * ceil32(return_data.size)) + 128] = arg2
    mem[(2 * ceil32(return_data.size)) + 160] = arg3
    mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg4
    mem[(2 * ceil32(return_data.size)) + 228] = 64
    mem[(2 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = (2 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall arg1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg4, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _66 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    _67 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192] > test266151307():
        revert with 0, 65
    if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    require (32 * _67) + _66 + 32 <= return_data.size
    mem[(4 * ceil32(return_data.size)) + 224 len ceil32(32 * _67)] = mem[(2 * ceil32(return_data.size)) + _66 + 224 len ceil32(32 * _67)]
    if 1 >= _67:
        revert with 0, 50
    _115 = mem[(4 * ceil32(return_data.size)) + 256]
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = arg4
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
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(arg1)
    call arg1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg4, 0, 160, address(this.address), block.timestamp, 2, mem[mem[64] + 196 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    _159 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _160 = mem[_159]
    if arg5:
        return _115, mem[_159], 0, 0
    _161 = mem[64]
    mem[mem[64]] = 2
    mem[64] = mem[64] + 96
    if 0 >= mem[_161]:
        revert with 0, 50
    mem[_161 + 32] = arg3
    if 1 >= mem[_161]:
        revert with 0, 50
    mem[_161 + 64] = arg2
    mem[_161 + 96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[_161 + 100] = _160
    mem[_161 + 132] = 64
    mem[_161 + 164] = mem[_161]
    idx = 0
    s = _161 + 32
    t = _161 + 196
    while idx < mem[_161]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    staticcall arg1.mem[mem[64] len 4] with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len _161 + (32 * mem[_161]) + -mem[64] + 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _194 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _195 = mem[_194]
    require mem[_194] <= test266151307()
    require _194 + mem[_194] + 31 < _194 + return_data.size
    _196 = mem[_194 + mem[_194]]
    if mem[_194 + mem[_194]] > test266151307():
        revert with 0, 65
    if _194 + ceil32(return_data.size) + ceil32(32 * mem[_194 + mem[_194]]) + 1 > test266151307() or ceil32(32 * mem[_194 + mem[_194]]) + 1 < 0:
        revert with 0, 65
    mem[64] = _194 + ceil32(return_data.size) + ceil32(32 * mem[_194 + mem[_194]]) + 1
    mem[_194 + ceil32(return_data.size)] = _196
    require (32 * _196) + _195 + 32 <= return_data.size
    mem[_194 + ceil32(return_data.size) + 32 len ceil32(32 * _196)] = mem[_194 + _195 + 32 len ceil32(32 * _196)]
    if mem[_161] < 1:
        revert with 0, 17
    if mem[_161] - 1 >= _196:
        revert with 0, 50
    _219 = mem[(32 * mem[_161] - 1) + _194 + ceil32(return_data.size) + 32]
    mem[mem[64] + 4] = arg1
    mem[mem[64] + 36] = _160
    call arg3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), _160
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _222 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_222] == bool(mem[_222])
    mem[mem[64]] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _160
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _225 = mem[_161]
    mem[mem[64] + 164] = mem[_161]
    idx = 0
    s = _161 + 32
    t = mem[64] + 196
    while idx < _225:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(arg1)
    call arg1.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _160, 0, 160, address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * _225) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    _238 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    return _115, _160, _219, mem[_238]
}



}
