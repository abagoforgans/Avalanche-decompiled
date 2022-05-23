contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
    revert
}

function setDao(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender == stor0:
        stor0 = arg1
    mem[128] = 'Treasury' << 192
    mem[96] = 32
    mem[64] = 160
    idx = 32
    while idx:
        require idx - 1 < 32
        if not Mask(8, 248, mem[idx + 127]):
            idx = idx - 1
            continue 
        mem[96] = idx
        mem[192] = 'Not dao' << 200
        mem[160] = 32
        mem[64] = 224
        s = 32
        while s:
            require s - 1 < 32
            if not Mask(8, 248, mem[s + 191]):
                s = s - 1
                continue 
            mem[160] = s
            s = 0
            while s < idx:
                mem[s + 256] = mem[s + 128]
                s = s + 32
                continue 
            mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _222 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _329 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _222 + idx + 258
                    mem[_222 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_222 + idx + 262] = 32
                    _345 = mem[_329]
                    mem[_222 + idx + 294] = mem[_329]
                    s = 0
                    while s < _345:
                        mem[s + _222 + idx + 326] = mem[s + _329 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_345) > _345:
                        mem[_222 + idx + _345 + 326] = 0
                    revert with 0, 32, mem[_222 + idx + 294 len ceil32(_345) + 32]
                mem[idx + mem[160] + 258] = 0
                _337 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _222 + idx + 258
                mem[_222 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_222 + idx + 262] = 32
                _353 = mem[_337]
                mem[_222 + idx + 294] = mem[_337]
                s = 0
                while s < _353:
                    mem[s + _222 + idx + 326] = mem[s + _337 + 32]
                    s = s + 32
                    continue 
                if ceil32(_353) > _353:
                    mem[_222 + idx + _353 + 326] = 0
                revert with 0, 32, mem[_222 + idx + 294 len ceil32(_353) + 32]
            _226 = mem[160]
            s = 0
            while s < mem[160]:
                mem[s + idx + 258] = mem[s + 192]
                s = s + 32
                continue 
            if ceil32(mem[160]) <= mem[160]:
                _330 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _226 + idx + 258
                mem[_226 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_226 + idx + 262] = 32
                _346 = mem[_330]
                mem[_226 + idx + 294] = mem[_330]
                s = 0
                while s < _346:
                    mem[s + _226 + idx + 326] = mem[s + _330 + 32]
                    s = s + 32
                    continue 
                if ceil32(_346) > _346:
                    mem[_226 + idx + _346 + 326] = 0
                revert with 0, 32, mem[_226 + idx + 294 len ceil32(_346) + 32]
            mem[idx + mem[160] + 258] = 0
            _338 = mem[64]
            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
            mem[64] = _226 + idx + 258
            mem[_226 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_226 + idx + 262] = 32
            _354 = mem[_338]
            mem[_226 + idx + 294] = mem[_338]
            s = 0
            while s < _354:
                mem[s + _226 + idx + 326] = mem[s + _338 + 32]
                s = s + 32
                continue 
            if ceil32(_354) > _354:
                mem[_226 + idx + _354 + 326] = 0
            revert with 0, 32, mem[_226 + idx + 294 len ceil32(_354) + 32]
        mem[224] = 0
        mem[64] = 256
        s = 0
        while s < idx:
            mem[s + 288] = mem[s + 128]
            s = s + 32
            continue 
        mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        if ceil32(idx) <= idx:
            _221 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _327 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _221 + idx + 290
                mem[_221 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_221 + idx + 294] = 32
                _343 = mem[_327]
                mem[_221 + idx + 326] = mem[_327]
                s = 0
                while s < _343:
                    mem[s + _221 + idx + 358] = mem[s + _327 + 32]
                    s = s + 32
                    continue 
                if ceil32(_343) > _343:
                    mem[_221 + idx + _343 + 358] = 0
                revert with 0, 32, mem[_221 + idx + 326 len ceil32(_343) + 32]
            mem[idx + mem[224] + 290] = 0
            _335 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _221 + idx + 290
            mem[_221 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_221 + idx + 294] = 32
            _351 = mem[_335]
            mem[_221 + idx + 326] = mem[_335]
            s = 0
            while s < _351:
                mem[s + _221 + idx + 358] = mem[s + _335 + 32]
                s = s + 32
                continue 
            if ceil32(_351) > _351:
                mem[_221 + idx + _351 + 358] = 0
            revert with 0, 32, mem[_221 + idx + 326 len ceil32(_351) + 32]
        _225 = mem[224]
        s = 0
        while s < mem[224]:
            mem[s + idx + 290] = mem[s + 256]
            s = s + 32
            continue 
        if ceil32(mem[224]) <= mem[224]:
            _328 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _225 + idx + 290
            mem[_225 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_225 + idx + 294] = 32
            _344 = mem[_328]
            mem[_225 + idx + 326] = mem[_328]
            s = 0
            while s < _344:
                mem[s + _225 + idx + 358] = mem[s + _328 + 32]
                s = s + 32
                continue 
            if ceil32(_344) > _344:
                mem[_225 + idx + _344 + 358] = 0
            revert with 0, 32, mem[_225 + idx + 326 len ceil32(_344) + 32]
        mem[idx + mem[224] + 290] = 0
        _336 = mem[64]
        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
        mem[64] = _225 + idx + 290
        mem[_225 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_225 + idx + 294] = 32
        _352 = mem[_336]
        mem[_225 + idx + 326] = mem[_336]
        s = 0
        while s < _352:
            mem[s + _225 + idx + 358] = mem[s + _336 + 32]
            s = s + 32
            continue 
        if ceil32(_352) > _352:
            mem[_225 + idx + _352 + 358] = 0
        revert with 0, 32, mem[_225 + idx + 326 len ceil32(_352) + 32]
    mem[160] = 0
    mem[224] = 'Not dao' << 200
    mem[192] = 32
    mem[64] = 256
    idx = 32
    while idx:
        require idx - 1 < 32
        if not Mask(8, 248, mem[idx + 223]):
            idx = idx - 1
            continue 
        mem[192] = idx
        s = 0
        while s < 0:
            mem[s + 288] = mem[s + 192]
            s = s + 32
            continue 
        mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        s = 0
        while s < idx:
            mem[s + 290] = mem[s + 224]
            s = s + 32
            continue 
        mem[256] = idx + 2
        mem[64] = idx + 290
        mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[idx + 294] = 32
        mem[idx + 326] = idx + 2
        s = 0
        while s < idx + 2:
            mem[s + idx + 358] = mem[s + 288]
            s = s + 32
            continue 
        if floor32(idx + 33) > idx + 2:
            mem[(2 * idx) + 360] = 0
        revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
}

