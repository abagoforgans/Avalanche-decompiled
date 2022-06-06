contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;

function _fallback() payable {
    revert
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    mem[100] = arg2
    call stor0.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = stor4
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor4, ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor4)
    call stor4.unstake(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg4.length >= 32
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    mem[(2 * ceil32(return_data.size)) + 100] = address(cd[(arg4 + 36)])
    mem[(2 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    call stor3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[(arg4 + 36)]), ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 96] = 2
    mem[(4 * ceil32(return_data.size)) + 128] = stor3
    mem[(4 * ceil32(return_data.size)) + 160] = stor1
    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 228] = 0
    mem[(4 * ceil32(return_data.size)) + 260] = 160
    mem[(4 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (4 * ceil32(return_data.size)) + 388
    t = (4 * ceil32(return_data.size)) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 292] = this.address
    mem[(4 * ceil32(return_data.size)) + 324] = -1
    call address(cd[(arg4 + 36)]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), -1, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _46 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
    _47 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
        revert with 0, 65
    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
    mem[(6 * ceil32(return_data.size)) + 192] = _47
    require (32 * _47) + _46 + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 224 len ceil32(32 * _47)] = mem[(4 * ceil32(return_data.size)) + _46 + 224 len ceil32(32 * _47)]
    staticcall msg.sender.getReserves() with:
            gas gas_remaining wei
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _69 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _70 = mem[_69]
    require mem[_69] == mem[_69 + 18 len 14]
    _71 = mem[_69 + 32]
    require mem[_69 + 32] == mem[_69 + 50 len 14]
    require mem[_69 + 64] == mem[_69 + 92 len 4]
    if mem[_69 + 50 len 14] and arg2 > -1 / mem[_69 + 50 len 14]:
        revert with 0, 17
    if mem[_69 + 50 len 14] * arg2 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if mem[_69 + 18 len 14] < arg2:
        revert with 0, 17
    if mem[_69 + 18 len 14] - arg2 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if not (997 * mem[_69 + 18 len 14]) - (997 * arg2):
        revert with 0, 18
    if 1 > !(1000 * mem[_69 + 50 len 14] * arg2 / (997 * mem[_69 + 18 len 14]) - (997 * arg2)):
        revert with 0, 17
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = (1000 * Mask(112, 0, _71) * arg2 / (997 * Mask(112, 0, _70)) - (997 * arg2)) + 1
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, (1000 * Mask(112, 0, _71) * arg2 / (997 * Mask(112, 0, _70)) - (997 * arg2)) + 1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _75 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_75] == bool(mem[_75])
    if 1 >= _47:
        revert with 0, 50
    _78 = mem[(6 * ceil32(return_data.size)) + 256]
    if mem[(6 * ceil32(return_data.size)) + 256] < (1000 * Mask(112, 0, _71) * arg2 / (997 * Mask(112, 0, _70)) - (997 * arg2)) + 1:
        revert with 0, 17
    mem[mem[64] + 4] = stor5
    mem[mem[64] + 36] = _78 + -(1000 * Mask(112, 0, _71) * arg2 / (997 * Mask(112, 0, _70)) - (997 * arg2)) - 1
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args stor5, _78 + -(1000 * Mask(112, 0, _71) * arg2 / (997 * Mask(112, 0, _70)) - (997 * arg2)) - 1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _81 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_81] == bool(mem[_81])
}



}
