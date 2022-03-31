contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getPopulatedTicksInWord(address arg1, int16 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == ('signextend', 1, ('param', 'arg2'))
    mem[100] = ('signextend', 1, ('param', 'arg2'))
    require ext_code.size(arg1)
    staticcall arg1.tickBitmap(int16 rg1) with:
            gas gas_remaining wei
           args ('signextend', 1, ('param', 'arg2'))
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < 256:
        if not ext_call.return_data[0] or not 1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require ext_code.size(arg1)
    staticcall arg1.tickSpacing() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ('signextend', 2, ('ext_call.return_data', 0, 32))
    require s <= test266151307()
    mem[(2 * ceil32(return_data.size)) + 96] = s
    mem[64] = (2 * ceil32(return_data.size)) + (32 * s) + 128
    if not s:
        idx = 0
        t = s
        while idx < 256:
            if not ext_call.return_data[0] or not 1:
                idx = idx + 1
                t = t
                continue 
            require ext_code.size(arg1)
            staticcall arg1.ticks(int24 rg1) with:
                    gas gas_remaining wei
                   args ('signextend', 2, ('add', ('mul', ('var', 0), ('ext_call.return_data', 0, 32)), ('mul', ('mask_shl', 256, 0, 8, ('signextend', 2, ('signextend', 1, ('param', 'arg2')))), ('ext_call.return_data', 0, 32))))
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _49 = mem[_47]
            require mem[_47] == mem[_47 + 16 len 16]
            _50 = mem[_47 + 32]
            require mem[_47 + 32] == ('signextend', 15, ('mem', ('range', ('add', 32, ('var', '_47')), 32)))
            require mem[_47 + 128] == ('signextend', 6, ('mem', ('range', ('add', 128, ('var', '_47')), 32)))
            require mem[_47 + 160] == mem[_47 + 172 len 20]
            require mem[_47 + 192] == mem[_47 + 220 len 4]
            require mem[_47 + 224] == bool(mem[_47 + 224])
            _66 = mem[64]
            mem[64] = mem[64] + 96
            mem[_66] = ('signextend', 2, ('add', ('mul', ('var', 0), ('ext_call.return_data', 0, 32)), ('mul', ('mask_shl', 256, 0, 8, ('signextend', 2, ('signextend', 1, ('param', 'arg2')))), ('ext_call.return_data', 0, 32))))
            mem[_66 + 32] = ('signextend', 15, ('var', '_50'))
            mem[_66 + 64] = uint128(_49)
            require t - 1 < mem[(2 * ceil32(return_data.size)) + 96]
            mem[(32 * t - 1) + (2 * ceil32(return_data.size)) + 128] = _66
            idx = idx + 1
            t = t - 1
            continue 
        _38 = mem[64]
        mem[mem[64]] = 32
        _40 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = mem[64] + 64
        while idx < _40:
            _72 = mem[s]
            mem[t] = ('signextend', 2, ('mem', ('range', ('mem', ('range', ('var', 1), 32)), 32)))
            mem[t + 32] = ('signextend', 15, ('mem', ('range', ('add', 32, ('var', '_72')), 32)))
            mem[t + 64] = mem[_72 + 80 len 16]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _38 + (96 * _40) + -mem[64] + 64
    mem[64] = (2 * ceil32(return_data.size)) + (32 * s) + 224
    mem[(2 * ceil32(return_data.size)) + (32 * s) + 128] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * s) + 160] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * s) + 192] = 0
    mem[var31001] = (2 * ceil32(return_data.size)) + (32 * s) + 128
    t = var31001
    idx = var31002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(2 * ceil32(return_data.size)) + (32 * s) + 128] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * s) + 160] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * s) + 192] = 0
        mem[t + 32] = (2 * ceil32(return_data.size)) + (32 * s) + 128
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    t = s
    while idx < 256:
        if not ext_call.return_data[0] or not 1:
            idx = idx + 1
            t = t
            continue 
        require ext_code.size(arg1)
        staticcall arg1.ticks(int24 rg1) with:
                gas gas_remaining wei
               args ('signextend', 2, ('add', ('mul', ('var', 0), ('ext_call.return_data', 0, 32)), ('mul', ('mask_shl', 256, 0, 8, ('signextend', 2, ('signextend', 1, ('param', 'arg2')))), ('ext_call.return_data', 0, 32))))
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _99 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _100 = mem[_99]
        require mem[_99] == mem[_99 + 16 len 16]
        _101 = mem[_99 + 32]
        require mem[_99 + 32] == ('signextend', 15, ('mem', ('range', ('add', 32, ('var', '_99')), 32)))
        require mem[_99 + 128] == ('signextend', 6, ('mem', ('range', ('add', 128, ('var', '_99')), 32)))
        require mem[_99 + 160] == mem[_99 + 172 len 20]
        require mem[_99 + 192] == mem[_99 + 220 len 4]
        require mem[_99 + 224] == bool(mem[_99 + 224])
        _108 = mem[64]
        mem[64] = mem[64] + 96
        mem[_108] = ('signextend', 2, ('add', ('mul', ('var', 0), ('ext_call.return_data', 0, 32)), ('mul', ('mask_shl', 256, 0, 8, ('signextend', 2, ('signextend', 1, ('param', 'arg2')))), ('ext_call.return_data', 0, 32))))
        mem[_108 + 32] = ('signextend', 15, ('var', '_101'))
        mem[_108 + 64] = uint128(_100)
        require t - 1 < mem[(2 * ceil32(return_data.size)) + 96]
        mem[(32 * t - 1) + (2 * ceil32(return_data.size)) + 128] = _108
        idx = idx + 1
        t = t - 1
        continue 
    _90 = mem[64]
    mem[mem[64]] = 32
    _92 = mem[(2 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = mem[64] + 64
    while idx < _92:
        _110 = mem[s]
        mem[t] = ('signextend', 2, ('mem', ('range', ('mem', ('range', ('var', 1), 32)), 32)))
        mem[t + 32] = ('signextend', 15, ('mem', ('range', ('add', 32, ('var', '_110')), 32)))
        mem[t + 64] = mem[_110 + 80 len 16]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _90 + (96 * _92) + -mem[64] + 64
}



}