function sub_8104a2ec(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if msg.sender == stor0:
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[128] = 'Treasury' << 192
    mem[96] = 32
    mem[64] = 160
    idx = 32
    while idx:
        require idx - 1 < 32
        if not Mask(8, 248, mem[idx + 127]):
            idx = idx - 1
            continue 
        mem[96] = idx
        mem[192] = 'Not dao' << 200
        mem[160] = 32
        mem[64] = 224
        s = 32
        while s:
            require s - 1 < 32
            if not Mask(8, 248, mem[s + 191]):
                s = s - 1
                continue 
            mem[160] = s
            s = 0
            while s < idx:
                mem[s + 256] = mem[s + 128]
                s = s + 32
                continue 
            mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _226 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _333 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _226 + idx + 258
                    mem[_226 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_226 + idx + 262] = 32
                    _349 = mem[_333]
                    mem[_226 + idx + 294] = mem[_333]
                    s = 0
                    while s < _349:
                        mem[s + _226 + idx + 326] = mem[s + _333 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_349) > _349:
                        mem[_226 + idx + _349 + 326] = 0
                    revert with 0, 32, mem[_226 + idx + 294 len ceil32(_349) + 32]
                mem[idx + mem[160] + 258] = 0
                _341 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _226 + idx + 258
                mem[_226 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_226 + idx + 262] = 32
                _357 = mem[_341]
                mem[_226 + idx + 294] = mem[_341]
                s = 0
                while s < _357:
                    mem[s + _226 + idx + 326] = mem[s + _341 + 32]
                    s = s + 32
                    continue 
                if ceil32(_357) > _357:
                    mem[_226 + idx + _357 + 326] = 0
                revert with 0, 32, mem[_226 + idx + 294 len ceil32(_357) + 32]
            _230 = mem[160]
            s = 0
            while s < mem[160]:
                mem[s + idx + 258] = mem[s + 192]
                s = s + 32
                continue 
            if ceil32(mem[160]) <= mem[160]:
                _334 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _230 + idx + 258
                mem[_230 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_230 + idx + 262] = 32
                _350 = mem[_334]
                mem[_230 + idx + 294] = mem[_334]
                s = 0
                while s < _350:
                    mem[s + _230 + idx + 326] = mem[s + _334 + 32]
                    s = s + 32
                    continue 
                if ceil32(_350) > _350:
                    mem[_230 + idx + _350 + 326] = 0
                revert with 0, 32, mem[_230 + idx + 294 len ceil32(_350) + 32]
            mem[idx + mem[160] + 258] = 0
            _342 = mem[64]
            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
            mem[64] = _230 + idx + 258
            mem[_230 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_230 + idx + 262] = 32
            _358 = mem[_342]
            mem[_230 + idx + 294] = mem[_342]
            s = 0
            while s < _358:
                mem[s + _230 + idx + 326] = mem[s + _342 + 32]
                s = s + 32
                continue 
            if ceil32(_358) > _358:
                mem[_230 + idx + _358 + 326] = 0
            revert with 0, 32, mem[_230 + idx + 294 len ceil32(_358) + 32]
        mem[224] = 0
        mem[64] = 256
        s = 0
        while s < idx:
            mem[s + 288] = mem[s + 128]
            s = s + 32
            continue 
        mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        if ceil32(idx) <= idx:
            _225 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _331 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _225 + idx + 290
                mem[_225 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_225 + idx + 294] = 32
                _347 = mem[_331]
                mem[_225 + idx + 326] = mem[_331]
                s = 0
                while s < _347:
                    mem[s + _225 + idx + 358] = mem[s + _331 + 32]
                    s = s + 32
                    continue 
                if ceil32(_347) > _347:
                    mem[_225 + idx + _347 + 358] = 0
                revert with 0, 32, mem[_225 + idx + 326 len ceil32(_347) + 32]
            mem[idx + mem[224] + 290] = 0
            _339 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _225 + idx + 290
            mem[_225 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_225 + idx + 294] = 32
            _355 = mem[_339]
            mem[_225 + idx + 326] = mem[_339]
            s = 0
            while s < _355:
                mem[s + _225 + idx + 358] = mem[s + _339 + 32]
                s = s + 32
                continue 
            if ceil32(_355) > _355:
                mem[_225 + idx + _355 + 358] = 0
            revert with 0, 32, mem[_225 + idx + 326 len ceil32(_355) + 32]
        _229 = mem[224]
        s = 0
        while s < mem[224]:
            mem[s + idx + 290] = mem[s + 256]
            s = s + 32
            continue 
        if ceil32(mem[224]) <= mem[224]:
            _332 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _229 + idx + 290
            mem[_229 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_229 + idx + 294] = 32
            _348 = mem[_332]
            mem[_229 + idx + 326] = mem[_332]
            s = 0
            while s < _348:
                mem[s + _229 + idx + 358] = mem[s + _332 + 32]
                s = s + 32
                continue 
            if ceil32(_348) > _348:
                mem[_229 + idx + _348 + 358] = 0
            revert with 0, 32, mem[_229 + idx + 326 len ceil32(_348) + 32]
        mem[idx + mem[224] + 290] = 0
        _340 = mem[64]
        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
        mem[64] = _229 + idx + 290
        mem[_229 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_229 + idx + 294] = 32
        _356 = mem[_340]
        mem[_229 + idx + 326] = mem[_340]
        s = 0
        while s < _356:
            mem[s + _229 + idx + 358] = mem[s + _340 + 32]
            s = s + 32
            continue 
        if ceil32(_356) > _356:
            mem[_229 + idx + _356 + 358] = 0
        revert with 0, 32, mem[_229 + idx + 326 len ceil32(_356) + 32]
    mem[160] = 0
    mem[224] = 'Not dao' << 200
    mem[192] = 32
    mem[64] = 256
    idx = 32
    while idx:
        require idx - 1 < 32
        if not Mask(8, 248, mem[idx + 223]):
            idx = idx - 1
            continue 
        mem[192] = idx
        s = 0
        while s < 0:
            mem[s + 288] = mem[s + 192]
            s = s + 32
            continue 
        mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        s = 0
        while s < idx:
            mem[s + 290] = mem[s + 224]
            s = s + 32
            continue 
        mem[256] = idx + 2
        mem[64] = idx + 290
        mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[idx + 294] = 32
        mem[idx + 326] = idx + 2
        s = 0
        while s < idx + 2:
            mem[s + idx + 358] = mem[s + 288]
            s = s + 32
            continue 
        if floor32(idx + 33) > idx + 2:
            mem[(2 * idx) + 360] = 0
        revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
}

