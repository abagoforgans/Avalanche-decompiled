contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_8ac06f50(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    staticcall arg1 with:
         funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
            gas gas_remaining wei
           args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'Could not fetch price'
        if arg2.length < 32:
            revert with 0, 'Read out of bounds'
        return 32, 32, mem[128 len 1], mem[ceil32(arg2.length) + 161 len 31]
    mem[ceil32(arg2.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'Could not fetch price'
    if return_data.size < 32:
        revert with 0, 'Read out of bounds'
    return 32, 32, 
           mem[ceil32(arg2.length) + 160 len 1],
           mem[ceil32(arg2.length) + ceil32(return_data.size) + 162 len floor32(ceil32(arg2.length) + ceil32(return_data.size) + 193) + -ceil32(arg2.length) + -ceil32(return_data.size) - 162],
           Mask(8 * ceil32(arg2.length) + ceil32(return_data.size) + -floor32(ceil32(arg2.length) + ceil32(return_data.size) + 193) + 193, -(8 * ceil32(arg2.length) + ceil32(return_data.size) + -floor32(ceil32(arg2.length) + ceil32(return_data.size) + 193) + 193) + 256, 32) >> -(8 * ceil32(arg2.length) + ceil32(return_data.size) + -floor32(ceil32(arg2.length) + ceil32(return_data.size) + 193) + 193) + 256
}

function sub_e39e64de(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + (32 * arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[ceil32(arg1.length) + (32 * arg2.length) + 160] = 0
    s = 96
    t = 96
    idx = 0
    while idx < arg1.length:
        _66 = mem[idx + 128]
        _69 = mem[idx + 148]
        if not idx:
            if mem[96] < idx + mem[idx + 148] + 52:
                revert with 0, 'Read out of bounds'
            if mem[idx + 148]:
                _76 = mem[64]
                t = (mem[idx + 148] % 32) + (32 * not mem[idx + 148] % 32) + idx + 148
                s = mem[64] + (mem[idx + 148] % 32) + (32 * not mem[idx + 148] % 32)
                while s < _76 + (_69 % 32) + (32 * not _69 % 32) + _69:
                    mem[s] = mem[t]
                    t = t + 32
                    s = s + 32
                    continue 
                mem[_76] = _69
                mem[64] = ceil32(s)
                u = _76 + 32
                v = mem[64]
                t = mem[_76]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[mem[64] + floor32(mem[_76])] = mem[_76 + floor32(mem[_76]) + -(mem[_76] % 32) + 64 len mem[_76] % 32] or Mask(8 * -(mem[_76] % 32) + 32, -(8 * -(mem[_76] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_76])])
                staticcall Mask(160, 96, _66) >> 96.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _69 + ceil32(s) + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Could not fetch price'
                    if mem[96] < 32:
                        revert with 0, 'Read out of bounds'
                    _391 = mem[64]
                    t = 128
                    s = mem[64] + 32
                    while s < _391 + 64:
                        mem[s] = mem[t]
                        t = t + 32
                        s = s + 32
                        continue 
                    mem[_391] = 32
                    mem[64] = ceil32(s)
                    s = _76
                    t = _391
                    idx = idx + _69 + 52
                    continue 
                _358 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_358] = return_data.size
                mem[_358 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Could not fetch price'
                if return_data.size < 32:
                    revert with 0, 'Read out of bounds'
                _392 = mem[64]
                t = _358 + 32
                s = mem[64] + 32
                while s < _392 + 64:
                    mem[s] = mem[t]
                    t = t + 32
                    s = s + 32
                    continue 
                mem[_392] = 32
                mem[64] = ceil32(s)
                s = _76
                t = _392
                idx = idx + _69 + 52
                continue 
            _77 = mem[64]
            mem[64] = mem[64] + 32
            _84 = mem[64]
            _85 = mem[_77]
            t = _77 + 32
            u = mem[64]
            s = mem[_77]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_77])] = mem[_77 + floor32(mem[_77]) + -(mem[_77] % 32) + 64 len mem[_77] % 32] or Mask(8 * -(mem[_77] % 32) + 32, -(8 * -(mem[_77] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_77])])
            staticcall Mask(160, 96, _66) >> 96.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _85 + _84 + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Could not fetch price'
                if mem[96] < 32:
                    revert with 0, 'Read out of bounds'
                _284 = mem[64]
                t = 128
                s = mem[64] + 32
                while s < _284 + 64:
                    mem[s] = mem[t]
                    t = t + 32
                    s = s + 32
                    continue 
                mem[_284] = 32
                mem[64] = ceil32(s)
                s = _77
                t = _284
                idx = idx + _69 + 52
                continue 
            _232 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_232] = return_data.size
            mem[_232 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Could not fetch price'
            if return_data.size < 32:
                revert with 0, 'Read out of bounds'
            _285 = mem[64]
            t = _232 + 32
            s = mem[64] + 32
            while s < _285 + 64:
                mem[s] = mem[t]
                t = t + 32
                s = s + 32
                continue 
            mem[_285] = 32
            mem[64] = ceil32(s)
            s = _77
            t = _285
            idx = idx + _69 + 52
            continue 
        if arg2.length <= 0:
            if mem[96] < idx + mem[idx + 148] + 52:
                revert with 0, 'Read out of bounds'
            if mem[idx + 148]:
                _81 = mem[64]
                t = (mem[idx + 148] % 32) + (32 * not mem[idx + 148] % 32) + idx + 148
                s = mem[64] + (mem[idx + 148] % 32) + (32 * not mem[idx + 148] % 32)
                while s < _81 + (_69 % 32) + (32 * not _69 % 32) + _69:
                    mem[s] = mem[t]
                    t = t + 32
                    s = s + 32
                    continue 
                mem[_81] = _69
                mem[64] = ceil32(s)
                u = _81 + 32
                v = mem[64]
                t = mem[_81]
                while t >= 32:
                    mem[v] = mem[u]
                    u = u + 32
                    v = v + 32
                    t = t - 32
                    continue 
                mem[mem[64] + floor32(mem[_81])] = mem[_81 + floor32(mem[_81]) + -(mem[_81] % 32) + 64 len mem[_81] % 32] or Mask(8 * -(mem[_81] % 32) + 32, -(8 * -(mem[_81] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_81])])
                staticcall Mask(160, 96, _66) >> 96.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _69 + ceil32(s) + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Could not fetch price'
                    if mem[96] < 32:
                        revert with 0, 'Read out of bounds'
                    _393 = mem[64]
                    t = 128
                    s = mem[64] + 32
                    while s < _393 + 64:
                        mem[s] = mem[t]
                        t = t + 32
                        s = s + 32
                        continue 
                    mem[_393] = 32
                    mem[64] = ceil32(s)
                    s = _81
                    t = _393
                    idx = idx + _69 + 52
                    continue 
                _359 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_359] = return_data.size
                mem[_359 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Could not fetch price'
                if return_data.size < 32:
                    revert with 0, 'Read out of bounds'
                _394 = mem[64]
                t = _359 + 32
                s = mem[64] + 32
                while s < _394 + 64:
                    mem[s] = mem[t]
                    t = t + 32
                    s = s + 32
                    continue 
                mem[_394] = 32
                mem[64] = ceil32(s)
                s = _81
                t = _394
                idx = idx + _69 + 52
                continue 
            _82 = mem[64]
            mem[64] = mem[64] + 32
            _88 = mem[64]
            _89 = mem[_82]
            u = _82 + 32
            v = mem[64]
            t = mem[_82]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_82])] = mem[_82 + floor32(mem[_82]) + -(mem[_82] % 32) + 64 len mem[_82] % 32] or Mask(8 * -(mem[_82] % 32) + 32, -(8 * -(mem[_82] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_82])])
            staticcall Mask(160, 96, _66) >> 96.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _89 + _88 + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Could not fetch price'
                if mem[96] < 32:
                    revert with 0, 'Read out of bounds'
                _287 = mem[64]
                s = 128
                t = mem[64] + 32
                while t < _287 + 64:
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_287] = 32
                mem[64] = ceil32(t)
                t = _82
                t = _287
                idx = idx + _69 + 52
                continue 
            _233 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_233] = return_data.size
            mem[_233 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Could not fetch price'
            if return_data.size < 32:
                revert with 0, 'Read out of bounds'
            _288 = mem[64]
            s = _233 + 32
            t = mem[64] + 32
            while t < _288 + 64:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                continue 
            mem[_288] = 32
            mem[64] = ceil32(t)
            t = _82
            t = _288
            idx = idx + _69 + 52
            continue 
        require 0 < mem[ceil32(arg1.length) + 128]
        mem[mem[ceil32(arg1.length) + 160] + 128] = mem[t + 32]
        if mem[96] < idx + _69 + 52:
            revert with 0, 'Read out of bounds'
        if _69:
            _98 = mem[64]
            t = (_69 % 32) + (32 * not _69 % 32) + idx + 148
            s = mem[64] + (_69 % 32) + (32 * not _69 % 32)
            while s < _98 + (_69 % 32) + (32 * not _69 % 32) + _69:
                mem[s] = mem[t]
                t = t + 32
                s = s + 32
                continue 
            mem[_98] = _69
            mem[64] = ceil32(s)
            u = _98 + 32
            v = mem[64]
            t = mem[_98]
            while t >= 32:
                mem[v] = mem[u]
                u = u + 32
                v = v + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_98])] = mem[_98 + floor32(mem[_98]) + -(mem[_98] % 32) + 64 len mem[_98] % 32] or Mask(8 * -(mem[_98] % 32) + 32, -(8 * -(mem[_98] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_98])])
            staticcall Mask(160, 96, _66) >> 96.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _69 + ceil32(s) + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Could not fetch price'
                if mem[96] < 32:
                    revert with 0, 'Read out of bounds'
                _395 = mem[64]
                t = 128
                s = mem[64] + 32
                while s < _395 + 64:
                    mem[s] = mem[t]
                    t = t + 32
                    s = s + 32
                    continue 
                mem[_395] = 32
                mem[64] = ceil32(s)
                s = _98
                t = _395
                idx = idx + _69 + 52
                continue 
            _360 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_360] = return_data.size
            mem[_360 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Could not fetch price'
            if return_data.size < 32:
                revert with 0, 'Read out of bounds'
            _396 = mem[64]
            t = _360 + 32
            s = mem[64] + 32
            while s < _396 + 64:
                mem[s] = mem[t]
                t = t + 32
                s = s + 32
                continue 
            mem[_396] = 32
            mem[64] = ceil32(s)
            s = _98
            t = _396
            idx = idx + _69 + 52
            continue 
        _99 = mem[64]
        mem[64] = mem[64] + 32
        _122 = mem[64]
        _123 = mem[_99]
        t = _99 + 32
        u = mem[64]
        s = mem[_99]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_99])] = mem[_99 + floor32(mem[_99]) + -(mem[_99] % 32) + 64 len mem[_99] % 32] or Mask(8 * -(mem[_99] % 32) + 32, -(8 * -(mem[_99] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_99])])
        staticcall Mask(160, 96, _66) >> 96.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _123 + _122 + -mem[64] - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Could not fetch price'
            if mem[96] < 32:
                revert with 0, 'Read out of bounds'
            _290 = mem[64]
            t = 128
            s = mem[64] + 32
            while s < _290 + 64:
                mem[s] = mem[t]
                t = t + 32
                s = s + 32
                continue 
            mem[_290] = 32
            mem[64] = ceil32(s)
            s = _99
            t = _290
            idx = idx + _69 + 52
            continue 
        _234 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_234] = return_data.size
        mem[_234 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Could not fetch price'
        if return_data.size < 32:
            revert with 0, 'Read out of bounds'
        _291 = mem[64]
        t = _234 + 32
        s = mem[64] + 32
        while s < _291 + 64:
            mem[s] = mem[t]
            t = t + 32
            s = s + 32
            continue 
        mem[_291] = 32
        mem[64] = ceil32(s)
        s = _99
        t = _291
        idx = idx + _69 + 52
        continue 
    if mem[t] < 32:
        revert with 0, 'Read out of bounds'
    mem[mem[64]] = mem[t + 32]
    return memory
      from mem[64]
       len 32
}

