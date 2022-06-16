contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_52d4bacb(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if stor0 != msg.sender:
        revert with 0, 'get_fuked.oa'
    mem[96] = 2
    mem[128] = address(arg2)
    mem[160] = address(arg3)
    mem[196] = msg.sender
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 196] = msg.sender
    mem[ceil32(return_data.size) + 228] = this.address
    mem[ceil32(return_data.size) + 260] = arg1
    require ext_code.size(address(arg2))
    call address(arg2).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 196] = address(arg4)
    mem[(2 * ceil32(return_data.size)) + 228] = -1
    require ext_code.size(address(arg2))
    call address(arg2).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg4), -1
    mem[(2 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = arg1
    mem[(4 * ceil32(return_data.size)) + 228] = 1
    mem[(4 * ceil32(return_data.size)) + 260] = 160
    mem[(4 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = 128
    t = (4 * ceil32(return_data.size)) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 292] = this.address
    mem[(4 * ceil32(return_data.size)) + 324] = -1
    require ext_code.size(address(arg4))
    call address(arg4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 1, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + 388 len 64]), address(this.address), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _34 = mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _35 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    require _34 + (32 * _35) + 32 <= return_data.size
    idx = (4 * ceil32(return_data.size)) + _34 + 224
    s = (6 * ceil32(return_data.size)) + 224
    while idx < (4 * ceil32(return_data.size)) + _34 + (32 * _35) + 224:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[mem[64] + 4] = address(arg4)
    mem[mem[64] + 36] = -1
    require ext_code.size(address(arg3))
    call address(arg3).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg4), -1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _68 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_68] == bool(mem[_68])
    mem[128] = address(arg3)
    mem[160] = address(arg2)
    if 1 >= _35:
        revert with 'NH{q', 50
    _73 = mem[(6 * ceil32(return_data.size)) + 256]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _73
    mem[mem[64] + 36] = 1
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = 128
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = msg.sender
    mem[mem[64] + 132] = -1
    require ext_code.size(address(arg4))
    call address(arg4).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _73, 1, Array(len=2, data=mem[mem[64] + 196 len 64]), msg.sender, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _95 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _96 = mem[_95]
    require mem[_95] <= test266151307()
    require _95 + mem[_95] + 31 < _95 + return_data.size
    _97 = mem[_95 + mem[_95]]
    if mem[_95 + mem[_95]] > test266151307():
        revert with 'NH{q', 65
    if _95 + ceil32(return_data.size) + floor32(mem[_95 + mem[_95]]) + 1 > test266151307() or floor32(mem[_95 + mem[_95]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _95 + ceil32(return_data.size) + floor32(mem[_95 + mem[_95]]) + 1
    mem[_95 + ceil32(return_data.size)] = _97
    require _96 + (32 * _97) + 32 <= return_data.size
    idx = _95 + _96 + 32
    s = _95 + ceil32(return_data.size) + 32
    while idx < _95 + _96 + (32 * _97) + 32:
        require mem[idx] == mem[idx]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if 1 >= mem[(6 * ceil32(return_data.size)) + 192]:
        revert with 'NH{q', 50
    _112 = mem[(6 * ceil32(return_data.size)) + 256]
    if 1 >= _97:
        revert with 'NH{q', 50
    _114 = mem[_95 + ceil32(return_data.size) + 64]
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _117 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_117] == mem[_117]
    return _112, _114, ext_call.return_data[0], mem[_117]
}



}
