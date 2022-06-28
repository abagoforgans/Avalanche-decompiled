contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_709bd7d5(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    s = 128
    idx = cd[68] + 36
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    mem[ceil32(32 * ('cd', 68).length) + 97] = 0xb316ff8900000000000000000000000000000000000000000000000000000000
    staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getAllReservesTokens() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * ('cd', 68).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _88 = mem[ceil32(32 * ('cd', 68).length) + 97]
    require mem[ceil32(32 * ('cd', 68).length) + 97] <= test266151307()
    require ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97] + 128 < ceil32(32 * ('cd', 68).length) + return_data.size + 97
    _89 = mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97] + 97]
    if mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97] + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97] + 97]) + 1 < 0 or ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97] + 97]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97] + 97]) + 98
    mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97] = mem[ceil32(32 * ('cd', 68).length) + mem[ceil32(32 * ('cd', 68).length) + 97] + 97]
    require _88 + (32 * _89) + 32 <= return_data.size
    idx = ceil32(32 * ('cd', 68).length) + _88 + 129
    s = ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129
    while idx < ceil32(32 * ('cd', 68).length) + _88 + (32 * _89) + 129:
        _168 = mem[idx]
        require mem[idx] <= test266151307()
        require 64 <= return_data.size + -_88 + -mem[idx] - 32
        _171 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        _177 = mem[ceil32(32 * ('cd', 68).length) + _88 + _168 + 129]
        require mem[ceil32(32 * ('cd', 68).length) + _88 + _168 + 129] <= test266151307()
        require ceil32(32 * ('cd', 68).length) + return_data.size + 97 > ceil32(32 * ('cd', 68).length) + _88 + _168 + mem[ceil32(32 * ('cd', 68).length) + _88 + _168 + 129] + 160
        _179 = mem[ceil32(32 * ('cd', 68).length) + _88 + _168 + mem[ceil32(32 * ('cd', 68).length) + _88 + _168 + 129] + 129]
        if mem[ceil32(32 * ('cd', 68).length) + _88 + _168 + mem[ceil32(32 * ('cd', 68).length) + _88 + _168 + 129] + 129] > test266151307():
            revert with 0, 65
        _187 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(32 * ('cd', 68).length) + _88 + _168 + mem[ceil32(32 * ('cd', 68).length) + _88 + _168 + 129] + 129])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(32 * ('cd', 68).length) + _88 + _168 + mem[ceil32(32 * ('cd', 68).length) + _88 + _168 + 129] + 129])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(32 * ('cd', 68).length) + _88 + _168 + mem[ceil32(32 * ('cd', 68).length) + _88 + _168 + 129] + 129])) + 1
        mem[_187] = _179
        require _88 + _168 + _177 + _179 + 64 <= return_data.size
        t = 0
        while t < _179:
            mem[t + _187 + 32] = mem[t + ceil32(32 * ('cd', 68).length) + _88 + _168 + _177 + 161]
            t = t + 32
            continue 
        if ceil32(_179) > _179:
            mem[_187 + _179 + 32] = 0
        mem[_171] = _187
        require mem[ceil32(32 * ('cd', 68).length) + _88 + _168 + 161] == mem[ceil32(32 * ('cd', 68).length) + _88 + _168 + 173 len 20]
        mem[_171 + 32] = mem[ceil32(32 * ('cd', 68).length) + _88 + _168 + 161]
        mem[s] = _171
        idx = idx + 32
        s = s + 32
        continue 
    _245 = mem[96]
    idx = 0
    while idx < _245:
        if idx >= mem[96]:
            revert with 0, 50
        staticcall 0x4f01aed16d97e3ab5ab2b501154dc9bb0f1a5a2c.getUserAccountData(address arg1) with:
                gas gas_remaining wei
               args address(mem[(32 * idx) + 128])
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _253 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _260 = mem[_253 + 96]
        _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
        s = 0
        t = 0
        u = 0
        while s < _317:
            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]:
                revert with 0, 50
            staticcall mem[mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129] + 44 len 20].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _324 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _327 = mem[_324]
            require mem[_324] == mem[_324 + 31 len 1]
            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]:
                revert with 0, 50
            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]:
                revert with 0, 50
            if mem[mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129] + 44 len 20] == address(cd[4]):
                if idx >= mem[96]:
                    revert with 0, 50
                _345 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = mem[mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129] + 44 len 20]
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4], address(_345)
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _350 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                require mem[_350 + 224] == mem[_350 + 251 len 5]
                require mem[_350 + 256] == bool(mem[_350 + 256])
                if not uint8(_327):
                    if cd[36] and mem[_350 + 64] > -1 / cd[36]:
                        revert with 0, 17
                    if t > !(cd[36] * mem[_350 + 64]):
                        revert with 0, 17
                    if not uint8(_327):
                        if cd[36] and mem[_350] > -1 / cd[36]:
                            revert with 0, 17
                        if u > !(cd[36] * mem[_350]):
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        _245 = mem[96]
                        _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                        s = s + 1
                        t = t + (cd[36] * mem[_350 + 64])
                        u = u + (cd[36] * mem[_350])
                        continue 
                    if bool(bool(uint8(_327) < 78)) or bool(bool(uint8(_327) < 32)):
                        if cd[36] and mem[_350] > -1 / cd[36]:
                            revert with 0, 17
                        if not 10^uint8(_327):
                            revert with 0, 18
                        if u > !(cd[36] * mem[_350] / 10^uint8(_327)):
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        _245 = mem[96]
                        _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                        s = s + 1
                        t = t + (cd[36] * mem[_350 + 64])
                        u = u + (cd[36] * mem[_350] / 10^uint8(_327))
                        continue 
                    v = 10
                    w = 1
                    idx = uint8(_327)
                    while idx > 1:
                        if v > -1 / v:
                            revert with 0, 17
                        _245 = mem[96]
                        _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                        if not bool(idx):
                            v = v * v
                            w = w
                            idx = uint255(idx) * 0.5
                            continue 
                        v = v * v
                        w = v * w
                        idx = uint255(idx) * 0.5
                        continue 
                    if w > -1 / v:
                        revert with 0, 17
                    if cd[36] and mem[_350] > -1 / cd[36]:
                        revert with 0, 17
                    if not v * w:
                        revert with 0, 18
                    if u > !(cd[36] * mem[_350] / v * w):
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    _245 = mem[96]
                    _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                    s = s + 1
                    t = t + (cd[36] * mem[_350 + 64])
                    u = u + (cd[36] * mem[_350] / v * w)
                    continue 
                if bool(bool(uint8(_327) < 78)) or bool(bool(uint8(_327) < 32)):
                    if cd[36] and mem[_350 + 64] > -1 / cd[36]:
                        revert with 0, 17
                    if not 10^uint8(_327):
                        revert with 0, 18
                    if t > !(cd[36] * mem[_350 + 64] / 10^uint8(_327)):
                        revert with 0, 17
                    if not uint8(_327):
                        if cd[36] and mem[_350] > -1 / cd[36]:
                            revert with 0, 17
                        if u > !(cd[36] * mem[_350]):
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        _245 = mem[96]
                        _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                        s = s + 1
                        t = t + (cd[36] * mem[_350 + 64] / 10^uint8(_327))
                        u = u + (cd[36] * mem[_350])
                        continue 
                    if bool(bool(uint8(_327) < 78)) or bool(bool(uint8(_327) < 32)):
                        if cd[36] and mem[_350] > -1 / cd[36]:
                            revert with 0, 17
                        if not 10^uint8(_327):
                            revert with 0, 18
                        if u > !(cd[36] * mem[_350] / 10^uint8(_327)):
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        _245 = mem[96]
                        _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                        s = s + 1
                        t = t + (cd[36] * mem[_350 + 64] / 10^uint8(_327))
                        u = u + (cd[36] * mem[_350] / 10^uint8(_327))
                        continue 
                    v = 10
                    w = 1
                    idx = uint8(_327)
                    while idx > 1:
                        if v > -1 / v:
                            revert with 0, 17
                        _245 = mem[96]
                        _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                        if not bool(idx):
                            v = v * v
                            w = w
                            idx = uint255(idx) * 0.5
                            continue 
                        v = v * v
                        w = v * w
                        idx = uint255(idx) * 0.5
                        continue 
                    if w > -1 / v:
                        revert with 0, 17
                    if cd[36] and mem[_350] > -1 / cd[36]:
                        revert with 0, 17
                    if not v * w:
                        revert with 0, 18
                    if u > !(cd[36] * mem[_350] / v * w):
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    _245 = mem[96]
                    _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                    s = s + 1
                    t = t + (cd[36] * mem[_350 + 64] / 10^uint8(_327))
                    u = u + (cd[36] * mem[_350] / v * w)
                    continue 
                v = 10
                w = 1
                idx = uint8(_327)
                while idx > 1:
                    if v > -1 / v:
                        revert with 0, 17
                    _245 = mem[96]
                    _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                    if not bool(idx):
                        v = v * v
                        w = w
                        idx = uint255(idx) * 0.5
                        continue 
                    v = v * v
                    w = v * w
                    idx = uint255(idx) * 0.5
                    continue 
                if w > -1 / v:
                    revert with 0, 17
                if cd[36] and mem[_350 + 64] > -1 / cd[36]:
                    revert with 0, 17
                if not v * w:
                    revert with 0, 18
                if t > !(cd[36] * mem[_350 + 64] / v * w):
                    revert with 0, 17
                if not uint8(_327):
                    if cd[36] and mem[_350] > -1 / cd[36]:
                        revert with 0, 17
                    if u > !(cd[36] * mem[_350]):
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    _245 = mem[96]
                    _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                    s = s + 1
                    t = t + (cd[36] * mem[_350 + 64] / v * w)
                    u = u + (cd[36] * mem[_350])
                    continue 
                if bool(bool(uint8(_327) < 78)) or bool(bool(uint8(_327) < 32)):
                    if cd[36] and mem[_350] > -1 / cd[36]:
                        revert with 0, 17
                    if not 10^uint8(_327):
                        revert with 0, 18
                    if u > !(cd[36] * mem[_350] / 10^uint8(_327)):
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    _245 = mem[96]
                    _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                    s = s + 1
                    t = t + (cd[36] * mem[_350 + 64] / v * w)
                    u = u + (cd[36] * mem[_350] / 10^uint8(_327))
                    continue 
                x = 10
                y = 1
                idx = uint8(_327)
                while idx > 1:
                    if x > -1 / x:
                        revert with 0, 17
                    _245 = mem[96]
                    _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                    if not bool(idx):
                        x = x * x
                        y = y
                        idx = uint255(idx) * 0.5
                        continue 
                    x = x * x
                    y = x * y
                    idx = uint255(idx) * 0.5
                    continue 
                if y > -1 / x:
                    revert with 0, 17
                if cd[36] and mem[_350] > -1 / cd[36]:
                    revert with 0, 17
                if not x * y:
                    revert with 0, 18
                if u > !(cd[36] * mem[_350] / x * y):
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                _245 = mem[96]
                _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                s = s + 1
                t = t + (cd[36] * mem[_350 + 64] / v * w)
                u = u + (cd[36] * mem[_350] / x * y)
                continue 
            _337 = mem[mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129] + 32]
            mem[mem[64] + 4] = mem[mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129] + 44 len 20]
            staticcall 0xdc336cd4769f4cc7e9d726da53e6d3fc710ceb89.getAssetPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_337)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _344 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _349 = mem[_344]
            if s >= mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]:
                revert with 0, 50
            if idx >= mem[96]:
                revert with 0, 50
            _366 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[mem[(32 * s) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 129] + 44 len 20]
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(_366)
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _369 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            require mem[_369 + 224] == mem[_369 + 251 len 5]
            require mem[_369 + 256] == bool(mem[_369 + 256])
            if not uint8(_327):
                if _349 and mem[_369 + 64] > -1 / _349:
                    revert with 0, 17
                if t > !(_349 * mem[_369 + 64]):
                    revert with 0, 17
                if not uint8(_327):
                    if _349 and mem[_369] > -1 / _349:
                        revert with 0, 17
                    if u > !(_349 * mem[_369]):
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    _245 = mem[96]
                    _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                    s = s + 1
                    t = t + (_349 * mem[_369 + 64])
                    u = u + (_349 * mem[_369])
                    continue 
                if bool(bool(uint8(_327) < 78)) or bool(bool(uint8(_327) < 32)):
                    if _349 and mem[_369] > -1 / _349:
                        revert with 0, 17
                    if not 10^uint8(_327):
                        revert with 0, 18
                    if u > !(_349 * mem[_369] / 10^uint8(_327)):
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    _245 = mem[96]
                    _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                    s = s + 1
                    t = t + (_349 * mem[_369 + 64])
                    u = u + (_349 * mem[_369] / 10^uint8(_327))
                    continue 
                v = 10
                w = 1
                idx = uint8(_327)
                while idx > 1:
                    if v > -1 / v:
                        revert with 0, 17
                    _245 = mem[96]
                    _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                    if not bool(idx):
                        v = v * v
                        w = w
                        idx = uint255(idx) * 0.5
                        continue 
                    v = v * v
                    w = v * w
                    idx = uint255(idx) * 0.5
                    continue 
                if w > -1 / v:
                    revert with 0, 17
                if _349 and mem[_369] > -1 / _349:
                    revert with 0, 17
                if not v * w:
                    revert with 0, 18
                if u > !(_349 * mem[_369] / v * w):
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                _245 = mem[96]
                _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                s = s + 1
                t = t + (_349 * mem[_369 + 64])
                u = u + (_349 * mem[_369] / v * w)
                continue 
            if bool(bool(uint8(_327) < 78)) or bool(bool(uint8(_327) < 32)):
                if _349 and mem[_369 + 64] > -1 / _349:
                    revert with 0, 17
                if not 10^uint8(_327):
                    revert with 0, 18
                if t > !(_349 * mem[_369 + 64] / 10^uint8(_327)):
                    revert with 0, 17
                if not uint8(_327):
                    if _349 and mem[_369] > -1 / _349:
                        revert with 0, 17
                    if u > !(_349 * mem[_369]):
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    _245 = mem[96]
                    _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                    s = s + 1
                    t = t + (_349 * mem[_369 + 64] / 10^uint8(_327))
                    u = u + (_349 * mem[_369])
                    continue 
                if bool(bool(uint8(_327) < 78)) or bool(bool(uint8(_327) < 32)):
                    if _349 and mem[_369] > -1 / _349:
                        revert with 0, 17
                    if not 10^uint8(_327):
                        revert with 0, 18
                    if u > !(_349 * mem[_369] / 10^uint8(_327)):
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    _245 = mem[96]
                    _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                    s = s + 1
                    t = t + (_349 * mem[_369 + 64] / 10^uint8(_327))
                    u = u + (_349 * mem[_369] / 10^uint8(_327))
                    continue 
                v = 10
                w = 1
                idx = uint8(_327)
                while idx > 1:
                    if v > -1 / v:
                        revert with 0, 17
                    _245 = mem[96]
                    _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                    if not bool(idx):
                        v = v * v
                        w = w
                        idx = uint255(idx) * 0.5
                        continue 
                    v = v * v
                    w = v * w
                    idx = uint255(idx) * 0.5
                    continue 
                if w > -1 / v:
                    revert with 0, 17
                if _349 and mem[_369] > -1 / _349:
                    revert with 0, 17
                if not v * w:
                    revert with 0, 18
                if u > !(_349 * mem[_369] / v * w):
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                _245 = mem[96]
                _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                s = s + 1
                t = t + (_349 * mem[_369 + 64] / 10^uint8(_327))
                u = u + (_349 * mem[_369] / v * w)
                continue 
            v = 10
            w = 1
            idx = uint8(_327)
            while idx > 1:
                if v > -1 / v:
                    revert with 0, 17
                _245 = mem[96]
                _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                if not bool(idx):
                    v = v * v
                    w = w
                    idx = uint255(idx) * 0.5
                    continue 
                v = v * v
                w = v * w
                idx = uint255(idx) * 0.5
                continue 
            if w > -1 / v:
                revert with 0, 17
            if _349 and mem[_369 + 64] > -1 / _349:
                revert with 0, 17
            if not v * w:
                revert with 0, 18
            if t > !(_349 * mem[_369 + 64] / v * w):
                revert with 0, 17
            if not uint8(_327):
                if _349 and mem[_369] > -1 / _349:
                    revert with 0, 17
                if u > !(_349 * mem[_369]):
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                _245 = mem[96]
                _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                s = s + 1
                t = t + (_349 * mem[_369 + 64] / v * w)
                u = u + (_349 * mem[_369])
                continue 
            if bool(bool(uint8(_327) < 78)) or bool(bool(uint8(_327) < 32)):
                if _349 and mem[_369] > -1 / _349:
                    revert with 0, 17
                if not 10^uint8(_327):
                    revert with 0, 18
                if u > !(_349 * mem[_369] / 10^uint8(_327)):
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                _245 = mem[96]
                _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                s = s + 1
                t = t + (_349 * mem[_369 + 64] / v * w)
                u = u + (_349 * mem[_369] / 10^uint8(_327))
                continue 
            x = 10
            y = 1
            idx = uint8(_327)
            while idx > 1:
                if x > -1 / x:
                    revert with 0, 17
                _245 = mem[96]
                _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
                if not bool(idx):
                    x = x * x
                    y = y
                    idx = uint255(idx) * 0.5
                    continue 
                x = x * x
                y = x * y
                idx = uint255(idx) * 0.5
                continue 
            if y > -1 / x:
                revert with 0, 17
            if _349 and mem[_369] > -1 / _349:
                revert with 0, 17
            if not x * y:
                revert with 0, 18
            if u > !(_349 * mem[_369] / x * y):
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            _245 = mem[96]
            _317 = mem[ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 97]
            s = s + 1
            t = t + (_349 * mem[_369 + 64] / v * w)
            u = u + (_349 * mem[_369] / x * y)
            continue 
        if _260 and u > -1 / _260:
            revert with 0, 17
        if _260 * u / 10000 < t:
            if idx >= mem[96]:
                revert with 0, 50
            _332 = mem[(32 * idx) + 128]
            _333 = mem[64]
            _335 = mem[96]
            s = 0
            while s < _335:
                mem[s + _333 + 32] = mem[s + 128]
                _245 = mem[96]
                s = s + 32
                continue 
            mem[_335 + _333 + 32] = address(_332)
            mem[mem[64]] = _335 + _333 + -mem[64] + 20
            mem[64] = _335 + _333 + 52
        if idx == -1:
            revert with 0, 17
        _245 = mem[96]
        idx = idx + 1
        continue 
    _248 = mem[64]
    mem[mem[64]] = 32
    _251 = mem[96]
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        return Array(len=mem[96], data=mem[mem[64] + 64 len ceil32(mem[96])])
    mem[mem[64] + mem[96] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_251) + _248 + -mem[64] + 64
}



}