function sub_f7aaaf3f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if msg.sender == stor0:
        require ext_code.size(0x130966628846bfd36ff31a822705796e8cb8c18d)
        call 0x130966628846bfd36ff31a822705796e8cb8c18d.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[128] = 'Treasury' << 192
    mem[96] = 32
    mem[64] = 160
    idx = 32
    while idx:
        require idx - 1 < 32
        if not Mask(8, 248, mem[idx + 127]):
            idx = idx - 1
            continue 
        mem[96] = idx
        mem[192] = 'Not dao' << 200
        mem[160] = 32
        mem[64] = 224
        s = 32
        while s:
            require s - 1 < 32
            if not Mask(8, 248, mem[s + 191]):
                s = s - 1
                continue 
            mem[160] = s
            s = 0
            while s < idx:
                mem[s + 256] = mem[s + 128]
                s = s + 32
                continue 
            mem[idx + 256] = 0x3a20000000000000000000000000000000000000000000000000000000000000
            if ceil32(idx) <= idx:
                _226 = mem[160]
                s = 0
                while s < mem[160]:
                    mem[s + idx + 258] = mem[s + 192]
                    s = s + 32
                    continue 
                if ceil32(mem[160]) <= mem[160]:
                    _333 = mem[64]
                    mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                    mem[64] = _226 + idx + 258
                    mem[_226 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_226 + idx + 262] = 32
                    _349 = mem[_333]
                    mem[_226 + idx + 294] = mem[_333]
                    s = 0
                    while s < _349:
                        mem[s + _226 + idx + 326] = mem[s + _333 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_349) > _349:
                        mem[_226 + idx + _349 + 326] = 0
                    revert with 0, 32, mem[_226 + idx + 294 len ceil32(_349) + 32]
                mem[idx + mem[160] + 258] = 0
                _341 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _226 + idx + 258
                mem[_226 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_226 + idx + 262] = 32
                _357 = mem[_341]
                mem[_226 + idx + 294] = mem[_341]
                s = 0
                while s < _357:
                    mem[s + _226 + idx + 326] = mem[s + _341 + 32]
                    s = s + 32
                    continue 
                if ceil32(_357) > _357:
                    mem[_226 + idx + _357 + 326] = 0
                revert with 0, 32, mem[_226 + idx + 294 len ceil32(_357) + 32]
            _230 = mem[160]
            s = 0
            while s < mem[160]:
                mem[s + idx + 258] = mem[s + 192]
                s = s + 32
                continue 
            if ceil32(mem[160]) <= mem[160]:
                _334 = mem[64]
                mem[mem[64]] = mem[160] + idx + -mem[64] + 226
                mem[64] = _230 + idx + 258
                mem[_230 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_230 + idx + 262] = 32
                _350 = mem[_334]
                mem[_230 + idx + 294] = mem[_334]
                s = 0
                while s < _350:
                    mem[s + _230 + idx + 326] = mem[s + _334 + 32]
                    s = s + 32
                    continue 
                if ceil32(_350) > _350:
                    mem[_230 + idx + _350 + 326] = 0
                revert with 0, 32, mem[_230 + idx + 294 len ceil32(_350) + 32]
            mem[idx + mem[160] + 258] = 0
            _342 = mem[64]
            mem[mem[64]] = mem[160] + idx + -mem[64] + 226
            mem[64] = _230 + idx + 258
            mem[_230 + idx + 258] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_230 + idx + 262] = 32
            _358 = mem[_342]
            mem[_230 + idx + 294] = mem[_342]
            s = 0
            while s < _358:
                mem[s + _230 + idx + 326] = mem[s + _342 + 32]
                s = s + 32
                continue 
            if ceil32(_358) > _358:
                mem[_230 + idx + _358 + 326] = 0
            revert with 0, 32, mem[_230 + idx + 294 len ceil32(_358) + 32]
        mem[224] = 0
        mem[64] = 256
        s = 0
        while s < idx:
            mem[s + 288] = mem[s + 128]
            s = s + 32
            continue 
        mem[idx + 288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        if ceil32(idx) <= idx:
            _225 = mem[224]
            s = 0
            while s < mem[224]:
                mem[s + idx + 290] = mem[s + 256]
                s = s + 32
                continue 
            if ceil32(mem[224]) <= mem[224]:
                _331 = mem[64]
                mem[mem[64]] = mem[224] + idx + -mem[64] + 258
                mem[64] = _225 + idx + 290
                mem[_225 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_225 + idx + 294] = 32
                _347 = mem[_331]
                mem[_225 + idx + 326] = mem[_331]
                s = 0
                while s < _347:
                    mem[s + _225 + idx + 358] = mem[s + _331 + 32]
                    s = s + 32
                    continue 
                if ceil32(_347) > _347:
                    mem[_225 + idx + _347 + 358] = 0
                revert with 0, 32, mem[_225 + idx + 326 len ceil32(_347) + 32]
            mem[idx + mem[224] + 290] = 0
            _339 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _225 + idx + 290
            mem[_225 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_225 + idx + 294] = 32
            _355 = mem[_339]
            mem[_225 + idx + 326] = mem[_339]
            s = 0
            while s < _355:
                mem[s + _225 + idx + 358] = mem[s + _339 + 32]
                s = s + 32
                continue 
            if ceil32(_355) > _355:
                mem[_225 + idx + _355 + 358] = 0
            revert with 0, 32, mem[_225 + idx + 326 len ceil32(_355) + 32]
        _229 = mem[224]
        s = 0
        while s < mem[224]:
            mem[s + idx + 290] = mem[s + 256]
            s = s + 32
            continue 
        if ceil32(mem[224]) <= mem[224]:
            _332 = mem[64]
            mem[mem[64]] = mem[224] + idx + -mem[64] + 258
            mem[64] = _229 + idx + 290
            mem[_229 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_229 + idx + 294] = 32
            _348 = mem[_332]
            mem[_229 + idx + 326] = mem[_332]
            s = 0
            while s < _348:
                mem[s + _229 + idx + 358] = mem[s + _332 + 32]
                s = s + 32
                continue 
            if ceil32(_348) > _348:
                mem[_229 + idx + _348 + 358] = 0
            revert with 0, 32, mem[_229 + idx + 326 len ceil32(_348) + 32]
        mem[idx + mem[224] + 290] = 0
        _340 = mem[64]
        mem[mem[64]] = mem[224] + idx + -mem[64] + 258
        mem[64] = _229 + idx + 290
        mem[_229 + idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_229 + idx + 294] = 32
        _356 = mem[_340]
        mem[_229 + idx + 326] = mem[_340]
        s = 0
        while s < _356:
            mem[s + _229 + idx + 358] = mem[s + _340 + 32]
            s = s + 32
            continue 
        if ceil32(_356) > _356:
            mem[_229 + idx + _356 + 358] = 0
        revert with 0, 32, mem[_229 + idx + 326 len ceil32(_356) + 32]
    mem[160] = 0
    mem[224] = 'Not dao' << 200
    mem[192] = 32
    mem[64] = 256
    idx = 32
    while idx:
        require idx - 1 < 32
        if not Mask(8, 248, mem[idx + 223]):
            idx = idx - 1
            continue 
        mem[192] = idx
        s = 0
        while s < 0:
            mem[s + 288] = mem[s + 192]
            s = s + 32
            continue 
        mem[288] = 0x3a20000000000000000000000000000000000000000000000000000000000000
        s = 0
        while s < idx:
            mem[s + 290] = mem[s + 224]
            s = s + 32
            continue 
        mem[256] = idx + 2
        mem[64] = idx + 290
        mem[idx + 290] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[idx + 294] = 32
        mem[idx + 326] = idx + 2
        s = 0
        while s < idx + 2:
            mem[s + idx + 358] = mem[s + 288]
            s = s + 32
            continue 
        if floor32(idx + 33) > idx + 2:
            mem[(2 * idx) + 360] = 0
        revert with 0, 32, idx + 2, mem[idx + 358 len floor32(idx + 33)]
    revert with 0, 32, 2, Mask(16, 240, 14880, 0, 0) >> 240, 0
}



}
