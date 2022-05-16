contract main {




// =====================  Runtime code  =====================


address stor1;

function _fallback() payable {
    revert
}

function claim() payable {
    require ext_code.size(stor1)
    call stor1.cashoutAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0x1999999999999999999999999999999999999999999999999999999999999999:
        revert with 0, 17
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args 0x9a481e39afc0463e01d7abcfe47f8d6214ace9dc, 10 * ext_call.return_data[0] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function buy(uint256 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg2.length)) + 97
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length < 3:
        revert with 0, 'You prefix is too short'
    idx = 0
    while idx < arg1:
        if not idx:
            _37 = mem[64]
            mem[64] = mem[64] + 64
            mem[_37] = 1
            mem[_37 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _38 = mem[64]
            _39 = mem[96]
            s = 0
            while s < _39:
                mem[s + _38 + 32] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(_39) <= _39:
                _71 = mem[_37]
                s = 0
                while s < _71:
                    mem[s + _38 + _39 + 32] = mem[s + _37 + 32]
                    s = s + 32
                    continue 
                if ceil32(_71) <= _71:
                    _169 = mem[64]
                    mem[64] = _71 + _38 + _39 + 32
                    mem[_71 + _38 + _39 + 32] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                    mem[_71 + _38 + _39 + 36] = 32
                    _173 = mem[_169]
                    mem[_71 + _38 + _39 + 68] = mem[_169]
                    s = 0
                    while s < _173:
                        mem[s + _71 + _38 + _39 + 100] = mem[s + _169 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_173) > _173:
                        mem[_71 + _38 + _39 + _173 + 100] = 0
                    require ext_code.size(stor1)
                    call stor1.createNodeWithTokens(string arg1) with:
                         gas gas_remaining wei
                        args 32, mem[_71 + _38 + _39 + 68 len ceil32(_173) + 32]
                else:
                    mem[_38 + _39 + _71 + 32] = 0
                    _174 = mem[64]
                    mem[64] = _71 + _38 + _39 + 32
                    mem[_71 + _38 + _39 + 32] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                    mem[_71 + _38 + _39 + 36] = 32
                    _181 = mem[_174]
                    mem[_71 + _38 + _39 + 68] = mem[_174]
                    s = 0
                    while s < _181:
                        mem[s + _71 + _38 + _39 + 100] = mem[s + _174 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_181) > _181:
                        mem[_71 + _38 + _39 + _181 + 100] = 0
                    require ext_code.size(stor1)
                    call stor1.createNodeWithTokens(string arg1) with:
                         gas gas_remaining wei
                        args 32, mem[_71 + _38 + _39 + 68 len ceil32(_181) + 32]
            else:
                mem[_38 + _39 + 32] = 0
                _72 = mem[_37]
                s = 0
                while s < _72:
                    mem[s + _38 + _39 + 32] = mem[s + _37 + 32]
                    s = s + 32
                    continue 
                if ceil32(_72) <= _72:
                    _171 = mem[64]
                    mem[64] = _72 + _38 + _39 + 32
                    mem[_72 + _38 + _39 + 32] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                    mem[_72 + _38 + _39 + 36] = 32
                    _176 = mem[_171]
                    mem[_72 + _38 + _39 + 68] = mem[_171]
                    s = 0
                    while s < _176:
                        mem[s + _72 + _38 + _39 + 100] = mem[s + _171 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_176) > _176:
                        mem[_72 + _38 + _39 + _176 + 100] = 0
                    require ext_code.size(stor1)
                    call stor1.createNodeWithTokens(string arg1) with:
                         gas gas_remaining wei
                        args 32, mem[_72 + _38 + _39 + 68 len ceil32(_176) + 32]
                else:
                    mem[_38 + _39 + _72 + 32] = 0
                    _177 = mem[64]
                    mem[64] = _72 + _38 + _39 + 32
                    mem[_72 + _38 + _39 + 32] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                    mem[_72 + _38 + _39 + 36] = 32
                    _182 = mem[_177]
                    mem[_72 + _38 + _39 + 68] = mem[_177]
                    s = 0
                    while s < _182:
                        mem[s + _72 + _38 + _39 + 100] = mem[s + _177 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_182) > _182:
                        mem[_72 + _38 + _39 + _182 + 100] = 0
                    require ext_code.size(stor1)
                    call stor1.createNodeWithTokens(string arg1) with:
                         gas gas_remaining wei
                        args 32, mem[_72 + _38 + _39 + 68 len ceil32(_182) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        t = 0
        s = idx
        while s:
            if t == -1:
                revert with 0, 17
            t = t + 1
            s = s / 10
            continue 
        if t > test266151307():
            revert with 0, 65
        _70 = mem[64]
        mem[mem[64]] = t
        mem[64] = mem[64] + ceil32(t) + 32
        if not t:
            u = t
            s = idx
            while s:
                if u < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if u - 1 >= mem[_70]:
                    revert with 0, 50
                mem[u + _70 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                u = u - 1
                s = s / 10
                continue 
            _165 = mem[64]
            _167 = mem[96]
            s = 0
            while s < _167:
                mem[s + _165 + 32] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(_167) <= _167:
                _259 = mem[_70]
                s = 0
                while s < _259:
                    mem[s + _165 + _167 + 32] = mem[s + _70 + 32]
                    s = s + 32
                    continue 
                if ceil32(_259) <= _259:
                    _327 = mem[64]
                    mem[64] = _259 + _165 + _167 + 32
                    mem[_259 + _165 + _167 + 32] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                    mem[_259 + _165 + _167 + 36] = 32
                    _335 = mem[_327]
                    mem[_259 + _165 + _167 + 68] = mem[_327]
                    s = 0
                    while s < _335:
                        mem[s + _259 + _165 + _167 + 100] = mem[s + _327 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_335) > _335:
                        mem[_259 + _165 + _167 + _335 + 100] = 0
                    require ext_code.size(stor1)
                    call stor1.createNodeWithTokens(string arg1) with:
                         gas gas_remaining wei
                        args 32, mem[_259 + _165 + _167 + 68 len ceil32(_335) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ceil32(_335) == -1:
                        revert with 0, 17
                    s = ceil32(_335) + 1
                    continue 
                mem[_165 + _167 + _259 + 32] = 0
                _336 = mem[64]
                mem[64] = _259 + _165 + _167 + 32
                mem[_259 + _165 + _167 + 32] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                mem[_259 + _165 + _167 + 36] = 32
                _347 = mem[_336]
                mem[_259 + _165 + _167 + 68] = mem[_336]
                s = 0
                while s < _347:
                    mem[s + _259 + _165 + _167 + 100] = mem[s + _336 + 32]
                    s = s + 32
                    continue 
                if ceil32(_347) > _347:
                    mem[_259 + _165 + _167 + _347 + 100] = 0
                require ext_code.size(stor1)
                call stor1.createNodeWithTokens(string arg1) with:
                     gas gas_remaining wei
                    args 32, mem[_259 + _165 + _167 + 68 len ceil32(_347) + 32]
            else:
                mem[_165 + _167 + 32] = 0
                _261 = mem[_70]
                s = 0
                while s < _261:
                    mem[s + _165 + _167 + 32] = mem[s + _70 + 32]
                    s = s + 32
                    continue 
                if ceil32(_261) <= _261:
                    _329 = mem[64]
                    mem[64] = _261 + _165 + _167 + 32
                    mem[_261 + _165 + _167 + 32] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                    mem[_261 + _165 + _167 + 36] = 32
                    _338 = mem[_329]
                    mem[_261 + _165 + _167 + 68] = mem[_329]
                    s = 0
                    while s < _338:
                        mem[s + _261 + _165 + _167 + 100] = mem[s + _329 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_338) > _338:
                        mem[_261 + _165 + _167 + _338 + 100] = 0
                    require ext_code.size(stor1)
                    call stor1.createNodeWithTokens(string arg1) with:
                         gas gas_remaining wei
                        args 32, mem[_261 + _165 + _167 + 68 len ceil32(_338) + 32]
                else:
                    mem[_165 + _167 + _261 + 32] = 0
                    _339 = mem[64]
                    mem[64] = _261 + _165 + _167 + 32
                    mem[_261 + _165 + _167 + 32] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                    mem[_261 + _165 + _167 + 36] = 32
                    _348 = mem[_339]
                    mem[_261 + _165 + _167 + 68] = mem[_339]
                    s = 0
                    while s < _348:
                        mem[s + _261 + _165 + _167 + 100] = mem[s + _339 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_348) > _348:
                        mem[_261 + _165 + _167 + _348 + 100] = 0
                    require ext_code.size(stor1)
                    call stor1.createNodeWithTokens(string arg1) with:
                         gas gas_remaining wei
                        args 32, mem[_261 + _165 + _167 + 68 len ceil32(_348) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_70 + 32 len t] = call.data[calldata.size len t]
        u = t
        s = u
        while s:
            if u < 1:
                revert with 0, 17
            if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if s < 10 * s / 10:
                revert with 0, 17
            if 48 > -uint8(s - (10 * s / 10)) + 255:
                revert with 0, 17
            if u - 1 >= mem[_70]:
                revert with 0, 50
            mem[u + _70 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
            u = u - 1
            s = s / 10
            continue 
        _166 = mem[64]
        _168 = mem[96]
        idx = 0
        while idx < _168:
            mem[idx + _166 + 32] = mem[idx + 128]
            idx = idx + 32
            continue 
        if ceil32(_168) <= _168:
            _260 = mem[_70]
            idx = 0
            while idx < _260:
                mem[idx + _166 + _168 + 32] = mem[idx + _70 + 32]
                idx = idx + 32
                continue 
            if ceil32(_260) <= _260:
                _331 = mem[64]
                mem[64] = _260 + _166 + _168 + 32
                mem[_260 + _166 + _168 + 32] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                mem[_260 + _166 + _168 + 36] = 32
                _341 = mem[_331]
                mem[_260 + _166 + _168 + 68] = mem[_331]
                idx = 0
                while idx < _341:
                    mem[idx + _260 + _166 + _168 + 100] = mem[idx + _331 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_341) > _341:
                    mem[_260 + _166 + _168 + _341 + 100] = 0
                require ext_code.size(stor1)
                call stor1.createNodeWithTokens(string arg1) with:
                     gas gas_remaining wei
                    args 32, mem[_260 + _166 + _168 + 68 len ceil32(_341) + 32]
            else:
                mem[_166 + _168 + _260 + 32] = 0
                _342 = mem[64]
                mem[64] = _260 + _166 + _168 + 32
                mem[_260 + _166 + _168 + 32] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                mem[_260 + _166 + _168 + 36] = 32
                _349 = mem[_342]
                mem[_260 + _166 + _168 + 68] = mem[_342]
                idx = 0
                while idx < _349:
                    mem[idx + _260 + _166 + _168 + 100] = mem[idx + _342 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_349) > _349:
                    mem[_260 + _166 + _168 + _349 + 100] = 0
                require ext_code.size(stor1)
                call stor1.createNodeWithTokens(string arg1) with:
                     gas gas_remaining wei
                    args 32, mem[_260 + _166 + _168 + 68 len ceil32(_349) + 32]
        else:
            mem[_166 + _168 + 32] = 0
            _262 = mem[_70]
            idx = 0
            while idx < _262:
                mem[idx + _166 + _168 + 32] = mem[idx + _70 + 32]
                idx = idx + 32
                continue 
            if ceil32(_262) <= _262:
                _333 = mem[64]
                mem[64] = _262 + _166 + _168 + 32
                mem[_262 + _166 + _168 + 32] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                mem[_262 + _166 + _168 + 36] = 32
                _344 = mem[_333]
                mem[_262 + _166 + _168 + 68] = mem[_333]
                idx = 0
                while idx < _344:
                    mem[idx + _262 + _166 + _168 + 100] = mem[idx + _333 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_344) > _344:
                    mem[_262 + _166 + _168 + _344 + 100] = 0
                require ext_code.size(stor1)
                call stor1.createNodeWithTokens(string arg1) with:
                     gas gas_remaining wei
                    args 32, mem[_262 + _166 + _168 + 68 len ceil32(_344) + 32]
            else:
                mem[_166 + _168 + _262 + 32] = 0
                _345 = mem[64]
                mem[64] = _262 + _166 + _168 + 32
                mem[_262 + _166 + _168 + 32] = 0x8f0ba4ca00000000000000000000000000000000000000000000000000000000
                mem[_262 + _166 + _168 + 36] = 32
                _350 = mem[_345]
                mem[_262 + _166 + _168 + 68] = mem[_345]
                idx = 0
                while idx < _350:
                    mem[idx + _262 + _166 + _168 + 100] = mem[idx + _345 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_350) > _350:
                    mem[_262 + _166 + _168 + _350 + 100] = 0
                require ext_code.size(stor1)
                call stor1.createNodeWithTokens(string arg1) with:
                     gas gas_remaining wei
                    args 32, mem[_262 + _166 + _168 + 68 len ceil32(_350) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if u == -1:
            revert with 0, 17
        u = u + 1
        continue 
}



}
