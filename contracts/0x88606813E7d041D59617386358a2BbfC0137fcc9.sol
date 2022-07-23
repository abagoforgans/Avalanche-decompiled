contract main {




// =====================  Runtime code  =====================


address joeRouterAddress;
address joePairAddress;

function joeRouter() payable {
    return joeRouterAddress
}

function joePair() payable {
    return joePairAddress
}

function _fallback() payable {
    revert
}

function sub_7eb452cb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 2
    require ext_code.size(joePairAddress)
    staticcall joePairAddress.token0() with:
            gas gas_remaining wei
    mem[192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[128] = ext_call.return_data[12 len 20]
    require ext_code.size(joePairAddress)
    staticcall joePairAddress.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[160] = ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = arg1
    mem[(2 * ceil32(return_data.size)) + 228] = 64
    mem[(2 * ceil32(return_data.size)) + 260] = 2
    idx = 0
    s = 128
    t = (2 * ceil32(return_data.size)) + 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(joeRouterAddress)
    staticcall joeRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _28 = mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 223 < (2 * ceil32(return_data.size)) + return_data.size + 192
    _29 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg1) >> 32 + 192]) + 193
    mem[(4 * ceil32(return_data.size)) + 192] = _29
    require _28 + (32 * _29) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _28 + 224
    t = (4 * ceil32(return_data.size)) + 224
    while idx < _29:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _29:
        revert with 'NH{q', 50
    mem[mem[64]] = mem[(4 * ceil32(return_data.size)) + 256]
    return memory
      from mem[64]
       len 32
}



}
