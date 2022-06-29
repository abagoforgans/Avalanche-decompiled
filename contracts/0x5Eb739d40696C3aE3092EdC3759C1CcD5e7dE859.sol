contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_d89ff504(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    require uint8(arg2) <= test266151307()
    mem[96] = uint8(arg2)
    mem[64] = (32 * uint8(arg2)) + 128
    if not uint8(arg2):
        idx = 0
        while uint8(idx) < uint8(arg2):
            mem[mem[64] + 4] = uint8(idx)
            require ext_code.size(address(arg1))
            staticcall address(arg1).getTokenBalance(uint8 arg1) with:
                    gas gas_remaining wei
                   args (idx << 248)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _74 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_74] == mem[_74]
            require uint8(idx) < mem[96]
            mem[(32 * uint8(idx)) + 128] = mem[_74]
            idx = idx + 1
            continue 
        require ext_code.size(address(arg1))
        staticcall address(arg1).swapStorage() with:
                gas gas_remaining wei
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _68 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _72 = mem[64]
        require mem[64] + 256 <= test266151307() and mem[64] + 256 >= mem[64]
        mem[64] = mem[64] + 256
        require mem[_68] == mem[_68 + 12 len 20]
        mem[_72] = mem[_68]
        require mem[_68 + 32] == mem[_68 + 32]
        mem[_72 + 32] = mem[_68 + 32]
        require mem[_68 + 64] == mem[_68 + 64]
        mem[_72 + 64] = mem[_68 + 64]
        require mem[_68 + 96] == mem[_68 + 96]
        mem[_72 + 96] = mem[_68 + 96]
        require mem[_68 + 128] == mem[_68 + 128]
        mem[_72 + 128] = mem[_68 + 128]
        require mem[_68 + 160] == mem[_68 + 160]
        mem[_72 + 160] = mem[_68 + 160]
        require mem[_68 + 192] == mem[_68 + 192]
        mem[_72 + 192] = mem[_68 + 192]
        require mem[_68 + 224] == mem[_68 + 224]
        mem[_72 + 224] = mem[_68 + 224]
        _96 = mem[_72 + 128]
        _97 = mem[_72 + 192]
        _98 = mem[_72 + 96]
        _99 = mem[_72 + 160]
        require ext_code.size(mem[_72 + 12 len 20])
        staticcall mem[_72 + 12 len 20].0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _110 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _112 = mem[_110]
        require mem[_110] == mem[_110]
        mem[mem[64]] = 192
        mem[mem[64] + 192] = mem[96]
        mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 64] = _97
        mem[mem[64] + 96] = _98
        return 192, _96, _97, _98, _99, _112, mem[mem[64] + 192 len (32 * mem[96]) + 32]
    mem[128 len 32 * uint8(arg2)] = call.data[calldata.size len 32 * uint8(arg2)]
    idx = 0
    while uint8(idx) < uint8(arg2):
        mem[mem[64] + 4] = uint8(idx)
        require ext_code.size(address(arg1))
        staticcall address(arg1).getTokenBalance(uint8 arg1) with:
                gas gas_remaining wei
               args (idx << 248)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _75 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_75] == mem[_75]
        require uint8(idx) < mem[96]
        mem[(32 * uint8(idx)) + 128] = mem[_75]
        idx = idx + 1
        continue 
    require ext_code.size(address(arg1))
    staticcall address(arg1).swapStorage() with:
            gas gas_remaining wei
    mem[mem[64] len 256] = ext_call.return_data[0 len 256]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _69 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 256
    _73 = mem[64]
    require mem[64] + 256 <= test266151307() and mem[64] + 256 >= mem[64]
    mem[64] = mem[64] + 256
    require mem[_69] == mem[_69 + 12 len 20]
    mem[_73] = mem[_69]
    require mem[_69 + 32] == mem[_69 + 32]
    mem[_73 + 32] = mem[_69 + 32]
    require mem[_69 + 64] == mem[_69 + 64]
    mem[_73 + 64] = mem[_69 + 64]
    require mem[_69 + 96] == mem[_69 + 96]
    mem[_73 + 96] = mem[_69 + 96]
    require mem[_69 + 128] == mem[_69 + 128]
    mem[_73 + 128] = mem[_69 + 128]
    require mem[_69 + 160] == mem[_69 + 160]
    mem[_73 + 160] = mem[_69 + 160]
    require mem[_69 + 192] == mem[_69 + 192]
    mem[_73 + 192] = mem[_69 + 192]
    require mem[_69 + 224] == mem[_69 + 224]
    mem[_73 + 224] = mem[_69 + 224]
    _103 = mem[_73 + 128]
    _104 = mem[_73 + 192]
    _105 = mem[_73 + 96]
    _106 = mem[_73 + 160]
    require ext_code.size(mem[_73 + 12 len 20])
    staticcall mem[_73 + 12 len 20].0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _111 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _113 = mem[_111]
    require mem[_111] == mem[_111]
    mem[mem[64]] = 192
    mem[mem[64] + 192] = mem[96]
    mem[mem[64] + 224 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 64] = _104
    mem[mem[64] + 96] = _105
    return 192, _103, _104, _105, _106, _113, mem[mem[64] + 192 len (32 * mem[96]) + 32]
}



}
