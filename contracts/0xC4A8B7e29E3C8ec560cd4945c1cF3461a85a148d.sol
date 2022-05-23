contract main {




// =====================  Runtime code  =====================


#
#  - getTicks(address arg1, int24 arg2)
#
const gaslimit = block.gas_limit

const gasLeft = gas_remaining


function _fallback() payable {
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return eth.balance(arg1)
}

function multicall(address arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] <= test266151307()
        require 64 <= calldata.size + -arg1 + -cd[idx] - 36
        _55 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[idx] + 36)] == address(cd[(arg1 + cd[idx] + 36)])
        mem[_55] = cd[(arg1 + cd[idx] + 36)]
        require cd[(arg1 + cd[idx] + 68)] <= test266151307()
        require arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 67 < calldata.size
        if cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _79 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)])) + 1
        mem[_79] = cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)]
        require arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)] + 68 <= calldata.size
        mem[_79 + 32 len cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)]] = call.data[arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 68 len cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)]]
        mem[_79 + cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)] + 32] = 0
        mem[_55 + 32] = _79
        mem[s] = _55
        s = s + 32
        idx = idx + 32
        continue 
    _54 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _56 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _54) + 32
    if not _54:
        _106 = mem[96]
        idx = 0
        while idx < _106:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _110 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _113 = mem[mem[(32 * idx) + 128] + 32]
            _114 = mem[64]
            _117 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _117:
                mem[s + _114] = mem[s + _113 + 32]
                _106 = mem[96]
                s = s + 32
                continue 
            if ceil32(_117) <= _117:
                call address(_110).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _117 + _114 + -mem[64] - 4]
                if not return_data.size:
                    if idx >= mem[_56]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _56 + 32] = 96
                else:
                    _171 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_171] = return_data.size
                    mem[_171 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx >= mem[_56]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _56 + 32] = _171
            else:
                mem[_114 + _117] = 0
                call address(_110).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _117 + _114 + -mem[64] - 4]
                if not return_data.size:
                    if idx >= mem[_56]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _56 + 32] = 96
                else:
                    _175 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_175] = return_data.size
                    mem[_175 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx >= mem[_56]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _56 + 32] = _175
            if idx == -1:
                revert with 'NH{q', 17
            _106 = mem[96]
            idx = idx + 1
            continue 
        _108 = mem[64]
        mem[mem[64]] = 32
        _116 = mem[_56]
        mem[mem[64] + 32] = mem[_56]
        idx = 0
        s = _56 + 32
        t = mem[64] + (32 * _116) + 64
        u = mem[64] + 64
        while idx < _116:
            mem[u] = t + -_108 - 64
            _155 = mem[s]
            _156 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _156:
                mem[v + t + 32] = mem[v + _155 + 32]
                v = v + 32
                continue 
            if ceil32(_156) > _156:
                mem[t + _156 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_156) + t + 32
            u = u + 32
            continue 
    else:
        mem[_56 + 32] = 96
        s = _56 + 32
        idx = _54
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _154 = mem[96]
        idx = 0
        while idx < _154:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _161 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _165 = mem[mem[(32 * idx) + 128] + 32]
            _166 = mem[64]
            _170 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _170:
                mem[s + _166] = mem[s + _165 + 32]
                _154 = mem[96]
                s = s + 32
                continue 
            if ceil32(_170) <= _170:
                call address(_161).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _170 + _166 + -mem[64] - 4]
                if not return_data.size:
                    if idx >= mem[_56]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _56 + 32] = 96
                else:
                    _198 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_198] = return_data.size
                    mem[_198 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx >= mem[_56]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _56 + 32] = _198
            else:
                mem[_166 + _170] = 0
                call address(_161).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _170 + _166 + -mem[64] - 4]
                if not return_data.size:
                    if idx >= mem[_56]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _56 + 32] = 96
                else:
                    _202 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_202] = return_data.size
                    mem[_202 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx >= mem[_56]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _56 + 32] = _202
            if idx == -1:
                revert with 'NH{q', 17
            _154 = mem[96]
            idx = idx + 1
            continue 
        _159 = mem[64]
        mem[mem[64]] = 32
        _169 = mem[_56]
        mem[mem[64] + 32] = mem[_56]
        idx = 0
        s = _56 + 32
        t = mem[64] + (32 * _169) + 64
        u = mem[64] + 64
        while idx < _169:
            mem[u] = t + -_159 - 64
            _192 = mem[s]
            _193 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _193:
                mem[v + t + 32] = mem[v + _192 + 32]
                v = v + 32
                continue 
            if ceil32(_193) > _193:
                mem[t + _193 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_193) + t + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function multicallWithGas(address arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] <= test266151307()
        require 64 <= calldata.size + -arg1 + -cd[idx] - 36
        _131 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[idx] + 36)] == address(cd[(arg1 + cd[idx] + 36)])
        mem[_131] = cd[(arg1 + cd[idx] + 36)]
        require cd[(arg1 + cd[idx] + 68)] <= test266151307()
        require arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 67 < calldata.size
        if cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _160 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)])) + 1
        mem[_160] = cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)]
        require arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)] + 68 <= calldata.size
        mem[_160 + 32 len cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)]] = call.data[arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 68 len cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)]]
        mem[_160 + cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)] + 32] = 0
        mem[_131 + 32] = _160
        mem[s] = _131
        s = s + 32
        idx = idx + 32
        continue 
    _130 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _132 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _130) + 32
    if not _130:
        _133 = mem[96]
        if mem[96] > test266151307():
            revert with 'NH{q', 65
        mem[_132 + (32 * _130) + 32] = mem[96]
        mem[64] = _132 + (32 * _130) + (32 * _133) + 64
        if not _133:
            _258 = mem[96]
            idx = 0
            while idx < _258:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _264 = mem[mem[(32 * idx) + 128]]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _272 = mem[mem[(32 * idx) + 128] + 32]
                _273 = mem[64]
                _279 = mem[mem[mem[(32 * idx) + 128] + 32]]
                s = 0
                while s < _279:
                    mem[s + _273] = mem[s + _272 + 32]
                    _258 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_279) <= _279:
                    call address(_264).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _279 + _273 + -mem[64] - 4]
                    if not return_data.size:
                        if idx >= mem[_132]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _132 + 32] = 96
                    else:
                        _417 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_417] = return_data.size
                        mem[_417 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[_132]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _132 + 32] = _417
                else:
                    mem[_273 + _279] = 0
                    call address(_264).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _279 + _273 + -mem[64] - 4]
                    if not return_data.size:
                        if idx >= mem[_132]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _132 + 32] = 96
                    else:
                        _424 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_424] = return_data.size
                        mem[_424 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if idx >= mem[_132]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _132 + 32] = _424
                if gas_remaining < gas_remaining:
                    revert with 'NH{q', 17
                if idx >= mem[_132 + (32 * _130) + 32]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _132 + (32 * _130) + 64] = 0
                if idx == -1:
                    revert with 'NH{q', 17
                _258 = mem[96]
                idx = idx + 1
                continue 
            _262 = mem[64]
            mem[mem[64]] = 64
            _278 = mem[_132]
            mem[mem[64] + 64] = mem[_132]
            idx = 0
            s = _132 + 32
            t = mem[64] + (32 * _278) + 96
            u = mem[64] + 96
            while idx < _278:
                mem[u] = t + -_262 - 96
                _382 = mem[s]
                _383 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _383:
                    mem[v + t + 32] = mem[v + _382 + 32]
                    v = v + 32
                    continue 
                if ceil32(_383) > _383:
                    mem[t + _383 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_383) + t + 32
                u = u + 32
                continue 
            mem[_262 + 32] = t - _262
            _390 = mem[_132 + (32 * _130) + 32]
            mem[t] = mem[_132 + (32 * _130) + 32]
            mem[t + 32 len 32 * _390] = mem[_132 + (32 * _130) + 64 len 32 * _390]
            var34001 = _390
            return memory
              from mem[64]
               len t + (32 * _390) + -mem[64] + 32
        mem[_132 + (32 * _130) + 64 len 32 * _133] = call.data[calldata.size len 32 * _133]
        _259 = mem[96]
        idx = 0
        while idx < _259:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _268 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _275 = mem[mem[(32 * idx) + 128] + 32]
            _276 = mem[64]
            _281 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _281:
                mem[s + _276] = mem[s + _275 + 32]
                _259 = mem[96]
                s = s + 32
                continue 
            if ceil32(_281) <= _281:
                call address(_268).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _281 + _276 + -mem[64] - 4]
                if not return_data.size:
                    if idx >= mem[_132]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _132 + 32] = 96
                else:
                    _420 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_420] = return_data.size
                    mem[_420 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx >= mem[_132]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _132 + 32] = _420
            else:
                mem[_276 + _281] = 0
                call address(_268).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _281 + _276 + -mem[64] - 4]
                if not return_data.size:
                    if idx >= mem[_132]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _132 + 32] = 96
                else:
                    _427 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_427] = return_data.size
                    mem[_427 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx >= mem[_132]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _132 + 32] = _427
            if gas_remaining < gas_remaining:
                revert with 'NH{q', 17
            if idx >= mem[_132 + (32 * _130) + 32]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _132 + (32 * _130) + 64] = 0
            if idx == -1:
                revert with 'NH{q', 17
            _259 = mem[96]
            idx = idx + 1
            continue 
        _266 = mem[64]
        mem[mem[64]] = 64
        _280 = mem[_132]
        mem[mem[64] + 64] = mem[_132]
        idx = 0
        s = _132 + 32
        t = mem[64] + (32 * _280) + 96
        u = mem[64] + 96
        while idx < _280:
            mem[u] = t + -_266 - 96
            _385 = mem[s]
            _386 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _386:
                mem[v + t + 32] = mem[v + _385 + 32]
                v = v + 32
                continue 
            if ceil32(_386) > _386:
                mem[t + _386 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_386) + t + 32
            u = u + 32
            continue 
        mem[_266 + 32] = t - _266
        _391 = mem[_132 + (32 * _130) + 32]
        mem[t] = mem[_132 + (32 * _130) + 32]
        mem[t + 32 len 32 * _391] = mem[_132 + (32 * _130) + 64 len 32 * _391]
        var35001 = _391
        return memory
          from mem[64]
           len t + (32 * _391) + -mem[64] + 32
    mem[_132 + 32] = 96
    s = _132 + 32
    idx = _130
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    _270 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _277 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _270) + 32
    if not _270:
        _380 = mem[96]
        idx = 0
        while idx < _380:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _394 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _401 = mem[mem[(32 * idx) + 128] + 32]
            _402 = mem[64]
            _413 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _413:
                mem[s + _402] = mem[s + _401 + 32]
                _380 = mem[96]
                s = s + 32
                continue 
            if ceil32(_413) <= _413:
                call address(_394).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _413 + _402 + -mem[64] - 4]
                if not return_data.size:
                    if idx >= mem[_132]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _132 + 32] = 96
                else:
                    _499 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_499] = return_data.size
                    mem[_499 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx >= mem[_132]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _132 + 32] = _499
            else:
                mem[_402 + _413] = 0
                call address(_394).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _413 + _402 + -mem[64] - 4]
                if not return_data.size:
                    if idx >= mem[_132]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _132 + 32] = 96
                else:
                    _506 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_506] = return_data.size
                    mem[_506 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx >= mem[_132]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _132 + 32] = _506
            if gas_remaining < gas_remaining:
                revert with 'NH{q', 17
            if idx >= mem[_277]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _277 + 32] = 0
            if idx == -1:
                revert with 'NH{q', 17
            _380 = mem[96]
            idx = idx + 1
            continue 
        _392 = mem[64]
        mem[mem[64]] = 64
        _412 = mem[_132]
        mem[mem[64] + 64] = mem[_132]
        idx = 0
        s = _132 + 32
        t = mem[64] + (32 * _412) + 96
        u = mem[64] + 96
        while idx < _412:
            mem[u] = t + -_392 - 96
            _482 = mem[s]
            _483 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _483:
                mem[v + t + 32] = mem[v + _482 + 32]
                v = v + 32
                continue 
            if ceil32(_483) > _483:
                mem[t + _483 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_483) + t + 32
            u = u + 32
            continue 
        mem[_392 + 32] = t - _392
        _490 = mem[_277]
        mem[t] = mem[_277]
        mem[t + 32 len 32 * _490] = mem[_277 + 32 len 32 * _490]
        var38001 = _490
        return memory
          from mem[64]
           len t + (32 * _490) + -mem[64] + 32
    mem[_277 + 32 len 32 * _270] = call.data[calldata.size len 32 * _270]
    _381 = mem[96]
    idx = 0
    while idx < _381:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _398 = mem[mem[(32 * idx) + 128]]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _404 = mem[mem[(32 * idx) + 128] + 32]
        _405 = mem[64]
        _415 = mem[mem[mem[(32 * idx) + 128] + 32]]
        s = 0
        while s < _415:
            mem[s + _405] = mem[s + _404 + 32]
            _381 = mem[96]
            s = s + 32
            continue 
        if ceil32(_415) <= _415:
            call address(_398).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _415 + _405 + -mem[64] - 4]
            if not return_data.size:
                if idx >= mem[_132]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _132 + 32] = 96
            else:
                _502 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_502] = return_data.size
                mem[_502 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx >= mem[_132]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _132 + 32] = _502
        else:
            mem[_405 + _415] = 0
            call address(_398).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _415 + _405 + -mem[64] - 4]
            if not return_data.size:
                if idx >= mem[_132]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _132 + 32] = 96
            else:
                _509 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_509] = return_data.size
                mem[_509 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if idx >= mem[_132]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _132 + 32] = _509
        if gas_remaining < gas_remaining:
            revert with 'NH{q', 17
        if idx >= mem[_277]:
            revert with 'NH{q', 50
        mem[(32 * idx) + _277 + 32] = 0
        if idx == -1:
            revert with 'NH{q', 17
        _381 = mem[96]
        idx = idx + 1
        continue 
    _396 = mem[64]
    mem[mem[64]] = 64
    _414 = mem[_132]
    mem[mem[64] + 64] = mem[_132]
    idx = 0
    s = _132 + 32
    t = mem[64] + (32 * _414) + 96
    u = mem[64] + 96
    while idx < _414:
        mem[u] = t + -_396 - 96
        _485 = mem[s]
        _486 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _486:
            mem[v + t + 32] = mem[v + _485 + 32]
            v = v + 32
            continue 
        if ceil32(_486) > _486:
            mem[t + _486 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_486) + t + 32
        u = u + 32
        continue 
    mem[_396 + 32] = t - _396
    _491 = mem[_277]
    mem[t] = mem[_277]
    mem[t + 32 len 32 * _491] = mem[_277 + 32 len 32 * _491]
    var39001 = _491
    return memory
      from mem[64]
       len t + (32 * _491) + -mem[64] + 32
}

