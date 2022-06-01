contract main {




// =====================  Runtime code  =====================


#
#  - getPrice(address arg1, address arg2, uint8 arg3)
#  - sub_9cb37627(?)
#
function _fallback() payable {
    revert
}

function getBorrowBalance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    call arg1.borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_1a04937f(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[68] == uint8(cd[68])
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 36).length
    mem[64] = ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _216 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x9cb3762700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(_216)
            mem[mem[64] + 68] = uint8(cd[68])
            require ext_code.size(this.address)
            call this.address.0x9cb37627 with:
                 gas gas_remaining wei
                args address(cd[4]), address(_216), uint8(cd[68])
            if not ext_call.success:
                if return_data.size <= 3:
                    if return_data.size:
                        _253 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_253] = return_data.size
                        mem[_253 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if return_data.size:
                            _256 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_256] = return_data.size
                            mem[_256 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        if return_data.size < 68:
                            if return_data.size:
                                _275 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_275] = return_data.size
                                mem[_275 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _257 = mem[64]
                            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                            if 0, address(cd[4]) << 64 > test266151307() or 0, address(cd[4]) << 64 + 36 > return_data.size:
                                if return_data.size:
                                    _280 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_280] = return_data.size
                                    mem[_280 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if mem[mem[64] + 0, address(cd[4]) << 64] > test266151307():
                                    if return_data.size:
                                        _283 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_283] = return_data.size
                                        mem[_283 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if 0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 32 > return_data.size - 4:
                                        if return_data.size:
                                            _284 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_284] = return_data.size
                                            mem[_284 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1 < mem[64] or mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1
                                        if not _257 + 0, address(cd[4]) << 64:
                                            if return_data.size:
                                                _288 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_288] = return_data.size
                                                mem[_288 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                _221 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _228 = mem[_221]
                require mem[_221] <= test266151307()
                require return_data.size - mem[_221] >= 96
                if not bool(_221 + ceil32(return_data.size) + 96 <= test266151307()):
                    revert with 0, 65
                mem[64] = _221 + ceil32(return_data.size) + 96
                _254 = mem[_221 + _228]
                require mem[_221 + _228] <= test266151307()
                require _221 + return_data.size > _221 + _228 + mem[_221 + _228] + 31
                _272 = mem[_221 + _228 + mem[_221 + _228]]
                if mem[_221 + _228 + mem[_221 + _228]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_221 + _228 + mem[_221 + _228]]) + 97 < 96 or _221 + ceil32(return_data.size) + ceil32(32 * mem[_221 + _228 + mem[_221 + _228]]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = _221 + ceil32(return_data.size) + ceil32(32 * mem[_221 + _228 + mem[_221 + _228]]) + 97
                mem[_221 + ceil32(return_data.size) + 96] = _272
                require return_data.size >= _228 + _254 + (_272 << 8) + 32
                t = _221 + _228 + _254 + 32
                u = _221 + ceil32(return_data.size) + 128
                s = 0
                while s < _272:
                    require _221 + return_data.size - t >= 256
                    _323 = mem[64]
                    if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 256
                    require mem[t] == mem[t + 12 len 20]
                    mem[_323] = mem[t]
                    mem[_323 + 32] = mem[t + 32]
                    mem[_323 + 64] = mem[t + 64]
                    mem[_323 + 96] = mem[t + 96]
                    mem[_323 + 128] = mem[t + 128]
                    mem[_323 + 160] = mem[t + 160]
                    mem[_323 + 192] = mem[t + 192]
                    mem[_323 + 224] = mem[t + 224]
                    mem[u] = _323
                    t = t + 256
                    u = u + 32
                    s = s + 1
                    continue 
                mem[_221 + ceil32(return_data.size)] = _221 + ceil32(return_data.size) + 96
                mem[_221 + ceil32(return_data.size) + 32] = mem[_221 + _228 + 32]
                mem[_221 + ceil32(return_data.size) + 64] = mem[_221 + _228 + 64]
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _221 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _215 = mem[64]
        mem[mem[64]] = 32
        _220 = mem[ceil32(32 * ('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 36).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _220) + 64
        while idx < _220:
            mem[t] = u + -_215 - 64
            _316 = mem[s]
            _321 = mem[mem[s]]
            mem[u] = 96
            _322 = mem[_321]
            mem[u + 96] = mem[_321]
            v = 0
            w = x + 128
            x = _321 + 32
            while v < _322:
                _450 = mem[x]
                mem[w] = mem[mem[x] + 12 len 20]
                mem[w + 32] = mem[_450 + 32]
                mem[w + 64] = mem[_450 + 64]
                mem[w + 96] = mem[_450 + 96]
                mem[w + 128] = mem[_450 + 128]
                mem[w + 160] = mem[_450 + 160]
                mem[w + 192] = mem[_450 + 192]
                mem[w + 224] = mem[_450 + 224]
                v = v + 1
                w = w + 256
                x = x + 32
                continue 
            mem[_321 + (32 * _322) + 64] = mem[_316 + 32]
            mem[_321 + (32 * _322) + 96] = mem[_316 + 64]
            v = _322 + 1
            s = s + 32
            w = _321 + (290 * _322) + 192
            x = _321 + (290 * _322) + 160
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[64] = ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 225
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] = 96
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 0
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 193] = 0
    mem[var30002] = var30001
    if not var30003 - 1:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _462 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x9cb3762700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(_462)
            mem[mem[64] + 68] = uint8(cd[68])
            require ext_code.size(this.address)
            call this.address.0x9cb37627 with:
                 gas gas_remaining wei
                args address(cd[4]), address(_462), uint8(cd[68])
            if not ext_call.success:
                if return_data.size <= 3:
                    if return_data.size:
                        _499 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_499] = return_data.size
                        mem[_499 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if return_data.size:
                            _513 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_513] = return_data.size
                            mem[_513 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        if return_data.size < 68:
                            if return_data.size:
                                _523 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_523] = return_data.size
                                mem[_523 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _514 = mem[64]
                            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                            if 0, address(cd[4]) << 64 > test266151307() or 0, address(cd[4]) << 64 + 36 > return_data.size:
                                if return_data.size:
                                    _527 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_527] = return_data.size
                                    mem[_527 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if mem[mem[64] + 0, address(cd[4]) << 64] > test266151307():
                                    if return_data.size:
                                        _528 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_528] = return_data.size
                                        mem[_528 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if 0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 32 > return_data.size - 4:
                                        if return_data.size:
                                            _529 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_529] = return_data.size
                                            mem[_529 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1 < mem[64] or mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1
                                        if not _514 + 0, address(cd[4]) << 64:
                                            if return_data.size:
                                                _534 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_534] = return_data.size
                                                mem[_534 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                _467 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _477 = mem[_467]
                require mem[_467] <= test266151307()
                require return_data.size - mem[_467] >= 96
                if not bool(_467 + ceil32(return_data.size) + 96 <= test266151307()):
                    revert with 0, 65
                mem[64] = _467 + ceil32(return_data.size) + 96
                _500 = mem[_467 + _477]
                require mem[_467 + _477] <= test266151307()
                require _467 + return_data.size > _467 + _477 + mem[_467 + _477] + 31
                _517 = mem[_467 + _477 + mem[_467 + _477]]
                if mem[_467 + _477 + mem[_467 + _477]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_467 + _477 + mem[_467 + _477]]) + 97 < 96 or _467 + ceil32(return_data.size) + ceil32(32 * mem[_467 + _477 + mem[_467 + _477]]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = _467 + ceil32(return_data.size) + ceil32(32 * mem[_467 + _477 + mem[_467 + _477]]) + 97
                mem[_467 + ceil32(return_data.size) + 96] = _517
                require return_data.size >= _477 + _500 + (_517 << 8) + 32
                t = _467 + _477 + _500 + 32
                u = _467 + ceil32(return_data.size) + 128
                s = 0
                while s < _517:
                    require _467 + return_data.size - t >= 256
                    _568 = mem[64]
                    if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 256
                    require mem[t] == mem[t + 12 len 20]
                    mem[_568] = mem[t]
                    mem[_568 + 32] = mem[t + 32]
                    mem[_568 + 64] = mem[t + 64]
                    mem[_568 + 96] = mem[t + 96]
                    mem[_568 + 128] = mem[t + 128]
                    mem[_568 + 160] = mem[t + 160]
                    mem[_568 + 192] = mem[t + 192]
                    mem[_568 + 224] = mem[t + 224]
                    mem[u] = _568
                    t = t + 256
                    u = u + 32
                    s = s + 1
                    continue 
                mem[_467 + ceil32(return_data.size)] = _467 + ceil32(return_data.size) + 96
                mem[_467 + ceil32(return_data.size) + 32] = mem[_467 + _477 + 32]
                mem[_467 + ceil32(return_data.size) + 64] = mem[_467 + _477 + 64]
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _467 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _461 = mem[64]
        mem[mem[64]] = 32
        _465 = mem[ceil32(32 * ('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 36).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _465) + 64
        while idx < _465:
            mem[t] = u + -_461 - 64
            _562 = mem[s]
            _566 = mem[mem[s]]
            mem[u] = 96
            _567 = mem[_566]
            mem[u + 96] = mem[_566]
            v = 0
            w = x + 128
            x = _566 + 32
            while v < _567:
                _696 = mem[x]
                mem[w] = mem[mem[x] + 12 len 20]
                mem[w + 32] = mem[_696 + 32]
                mem[w + 64] = mem[_696 + 64]
                mem[w + 96] = mem[_696 + 96]
                mem[w + 128] = mem[_696 + 128]
                mem[w + 160] = mem[_696 + 160]
                mem[w + 192] = mem[_696 + 192]
                mem[w + 224] = mem[_696 + 224]
                v = v + 1
                w = w + 256
                x = x + 32
                continue 
            mem[_566 + (32 * _567) + 64] = mem[_562 + 32]
            mem[_566 + (32 * _567) + 96] = mem[_562 + 64]
            v = _567 + 1
            s = s + 32
            w = _566 + (290 * _567) + 192
            x = _566 + (290 * _567) + 160
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[64] = ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 321
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 225] = 96
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 257] = 0
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 289] = 0
    mem[var34002] = var34001
    if not var34003 - 1:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _707 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x9cb3762700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(_707)
            mem[mem[64] + 68] = uint8(cd[68])
            require ext_code.size(this.address)
            call this.address.0x9cb37627 with:
                 gas gas_remaining wei
                args address(cd[4]), address(_707), uint8(cd[68])
            if not ext_call.success:
                if return_data.size <= 3:
                    if return_data.size:
                        _744 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_744] = return_data.size
                        mem[_744 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if return_data.size:
                            _758 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_758] = return_data.size
                            mem[_758 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        if return_data.size < 68:
                            if return_data.size:
                                _768 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_768] = return_data.size
                                mem[_768 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _759 = mem[64]
                            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                            if 0, address(cd[4]) << 64 > test266151307() or 0, address(cd[4]) << 64 + 36 > return_data.size:
                                if return_data.size:
                                    _772 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_772] = return_data.size
                                    mem[_772 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if mem[mem[64] + 0, address(cd[4]) << 64] > test266151307():
                                    if return_data.size:
                                        _773 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_773] = return_data.size
                                        mem[_773 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if 0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 32 > return_data.size - 4:
                                        if return_data.size:
                                            _774 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_774] = return_data.size
                                            mem[_774 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1 < mem[64] or mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1
                                        if not _759 + 0, address(cd[4]) << 64:
                                            if return_data.size:
                                                _779 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_779] = return_data.size
                                                mem[_779 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                _712 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _722 = mem[_712]
                require mem[_712] <= test266151307()
                require return_data.size - mem[_712] >= 96
                if not bool(_712 + ceil32(return_data.size) + 96 <= test266151307()):
                    revert with 0, 65
                mem[64] = _712 + ceil32(return_data.size) + 96
                _745 = mem[_712 + _722]
                require mem[_712 + _722] <= test266151307()
                require _712 + return_data.size > _712 + _722 + mem[_712 + _722] + 31
                _762 = mem[_712 + _722 + mem[_712 + _722]]
                if mem[_712 + _722 + mem[_712 + _722]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_712 + _722 + mem[_712 + _722]]) + 97 < 96 or _712 + ceil32(return_data.size) + ceil32(32 * mem[_712 + _722 + mem[_712 + _722]]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = _712 + ceil32(return_data.size) + ceil32(32 * mem[_712 + _722 + mem[_712 + _722]]) + 97
                mem[_712 + ceil32(return_data.size) + 96] = _762
                require return_data.size >= _722 + _745 + (_762 << 8) + 32
                t = _712 + _722 + _745 + 32
                u = _712 + ceil32(return_data.size) + 128
                s = 0
                while s < _762:
                    require _712 + return_data.size - t >= 256
                    _813 = mem[64]
                    if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 256
                    require mem[t] == mem[t + 12 len 20]
                    mem[_813] = mem[t]
                    mem[_813 + 32] = mem[t + 32]
                    mem[_813 + 64] = mem[t + 64]
                    mem[_813 + 96] = mem[t + 96]
                    mem[_813 + 128] = mem[t + 128]
                    mem[_813 + 160] = mem[t + 160]
                    mem[_813 + 192] = mem[t + 192]
                    mem[_813 + 224] = mem[t + 224]
                    mem[u] = _813
                    t = t + 256
                    u = u + 32
                    s = s + 1
                    continue 
                mem[_712 + ceil32(return_data.size)] = _712 + ceil32(return_data.size) + 96
                mem[_712 + ceil32(return_data.size) + 32] = mem[_712 + _722 + 32]
                mem[_712 + ceil32(return_data.size) + 64] = mem[_712 + _722 + 64]
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _712 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _706 = mem[64]
        mem[mem[64]] = 32
        _710 = mem[ceil32(32 * ('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 36).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _710) + 64
        while idx < _710:
            mem[t] = u + -_706 - 64
            _807 = mem[s]
            _811 = mem[mem[s]]
            mem[u] = 96
            _812 = mem[_811]
            mem[u + 96] = mem[_811]
            v = 0
            w = x + 128
            x = _811 + 32
            while v < _812:
                _941 = mem[x]
                mem[w] = mem[mem[x] + 12 len 20]
                mem[w + 32] = mem[_941 + 32]
                mem[w + 64] = mem[_941 + 64]
                mem[w + 96] = mem[_941 + 96]
                mem[w + 128] = mem[_941 + 128]
                mem[w + 160] = mem[_941 + 160]
                mem[w + 192] = mem[_941 + 192]
                mem[w + 224] = mem[_941 + 224]
                v = v + 1
                w = w + 256
                x = x + 32
                continue 
            mem[_811 + (32 * _812) + 64] = mem[_807 + 32]
            mem[_811 + (32 * _812) + 96] = mem[_807 + 64]
            v = _812 + 1
            s = s + 32
            w = _811 + (290 * _812) + 192
            x = _811 + (290 * _812) + 160
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[64] = ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 417
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 321] = 96
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 353] = 0
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 385] = 0
    mem[var38002] = var38001
    if not var38003 - 1:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _952 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x9cb3762700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(_952)
            mem[mem[64] + 68] = uint8(cd[68])
            require ext_code.size(this.address)
            call this.address.0x9cb37627 with:
                 gas gas_remaining wei
                args address(cd[4]), address(_952), uint8(cd[68])
            if not ext_call.success:
                if return_data.size <= 3:
                    if return_data.size:
                        _989 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_989] = return_data.size
                        mem[_989 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if return_data.size:
                            _1003 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1003] = return_data.size
                            mem[_1003 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        if return_data.size < 68:
                            if return_data.size:
                                _1013 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1013] = return_data.size
                                mem[_1013 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _1004 = mem[64]
                            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                            if 0, address(cd[4]) << 64 > test266151307() or 0, address(cd[4]) << 64 + 36 > return_data.size:
                                if return_data.size:
                                    _1017 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1017] = return_data.size
                                    mem[_1017 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if mem[mem[64] + 0, address(cd[4]) << 64] > test266151307():
                                    if return_data.size:
                                        _1018 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1018] = return_data.size
                                        mem[_1018 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if 0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 32 > return_data.size - 4:
                                        if return_data.size:
                                            _1019 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1019] = return_data.size
                                            mem[_1019 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1 < mem[64] or mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1
                                        if not _1004 + 0, address(cd[4]) << 64:
                                            if return_data.size:
                                                _1024 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1024] = return_data.size
                                                mem[_1024 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                _957 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _967 = mem[_957]
                require mem[_957] <= test266151307()
                require return_data.size - mem[_957] >= 96
                if not bool(_957 + ceil32(return_data.size) + 96 <= test266151307()):
                    revert with 0, 65
                mem[64] = _957 + ceil32(return_data.size) + 96
                _990 = mem[_957 + _967]
                require mem[_957 + _967] <= test266151307()
                require _957 + return_data.size > _957 + _967 + mem[_957 + _967] + 31
                _1007 = mem[_957 + _967 + mem[_957 + _967]]
                if mem[_957 + _967 + mem[_957 + _967]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_957 + _967 + mem[_957 + _967]]) + 97 < 96 or _957 + ceil32(return_data.size) + ceil32(32 * mem[_957 + _967 + mem[_957 + _967]]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = _957 + ceil32(return_data.size) + ceil32(32 * mem[_957 + _967 + mem[_957 + _967]]) + 97
                mem[_957 + ceil32(return_data.size) + 96] = _1007
                require return_data.size >= _967 + _990 + (_1007 << 8) + 32
                t = _957 + _967 + _990 + 32
                u = _957 + ceil32(return_data.size) + 128
                s = 0
                while s < _1007:
                    require _957 + return_data.size - t >= 256
                    _1058 = mem[64]
                    if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 256
                    require mem[t] == mem[t + 12 len 20]
                    mem[_1058] = mem[t]
                    mem[_1058 + 32] = mem[t + 32]
                    mem[_1058 + 64] = mem[t + 64]
                    mem[_1058 + 96] = mem[t + 96]
                    mem[_1058 + 128] = mem[t + 128]
                    mem[_1058 + 160] = mem[t + 160]
                    mem[_1058 + 192] = mem[t + 192]
                    mem[_1058 + 224] = mem[t + 224]
                    mem[u] = _1058
                    t = t + 256
                    u = u + 32
                    s = s + 1
                    continue 
                mem[_957 + ceil32(return_data.size)] = _957 + ceil32(return_data.size) + 96
                mem[_957 + ceil32(return_data.size) + 32] = mem[_957 + _967 + 32]
                mem[_957 + ceil32(return_data.size) + 64] = mem[_957 + _967 + 64]
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _957 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _951 = mem[64]
        mem[mem[64]] = 32
        _955 = mem[ceil32(32 * ('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 36).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _955) + 64
        while idx < _955:
            mem[t] = u + -_951 - 64
            _1052 = mem[s]
            _1056 = mem[mem[s]]
            mem[u] = 96
            _1057 = mem[_1056]
            mem[u + 96] = mem[_1056]
            v = 0
            w = x + 128
            x = _1056 + 32
            while v < _1057:
                _1186 = mem[x]
                mem[w] = mem[mem[x] + 12 len 20]
                mem[w + 32] = mem[_1186 + 32]
                mem[w + 64] = mem[_1186 + 64]
                mem[w + 96] = mem[_1186 + 96]
                mem[w + 128] = mem[_1186 + 128]
                mem[w + 160] = mem[_1186 + 160]
                mem[w + 192] = mem[_1186 + 192]
                mem[w + 224] = mem[_1186 + 224]
                v = v + 1
                w = w + 256
                x = x + 32
                continue 
            mem[_1056 + (32 * _1057) + 64] = mem[_1052 + 32]
            mem[_1056 + (32 * _1057) + 96] = mem[_1052 + 64]
            v = _1057 + 1
            s = s + 32
            w = _1056 + (290 * _1057) + 192
            x = _1056 + (290 * _1057) + 160
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[64] = ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 513
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 417] = 96
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 449] = 0
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 481] = 0
    mem[var42002] = var42001
    if not var42003 - 1:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _1197 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x9cb3762700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(_1197)
            mem[mem[64] + 68] = uint8(cd[68])
            require ext_code.size(this.address)
            call this.address.0x9cb37627 with:
                 gas gas_remaining wei
                args address(cd[4]), address(_1197), uint8(cd[68])
            if not ext_call.success:
                if return_data.size <= 3:
                    if return_data.size:
                        _1234 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1234] = return_data.size
                        mem[_1234 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if return_data.size:
                            _1248 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1248] = return_data.size
                            mem[_1248 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        if return_data.size < 68:
                            if return_data.size:
                                _1258 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1258] = return_data.size
                                mem[_1258 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _1249 = mem[64]
                            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                            if 0, address(cd[4]) << 64 > test266151307() or 0, address(cd[4]) << 64 + 36 > return_data.size:
                                if return_data.size:
                                    _1262 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1262] = return_data.size
                                    mem[_1262 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if mem[mem[64] + 0, address(cd[4]) << 64] > test266151307():
                                    if return_data.size:
                                        _1263 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1263] = return_data.size
                                        mem[_1263 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if 0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 32 > return_data.size - 4:
                                        if return_data.size:
                                            _1264 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1264] = return_data.size
                                            mem[_1264 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1 < mem[64] or mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1
                                        if not _1249 + 0, address(cd[4]) << 64:
                                            if return_data.size:
                                                _1269 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1269] = return_data.size
                                                mem[_1269 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                _1202 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1212 = mem[_1202]
                require mem[_1202] <= test266151307()
                require return_data.size - mem[_1202] >= 96
                if not bool(_1202 + ceil32(return_data.size) + 96 <= test266151307()):
                    revert with 0, 65
                mem[64] = _1202 + ceil32(return_data.size) + 96
                _1235 = mem[_1202 + _1212]
                require mem[_1202 + _1212] <= test266151307()
                require _1202 + return_data.size > _1202 + _1212 + mem[_1202 + _1212] + 31
                _1252 = mem[_1202 + _1212 + mem[_1202 + _1212]]
                if mem[_1202 + _1212 + mem[_1202 + _1212]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_1202 + _1212 + mem[_1202 + _1212]]) + 97 < 96 or _1202 + ceil32(return_data.size) + ceil32(32 * mem[_1202 + _1212 + mem[_1202 + _1212]]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = _1202 + ceil32(return_data.size) + ceil32(32 * mem[_1202 + _1212 + mem[_1202 + _1212]]) + 97
                mem[_1202 + ceil32(return_data.size) + 96] = _1252
                require return_data.size >= _1212 + _1235 + (_1252 << 8) + 32
                t = _1202 + _1212 + _1235 + 32
                u = _1202 + ceil32(return_data.size) + 128
                s = 0
                while s < _1252:
                    require _1202 + return_data.size - t >= 256
                    _1303 = mem[64]
                    if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 256
                    require mem[t] == mem[t + 12 len 20]
                    mem[_1303] = mem[t]
                    mem[_1303 + 32] = mem[t + 32]
                    mem[_1303 + 64] = mem[t + 64]
                    mem[_1303 + 96] = mem[t + 96]
                    mem[_1303 + 128] = mem[t + 128]
                    mem[_1303 + 160] = mem[t + 160]
                    mem[_1303 + 192] = mem[t + 192]
                    mem[_1303 + 224] = mem[t + 224]
                    mem[u] = _1303
                    t = t + 256
                    u = u + 32
                    s = s + 1
                    continue 
                mem[_1202 + ceil32(return_data.size)] = _1202 + ceil32(return_data.size) + 96
                mem[_1202 + ceil32(return_data.size) + 32] = mem[_1202 + _1212 + 32]
                mem[_1202 + ceil32(return_data.size) + 64] = mem[_1202 + _1212 + 64]
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _1202 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1196 = mem[64]
        mem[mem[64]] = 32
        _1200 = mem[ceil32(32 * ('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 36).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _1200) + 64
        while idx < _1200:
            mem[t] = u + -_1196 - 64
            _1297 = mem[s]
            _1301 = mem[mem[s]]
            mem[u] = 96
            _1302 = mem[_1301]
            mem[u + 96] = mem[_1301]
            v = 0
            w = x + 128
            x = _1301 + 32
            while v < _1302:
                _1431 = mem[x]
                mem[w] = mem[mem[x] + 12 len 20]
                mem[w + 32] = mem[_1431 + 32]
                mem[w + 64] = mem[_1431 + 64]
                mem[w + 96] = mem[_1431 + 96]
                mem[w + 128] = mem[_1431 + 128]
                mem[w + 160] = mem[_1431 + 160]
                mem[w + 192] = mem[_1431 + 192]
                mem[w + 224] = mem[_1431 + 224]
                v = v + 1
                w = w + 256
                x = x + 32
                continue 
            mem[_1301 + (32 * _1302) + 64] = mem[_1297 + 32]
            mem[_1301 + (32 * _1302) + 96] = mem[_1297 + 64]
            v = _1302 + 1
            s = s + 32
            w = _1301 + (290 * _1302) + 192
            x = _1301 + (290 * _1302) + 160
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[64] = ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 609
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 513] = 96
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 545] = 0
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 577] = 0
    mem[var46002] = var46001
    if not var46003 - 1:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _1442 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x9cb3762700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(_1442)
            mem[mem[64] + 68] = uint8(cd[68])
            require ext_code.size(this.address)
            call this.address.0x9cb37627 with:
                 gas gas_remaining wei
                args address(cd[4]), address(_1442), uint8(cd[68])
            if not ext_call.success:
                if return_data.size <= 3:
                    if return_data.size:
                        _1479 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1479] = return_data.size
                        mem[_1479 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if return_data.size:
                            _1493 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1493] = return_data.size
                            mem[_1493 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        if return_data.size < 68:
                            if return_data.size:
                                _1503 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1503] = return_data.size
                                mem[_1503 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _1494 = mem[64]
                            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                            if 0, address(cd[4]) << 64 > test266151307() or 0, address(cd[4]) << 64 + 36 > return_data.size:
                                if return_data.size:
                                    _1507 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1507] = return_data.size
                                    mem[_1507 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if mem[mem[64] + 0, address(cd[4]) << 64] > test266151307():
                                    if return_data.size:
                                        _1508 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1508] = return_data.size
                                        mem[_1508 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if 0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 32 > return_data.size - 4:
                                        if return_data.size:
                                            _1509 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1509] = return_data.size
                                            mem[_1509 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1 < mem[64] or mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1
                                        if not _1494 + 0, address(cd[4]) << 64:
                                            if return_data.size:
                                                _1514 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1514] = return_data.size
                                                mem[_1514 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                _1447 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1457 = mem[_1447]
                require mem[_1447] <= test266151307()
                require return_data.size - mem[_1447] >= 96
                if not bool(_1447 + ceil32(return_data.size) + 96 <= test266151307()):
                    revert with 0, 65
                mem[64] = _1447 + ceil32(return_data.size) + 96
                _1480 = mem[_1447 + _1457]
                require mem[_1447 + _1457] <= test266151307()
                require _1447 + return_data.size > _1447 + _1457 + mem[_1447 + _1457] + 31
                _1497 = mem[_1447 + _1457 + mem[_1447 + _1457]]
                if mem[_1447 + _1457 + mem[_1447 + _1457]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_1447 + _1457 + mem[_1447 + _1457]]) + 97 < 96 or _1447 + ceil32(return_data.size) + ceil32(32 * mem[_1447 + _1457 + mem[_1447 + _1457]]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = _1447 + ceil32(return_data.size) + ceil32(32 * mem[_1447 + _1457 + mem[_1447 + _1457]]) + 97
                mem[_1447 + ceil32(return_data.size) + 96] = _1497
                require return_data.size >= _1457 + _1480 + (_1497 << 8) + 32
                t = _1447 + _1457 + _1480 + 32
                u = _1447 + ceil32(return_data.size) + 128
                s = 0
                while s < _1497:
                    require _1447 + return_data.size - t >= 256
                    _1548 = mem[64]
                    if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 256
                    require mem[t] == mem[t + 12 len 20]
                    mem[_1548] = mem[t]
                    mem[_1548 + 32] = mem[t + 32]
                    mem[_1548 + 64] = mem[t + 64]
                    mem[_1548 + 96] = mem[t + 96]
                    mem[_1548 + 128] = mem[t + 128]
                    mem[_1548 + 160] = mem[t + 160]
                    mem[_1548 + 192] = mem[t + 192]
                    mem[_1548 + 224] = mem[t + 224]
                    mem[u] = _1548
                    t = t + 256
                    u = u + 32
                    s = s + 1
                    continue 
                mem[_1447 + ceil32(return_data.size)] = _1447 + ceil32(return_data.size) + 96
                mem[_1447 + ceil32(return_data.size) + 32] = mem[_1447 + _1457 + 32]
                mem[_1447 + ceil32(return_data.size) + 64] = mem[_1447 + _1457 + 64]
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _1447 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1441 = mem[64]
        mem[mem[64]] = 32
        _1445 = mem[ceil32(32 * ('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 36).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _1445) + 64
        while idx < _1445:
            mem[t] = u + -_1441 - 64
            _1542 = mem[s]
            _1546 = mem[mem[s]]
            mem[u] = 96
            _1547 = mem[_1546]
            mem[u + 96] = mem[_1546]
            v = 0
            w = x + 128
            x = _1546 + 32
            while v < _1547:
                _1676 = mem[x]
                mem[w] = mem[mem[x] + 12 len 20]
                mem[w + 32] = mem[_1676 + 32]
                mem[w + 64] = mem[_1676 + 64]
                mem[w + 96] = mem[_1676 + 96]
                mem[w + 128] = mem[_1676 + 128]
                mem[w + 160] = mem[_1676 + 160]
                mem[w + 192] = mem[_1676 + 192]
                mem[w + 224] = mem[_1676 + 224]
                v = v + 1
                w = w + 256
                x = x + 32
                continue 
            mem[_1546 + (32 * _1547) + 64] = mem[_1542 + 32]
            mem[_1546 + (32 * _1547) + 96] = mem[_1542 + 64]
            v = _1547 + 1
            s = s + 32
            w = _1546 + (290 * _1547) + 192
            x = _1546 + (290 * _1547) + 160
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[64] = ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 705
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 609] = 96
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 641] = 0
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 673] = 0
    mem[var50002] = var50001
    if not var50003 - 1:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _1687 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x9cb3762700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(_1687)
            mem[mem[64] + 68] = uint8(cd[68])
            require ext_code.size(this.address)
            call this.address.0x9cb37627 with:
                 gas gas_remaining wei
                args address(cd[4]), address(_1687), uint8(cd[68])
            if not ext_call.success:
                if return_data.size <= 3:
                    if return_data.size:
                        _1724 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1724] = return_data.size
                        mem[_1724 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if return_data.size:
                            _1738 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1738] = return_data.size
                            mem[_1738 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        if return_data.size < 68:
                            if return_data.size:
                                _1748 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1748] = return_data.size
                                mem[_1748 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _1739 = mem[64]
                            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                            if 0, address(cd[4]) << 64 > test266151307() or 0, address(cd[4]) << 64 + 36 > return_data.size:
                                if return_data.size:
                                    _1752 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1752] = return_data.size
                                    mem[_1752 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if mem[mem[64] + 0, address(cd[4]) << 64] > test266151307():
                                    if return_data.size:
                                        _1753 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1753] = return_data.size
                                        mem[_1753 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if 0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 32 > return_data.size - 4:
                                        if return_data.size:
                                            _1754 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1754] = return_data.size
                                            mem[_1754 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1 < mem[64] or mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1
                                        if not _1739 + 0, address(cd[4]) << 64:
                                            if return_data.size:
                                                _1759 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_1759] = return_data.size
                                                mem[_1759 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                _1692 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1702 = mem[_1692]
                require mem[_1692] <= test266151307()
                require return_data.size - mem[_1692] >= 96
                if not bool(_1692 + ceil32(return_data.size) + 96 <= test266151307()):
                    revert with 0, 65
                mem[64] = _1692 + ceil32(return_data.size) + 96
                _1725 = mem[_1692 + _1702]
                require mem[_1692 + _1702] <= test266151307()
                require _1692 + return_data.size > _1692 + _1702 + mem[_1692 + _1702] + 31
                _1742 = mem[_1692 + _1702 + mem[_1692 + _1702]]
                if mem[_1692 + _1702 + mem[_1692 + _1702]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_1692 + _1702 + mem[_1692 + _1702]]) + 97 < 96 or _1692 + ceil32(return_data.size) + ceil32(32 * mem[_1692 + _1702 + mem[_1692 + _1702]]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = _1692 + ceil32(return_data.size) + ceil32(32 * mem[_1692 + _1702 + mem[_1692 + _1702]]) + 97
                mem[_1692 + ceil32(return_data.size) + 96] = _1742
                require return_data.size >= _1702 + _1725 + (_1742 << 8) + 32
                t = _1692 + _1702 + _1725 + 32
                u = _1692 + ceil32(return_data.size) + 128
                s = 0
                while s < _1742:
                    require _1692 + return_data.size - t >= 256
                    _1793 = mem[64]
                    if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 256
                    require mem[t] == mem[t + 12 len 20]
                    mem[_1793] = mem[t]
                    mem[_1793 + 32] = mem[t + 32]
                    mem[_1793 + 64] = mem[t + 64]
                    mem[_1793 + 96] = mem[t + 96]
                    mem[_1793 + 128] = mem[t + 128]
                    mem[_1793 + 160] = mem[t + 160]
                    mem[_1793 + 192] = mem[t + 192]
                    mem[_1793 + 224] = mem[t + 224]
                    mem[u] = _1793
                    t = t + 256
                    u = u + 32
                    s = s + 1
                    continue 
                mem[_1692 + ceil32(return_data.size)] = _1692 + ceil32(return_data.size) + 96
                mem[_1692 + ceil32(return_data.size) + 32] = mem[_1692 + _1702 + 32]
                mem[_1692 + ceil32(return_data.size) + 64] = mem[_1692 + _1702 + 64]
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _1692 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1686 = mem[64]
        mem[mem[64]] = 32
        _1690 = mem[ceil32(32 * ('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 36).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _1690) + 64
        while idx < _1690:
            mem[t] = u + -_1686 - 64
            _1787 = mem[s]
            _1791 = mem[mem[s]]
            mem[u] = 96
            _1792 = mem[_1791]
            mem[u + 96] = mem[_1791]
            v = 0
            w = x + 128
            x = _1791 + 32
            while v < _1792:
                _1921 = mem[x]
                mem[w] = mem[mem[x] + 12 len 20]
                mem[w + 32] = mem[_1921 + 32]
                mem[w + 64] = mem[_1921 + 64]
                mem[w + 96] = mem[_1921 + 96]
                mem[w + 128] = mem[_1921 + 128]
                mem[w + 160] = mem[_1921 + 160]
                mem[w + 192] = mem[_1921 + 192]
                mem[w + 224] = mem[_1921 + 224]
                v = v + 1
                w = w + 256
                x = x + 32
                continue 
            mem[_1791 + (32 * _1792) + 64] = mem[_1787 + 32]
            mem[_1791 + (32 * _1792) + 96] = mem[_1787 + 64]
            v = _1792 + 1
            s = s + 32
            w = _1791 + (290 * _1792) + 192
            x = _1791 + (290 * _1792) + 160
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[64] = ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 801
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 705] = 96
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 737] = 0
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 769] = 0
    mem[var54002] = var54001
    if not var54003 - 1:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _1932 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x9cb3762700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(_1932)
            mem[mem[64] + 68] = uint8(cd[68])
            require ext_code.size(this.address)
            call this.address.0x9cb37627 with:
                 gas gas_remaining wei
                args address(cd[4]), address(_1932), uint8(cd[68])
            if not ext_call.success:
                if return_data.size <= 3:
                    if return_data.size:
                        _1969 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1969] = return_data.size
                        mem[_1969 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if return_data.size:
                            _1983 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1983] = return_data.size
                            mem[_1983 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        if return_data.size < 68:
                            if return_data.size:
                                _1993 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1993] = return_data.size
                                mem[_1993 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _1984 = mem[64]
                            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                            if 0, address(cd[4]) << 64 > test266151307() or 0, address(cd[4]) << 64 + 36 > return_data.size:
                                if return_data.size:
                                    _1997 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_1997] = return_data.size
                                    mem[_1997 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if mem[mem[64] + 0, address(cd[4]) << 64] > test266151307():
                                    if return_data.size:
                                        _1998 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_1998] = return_data.size
                                        mem[_1998 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if 0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 32 > return_data.size - 4:
                                        if return_data.size:
                                            _1999 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_1999] = return_data.size
                                            mem[_1999 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1 < mem[64] or mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1
                                        if not _1984 + 0, address(cd[4]) << 64:
                                            if return_data.size:
                                                _2004 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2004] = return_data.size
                                                mem[_2004 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                _1937 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1947 = mem[_1937]
                require mem[_1937] <= test266151307()
                require return_data.size - mem[_1937] >= 96
                if not bool(_1937 + ceil32(return_data.size) + 96 <= test266151307()):
                    revert with 0, 65
                mem[64] = _1937 + ceil32(return_data.size) + 96
                _1970 = mem[_1937 + _1947]
                require mem[_1937 + _1947] <= test266151307()
                require _1937 + return_data.size > _1937 + _1947 + mem[_1937 + _1947] + 31
                _1987 = mem[_1937 + _1947 + mem[_1937 + _1947]]
                if mem[_1937 + _1947 + mem[_1937 + _1947]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_1937 + _1947 + mem[_1937 + _1947]]) + 97 < 96 or _1937 + ceil32(return_data.size) + ceil32(32 * mem[_1937 + _1947 + mem[_1937 + _1947]]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = _1937 + ceil32(return_data.size) + ceil32(32 * mem[_1937 + _1947 + mem[_1937 + _1947]]) + 97
                mem[_1937 + ceil32(return_data.size) + 96] = _1987
                require return_data.size >= _1947 + _1970 + (_1987 << 8) + 32
                t = _1937 + _1947 + _1970 + 32
                u = _1937 + ceil32(return_data.size) + 128
                s = 0
                while s < _1987:
                    require _1937 + return_data.size - t >= 256
                    _2038 = mem[64]
                    if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 256
                    require mem[t] == mem[t + 12 len 20]
                    mem[_2038] = mem[t]
                    mem[_2038 + 32] = mem[t + 32]
                    mem[_2038 + 64] = mem[t + 64]
                    mem[_2038 + 96] = mem[t + 96]
                    mem[_2038 + 128] = mem[t + 128]
                    mem[_2038 + 160] = mem[t + 160]
                    mem[_2038 + 192] = mem[t + 192]
                    mem[_2038 + 224] = mem[t + 224]
                    mem[u] = _2038
                    t = t + 256
                    u = u + 32
                    s = s + 1
                    continue 
                mem[_1937 + ceil32(return_data.size)] = _1937 + ceil32(return_data.size) + 96
                mem[_1937 + ceil32(return_data.size) + 32] = mem[_1937 + _1947 + 32]
                mem[_1937 + ceil32(return_data.size) + 64] = mem[_1937 + _1947 + 64]
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _1937 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1931 = mem[64]
        mem[mem[64]] = 32
        _1935 = mem[ceil32(32 * ('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 36).length) + 129
        t = mem[64] + 64
        u = mem[64] + (32 * _1935) + 64
        while idx < _1935:
            mem[t] = u + -_1931 - 64
            _2032 = mem[s]
            _2036 = mem[mem[s]]
            mem[u] = 96
            _2037 = mem[_2036]
            mem[u + 96] = mem[_2036]
            v = 0
            w = x + 128
            x = _2036 + 32
            while v < _2037:
                _2166 = mem[x]
                mem[w] = mem[mem[x] + 12 len 20]
                mem[w + 32] = mem[_2166 + 32]
                mem[w + 64] = mem[_2166 + 64]
                mem[w + 96] = mem[_2166 + 96]
                mem[w + 128] = mem[_2166 + 128]
                mem[w + 160] = mem[_2166 + 160]
                mem[w + 192] = mem[_2166 + 192]
                mem[w + 224] = mem[_2166 + 224]
                v = v + 1
                w = w + 256
                x = x + 32
                continue 
            mem[_2036 + (32 * _2037) + 64] = mem[_2032 + 32]
            mem[_2036 + (32 * _2037) + 96] = mem[_2032 + 64]
            v = _2037 + 1
            s = s + 32
            w = _2036 + (290 * _2037) + 192
            x = _2036 + (290 * _2037) + 160
            continue 
        return memory
          from mem[64]
           len u - mem[64]
    mem[64] = ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 897
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 801] = 96
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 833] = 0
    mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 865] = 0
    mem[var58002] = var58001
    if var58003 - 1:
        # nil
    else:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            _2177 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x9cb3762700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = address(_2177)
            mem[mem[64] + 68] = uint8(cd[68])
            require ext_code.size(this.address)
            call this.address.0x9cb37627 with:
                 gas gas_remaining wei
                args address(cd[4]), address(_2177), uint8(cd[68])
            if not ext_call.success:
                if return_data.size <= 3:
                    if return_data.size:
                        _2214 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_2214] = return_data.size
                        mem[_2214 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                else:
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if return_data.size:
                            _2228 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_2228] = return_data.size
                            mem[_2228 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    else:
                        if return_data.size < 68:
                            if return_data.size:
                                _2238 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_2238] = return_data.size
                                mem[_2238 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        else:
                            _2229 = mem[64]
                            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                            if 0, address(cd[4]) << 64 > test266151307() or 0, address(cd[4]) << 64 + 36 > return_data.size:
                                if return_data.size:
                                    _2242 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                    mem[_2242] = return_data.size
                                    mem[_2242 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            else:
                                if mem[mem[64] + 0, address(cd[4]) << 64] > test266151307():
                                    if return_data.size:
                                        _2243 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_2243] = return_data.size
                                        mem[_2243 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                else:
                                    if 0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 32 > return_data.size - 4:
                                        if return_data.size:
                                            _2244 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_2244] = return_data.size
                                            mem[_2244 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    else:
                                        if mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1 < mem[64] or mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = mem[64] + floor32(0, address(cd[4]) << 64 + mem[mem[64] + 0, address(cd[4]) << 64] + 31) + 1
                                        if not _2229 + 0, address(cd[4]) << 64:
                                            if return_data.size:
                                                _2249 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                mem[_2249] = return_data.size
                                                mem[_2249 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            else:
                _2182 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2192 = mem[_2182]
                require mem[_2182] <= test266151307()
                require return_data.size - mem[_2182] >= 96
                if not bool(_2182 + ceil32(return_data.size) + 96 <= test266151307()):
                    revert with 0, 65
                mem[64] = _2182 + ceil32(return_data.size) + 96
                _2215 = mem[_2182 + _2192]
                require mem[_2182 + _2192] <= test266151307()
                require _2182 + return_data.size > _2182 + _2192 + mem[_2182 + _2192] + 31
                _2232 = mem[_2182 + _2192 + mem[_2182 + _2192]]
                if mem[_2182 + _2192 + mem[_2182 + _2192]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_2182 + _2192 + mem[_2182 + _2192]]) + 97 < 96 or _2182 + ceil32(return_data.size) + ceil32(32 * mem[_2182 + _2192 + mem[_2182 + _2192]]) + 97 > test266151307():
                    revert with 0, 65
                mem[64] = _2182 + ceil32(return_data.size) + ceil32(32 * mem[_2182 + _2192 + mem[_2182 + _2192]]) + 97
                mem[_2182 + ceil32(return_data.size) + 96] = _2232
                require return_data.size >= _2192 + _2215 + (_2232 << 8) + 32
                t = _2182 + _2192 + _2215 + 32
                u = _2182 + ceil32(return_data.size) + 128
                s = 0
                while s < _2232:
                    require _2182 + return_data.size - t >= 256
                    _2283 = mem[64]
                    if mem[64] + 256 > test266151307() or mem[64] + 256 < mem[64]:
                        revert with 0, 65
                    mem[64] = mem[64] + 256
                    require mem[t] == mem[t + 12 len 20]
                    mem[_2283] = mem[t]
                    mem[_2283 + 32] = mem[t + 32]
                    mem[_2283 + 64] = mem[t + 64]
                    mem[_2283 + 96] = mem[t + 96]
                    mem[_2283 + 128] = mem[t + 128]
                    mem[_2283 + 160] = mem[t + 160]
                    mem[_2283 + 192] = mem[t + 192]
                    mem[_2283 + 224] = mem[t + 224]
                    mem[u] = _2283
                    t = t + 256
                    u = u + 32
                    s = s + 1
                    continue 
                mem[_2182 + ceil32(return_data.size)] = _2182 + ceil32(return_data.size) + 96
                mem[_2182 + ceil32(return_data.size) + 32] = mem[_2182 + _2192 + 32]
                mem[_2182 + ceil32(return_data.size) + 64] = mem[_2182 + _2192 + 64]
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = _2182 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _2180 = mem[ceil32(32 * ('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[ceil32(32 * ('cd', 36).length) + 97]
        if var71001 >= _2180:
            return memory
              from mem[64]
               len var71005 - mem[64]
        # nil
}



}
