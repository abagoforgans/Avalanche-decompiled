contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_9169eb32(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] and 10^18 > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(stor1)
    staticcall stor1.0x18160ddd with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    mem[(2 * ceil32(return_data.size)) + 96] = 0x5fe8e7cc00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    staticcall stor0.getHolders() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _12 = mem[(2 * ceil32(return_data.size)) + 96]
    require mem[(2 * ceil32(return_data.size)) + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _13 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 97
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]
    require _12 + (32 * _13) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _12 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _13:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 0
    s = 0
    while idx < _13:
        if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
            revert with 'NH{q', 50
        _45 = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 140 len 20]
        require ext_code.size(stor1)
        staticcall stor1.0x70a08231 with:
                gas gas_remaining wei
               args address(_45)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _48 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _49 = mem[_48]
        require mem[_48] == mem[_48]
        if mem[_48] and 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / mem[_48]:
            revert with 'NH{q', 17
        if idx >= mem[(4 * ceil32(return_data.size)) + 96]:
            revert with 'NH{q', 50
        mem[mem[64] + 4] = mem[(32 * idx) + (4 * ceil32(return_data.size)) + 140 len 20]
        mem[mem[64] + 36] = _49 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _49 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _54 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_54] == bool(mem[_54])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = _49 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^18
        s = _49
        continue 
}



}
