contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_1c30eddd(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(stor0)
            staticcall stor0.getUserAccountData(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _89 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            require mem[_89] == mem[_89]
            require mem[_89 + 32] == mem[_89 + 32]
            require mem[_89 + 64] == mem[_89 + 64]
            require mem[_89 + 96] == mem[_89 + 96]
            require mem[_89 + 128] == mem[_89 + 128]
            require mem[_89 + 160] == mem[_89 + 160]
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_89 + 160]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _84 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 64 len 32 * _84] = mem[floor32(('cd', 4).length) + 129 len 32 * _84]
        return 32, mem[mem[64] + 32 len (32 * _84) + 32]
    mem[floor32(('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(stor0)
        staticcall stor0.getUserAccountData(address arg1) with:
                gas gas_remaining wei
               args address(mem[(32 * idx) + 128])
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _91 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        require mem[_91] == mem[_91]
        require mem[_91 + 32] == mem[_91 + 32]
        require mem[_91 + 64] == mem[_91 + 64]
        require mem[_91 + 96] == mem[_91 + 96]
        require mem[_91 + 128] == mem[_91 + 128]
        require mem[_91 + 160] == mem[_91 + 160]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = mem[_91 + 160]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _85 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 64 len 32 * _85] = mem[floor32(('cd', 4).length) + 129 len 32 * _85]
    return 32, mem[mem[64] + 32 len (32 * _85) + 32]
}



}
