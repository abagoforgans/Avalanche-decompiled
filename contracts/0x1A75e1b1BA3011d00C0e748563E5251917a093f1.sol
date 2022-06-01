contract main {




// =====================  Runtime code  =====================


address stor6;

function _fallback() payable {
    revert
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == stor6
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_c065006d(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if arg4 >= 6:
        revert with 'NH{q', 50
    if arg5 >= 6:
        revert with 'NH{q', 50
    mem[96] = 2
    mem[192] = 2
    mem[128] = address(arg1)
    mem[160] = address(arg2)
    mem[224] = address(arg2)
    mem[256] = address(arg1)
    mem[288] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[292] = arg3
    mem[324] = 1
    mem[356] = 160
    mem[452] = 2
    idx = 0
    s = 128
    t = 484
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[388] = this.address
    mem[420] = block.timestamp
    require ext_code.size(stor[arg4])
    call stor[arg4].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, 1, Array(len=2, data=mem[484 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _32 = mem[288 len 4], Mask(224, 32, arg3) >> 32
    require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 319 < return_data.size + 288
    _33 = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
    if mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 320 > test266151307() or (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 320
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
    require return_data.size >= _32 + (32 * _33) + 32
    mem[ceil32(return_data.size) + 320 len 32 * _33] = mem[_32 + 320 len 32 * _33]
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _52 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _53 = mem[_52]
    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = _53
    mem[mem[64] + 36] = arg3
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = 2
    idx = 0
    s = 224
    t = mem[64] + 196
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 100] = this.address
    mem[mem[64] + 132] = block.timestamp
    require ext_code.size(stor[arg5])
    call stor[arg5].swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _53, arg3, Array(len=2, data=mem[mem[64] + 196 len 64]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _65 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_65] <= test266151307()
    require _65 + mem[_65] + 31 < _65 + return_data.size
    if mem[_65 + mem[_65]] > test266151307():
        revert with 'NH{q', 65
    if _65 + ceil32(return_data.size) + (32 * mem[_65 + mem[_65]]) + 32 > test266151307() or (32 * mem[_65 + mem[_65]]) + 32 < 0:
        revert with 'NH{q', 65
    require return_data.size >= mem[_65] + (32 * mem[_65 + mem[_65]]) + 32
}



}
