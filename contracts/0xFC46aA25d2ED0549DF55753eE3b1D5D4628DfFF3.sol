contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function calculateHealthFactor(address arg1, address arg2, address[] arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg3.length
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 == arg4
    mem[floor32(arg3.length) + 161] = 0
    mem[floor32(arg3.length) + 193] = 0
    mem[floor32(arg3.length) + 225] = 0
    mem[floor32(arg3.length) + 257] = 0
    mem[floor32(arg3.length) + 289] = 0
    mem[floor32(arg3.length) + 321] = 0
    mem[floor32(arg3.length) + 97] = 0
    mem[floor32(arg3.length) + 129] = 0
    require ext_code.size(arg2)
    staticcall arg2.oracle() with:
            gas gas_remaining wei
    mem[floor32(arg3.length) + 353] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(arg3.length) + ceil32(return_data.size) + 353
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    idx = 0
    while idx < arg4:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(arg2)
        staticcall arg2.markets(address rg1) with:
                gas gas_remaining wei
               args address(mem[(32 * idx) + 128])
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _89 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_89] == bool(mem[_89])
        require mem[_89 + 32] == mem[_89 + 32]
        require mem[_89 + 64] == bool(mem[_89 + 64])
        mem[floor32(arg3.length) + 225] = mem[_89 + 32]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _94 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address rg1) with:
                gas gas_remaining wei
               args address(_94)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _97 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_97] == mem[_97]
        mem[floor32(arg3.length) + 161] = mem[_97]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getAccountSnapshot(address rg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _103 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_103] == mem[_103]
        _105 = mem[_103 + 32]
        require mem[_103 + 32] == mem[_103 + 32]
        _106 = mem[_103 + 64]
        require mem[_103 + 64] == mem[_103 + 64]
        require mem[_103 + 96] == mem[_103 + 96]
        mem[floor32(arg3.length) + 289] = mem[_103 + 96]
        mem[floor32(arg3.length) + 257] = _106
        mem[floor32(arg3.length) + 321] = _105
        if mem[floor32(arg3.length) + 161] and _106 > -1 / mem[floor32(arg3.length) + 161]:
            revert with 'NH{q', 17
        if mem[floor32(arg3.length) + 97] > -(mem[floor32(arg3.length) + 161] * _106 / 10^18) - 1:
            revert with 'NH{q', 17
        mem[floor32(arg3.length) + 97] = mem[floor32(arg3.length) + 97] + (mem[floor32(arg3.length) + 161] * _106 / 10^18)
        if _105 and mem[floor32(arg3.length) + 289] > -1 / _105:
            revert with 'NH{q', 17
        if _105 * mem[floor32(arg3.length) + 289] / 10^18 and mem[floor32(arg3.length) + 225] > -1 / _105 * mem[floor32(arg3.length) + 289] / 10^18:
            revert with 'NH{q', 17
        mem[floor32(arg3.length) + 193] = _105 * mem[floor32(arg3.length) + 289] / 10^18 * mem[floor32(arg3.length) + 225] / 10^18
        if mem[floor32(arg3.length) + 161] and _105 * mem[floor32(arg3.length) + 289] / 10^18 * mem[floor32(arg3.length) + 225] / 10^18 > -1 / mem[floor32(arg3.length) + 161]:
            revert with 'NH{q', 17
        if mem[floor32(arg3.length) + 129] > -(mem[floor32(arg3.length) + 161] * _105 * mem[floor32(arg3.length) + 289] / 10^18 * mem[floor32(arg3.length) + 225] / 10^18 / 10^18) - 1:
            revert with 'NH{q', 17
        mem[floor32(arg3.length) + 129] = mem[floor32(arg3.length) + 129] + (mem[floor32(arg3.length) + 161] * _105 * mem[floor32(arg3.length) + 289] / 10^18 * mem[floor32(arg3.length) + 225] / 10^18 / 10^18)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _82 = mem[floor32(arg3.length) + 97]
    mem[mem[64]] = mem[floor32(arg3.length) + 129]
    return mem[mem[64]], _82
}



}
