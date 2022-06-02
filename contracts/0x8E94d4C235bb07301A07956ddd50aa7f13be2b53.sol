contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function getTotalSupplyAndTotalBorrow() payable {
    mem[96] = 0xb0772d0b00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.getAllMarkets() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97 > test266151307() or floor32(mem[mem[96] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    s = 0
    t = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _52 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
        require ext_code.size(stor1)
        staticcall stor1.getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(_52)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _56 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _58 = mem[_56]
        require mem[_56] == mem[_56]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].totalBorrows() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _63 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _64 = mem[_63]
        require mem[_63] == mem[_63]
        if mem[_63] and _58 > -1 / mem[_63]:
            revert with 'NH{q', 17
        if t > -(mem[_63] * _58 / 10^18) - 1:
            revert with 'NH{q', 17
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].getCash() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_69] == mem[_69]
        if mem[_69] and _58 > -1 / mem[_69]:
            revert with 'NH{q', 17
        if s > -(mem[_69] * _58 / 10^18) - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _58
        s = s + (mem[_69] * _58 / 10^18)
        t = t + (_64 * _58 / 10^18)
        continue 
    if t * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 > (-1 * s * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5) - 1:
        revert with 'NH{q', 17
    return (t * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5) + (s * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5), 
           t * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5 * _5
}



}
