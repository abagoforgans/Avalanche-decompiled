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

function getBlockHash(uint256 arg1) {
    require calldata.size - 4 >= 32
    return block.hash(arg1)
}

function getEthBalance(address arg1) {
    require calldata.size - 4 >= 32
    return eth.balance(arg1)
}

function aggregate(address arg1, bytes[] arg2, bool arg3) {
    require calldata.size - 4 >= 64
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
        _105 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32
        mem[_105] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_105 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + _105 + 32] = 0
        mem[_67 + 32] = _105
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
            _137 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _142 = mem[mem[mem[(32 * idx) + 128] + 32]]
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
            call address(_137).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _142 - 4]
            if not return_data.size:
                if not arg2:
                    _202 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_202] = bool(ext_call.success)
                    mem[_202 + 32] = 96
                    require idx < mem[_69]
                    mem[_69 + (32 * idx) + 32] = _202
                else:
                    require ext_call.success
                    _207 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_207] = bool(ext_call.success)
                    mem[_207 + 32] = 96
                    require idx < mem[_69]
                    mem[_69 + (32 * idx) + 32] = _207
            else:
                _200 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_200] = return_data.size
                mem[_200 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not arg2:
                    _204 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_204] = bool(ext_call.success)
                    mem[_204 + 32] = _200
                    require idx < mem[_69]
                    mem[_69 + (32 * idx) + 32] = _204
                else:
                    require ext_call.success
                    _209 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_209] = bool(ext_call.success)
                    mem[_209 + 32] = _200
                    require idx < mem[_69]
                    mem[_69 + (32 * idx) + 32] = _209
            _132 = mem[96]
            idx = idx + 1
            continue 
        _135 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _162 = mem[_69]
        mem[mem[64] + 64] = mem[_69]
        idx = 0
        s = _69 + 32
        t = mem[64] + (32 * _162) + 96
        u = mem[64] + 96
        while idx < _162:
            mem[u] = t + -_135 - 96
            _194 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _212 = mem[_194 + 32]
            mem[t + 32] = 64
            _221 = mem[_212]
            mem[t + 64] = mem[_212]
            v = 0
            while v < _221:
                mem[v + t + 96] = mem[v + _212 + 32]
                v = v + 32
                continue 
            if ceil32(_221) > _221:
                mem[t + _221 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_221) + 96
            u = u + 32
            continue 
    else:
        mem[64] = _69 + (32 * _68) + 96
        mem[_69 + (32 * _68) + 32] = 0
        mem[_69 + (32 * _68) + 64] = 96
        mem[var28001] = _69 + (32 * _68) + 32
        s = var28001
        idx = var28002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_69 + (32 * _68) + 32] = 0
            mem[_69 + (32 * _68) + 64] = 96
            mem[s + 32] = _69 + (32 * _68) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _243 = mem[96]
        idx = 0
        while idx < _243:
            require idx < mem[96]
            _248 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _253 = mem[mem[mem[(32 * idx) + 128] + 32]]
            t = mem[mem[(32 * idx) + 128] + 32] + 32
            u = mem[64]
            s = mem[mem[mem[(32 * idx) + 128] + 32]]
            while s >= 32:
                mem[u] = mem[t]
                _243 = mem[96]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]])] = mem[mem[mem[(32 * idx) + 128] + 32] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]]) + -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 64 len mem[mem[mem[(32 * idx) + 128] + 32]] % 32] or Mask(8 * -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 32, -(8 * -(mem[mem[mem[(32 * idx) + 128] + 32]] % 32) + 32) + 256, mem[mem[64] + floor32(mem[mem[mem[(32 * idx) + 128] + 32]])])
            call address(_248).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _253 - 4]
            if not return_data.size:
                if not arg2:
                    _282 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_282] = bool(ext_call.success)
                    mem[_282 + 32] = 96
                    require idx < mem[_69]
                    mem[_69 + (32 * idx) + 32] = _282
                else:
                    require ext_call.success
                    _286 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_286] = bool(ext_call.success)
                    mem[_286 + 32] = 96
                    require idx < mem[_69]
                    mem[_69 + (32 * idx) + 32] = _286
            else:
                _280 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_280] = return_data.size
                mem[_280 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not arg2:
                    _284 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_284] = bool(ext_call.success)
                    mem[_284 + 32] = _280
                    require idx < mem[_69]
                    mem[_69 + (32 * idx) + 32] = _284
                else:
                    require ext_call.success
                    _288 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_288] = bool(ext_call.success)
                    mem[_288 + 32] = _280
                    require idx < mem[_69]
                    mem[_69 + (32 * idx) + 32] = _288
            _243 = mem[96]
            idx = idx + 1
            continue 
        _246 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _263 = mem[_69]
        mem[mem[64] + 64] = mem[_69]
        idx = 0
        s = _69 + 32
        t = mem[64] + (32 * _263) + 96
        u = mem[64] + 96
        while idx < _263:
            mem[u] = t + -_246 - 96
            _274 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _290 = mem[_274 + 32]
            mem[t + 32] = 64
            _291 = mem[_290]
            mem[t + 64] = mem[_290]
            v = 0
            while v < _291:
                mem[v + t + 96] = mem[v + _290 + 32]
                v = v + 32
                continue 
            if ceil32(_291) > _291:
                mem[t + _291 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_291) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