function sub_a363a0f3(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + (32 * arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[ceil32(arg1.length) + (32 * arg2.length) + 160] = 0
    s = 96
    t = 96
    u = 96
    idx = 0
    while idx < arg1.length:
        _94 = mem[idx + 128]
        _99 = mem[idx + 148]
        if not idx:
            if mem[96] < idx + mem[idx + 148] + 52:
                revert with 0, 'Read out of bounds'
            if mem[idx + 148]:
                _106 = mem[64]
                t = (mem[idx + 148] % 32) + (32 * not mem[idx + 148] % 32) + idx + 148
                s = mem[64] + (mem[idx + 148] % 32) + (32 * not mem[idx + 148] % 32)
                while s < _106 + (_99 % 32) + (32 * not _99 % 32) + _99:
                    mem[s] = mem[t]
                    t = t + 32
                    s = s + 32
                    continue 
                mem[_106] = _99
                mem[64] = ceil32(s)
                v = _106 + 32
                w = mem[64]
                t = mem[_106]
                while t >= 32:
                    mem[w] = mem[v]
                    v = v + 32
                    w = w + 32
                    t = t - 32
                    continue 
                mem[mem[64] + floor32(mem[_106])] = mem[_106 + floor32(mem[_106]) + -(mem[_106] % 32) + 64 len mem[_106] % 32] or Mask(8 * -(mem[_106] % 32) + 32, -(8 * -(mem[_106] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_106])])
                staticcall Mask(160, 96, _94) >> 96.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _99 + ceil32(s) + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Could not fetch price'
                    if mem[96] < 32:
                        revert with 0, 'Read out of bounds'
                    _605 = mem[64]
                    t = 128
                    s = mem[64] + 32
                    while s < _605 + 64:
                        mem[s] = mem[t]
                        t = t + 32
                        s = s + 32
                        continue 
                    mem[_605] = 32
                    mem[64] = ceil32(s)
                    _726 = mem[u]
                    mem[ceil32(s)] = mem[u]
                    t = u + 32
                    v = ceil32(s) + 32
                    while v < ceil32(s) + _726 + 32:
                        mem[v] = mem[t]
                        t = t + 32
                        v = v + 32
                        continue 
                    _767 = mem[_605]
                    mem[ceil32(s)] = mem[_605] + mem[ceil32(s)]
                    t = _605 + 32
                    v = ceil32(s) + _726 + 32
                    while v < _767 + ceil32(s) + _726 + 32:
                        mem[v] = mem[t]
                        t = t + 32
                        v = v + 32
                        continue 
                    mem[64] = floor32(not mem[u] + _767 + _767 + ceil32(s) + _726 + 31) + 1
                    s = _106
                    t = _605
                    u = ceil32(s)
                    idx = idx + _99 + 52
                    continue 
                _560 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_560] = return_data.size
                mem[_560 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Could not fetch price'
                if return_data.size < 32:
                    revert with 0, 'Read out of bounds'
                _606 = mem[64]
                t = _560 + 32
                s = mem[64] + 32
                while s < _606 + 64:
                    mem[s] = mem[t]
                    t = t + 32
                    s = s + 32
                    continue 
                mem[_606] = 32
                mem[64] = ceil32(s)
                _728 = mem[u]
                mem[ceil32(s)] = mem[u]
                t = u + 32
                v = ceil32(s) + 32
                while v < ceil32(s) + _728 + 32:
                    mem[v] = mem[t]
                    t = t + 32
                    v = v + 32
                    continue 
                _770 = mem[_606]
                mem[ceil32(s)] = mem[_606] + mem[ceil32(s)]
                t = _606 + 32
                v = ceil32(s) + _728 + 32
                while v < _770 + ceil32(s) + _728 + 32:
                    mem[v] = mem[t]
                    t = t + 32
                    v = v + 32
                    continue 
                mem[64] = floor32(not mem[u] + _770 + _770 + ceil32(s) + _728 + 31) + 1
                s = _106
                t = _606
                u = ceil32(s)
                idx = idx + _99 + 52
                continue 
            _107 = mem[64]
            mem[64] = mem[64] + 32
            _114 = mem[64]
            _115 = mem[_107]
            v = _107 + 32
            w = mem[64]
            t = mem[_107]
            while t >= 32:
                mem[w] = mem[v]
                v = v + 32
                w = w + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_107])] = mem[_107 + floor32(mem[_107]) + -(mem[_107] % 32) + 64 len mem[_107] % 32] or Mask(8 * -(mem[_107] % 32) + 32, -(8 * -(mem[_107] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_107])])
            staticcall Mask(160, 96, _94) >> 96.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _115 + _114 + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Could not fetch price'
                if mem[96] < 32:
                    revert with 0, 'Read out of bounds'
                _402 = mem[64]
                v = 128
                t = mem[64] + 32
                while t < _402 + 64:
                    mem[t] = mem[v]
                    v = v + 32
                    t = t + 32
                    continue 
                mem[_402] = 32
                mem[64] = ceil32(t)
                _578 = mem[u]
                mem[ceil32(t)] = mem[u]
                v = u + 32
                w = ceil32(t) + 32
                while w < ceil32(t) + _578 + 32:
                    mem[w] = mem[v]
                    v = v + 32
                    w = w + 32
                    continue 
                _691 = mem[_402]
                mem[ceil32(t)] = mem[_402] + mem[ceil32(t)]
                s = _402 + 32
                v = ceil32(t) + _578 + 32
                while v < _691 + ceil32(t) + _578 + 32:
                    mem[v] = mem[s]
                    s = s + 32
                    v = v + 32
                    continue 
                mem[64] = floor32(not mem[u] + _691 + _691 + ceil32(t) + _578 + 31) + 1
                w = _107
                t = _402
                u = ceil32(t)
                idx = idx + _99 + 52
                continue 
            _349 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_349] = return_data.size
            mem[_349 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Could not fetch price'
            if return_data.size < 32:
                revert with 0, 'Read out of bounds'
            _403 = mem[64]
            v = _349 + 32
            t = mem[64] + 32
            while t < _403 + 64:
                mem[t] = mem[v]
                v = v + 32
                t = t + 32
                continue 
            mem[_403] = 32
            mem[64] = ceil32(t)
            _580 = mem[u]
            mem[ceil32(t)] = mem[u]
            v = u + 32
            w = ceil32(t) + 32
            while w < ceil32(t) + _580 + 32:
                mem[w] = mem[v]
                v = v + 32
                w = w + 32
                continue 
            _694 = mem[_403]
            mem[ceil32(t)] = mem[_403] + mem[ceil32(t)]
            s = _403 + 32
            v = ceil32(t) + _580 + 32
            while v < _694 + ceil32(t) + _580 + 32:
                mem[v] = mem[s]
                s = s + 32
                v = v + 32
                continue 
            mem[64] = floor32(not mem[u] + _694 + _694 + ceil32(t) + _580 + 31) + 1
            w = _107
            t = _403
            u = ceil32(t)
            idx = idx + _99 + 52
            continue 
        if arg2.length <= 0:
            if mem[96] < idx + mem[idx + 148] + 52:
                revert with 0, 'Read out of bounds'
            if mem[idx + 148]:
                _111 = mem[64]
                t = (mem[idx + 148] % 32) + (32 * not mem[idx + 148] % 32) + idx + 148
                s = mem[64] + (mem[idx + 148] % 32) + (32 * not mem[idx + 148] % 32)
                while s < _111 + (_99 % 32) + (32 * not _99 % 32) + _99:
                    mem[s] = mem[t]
                    t = t + 32
                    s = s + 32
                    continue 
                mem[_111] = _99
                mem[64] = ceil32(s)
                v = _111 + 32
                w = mem[64]
                t = mem[_111]
                while t >= 32:
                    mem[w] = mem[v]
                    v = v + 32
                    w = w + 32
                    t = t - 32
                    continue 
                mem[mem[64] + floor32(mem[_111])] = mem[_111 + floor32(mem[_111]) + -(mem[_111] % 32) + 64 len mem[_111] % 32] or Mask(8 * -(mem[_111] % 32) + 32, -(8 * -(mem[_111] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_111])])
                staticcall Mask(160, 96, _94) >> 96.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _99 + ceil32(s) + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Could not fetch price'
                    if mem[96] < 32:
                        revert with 0, 'Read out of bounds'
                    _613 = mem[64]
                    t = 128
                    s = mem[64] + 32
                    while s < _613 + 64:
                        mem[s] = mem[t]
                        t = t + 32
                        s = s + 32
                        continue 
                    mem[_613] = 32
                    mem[64] = ceil32(s)
                    _730 = mem[u]
                    mem[ceil32(s)] = mem[u]
                    t = u + 32
                    v = ceil32(s) + 32
                    while v < ceil32(s) + _730 + 32:
                        mem[v] = mem[t]
                        t = t + 32
                        v = v + 32
                        continue 
                    _777 = mem[_613]
                    mem[ceil32(s)] = mem[_613] + mem[ceil32(s)]
                    t = _613 + 32
                    v = ceil32(s) + _730 + 32
                    while v < _777 + ceil32(s) + _730 + 32:
                        mem[v] = mem[t]
                        t = t + 32
                        v = v + 32
                        continue 
                    mem[64] = floor32(not mem[u] + _777 + _777 + ceil32(s) + _730 + 31) + 1
                    s = _111
                    t = _613
                    u = ceil32(s)
                    idx = idx + _99 + 52
                    continue 
                _561 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_561] = return_data.size
                mem[_561 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Could not fetch price'
                if return_data.size < 32:
                    revert with 0, 'Read out of bounds'
                _614 = mem[64]
                t = _561 + 32
                s = mem[64] + 32
                while s < _614 + 64:
                    mem[s] = mem[t]
                    t = t + 32
                    s = s + 32
                    continue 
                mem[_614] = 32
                mem[64] = ceil32(s)
                _732 = mem[u]
                mem[ceil32(s)] = mem[u]
                t = u + 32
                v = ceil32(s) + 32
                while v < ceil32(s) + _732 + 32:
                    mem[v] = mem[t]
                    t = t + 32
                    v = v + 32
                    continue 
                _780 = mem[_614]
                mem[ceil32(s)] = mem[_614] + mem[ceil32(s)]
                t = _614 + 32
                v = ceil32(s) + _732 + 32
                while v < _780 + ceil32(s) + _732 + 32:
                    mem[v] = mem[t]
                    t = t + 32
                    v = v + 32
                    continue 
                mem[64] = floor32(not mem[u] + _780 + _780 + ceil32(s) + _732 + 31) + 1
                s = _111
                t = _614
                u = ceil32(s)
                idx = idx + _99 + 52
                continue 
            _112 = mem[64]
            mem[64] = mem[64] + 32
            _118 = mem[64]
            _119 = mem[_112]
            t = _112 + 32
            v = mem[64]
            s = mem[_112]
            while s >= 32:
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_112])] = mem[_112 + floor32(mem[_112]) + -(mem[_112] % 32) + 64 len mem[_112] % 32] or Mask(8 * -(mem[_112] % 32) + 32, -(8 * -(mem[_112] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_112])])
            staticcall Mask(160, 96, _94) >> 96.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _119 + _118 + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Could not fetch price'
                if mem[96] < 32:
                    revert with 0, 'Read out of bounds'
                _405 = mem[64]
                t = 128
                s = mem[64] + 32
                while s < _405 + 64:
                    mem[s] = mem[t]
                    t = t + 32
                    s = s + 32
                    continue 
                mem[_405] = 32
                mem[64] = ceil32(s)
                _584 = mem[u]
                mem[ceil32(s)] = mem[u]
                t = u + 32
                v = ceil32(s) + 32
                while v < ceil32(s) + _584 + 32:
                    mem[v] = mem[t]
                    t = t + 32
                    v = v + 32
                    continue 
                _699 = mem[_405]
                mem[ceil32(s)] = mem[_405] + mem[ceil32(s)]
                t = _405 + 32
                v = ceil32(s) + _584 + 32
                while v < _699 + ceil32(s) + _584 + 32:
                    mem[v] = mem[t]
                    t = t + 32
                    v = v + 32
                    continue 
                mem[64] = floor32(not mem[u] + _699 + _699 + ceil32(s) + _584 + 31) + 1
                s = _112
                t = _405
                u = ceil32(s)
                idx = idx + _99 + 52
                continue 
            _350 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_350] = return_data.size
            mem[_350 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Could not fetch price'
            if return_data.size < 32:
                revert with 0, 'Read out of bounds'
            _406 = mem[64]
            t = _350 + 32
            s = mem[64] + 32
            while s < _406 + 64:
                mem[s] = mem[t]
                t = t + 32
                s = s + 32
                continue 
            mem[_406] = 32
            mem[64] = ceil32(s)
            _586 = mem[u]
            mem[ceil32(s)] = mem[u]
            t = u + 32
            v = ceil32(s) + 32
            while v < ceil32(s) + _586 + 32:
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                continue 
            _702 = mem[_406]
            mem[ceil32(s)] = mem[_406] + mem[ceil32(s)]
            t = _406 + 32
            v = ceil32(s) + _586 + 32
            while v < _702 + ceil32(s) + _586 + 32:
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                continue 
            mem[64] = floor32(not mem[u] + _702 + _702 + ceil32(s) + _586 + 31) + 1
            s = _112
            t = _406
            u = ceil32(s)
            idx = idx + _99 + 52
            continue 
        require 0 < mem[ceil32(arg1.length) + 128]
        mem[mem[ceil32(arg1.length) + 160] + 128] = mem[t + 32]
        if mem[96] < idx + _99 + 52:
            revert with 0, 'Read out of bounds'
        if _99:
            _128 = mem[64]
            t = (_99 % 32) + (32 * not _99 % 32) + idx + 148
            s = mem[64] + (_99 % 32) + (32 * not _99 % 32)
            while s < _128 + (_99 % 32) + (32 * not _99 % 32) + _99:
                mem[s] = mem[t]
                t = t + 32
                s = s + 32
                continue 
            mem[_128] = _99
            mem[64] = ceil32(s)
            v = _128 + 32
            w = mem[64]
            t = mem[_128]
            while t >= 32:
                mem[w] = mem[v]
                v = v + 32
                w = w + 32
                t = t - 32
                continue 
            mem[mem[64] + floor32(mem[_128])] = mem[_128 + floor32(mem[_128]) + -(mem[_128] % 32) + 64 len mem[_128] % 32] or Mask(8 * -(mem[_128] % 32) + 32, -(8 * -(mem[_128] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_128])])
            staticcall Mask(160, 96, _94) >> 96.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _99 + ceil32(s) + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Could not fetch price'
                if mem[96] < 32:
                    revert with 0, 'Read out of bounds'
                _621 = mem[64]
                t = 128
                s = mem[64] + 32
                while s < _621 + 64:
                    mem[s] = mem[t]
                    t = t + 32
                    s = s + 32
                    continue 
                mem[_621] = 32
                mem[64] = ceil32(s)
                _734 = mem[u]
                mem[ceil32(s)] = mem[u]
                t = u + 32
                v = ceil32(s) + 32
                while v < ceil32(s) + _734 + 32:
                    mem[v] = mem[t]
                    t = t + 32
                    v = v + 32
                    continue 
                _787 = mem[_621]
                mem[ceil32(s)] = mem[_621] + mem[ceil32(s)]
                t = _621 + 32
                v = ceil32(s) + _734 + 32
                while v < _787 + ceil32(s) + _734 + 32:
                    mem[v] = mem[t]
                    t = t + 32
                    v = v + 32
                    continue 
                mem[64] = floor32(not mem[u] + _787 + _787 + ceil32(s) + _734 + 31) + 1
                s = _128
                t = _621
                u = ceil32(s)
                idx = idx + _99 + 52
                continue 
            _562 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_562] = return_data.size
            mem[_562 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Could not fetch price'
            if return_data.size < 32:
                revert with 0, 'Read out of bounds'
            _622 = mem[64]
            t = _562 + 32
            s = mem[64] + 32
            while s < _622 + 64:
                mem[s] = mem[t]
                t = t + 32
                s = s + 32
                continue 
            mem[_622] = 32
            mem[64] = ceil32(s)
            _736 = mem[u]
            mem[ceil32(s)] = mem[u]
            t = u + 32
            v = ceil32(s) + 32
            while v < ceil32(s) + _736 + 32:
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                continue 
            _790 = mem[_622]
            mem[ceil32(s)] = mem[_622] + mem[ceil32(s)]
            t = _622 + 32
            v = ceil32(s) + _736 + 32
            while v < _790 + ceil32(s) + _736 + 32:
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                continue 
            mem[64] = floor32(not mem[u] + _790 + _790 + ceil32(s) + _736 + 31) + 1
            s = _128
            t = _622
            u = ceil32(s)
            idx = idx + _99 + 52
            continue 
        _129 = mem[64]
        mem[64] = mem[64] + 32
        _152 = mem[64]
        _153 = mem[_129]
        t = _129 + 32
        v = mem[64]
        s = mem[_129]
        while s >= 32:
            mem[v] = mem[t]
            t = t + 32
            v = v + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_129])] = mem[_129 + floor32(mem[_129]) + -(mem[_129] % 32) + 64 len mem[_129] % 32] or Mask(8 * -(mem[_129] % 32) + 32, -(8 * -(mem[_129] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_129])])
        staticcall Mask(160, 96, _94) >> 96.mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _153 + _152 + -mem[64] - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Could not fetch price'
            if mem[96] < 32:
                revert with 0, 'Read out of bounds'
            _408 = mem[64]
            t = 128
            s = mem[64] + 32
            while s < _408 + 64:
                mem[s] = mem[t]
                t = t + 32
                s = s + 32
                continue 
            mem[_408] = 32
            mem[64] = ceil32(s)
            _590 = mem[u]
            mem[ceil32(s)] = mem[u]
            t = u + 32
            v = ceil32(s) + 32
            while v < ceil32(s) + _590 + 32:
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                continue 
            _707 = mem[_408]
            mem[ceil32(s)] = mem[_408] + mem[ceil32(s)]
            t = _408 + 32
            v = ceil32(s) + _590 + 32
            while v < _707 + ceil32(s) + _590 + 32:
                mem[v] = mem[t]
                t = t + 32
                v = v + 32
                continue 
            mem[64] = floor32(not mem[u] + _707 + _707 + ceil32(s) + _590 + 31) + 1
            s = _129
            t = _408
            u = ceil32(s)
            idx = idx + _99 + 52
            continue 
        _351 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_351] = return_data.size
        mem[_351 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Could not fetch price'
        if return_data.size < 32:
            revert with 0, 'Read out of bounds'
        _409 = mem[64]
        t = _351 + 32
        s = mem[64] + 32
        while s < _409 + 64:
            mem[s] = mem[t]
            t = t + 32
            s = s + 32
            continue 
        mem[_409] = 32
        mem[64] = ceil32(s)
        _592 = mem[u]
        mem[ceil32(s)] = mem[u]
        t = u + 32
        v = ceil32(s) + 32
        while v < ceil32(s) + _592 + 32:
            mem[v] = mem[t]
            t = t + 32
            v = v + 32
            continue 
        _710 = mem[_409]
        mem[ceil32(s)] = mem[_409] + mem[ceil32(s)]
        t = _409 + 32
        v = ceil32(s) + _592 + 32
        while v < _710 + ceil32(s) + _592 + 32:
            mem[v] = mem[t]
            t = t + 32
            v = v + 32
            continue 
        mem[64] = floor32(not mem[u] + _710 + _710 + ceil32(s) + _592 + 31) + 1
        s = _129
        t = _409
        u = ceil32(s)
        idx = idx + _99 + 52
        continue 
    _91 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[u]
    _93 = mem[u]
    mem[mem[64] + 64 len ceil32(mem[u])] = mem[u + 32 len ceil32(mem[u])]
    if not _93 % 32:
        return 32, mem[mem[64] + 32 len _93 + 32]
    mem[floor32(_93) + mem[64] + 64] = mem[floor32(_93) + mem[64] + -(_93 % 32) + 96 len _93 % 32]
    return memory
      from mem[64]
       len floor32(_93) + _91 + -mem[64] + 96
}



}
