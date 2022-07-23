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
    mem[(2 * ceil32(return_data.size)) + 192] = 32
    idx = 0
    s = 128
    t = (2 * ceil32(return_data.size)) + 256
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 256 len 64])
}



}
