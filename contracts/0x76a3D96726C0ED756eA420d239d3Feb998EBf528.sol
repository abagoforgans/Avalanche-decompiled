contract main {




// =====================  Runtime code  =====================


const getCurrentBlockTimestamp = block.timestamp

const getLastBlockHash = block.hash(block.number - 1)

const getBlockNumber = block.number

const getCurrentBlockDifficulty = block.difficulty

const getCurrentBlockGasLimit = block.gas_limit

const getCurrentBlockCoinbase = address(block.coinbase)


function _fallback() payable {
    revert
}

function getBlockHash(uint256 arg1) {
    require calldata.size - 4 >= 32
    return block.hash(arg1)
}

function getEthBalance(address arg1) {
    require calldata.size - 4 >= 32
    return eth.balance(arg1)
}

function aggregate(address arg1, bytes[] arg2) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 64
        _60 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_60] = address(cd[(arg1 + cd[s] + 36)])
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require calldata.size > arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] <= test266151307()
        _103 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32
        mem[_103] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_103 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + _103 + 32] = 0
        mem[_60 + 32] = _103
        mem[t] = _60
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _58 = mem[96]
    _59 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _58) + 32
    if not _58:
        _114 = mem[96]
        idx = 0
        while idx < _114:
            require idx < mem[96]
            _118 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _122 = mem[64]
            _123 = mem[mem[mem[(32 * idx) + 128] + 32]]
            t = mem[mem[(32 * idx) + 128] + 32] + 32
            u = mem[64]
            s = mem[mem[mem[(32 * idx) + 128] + 32]]
            while s >= 32:
                mem[u] = mem[t]
                _114 = mem[96]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]])] = mem[mem[mem[(32 * idx) + 128] + 32] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]]) + -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 64 len mem[mem[mem[(32 * idx) + 128] + 32]] % 32] or Mask(8 * -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 32, -(8 * -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 32) + 256, mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]])])
            call address(_118).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _123 + _122 + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Multicall aggregate: call failed'
                require idx < mem[_59]
                mem[_59 + (32 * idx) + 32] = 96
            else:
                _173 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_173] = return_data.size
                mem[_173 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Multicall aggregate: call failed'
                require idx < mem[_59]
                mem[_59 + (32 * idx) + 32] = _173
            _114 = mem[96]
            idx = idx + 1
            continue 
        _116 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _147 = mem[_59]
        mem[mem[64] + 64] = mem[_59]
        idx = 0
        s = _59 + 32
        t = mem[64] + (32 * _147) + 96
        u = mem[64] + 96
        while idx < _147:
            mem[u] = t + -_116 - 96
            _167 = mem[s]
            _179 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _179:
                mem[v + t + 32] = mem[v + _167 + 32]
                v = v + 32
                continue 
            if ceil32(_179) > _179:
                mem[t + _179 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_179) + 32
            u = u + 32
            continue 
    else:
        mem[_59 + 32] = 96
        s = _59 + 32
        idx = _58
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _166 = mem[96]
        idx = 0
        while idx < _166:
            require idx < mem[96]
            _176 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _183 = mem[mem[mem[(32 * idx) + 128] + 32]]
            t = mem[mem[(32 * idx) + 128] + 32] + 32
            u = mem[64]
            s = mem[mem[mem[(32 * idx) + 128] + 32]]
            while s >= 32:
                mem[u] = mem[t]
                _166 = mem[96]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]])] = mem[mem[mem[(32 * idx) + 128] + 32] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]]) + -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 64 len mem[mem[mem[(32 * idx) + 128] + 32]] % 32] or Mask(8 * -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 32, -(8 * -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 32) + 256, mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]])])
            call address(_176).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _183 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Multicall aggregate: call failed'
                require idx < mem[_59]
                mem[_59 + (32 * idx) + 32] = 96
            else:
                _213 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_213] = return_data.size
                mem[_213 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Multicall aggregate: call failed'
                require idx < mem[_59]
                mem[_59 + (32 * idx) + 32] = _213
            _166 = mem[96]
            idx = idx + 1
            continue 
        _174 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _200 = mem[_59]
        mem[mem[64] + 64] = mem[_59]
        idx = 0
        s = _59 + 32
        t = mem[64] + (32 * _200) + 96
        u = mem[64] + 96
        while idx < _200:
            mem[u] = t + -_174 - 96
            _208 = mem[s]
            _215 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _215:
                mem[v + t + 32] = mem[v + _208 + 32]
                v = v + 32
                continue 
            if ceil32(_215) > _215:
                mem[t + _215 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_215) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function blockAndAggregate(address arg1, bytes[] arg2) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 64
        _67 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_67] = address(cd[(arg1 + cd[s] + 36)])
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require calldata.size > arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] <= test266151307()
        _107 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32
        mem[_107] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_107 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + _107 + 32] = 0
        mem[_67 + 32] = _107
        mem[t] = _67
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _68 = mem[96]
    _69 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _68) + 32
    if not _68:
        _132 = mem[96]
        idx = 0
        while idx < _132:
            require idx < mem[96]
            _136 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _140 = mem[64]
            _141 = mem[mem[mem[(32 * idx) + 128] + 32]]
            t = mem[mem[(32 * idx) + 128] + 32] + 32
            u = mem[64]
            s = mem[mem[mem[(32 * idx) + 128] + 32]]
            while s >= 32:
                mem[u] = mem[t]
                _132 = mem[96]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]])] = mem[mem[mem[(32 * idx) + 128] + 32] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]]) + -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 64 len mem[mem[mem[(32 * idx) + 128] + 32]] % 32] or Mask(8 * -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 32, -(8 * -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 32) + 256, mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]])])
            call address(_136).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _141 + _140 + -mem[64] - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Multicall2 aggregate: call failed'
                _203 = mem[64]
                mem[64] = mem[64] + 64
                mem[_203] = bool(ext_call.success)
                mem[_203 + 32] = 96
                require idx < mem[_69]
                mem[_69 + (32 * idx) + 32] = _203
            else:
                _200 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_200] = return_data.size
                mem[_200 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Multicall2 aggregate: call failed'
                _206 = mem[64]
                mem[64] = mem[64] + 64
                mem[_206] = bool(ext_call.success)
                mem[_206 + 32] = _200
                require idx < mem[_69]
                mem[_69 + (32 * idx) + 32] = _206
            _132 = mem[96]
            idx = idx + 1
            continue 
        _142 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _177 = mem[_69]
        mem[mem[64] + 96] = mem[_69]
        idx = 0
        s = _69 + 32
        t = mem[64] + (32 * _177) + 128
        u = mem[64] + 128
        while idx < _177:
            mem[u] = t + -_142 - 128
            _194 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _210 = mem[_194 + 32]
            mem[t + 32] = 64
            _218 = mem[_210]
            mem[t + 64] = mem[_210]
            v = 0
            while v < _218:
                mem[v + t + 96] = mem[v + _210 + 32]
                v = v + 32
                continue 
            if ceil32(_218) > _218:
                mem[t + _218 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_218) + 96
            u = u + 32
            continue 
    else:
        mem[64] = _69 + (32 * _68) + 96
        mem[_69 + (32 * _68) + 32] = 0
        mem[_69 + (32 * _68) + 64] = 96
        mem[var26001] = _69 + (32 * _68) + 32
        s = var26001
        idx = var26002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_69 + (32 * _68) + 32] = 0
            mem[_69 + (32 * _68) + 64] = 96
            mem[s + 32] = _69 + (32 * _68) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _243 = mem[96]
        s = 0
        while arg1.length < _243:
            require arg1.length < mem[96]
            _247 = mem[mem[(32 * arg1.length) + 128]]
            require arg1.length < mem[96]
            _252 = mem[mem[mem[(32 * arg1.length) + 128] + 32]]
            s = mem[mem[(32 * arg1.length) + 128] + 32] + 32
            t = mem[64]
            idx = mem[mem[mem[(32 * arg1.length) + 128] + 32]]
            while idx >= 32:
                mem[t] = mem[s]
                _243 = mem[96]
                s = s + 32
                t = t + 32
                idx = idx - 32
                continue 
            mem[mem[64] + floor32(mem[mem[mem[(32 * arg1.length) + 128] + 32]])] = mem[mem[mem[(32 * arg1.length) + 128] + 32] + floor32(mem[mem[mem[(32 * arg1.length) + 128] + 32]]) + -(mem[mem[mem[(32 * arg1.length) + 128] + 32]] % 32) + 64 len mem[mem[mem[(32 * arg1.length) + 128] + 32]] % 32] or Mask(8 * -(mem[mem[mem[(32 * arg1.length) + 128] + 32]] % 32) + 32, -(8 * -(mem[mem[mem[(32 * arg1.length) + 128] + 32]] % 32) + 32) + 256, mem[mem[64] + floor32(mem[mem[mem[(32 * arg1.length) + 128] + 32]])])
            call address(_247).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _252 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Multicall2 aggregate: call failed'
                _282 = mem[64]
                mem[64] = mem[64] + 64
                mem[_282] = bool(ext_call.success)
                mem[_282 + 32] = 96
                require arg1.length < mem[_69]
                mem[_69 + (32 * arg1.length) + 32] = _282
            else:
                _280 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_280] = return_data.size
                mem[_280 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Multicall2 aggregate: call failed'
                _285 = mem[64]
                mem[64] = mem[64] + 64
                mem[_285] = bool(ext_call.success)
                mem[_285 + 32] = _280
                require arg1.length < mem[_69]
                mem[_69 + (32 * arg1.length) + 32] = _285
            _243 = mem[96]
            s = arg1.length + 1
            continue 
        _253 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _267 = mem[_69]
        mem[mem[64] + 96] = mem[_69]
        idx = 0
        s = _69 + 32
        t = mem[64] + (32 * _267) + 128
        u = mem[64] + 128
        while idx < _267:
            mem[u] = t + -_253 - 128
            _274 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _288 = mem[_274 + 32]
            mem[t + 32] = 64
            _289 = mem[_288]
            mem[t + 64] = mem[_288]
            v = 0
            while v < _289:
                mem[v + t + 96] = mem[v + _288 + 32]
                v = v + 32
                continue 
            if ceil32(_289) > _289:
                mem[t + _289 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_289) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function tryAggregate(bool arg1, address arg2, bytes[] arg3) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 >= 96 and (32 * arg2.length) + 128 <= test266151307()
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require calldata.size + -arg2 + -cd[s] - 36 >= 64
        _77 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_77] = address(cd[(arg2 + cd[s] + 36)])
        require cd[(arg2 + cd[s] + 68)] <= test266151307()
        require calldata.size > arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 67
        require cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] <= test266151307()
        _130 = mem[64]
        require mem[64] + ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]) + 32
        mem[_130] = cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_130 + 32 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]] = call.data[arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 68 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]]
        mem[cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] + _130 + 32] = 0
        mem[_77 + 32] = _130
        mem[t] = _77
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _75 = mem[96]
    _76 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _75) + 32
    if not _75:
        _148 = mem[96]
        idx = 0
        while idx < _148:
            require idx < mem[96]
            _153 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _157 = mem[64]
            _158 = mem[mem[mem[(32 * idx) + 128] + 32]]
            t = mem[mem[(32 * idx) + 128] + 32] + 32
            u = mem[64]
            s = mem[mem[mem[(32 * idx) + 128] + 32]]
            while s >= 32:
                mem[u] = mem[t]
                _148 = mem[96]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]])] = mem[mem[mem[(32 * idx) + 128] + 32] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]]) + -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 64 len mem[mem[mem[(32 * idx) + 128] + 32]] % 32] or Mask(8 * -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 32, -(8 * -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 32) + 256, mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]])])
            call address(_153).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _158 + _157 + -mem[64] - 4]
            if not return_data.size:
                if not arg1:
                    _226 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_226] = bool(ext_call.success)
                    mem[_226 + 32] = 96
                    require idx < mem[_76]
                    mem[_76 + (32 * idx) + 32] = _226
                else:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _231 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_231] = bool(ext_call.success)
                    mem[_231 + 32] = 96
                    require idx < mem[_76]
                    mem[_76 + (32 * idx) + 32] = _231
            else:
                _224 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_224] = return_data.size
                mem[_224 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not arg1:
                    _228 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_228] = bool(ext_call.success)
                    mem[_228 + 32] = _224
                    require idx < mem[_76]
                    mem[_76 + (32 * idx) + 32] = _228
                else:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _234 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_234] = bool(ext_call.success)
                    mem[_234 + 32] = _224
                    require idx < mem[_76]
                    mem[_76 + (32 * idx) + 32] = _234
            _148 = mem[96]
            idx = idx + 1
            continue 
        _151 = mem[64]
        mem[mem[64]] = 32
        _159 = mem[_76]
        mem[mem[64] + 32] = mem[_76]
        idx = 0
        s = _76 + 32
        t = mem[64] + (32 * _159) + 64
        u = mem[64] + 64
        while idx < _159:
            mem[u] = t + -_151 - 64
            _218 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _238 = mem[_218 + 32]
            mem[t + 32] = 64
            _247 = mem[_238]
            mem[t + 64] = mem[_238]
            v = 0
            while v < _247:
                mem[v + t + 96] = mem[v + _238 + 32]
                v = v + 32
                continue 
            if ceil32(_247) > _247:
                mem[t + _247 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_247) + 96
            u = u + 32
            continue 
    else:
        mem[64] = _76 + (32 * _75) + 96
        mem[_76 + (32 * _75) + 32] = 0
        mem[_76 + (32 * _75) + 64] = 96
        mem[var28001] = _76 + (32 * _75) + 32
        s = var28001
        idx = var28002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_76 + (32 * _75) + 32] = 0
            mem[_76 + (32 * _75) + 64] = 96
            mem[s + 32] = _76 + (32 * _75) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _275 = mem[96]
        idx = 0
        while idx < _275:
            require idx < mem[96]
            _280 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _285 = mem[mem[mem[(32 * idx) + 128] + 32]]
            t = mem[mem[(32 * idx) + 128] + 32] + 32
            u = mem[64]
            s = mem[mem[mem[(32 * idx) + 128] + 32]]
            while s >= 32:
                mem[u] = mem[t]
                _275 = mem[96]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]])] = mem[mem[mem[(32 * idx) + 128] + 32] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]]) + -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 64 len mem[mem[mem[(32 * idx) + 128] + 32]] % 32] or Mask(8 * -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 32, -(8 * -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 32) + 256, mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]])])
            call address(_280).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _285 - 4]
            if not return_data.size:
                if not arg1:
                    _318 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_318] = bool(ext_call.success)
                    mem[_318 + 32] = 96
                    require idx < mem[_76]
                    mem[_76 + (32 * idx) + 32] = _318
                else:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _322 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_322] = bool(ext_call.success)
                    mem[_322 + 32] = 96
                    require idx < mem[_76]
                    mem[_76 + (32 * idx) + 32] = _322
            else:
                _316 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_316] = return_data.size
                mem[_316 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not arg1:
                    _320 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_320] = bool(ext_call.success)
                    mem[_320 + 32] = _316
                    require idx < mem[_76]
                    mem[_76 + (32 * idx) + 32] = _320
                else:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _325 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_325] = bool(ext_call.success)
                    mem[_325 + 32] = _316
                    require idx < mem[_76]
                    mem[_76 + (32 * idx) + 32] = _325
            _275 = mem[96]
            idx = idx + 1
            continue 
        _278 = mem[64]
        mem[mem[64]] = 32
        _286 = mem[_76]
        mem[mem[64] + 32] = mem[_76]
        idx = 0
        s = _76 + 32
        t = mem[64] + (32 * _286) + 64
        u = mem[64] + 64
        while idx < _286:
            mem[u] = t + -_278 - 64
            _310 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _328 = mem[_310 + 32]
            mem[t + 32] = 64
            _329 = mem[_328]
            mem[t + 64] = mem[_328]
            v = 0
            while v < _329:
                mem[v + t + 96] = mem[v + _328 + 32]
                v = v + 32
                continue 
            if ceil32(_329) > _329:
                mem[t + _329 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_329) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function tryBlockAndAggregate(bool arg1, address arg2, bytes[] arg3) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 >= 96 and (32 * arg2.length) + 128 <= test266151307()
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require calldata.size + -arg2 + -cd[s] - 36 >= 64
        _75 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        mem[_75] = address(cd[(arg2 + cd[s] + 36)])
        require cd[(arg2 + cd[s] + 68)] <= test266151307()
        require calldata.size > arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 67
        require cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] <= test266151307()
        _119 = mem[64]
        require mem[64] + ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]) + 32
        mem[_119] = cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_119 + 32 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]] = call.data[arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 68 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]]
        mem[cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] + _119 + 32] = 0
        mem[_75 + 32] = _119
        mem[t] = _75
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _76 = mem[96]
    _77 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _76) + 32
    if not _76:
        _148 = mem[96]
        idx = 0
        while idx < _148:
            require idx < mem[96]
            _152 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _158 = mem[mem[mem[(32 * idx) + 128] + 32]]
            t = mem[mem[(32 * idx) + 128] + 32] + 32
            u = mem[64]
            s = mem[mem[mem[(32 * idx) + 128] + 32]]
            while s >= 32:
                mem[u] = mem[t]
                _148 = mem[96]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]])] = mem[mem[mem[(32 * idx) + 128] + 32] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]]) + -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 64 len mem[mem[mem[(32 * idx) + 128] + 32]] % 32] or Mask(8 * -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 32, -(8 * -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 32) + 256, mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]])])
            call address(_152).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _158 - 4]
            if not return_data.size:
                if not arg1:
                    _226 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_226] = bool(ext_call.success)
                    mem[_226 + 32] = 96
                    require idx < mem[_77]
                    mem[_77 + (32 * idx) + 32] = _226
                else:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _231 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_231] = bool(ext_call.success)
                    mem[_231 + 32] = 96
                    require idx < mem[_77]
                    mem[_77 + (32 * idx) + 32] = _231
            else:
                _224 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_224] = return_data.size
                mem[_224 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not arg1:
                    _228 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_228] = bool(ext_call.success)
                    mem[_228 + 32] = _224
                    require idx < mem[_77]
                    mem[_77 + (32 * idx) + 32] = _228
                else:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _234 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_234] = bool(ext_call.success)
                    mem[_234 + 32] = _224
                    require idx < mem[_77]
                    mem[_77 + (32 * idx) + 32] = _234
            _148 = mem[96]
            idx = idx + 1
            continue 
        _154 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _195 = mem[_77]
        mem[mem[64] + 96] = mem[_77]
        idx = 0
        s = _77 + 32
        t = mem[64] + (32 * _195) + 128
        u = mem[64] + 128
        while idx < _195:
            mem[u] = t + -_154 - 128
            _218 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _238 = mem[_218 + 32]
            mem[t + 32] = 64
            _247 = mem[_238]
            mem[t + 64] = mem[_238]
            v = 0
            while v < _247:
                mem[v + t + 96] = mem[v + _238 + 32]
                v = v + 32
                continue 
            if ceil32(_247) > _247:
                mem[t + _247 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_247) + 96
            u = u + 32
            continue 
    else:
        mem[64] = _77 + (32 * _76) + 96
        mem[_77 + (32 * _76) + 32] = 0
        mem[_77 + (32 * _76) + 64] = 96
        mem[var29001] = _77 + (32 * _76) + 32
        s = var29001
        idx = var29002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_77 + (32 * _76) + 32] = 0
            mem[_77 + (32 * _76) + 64] = 96
            mem[s + 32] = _77 + (32 * _76) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _275 = mem[96]
        idx = 0
        while idx < _275:
            require idx < mem[96]
            _279 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _285 = mem[mem[mem[(32 * idx) + 128] + 32]]
            t = mem[mem[(32 * idx) + 128] + 32] + 32
            u = mem[64]
            s = mem[mem[mem[(32 * idx) + 128] + 32]]
            while s >= 32:
                mem[u] = mem[t]
                _275 = mem[96]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]])] = mem[mem[mem[(32 * idx) + 128] + 32] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]]) + -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 64 len mem[mem[mem[(32 * idx) + 128] + 32]] % 32] or Mask(8 * -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 32, -(8 * -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 32) + 256, mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]])])
            call address(_279).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _285 - 4]
            if not return_data.size:
                if not arg1:
                    _318 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_318] = bool(ext_call.success)
                    mem[_318 + 32] = 96
                    require idx < mem[_77]
                    mem[_77 + (32 * idx) + 32] = _318
                else:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _322 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_322] = bool(ext_call.success)
                    mem[_322 + 32] = 96
                    require idx < mem[_77]
                    mem[_77 + (32 * idx) + 32] = _322
            else:
                _316 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_316] = return_data.size
                mem[_316 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not arg1:
                    _320 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_320] = bool(ext_call.success)
                    mem[_320 + 32] = _316
                    require idx < mem[_77]
                    mem[_77 + (32 * idx) + 32] = _320
                else:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _325 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_325] = bool(ext_call.success)
                    mem[_325 + 32] = _316
                    require idx < mem[_77]
                    mem[_77 + (32 * idx) + 32] = _325
            _275 = mem[96]
            idx = idx + 1
            continue 
        _281 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _303 = mem[_77]
        mem[mem[64] + 96] = mem[_77]
        idx = 0
        s = _77 + 32
        t = mem[64] + (32 * _303) + 128
        u = mem[64] + 128
        while idx < _303:
            mem[u] = t + -_281 - 128
            _310 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _328 = mem[_310 + 32]
            mem[t + 32] = 64
            _329 = mem[_328]
            mem[t + 64] = mem[_328]
            v = 0
            while v < _329:
                mem[v + t + 96] = mem[v + _328 + 32]
                v = v + 32
                continue 
            if ceil32(_329) > _329:
                mem[t + _329 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_329) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
