contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function check(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = stor0
    mem[132] = 10^12
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, 10^12
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = stor1
    mem[ceil32(return_data.size) + 160] = arg1
    if block.timestamp > -16:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 10^12
    mem[ceil32(return_data.size) + 228] = 0
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 388
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp + 15
    require ext_code.size(stor0)
    call stor0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 10^12, 0, 160, address(this.address), block.timestamp + 15, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _35 = mem[ceil32(return_data.size) + 192 len 4], 232
    require mem[ceil32(return_data.size) + 192 len 4], 232 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 232 + 223 < ceil32(return_data.size) + return_data.size + 192
    _36 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 232 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 232 + 192] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 232 + 192]) + 193 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 232 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], 232 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _36
    require _35 + (32 * _36) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _35 + 224
    t = (2 * ceil32(return_data.size)) + 224
    while idx < _36:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _61 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _62 = mem[_61]
    require mem[_61] == mem[_61]
    mem[mem[64] + 4] = stor0
    mem[mem[64] + 36] = _62
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, _62
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _65 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_65] == bool(mem[_65])
    if 0 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    mem[ceil32(return_data.size) + 128] = arg1
    if 1 >= mem[ceil32(return_data.size) + 96]:
        revert with 'NH{q', 50
    mem[ceil32(return_data.size) + 160] = stor1
    if block.timestamp > -16:
        revert with 'NH{q', 17
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _62
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _70 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 164] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 196
    while idx < _70:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp + 15
    require ext_code.size(stor0)
    call stor0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _62, 0, 160, address(this.address), block.timestamp + 15, mem[mem[64] + 164 len (32 * _70) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _80 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _81 = mem[_80]
    require mem[_80] <= test266151307()
    require _80 + mem[_80] + 31 < _80 + return_data.size
    _82 = mem[_80 + mem[_80]]
    if mem[_80 + mem[_80]] > test266151307():
        revert with 'NH{q', 65
    if _80 + ceil32(return_data.size) + floor32(mem[_80 + mem[_80]]) + 1 > test266151307() or floor32(mem[_80 + mem[_80]]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = _80 + ceil32(return_data.size) + floor32(mem[_80 + mem[_80]]) + 1
    mem[_80 + ceil32(return_data.size)] = _82
    require _81 + (32 * _82) + 32 <= return_data.size
    idx = 0
    s = _80 + _81 + 32
    t = _80 + ceil32(return_data.size) + 32
    while idx < _82:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
}



}