function multicallWithGasLimitation(address arg1, bytes[] arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] <= test266151307()
        require 64 <= calldata.size + -arg1 + -cd[idx] - 36
        _105 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[idx] + 36)] == address(cd[(arg1 + cd[idx] + 36)])
        mem[_105] = cd[(arg1 + cd[idx] + 36)]
        require cd[(arg1 + cd[idx] + 68)] <= test266151307()
        require arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 67 < calldata.size
        if cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _127 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)])) + 1
        mem[_127] = cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)]
        require arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)] + 68 <= calldata.size
        mem[_127 + 32 len cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)]] = call.data[arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 68 len cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)]]
        mem[_127 + cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)] + 32] = 0
        mem[_105 + 32] = _127
        mem[s] = _105
        s = s + 32
        idx = idx + 32
        continue 
    _104 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _106 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _104) + 32
    if not _104:
        _206 = mem[96]
        idx = 0
        while idx < _206:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _210 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _213 = mem[mem[(32 * idx) + 128] + 32]
            _214 = mem[64]
            _216 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _216:
                mem[s + _214] = mem[s + _213 + 32]
                _206 = mem[96]
                s = s + 32
                continue 
            if ceil32(_216) <= _216:
                call address(_210).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _216 + _214 + -mem[64] - 4]
                if not return_data.size:
                    if idx >= mem[_106]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _106 + 32] = 96
                    if gas_remaining >= arg2:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _206 = mem[96]
                        idx = idx + 1
                        continue 
                    _330 = mem[64]
                    mem[mem[64]] = 64
                    _339 = mem[_106]
                    mem[mem[64] + 64] = mem[_106]
                    s = 0
                    t = _106 + 32
                    u = mem[64] + (32 * _339) + 96
                    v = mem[64] + 96
                    while s < _339:
                        mem[v] = u + -_330 - 96
                        _391 = mem[t]
                        _392 = mem[mem[t]]
                        mem[u] = mem[mem[t]]
                        idx = 0
                        while idx < _392:
                            mem[idx + u + 32] = mem[idx + _391 + 32]
                            _206 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_392) > _392:
                            mem[u + _392 + 32] = 0
                        _206 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = ceil32(_392) + u + 32
                        v = v + 32
                        continue 
                    mem[_330 + 32] = idx
                else:
                    _320 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_320] = return_data.size
                    mem[_320 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx >= mem[_106]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _106 + 32] = _320
                    if gas_remaining >= arg2:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _206 = mem[96]
                        idx = idx + 1
                        continue 
                    _331 = mem[64]
                    mem[mem[64]] = 64
                    _340 = mem[_106]
                    mem[mem[64] + 64] = mem[_106]
                    s = 0
                    t = _106 + 32
                    u = mem[64] + (32 * _340) + 96
                    v = mem[64] + 96
                    while s < _340:
                        mem[v] = u + -_331 - 96
                        _393 = mem[t]
                        _394 = mem[mem[t]]
                        mem[u] = mem[mem[t]]
                        idx = 0
                        while idx < _394:
                            mem[idx + u + 32] = mem[idx + _393 + 32]
                            _206 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_394) > _394:
                            mem[u + _394 + 32] = 0
                        _206 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = ceil32(_394) + u + 32
                        v = v + 32
                        continue 
                    mem[_331 + 32] = idx
            else:
                mem[_214 + _216] = 0
                call address(_210).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _216 + _214 + -mem[64] - 4]
                if not return_data.size:
                    if idx >= mem[_106]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _106 + 32] = 96
                    if gas_remaining >= arg2:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _206 = mem[96]
                        idx = idx + 1
                        continue 
                    _335 = mem[64]
                    mem[mem[64]] = 64
                    _345 = mem[_106]
                    mem[mem[64] + 64] = mem[_106]
                    s = 0
                    t = _106 + 32
                    u = mem[64] + (32 * _345) + 96
                    v = mem[64] + 96
                    while s < _345:
                        mem[v] = u + -_335 - 96
                        _395 = mem[t]
                        _396 = mem[mem[t]]
                        mem[u] = mem[mem[t]]
                        idx = 0
                        while idx < _396:
                            mem[idx + u + 32] = mem[idx + _395 + 32]
                            _206 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_396) > _396:
                            mem[u + _396 + 32] = 0
                        _206 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = ceil32(_396) + u + 32
                        v = v + 32
                        continue 
                    mem[_335 + 32] = idx
                else:
                    _324 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_324] = return_data.size
                    mem[_324 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx >= mem[_106]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _106 + 32] = _324
                    if gas_remaining >= arg2:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _206 = mem[96]
                        idx = idx + 1
                        continue 
                    _336 = mem[64]
                    mem[mem[64]] = 64
                    _346 = mem[_106]
                    mem[mem[64] + 64] = mem[_106]
                    s = 0
                    t = _106 + 32
                    u = mem[64] + (32 * _346) + 96
                    v = mem[64] + 96
                    while s < _346:
                        mem[v] = u + -_336 - 96
                        _397 = mem[t]
                        _398 = mem[mem[t]]
                        mem[u] = mem[mem[t]]
                        idx = 0
                        while idx < _398:
                            mem[idx + u + 32] = mem[idx + _397 + 32]
                            _206 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_398) > _398:
                            mem[u + _398 + 32] = 0
                        _206 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = ceil32(_398) + u + 32
                        v = v + 32
                        continue 
                    mem[_336 + 32] = idx
            return memory
              from mem[64]
               len u - mem[64]
        _207 = mem[96]
        if mem[96] < 1:
            revert with 'NH{q', 17
        _222 = mem[64]
        mem[mem[64]] = 64
        _228 = mem[_106]
        mem[mem[64] + 64] = mem[_106]
        idx = 0
        s = _106 + 32
        t = mem[64] + (32 * _228) + 96
        u = mem[64] + 96
        while idx < _228:
            mem[u] = t + -_222 - 96
            _305 = mem[s]
            _306 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _306:
                mem[v + t + 32] = mem[v + _305 + 32]
                v = v + 32
                continue 
            if ceil32(_306) > _306:
                mem[t + _306 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_306) + t + 32
            u = u + 32
            continue 
        mem[_222 + 32] = _207 - 1
    else:
        mem[_106 + 32] = 96
        s = _106 + 32
        idx = _104
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _304 = mem[96]
        idx = 0
        while idx < _304:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _311 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _315 = mem[mem[(32 * idx) + 128] + 32]
            _316 = mem[64]
            _319 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _319:
                mem[s + _316] = mem[s + _315 + 32]
                _304 = mem[96]
                s = s + 32
                continue 
            if ceil32(_319) <= _319:
                call address(_311).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _319 + _316 + -mem[64] - 4]
                if not return_data.size:
                    if idx >= mem[_106]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _106 + 32] = 96
                    if gas_remaining >= arg2:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _304 = mem[96]
                        idx = idx + 1
                        continue 
                    _420 = mem[64]
                    mem[mem[64]] = 64
                    _424 = mem[_106]
                    mem[mem[64] + 64] = mem[_106]
                    s = 0
                    t = _106 + 32
                    u = mem[64] + (32 * _424) + 96
                    v = mem[64] + 96
                    while s < _424:
                        mem[v] = u + -_420 - 96
                        _449 = mem[t]
                        _450 = mem[mem[t]]
                        mem[u] = mem[mem[t]]
                        idx = 0
                        while idx < _450:
                            mem[idx + u + 32] = mem[idx + _449 + 32]
                            _304 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_450) > _450:
                            mem[u + _450 + 32] = 0
                        _304 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = ceil32(_450) + u + 32
                        v = v + 32
                        continue 
                    mem[_420 + 32] = idx
                else:
                    _413 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_413] = return_data.size
                    mem[_413 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx >= mem[_106]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _106 + 32] = _413
                    if gas_remaining >= arg2:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _304 = mem[96]
                        idx = idx + 1
                        continue 
                    _421 = mem[64]
                    mem[mem[64]] = 64
                    _425 = mem[_106]
                    mem[mem[64] + 64] = mem[_106]
                    s = 0
                    t = _106 + 32
                    u = mem[64] + (32 * _425) + 96
                    v = mem[64] + 96
                    while s < _425:
                        mem[v] = u + -_421 - 96
                        _451 = mem[t]
                        _452 = mem[mem[t]]
                        mem[u] = mem[mem[t]]
                        idx = 0
                        while idx < _452:
                            mem[idx + u + 32] = mem[idx + _451 + 32]
                            _304 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_452) > _452:
                            mem[u + _452 + 32] = 0
                        _304 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = ceil32(_452) + u + 32
                        v = v + 32
                        continue 
                    mem[_421 + 32] = idx
            else:
                mem[_316 + _319] = 0
                call address(_311).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _319 + _316 + -mem[64] - 4]
                if not return_data.size:
                    if idx >= mem[_106]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _106 + 32] = 96
                    if gas_remaining >= arg2:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _304 = mem[96]
                        idx = idx + 1
                        continue 
                    _422 = mem[64]
                    mem[mem[64]] = 64
                    _426 = mem[_106]
                    mem[mem[64] + 64] = mem[_106]
                    s = 0
                    t = _106 + 32
                    u = mem[64] + (32 * _426) + 96
                    v = mem[64] + 96
                    while s < _426:
                        mem[v] = u + -_422 - 96
                        _453 = mem[t]
                        _454 = mem[mem[t]]
                        mem[u] = mem[mem[t]]
                        idx = 0
                        while idx < _454:
                            mem[idx + u + 32] = mem[idx + _453 + 32]
                            _304 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_454) > _454:
                            mem[u + _454 + 32] = 0
                        _304 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = ceil32(_454) + u + 32
                        v = v + 32
                        continue 
                    mem[_422 + 32] = idx
                else:
                    _417 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_417] = return_data.size
                    mem[_417 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if idx >= mem[_106]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _106 + 32] = _417
                    if gas_remaining >= arg2:
                        if idx == -1:
                            revert with 'NH{q', 17
                        _304 = mem[96]
                        idx = idx + 1
                        continue 
                    _423 = mem[64]
                    mem[mem[64]] = 64
                    _427 = mem[_106]
                    mem[mem[64] + 64] = mem[_106]
                    s = 0
                    t = _106 + 32
                    u = mem[64] + (32 * _427) + 96
                    v = mem[64] + 96
                    while s < _427:
                        mem[v] = u + -_423 - 96
                        _455 = mem[t]
                        _456 = mem[mem[t]]
                        mem[u] = mem[mem[t]]
                        idx = 0
                        while idx < _456:
                            mem[idx + u + 32] = mem[idx + _455 + 32]
                            _304 = mem[96]
                            idx = idx + 32
                            continue 
                        if ceil32(_456) > _456:
                            mem[u + _456 + 32] = 0
                        _304 = mem[96]
                        s = s + 1
                        t = t + 32
                        u = ceil32(_456) + u + 32
                        v = v + 32
                        continue 
                    mem[_423 + 32] = idx
            return memory
              from mem[64]
               len u - mem[64]
        _308 = mem[96]
        if mem[96] < 1:
            revert with 'NH{q', 17
        _325 = mem[64]
        mem[mem[64]] = 64
        _329 = mem[_106]
        mem[mem[64] + 64] = mem[_106]
        idx = 0
        s = _106 + 32
        t = mem[64] + (32 * _329) + 96
        u = mem[64] + 96
        while idx < _329:
            mem[u] = t + -_325 - 96
            _399 = mem[s]
            _400 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _400:
                mem[v + t + 32] = mem[v + _399 + 32]
                v = v + 32
                continue 
            if ceil32(_400) > _400:
                mem[t + _400 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_400) + t + 32
            u = u + 32
            continue 
        mem[_325 + 32] = _308 - 1
    return memory
      from mem[64]
       len t - mem[64]
}



}
