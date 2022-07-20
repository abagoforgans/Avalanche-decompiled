contract main {




// =====================  Runtime code  =====================


const getCurrentBlockTimestamp = block.timestamp

const getLastBlockHash = block.hash(block.number - 1)

const getCurrentBlockDifficulty = block.difficulty

const getCurrentBlockGasLimit = block.gas_limit

const getCurrentBlockCoinbase = address(block.coinbase)


function _fallback() payable {
    revert
}

function getBlockHash(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return block.hash(arg1)
}

function getEthBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return eth.balance(arg1)
}

function aggregate(address arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 64
        _54 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_54] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] <= test266151307()
        _81 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32
        mem[_81] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_81 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[_81 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_54 + 32] = _81
        mem[t] = _54
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _55 = mem[96]
    require mem[96] <= test266151307()
    _56 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _55) + 32
    if not _55:
        _106 = mem[96]
        idx = 0
        while idx < _106:
            require idx < mem[96]
            _110 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _113 = mem[mem[(32 * idx) + 128] + 32]
            _114 = mem[64]
            _121 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _121:
                mem[_114 + s] = mem[_113 + s + 32]
                _106 = mem[96]
                s = s + 32
                continue 
            if ceil32(_121) <= _121:
                call address(_110).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _114 + _121 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    require idx < mem[_56]
                    mem[(32 * idx) + _56 + 32] = 96
                else:
                    _168 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_168] = return_data.size
                    mem[_168 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require idx < mem[_56]
                    mem[(32 * idx) + _56 + 32] = _168
            else:
                mem[_114 + _121] = 0
                call address(_110).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _114 + _121 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    require idx < mem[_56]
                    mem[(32 * idx) + _56 + 32] = 96
                else:
                    _171 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_171] = return_data.size
                    mem[_171 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require idx < mem[_56]
                    mem[(32 * idx) + _56 + 32] = _171
            _106 = mem[96]
            idx = idx + 1
            continue 
        _108 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _125 = mem[_56]
        mem[mem[64] + 64] = mem[_56]
        idx = 0
        s = _56 + 32
        t = mem[64] + (32 * _125) + 96
        u = mem[64] + 96
        while idx < _125:
            mem[u] = t + -_108 - 96
            _155 = mem[s]
            _166 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _166:
                mem[t + v + 32] = mem[_155 + v + 32]
                v = v + 32
                continue 
            if ceil32(_166) > _166:
                mem[t + _166 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_166) + 32
            u = u + 32
            continue 
    else:
        mem[_56 + 32] = 96
        s = _56 + 32
        idx = _55
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _154 = mem[96]
        idx = 0
        while idx < _154:
            require idx < mem[96]
            _160 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _164 = mem[mem[(32 * idx) + 128] + 32]
            _165 = mem[64]
            _170 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _170:
                mem[_165 + s] = mem[_164 + s + 32]
                _154 = mem[96]
                s = s + 32
                continue 
            if ceil32(_170) <= _170:
                call address(_160).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _165 + _170 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    require idx < mem[_56]
                    mem[(32 * idx) + _56 + 32] = 96
                else:
                    _197 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_197] = return_data.size
                    mem[_197 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require idx < mem[_56]
                    mem[(32 * idx) + _56 + 32] = _197
            else:
                mem[_165 + _170] = 0
                call address(_160).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _165 + _170 + -mem[64] - 4]
                if not return_data.size:
                    require ext_call.success
                    require idx < mem[_56]
                    mem[(32 * idx) + _56 + 32] = 96
                else:
                    _199 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_199] = return_data.size
                    mem[_199 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    require idx < mem[_56]
                    mem[(32 * idx) + _56 + 32] = _199
            _154 = mem[96]
            idx = idx + 1
            continue 
        _158 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _176 = mem[_56]
        mem[mem[64] + 64] = mem[_56]
        idx = 0
        s = _56 + 32
        t = mem[64] + (32 * _176) + 96
        u = mem[64] + 96
        while idx < _176:
            mem[u] = t + -_158 - 96
            _192 = mem[s]
            _195 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _195:
                mem[t + v + 32] = mem[_192 + v + 32]
                v = v + 32
                continue 
            if ceil32(_195) > _195:
                mem[t + _195 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_195) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_c5b61ef3(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size + -cd[4] + -cd[s] - 36 >= 64
        _130 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[(cd[4] + cd[s] + 36)] == address(cd[(cd[4] + cd[s] + 36)])
        mem[_130] = cd[(cd[4] + cd[s] + 36)]
        require cd[(cd[4] + cd[s] + 68)] <= test266151307()
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 67 < calldata.size
        require cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] <= test266151307()
        _183 = mem[64]
        require mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]) + 32
        mem[_183] = cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_183 + 32 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]] = call.data[cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 68 len cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)]]
        mem[_183 + cd[(cd[4] + cd[s] + cd[(cd[4] + cd[s] + 68)] + 36)] + 32] = 0
        mem[_130 + 32] = _183
        mem[t] = _130
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _131 = mem[96]
    require mem[96] <= test266151307()
    _132 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _131) + 32
    if not _131:
        _133 = mem[96]
        require mem[96] <= test266151307()
        mem[_132 + (32 * _131) + 32] = mem[96]
        mem[64] = _132 + (32 * _131) + (32 * _133) + 64
        if not _133:
            _258 = mem[96]
            idx = 0
            while idx < _258:
                require idx < mem[96]
                _264 = mem[mem[(32 * idx) + 128]]
                require idx < mem[96]
                _272 = mem[mem[(32 * idx) + 128] + 32]
                _273 = mem[64]
                _279 = mem[mem[mem[(32 * idx) + 128] + 32]]
                s = 0
                while s < _279:
                    mem[_273 + s] = mem[_272 + s + 32]
                    _258 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_279) <= _279:
                    call address(_264).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _273 + _279 + -mem[64] - 4]
                    if not return_data.size:
                        require idx < mem[_132]
                        mem[(32 * idx) + _132 + 32] = 96
                    else:
                        _408 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_408] = return_data.size
                        mem[_408 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require idx < mem[_132]
                        mem[(32 * idx) + _132 + 32] = _408
                else:
                    mem[_273 + _279] = 0
                    call address(_264).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _273 + _279 + -mem[64] - 4]
                    if not return_data.size:
                        require idx < mem[_132]
                        mem[(32 * idx) + _132 + 32] = 96
                    else:
                        _416 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_416] = return_data.size
                        mem[_416 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require idx < mem[_132]
                        mem[(32 * idx) + _132 + 32] = _416
                require idx < mem[_132 + (32 * _131) + 32]
                mem[(32 * idx) + _132 + (32 * _131) + 64] = bool(ext_call.success)
                _258 = mem[96]
                idx = idx + 1
                continue 
            _262 = mem[64]
            mem[mem[64]] = block.number
            mem[mem[64] + 32] = 96
            _295 = mem[_132]
            mem[mem[64] + 96] = mem[_132]
            idx = 0
            s = _132 + 32
            t = mem[64] + (32 * _295) + 128
            u = mem[64] + 128
            while idx < _295:
                mem[u] = t + -_262 - 128
                _382 = mem[s]
                _403 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _403:
                    mem[t + v + 32] = mem[_382 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_403) > _403:
                    mem[t + _403 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_403) + 32
                u = u + 32
                continue 
            mem[_262 + 64] = t - _262
            _402 = mem[_132 + (32 * _131) + 32]
            mem[t] = mem[_132 + (32 * _131) + 32]
            idx = 0
            s = _132 + (32 * _131) + 64
            u = t + 32
            while idx < _402:
                mem[u] = bool(mem[s])
                idx = idx + 1
                s = s + 32
                u = u + 32
                continue 
            return memory
              from mem[64]
               len t + (32 * _402) + -mem[64] + 32
        mem[_132 + (32 * _131) + 64 len 32 * _133] = call.data[calldata.size len 32 * _133]
        _259 = mem[96]
        idx = 0
        while idx < _259:
            require idx < mem[96]
            _268 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _275 = mem[mem[(32 * idx) + 128] + 32]
            _276 = mem[64]
            _280 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _280:
                mem[_276 + s] = mem[_275 + s + 32]
                _259 = mem[96]
                s = s + 32
                continue 
            if ceil32(_280) <= _280:
                call address(_268).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _276 + _280 + -mem[64] - 4]
                if not return_data.size:
                    require idx < mem[_132]
                    mem[(32 * idx) + _132 + 32] = 96
                else:
                    _410 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_410] = return_data.size
                    mem[_410 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require idx < mem[_132]
                    mem[(32 * idx) + _132 + 32] = _410
            else:
                mem[_276 + _280] = 0
                call address(_268).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _276 + _280 + -mem[64] - 4]
                if not return_data.size:
                    require idx < mem[_132]
                    mem[(32 * idx) + _132 + 32] = 96
                else:
                    _419 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_419] = return_data.size
                    mem[_419 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require idx < mem[_132]
                    mem[(32 * idx) + _132 + 32] = _419
            require idx < mem[_132 + (32 * _131) + 32]
            mem[(32 * idx) + _132 + (32 * _131) + 64] = bool(ext_call.success)
            _259 = mem[96]
            idx = idx + 1
            continue 
        _266 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 96
        _296 = mem[_132]
        mem[mem[64] + 96] = mem[_132]
        idx = 0
        s = _132 + 32
        t = mem[64] + (32 * _296) + 128
        u = mem[64] + 128
        while idx < _296:
            mem[u] = t + -_266 - 128
            _384 = mem[s]
            _405 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _405:
                mem[t + v + 32] = mem[_384 + v + 32]
                v = v + 32
                continue 
            if ceil32(_405) > _405:
                mem[t + _405 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_405) + 32
            u = u + 32
            continue 
        mem[_266 + 64] = t - _266
        _404 = mem[_132 + (32 * _131) + 32]
        mem[t] = mem[_132 + (32 * _131) + 32]
        idx = 0
        s = _132 + (32 * _131) + 64
        u = t + 32
        while idx < _404:
            mem[u] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t + (32 * _404) + -mem[64] + 32
    mem[_132 + 32] = 96
    s = _132 + 32
    idx = _131
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    _270 = mem[96]
    require mem[96] <= test266151307()
    _277 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _270) + 32
    if not _270:
        _380 = mem[96]
        idx = 0
        while idx < _380:
            require idx < mem[96]
            _390 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _397 = mem[mem[(32 * idx) + 128] + 32]
            _398 = mem[64]
            _412 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _412:
                mem[_398 + s] = mem[_397 + s + 32]
                _380 = mem[96]
                s = s + 32
                continue 
            if ceil32(_412) <= _412:
                call address(_390).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _398 + _412 + -mem[64] - 4]
                if not return_data.size:
                    require idx < mem[_132]
                    mem[(32 * idx) + _132 + 32] = 96
                else:
                    _494 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_494] = return_data.size
                    mem[_494 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require idx < mem[_132]
                    mem[(32 * idx) + _132 + 32] = _494
            else:
                mem[_398 + _412] = 0
                call address(_390).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _398 + _412 + -mem[64] - 4]
                if not return_data.size:
                    require idx < mem[_132]
                    mem[(32 * idx) + _132 + 32] = 96
                else:
                    _500 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_500] = return_data.size
                    mem[_500 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require idx < mem[_132]
                    mem[(32 * idx) + _132 + 32] = _500
            require idx < mem[_277]
            mem[(32 * idx) + _277 + 32] = bool(ext_call.success)
            _380 = mem[96]
            idx = idx + 1
            continue 
        _388 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 96
        _432 = mem[_132]
        mem[mem[64] + 96] = mem[_132]
        idx = 0
        s = _132 + 32
        t = mem[64] + (32 * _432) + 128
        u = mem[64] + 128
        while idx < _432:
            mem[u] = t + -_388 - 128
            _482 = mem[s]
            _489 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _489:
                mem[t + v + 32] = mem[_482 + v + 32]
                v = v + 32
                continue 
            if ceil32(_489) > _489:
                mem[t + _489 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_489) + 32
            u = u + 32
            continue 
        mem[_388 + 64] = t - _388
        _488 = mem[_277]
        mem[t] = mem[_277]
        idx = 0
        s = _277 + 32
        u = t + 32
        while idx < _488:
            mem[u] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            u = u + 32
            continue 
        return memory
          from mem[64]
           len t + (32 * _488) + -mem[64] + 32
    mem[_277 + 32 len 32 * _270] = call.data[calldata.size len 32 * _270]
    _381 = mem[96]
    idx = 0
    while idx < _381:
        require idx < mem[96]
        _394 = mem[mem[(32 * idx) + 128]]
        require idx < mem[96]
        _400 = mem[mem[(32 * idx) + 128] + 32]
        _401 = mem[64]
        _413 = mem[mem[mem[(32 * idx) + 128] + 32]]
        s = 0
        while s < _413:
            mem[_401 + s] = mem[_400 + s + 32]
            _381 = mem[96]
            s = s + 32
            continue 
        if ceil32(_413) <= _413:
            call address(_394).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _401 + _413 + -mem[64] - 4]
            if not return_data.size:
                require idx < mem[_132]
                mem[(32 * idx) + _132 + 32] = 96
            else:
                _496 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_496] = return_data.size
                mem[_496 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require idx < mem[_132]
                mem[(32 * idx) + _132 + 32] = _496
        else:
            mem[_401 + _413] = 0
            call address(_394).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _401 + _413 + -mem[64] - 4]
            if not return_data.size:
                require idx < mem[_132]
                mem[(32 * idx) + _132 + 32] = 96
            else:
                _503 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_503] = return_data.size
                mem[_503 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require idx < mem[_132]
                mem[(32 * idx) + _132 + 32] = _503
        require idx < mem[_277]
        mem[(32 * idx) + _277 + 32] = bool(ext_call.success)
        _381 = mem[96]
        idx = idx + 1
        continue 
    _392 = mem[64]
    mem[mem[64]] = block.number
    mem[mem[64] + 32] = 96
    _433 = mem[_132]
    mem[mem[64] + 96] = mem[_132]
    idx = 0
    s = _132 + 32
    t = mem[64] + (32 * _433) + 128
    u = mem[64] + 128
    while idx < _433:
        mem[u] = t + -_392 - 128
        _484 = mem[s]
        _491 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _491:
            mem[t + v + 32] = mem[_484 + v + 32]
            v = v + 32
            continue 
        if ceil32(_491) > _491:
            mem[t + _491 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_491) + 32
        u = u + 32
        continue 
    mem[_392 + 64] = t - _392
    _490 = mem[_277]
    mem[t] = mem[_277]
    idx = 0
    s = _277 + 32
    u = t + 32
    while idx < _490:
        mem[u] = bool(mem[s])
        idx = idx + 1
        s = s + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t + (32 * _490) + -mem[64] + 32
}



}
