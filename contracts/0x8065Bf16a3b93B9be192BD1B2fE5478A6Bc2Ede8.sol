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

function getBlockHash(uint256 arg1) payable {
    require calldata.size - 4 >= 32
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
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 64
        _70 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_70] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] <= test266151307()
        _97 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32
        mem[_97] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_97 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[_97 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_70 + 32] = _97
        mem[t] = _70
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _71 = mem[96]
    require mem[96] <= test266151307()
    _72 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _71) + 32
    if not _71:
        _138 = mem[96]
        idx = 0
        while idx < _138:
            require idx < mem[96]
            _142 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _146 = mem[mem[(32 * idx) + 128] + 32]
            _147 = mem[64]
            _149 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _149:
                mem[s + _147] = mem[s + _146 + 32]
                _138 = mem[96]
                s = s + 32
                continue 
            if ceil32(_149) <= _149:
                call address(_142).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _149 + _147 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    require idx < mem[_72]
                    mem[(32 * idx) + _72 + 32] = 96
                else:
                    _219 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_219] = return_data.size
                    mem[_219 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    require idx < mem[_72]
                    mem[(32 * idx) + _72 + 32] = _219
            else:
                mem[_147 + _149] = 0
                call address(_142).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _149 + _147 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    require idx < mem[_72]
                    mem[(32 * idx) + _72 + 32] = 96
                else:
                    _222 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_222] = return_data.size
                    mem[_222 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    require idx < mem[_72]
                    mem[(32 * idx) + _72 + 32] = _222
            _138 = mem[96]
            idx = idx + 1
            continue 
        _140 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _144 = mem[_72]
        mem[mem[64] + 64] = mem[_72]
        idx = 0
        s = _72 + 32
        t = mem[64] + 96
        u = mem[64] + (32 * _144) + 96
        while idx < _144:
            mem[t] = u + -_140 - 96
            _203 = mem[s]
            _207 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _207:
                mem[v + u + 32] = mem[v + _203 + 32]
                v = v + 32
                continue 
            if ceil32(_207) > _207:
                mem[u + _207 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_207) + u + 32
            continue 
    else:
        mem[_72 + 32] = 96
        s = _72 + 32
        idx = _71
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _202 = mem[96]
        idx = 0
        while idx < _202:
            require idx < mem[96]
            _210 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _214 = mem[mem[(32 * idx) + 128] + 32]
            _215 = mem[64]
            _217 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _217:
                mem[s + _215] = mem[s + _214 + 32]
                _202 = mem[96]
                s = s + 32
                continue 
            if ceil32(_217) <= _217:
                call address(_210).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _217 + _215 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    require idx < mem[_72]
                    mem[(32 * idx) + _72 + 32] = 96
                else:
                    _262 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_262] = return_data.size
                    mem[_262 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    require idx < mem[_72]
                    mem[(32 * idx) + _72 + 32] = _262
            else:
                mem[_215 + _217] = 0
                call address(_210).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _217 + _215 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    require idx < mem[_72]
                    mem[(32 * idx) + _72 + 32] = 96
                else:
                    _264 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_264] = return_data.size
                    mem[_264 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    require idx < mem[_72]
                    mem[(32 * idx) + _72 + 32] = _264
            _202 = mem[96]
            idx = idx + 1
            continue 
        _208 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _212 = mem[_72]
        mem[mem[64] + 64] = mem[_72]
        idx = 0
        s = _72 + 32
        t = mem[64] + 96
        u = mem[64] + (32 * _212) + 96
        while idx < _212:
            mem[t] = u + -_208 - 96
            _256 = mem[s]
            _259 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _259:
                mem[v + u + 32] = mem[v + _256 + 32]
                v = v + 32
                continue 
            if ceil32(_259) > _259:
                mem[u + _259 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_259) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function blockAndAggregate(address arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 64
        _83 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_83] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] <= test266151307()
        _97 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32
        mem[_97] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_97 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[_97 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_83 + 32] = _97
        mem[t] = _83
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _84 = mem[96]
    require mem[96] <= test266151307()
    _85 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _84) + 32
    if not _84:
        _164 = mem[96]
        idx = 0
        while idx < _164:
            require idx < mem[96]
            _168 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _171 = mem[mem[(32 * idx) + 128] + 32]
            _172 = mem[64]
            _174 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _174:
                mem[s + _172] = mem[s + _171 + 32]
                _164 = mem[96]
                s = s + 32
                continue 
            if ceil32(_174) <= _174:
                call address(_168).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _174 + _172 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _261 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_261] = bool(ext_call.success)
                    mem[_261 + 32] = 96
                    require idx < mem[_85]
                    mem[(32 * idx) + _85 + 32] = _261
                else:
                    _251 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_251] = return_data.size
                    mem[_251 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _264 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_264] = bool(ext_call.success)
                    mem[_264 + 32] = _251
                    require idx < mem[_85]
                    mem[(32 * idx) + _85 + 32] = _264
            else:
                mem[_172 + _174] = 0
                call address(_168).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _174 + _172 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _269 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_269] = bool(ext_call.success)
                    mem[_269 + 32] = 96
                    require idx < mem[_85]
                    mem[(32 * idx) + _85 + 32] = _269
                else:
                    _254 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_254] = return_data.size
                    mem[_254 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _272 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_272] = bool(ext_call.success)
                    mem[_272 + 32] = _254
                    require idx < mem[_85]
                    mem[(32 * idx) + _85 + 32] = _272
            _164 = mem[96]
            idx = idx + 1
            continue 
        _173 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _176 = mem[_85]
        mem[mem[64] + 96] = mem[_85]
        idx = 0
        s = _85 + 32
        t = mem[64] + (32 * _176) + 128
        u = mem[64] + 128
        while idx < _176:
            mem[u] = t + -_173 - 128
            _242 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _244 = mem[_242 + 32]
            mem[t + 32] = 64
            _246 = mem[_244]
            mem[t + 64] = mem[_244]
            v = 0
            while v < _246:
                mem[v + t + 96] = mem[v + _244 + 32]
                v = v + 32
                continue 
            if ceil32(_246) > _246:
                mem[t + _246 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_246) + t + 96
            u = u + 32
            continue 
    else:
        mem[64] = _85 + (32 * _84) + 96
        mem[_85 + (32 * _84) + 32] = 0
        mem[_85 + (32 * _84) + 64] = 96
        mem[var24001] = _85 + (32 * _84) + 32
        s = var24001
        idx = var24002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_85 + (32 * _84) + 32] = 0
            mem[_85 + (32 * _84) + 64] = 96
            mem[s + 32] = _85 + (32 * _84) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _307 = mem[96]
        idx = 0
        while idx < _307:
            require idx < mem[96]
            _311 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _314 = mem[mem[(32 * idx) + 128] + 32]
            _315 = mem[64]
            _317 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _317:
                mem[s + _315] = mem[s + _314 + 32]
                _307 = mem[96]
                s = s + 32
                continue 
            if ceil32(_317) <= _317:
                call address(_311).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _317 + _315 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _357 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_357] = bool(ext_call.success)
                    mem[_357 + 32] = 96
                    require idx < mem[_85]
                    mem[(32 * idx) + _85 + 32] = _357
                else:
                    _354 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_354] = return_data.size
                    mem[_354 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _360 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_360] = bool(ext_call.success)
                    mem[_360 + 32] = _354
                    require idx < mem[_85]
                    mem[(32 * idx) + _85 + 32] = _360
            else:
                mem[_315 + _317] = 0
                call address(_311).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _317 + _315 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _363 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_363] = bool(ext_call.success)
                    mem[_363 + 32] = 96
                    require idx < mem[_85]
                    mem[(32 * idx) + _85 + 32] = _363
                else:
                    _356 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_356] = return_data.size
                    mem[_356 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _366 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_366] = bool(ext_call.success)
                    mem[_366 + 32] = _356
                    require idx < mem[_85]
                    mem[(32 * idx) + _85 + 32] = _366
            _307 = mem[96]
            idx = idx + 1
            continue 
        _316 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _318 = mem[_85]
        mem[mem[64] + 96] = mem[_85]
        idx = 0
        s = _85 + 32
        t = mem[64] + (32 * _318) + 128
        u = mem[64] + 128
        while idx < _318:
            mem[u] = t + -_316 - 128
            _346 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _348 = mem[_346 + 32]
            mem[t + 32] = 64
            _350 = mem[_348]
            mem[t + 64] = mem[_348]
            v = 0
            while v < _350:
                mem[v + t + 96] = mem[v + _348 + 32]
                v = v + 32
                continue 
            if ceil32(_350) > _350:
                mem[t + _350 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_350) + t + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function tryAggregate(bool arg1, address arg2, bytes[] arg3) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 >= 96 and (32 * arg2.length) + 128 <= test266151307()
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require calldata.size + -arg2 + -cd[s] - 36 >= 64
        _99 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[(arg2 + cd[s] + 36)] == address(cd[(arg2 + cd[s] + 36)])
        mem[_99] = cd[(arg2 + cd[s] + 36)]
        require cd[(arg2 + cd[s] + 68)] <= test266151307()
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 67 < calldata.size
        require cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] <= test266151307()
        _119 = mem[64]
        require mem[64] + ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]) + 32
        mem[_119] = cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_119 + 32 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]] = call.data[arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 68 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]]
        mem[_119 + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_99 + 32] = _119
        mem[t] = _99
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _100 = mem[96]
    require mem[96] <= test266151307()
    _101 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _100) + 32
    if not _100:
        _196 = mem[96]
        idx = 0
        while idx < _196:
            require idx < mem[96]
            _201 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _204 = mem[mem[(32 * idx) + 128] + 32]
            _205 = mem[64]
            _207 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _207:
                mem[s + _205] = mem[s + _204 + 32]
                _196 = mem[96]
                s = s + 32
                continue 
            if ceil32(_207) <= _207:
                call address(_201).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _207 + _205 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _307 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_307] = bool(ext_call.success)
                        mem[_307 + 32] = 96
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _307
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _314 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_314] = bool(ext_call.success)
                        mem[_314 + 32] = 96
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _314
                else:
                    _299 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_299] = return_data.size
                    mem[_299 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _309 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_309] = bool(ext_call.success)
                        mem[_309 + 32] = _299
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _309
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _317 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_317] = bool(ext_call.success)
                        mem[_317 + 32] = _299
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _317
            else:
                mem[_205 + _207] = 0
                call address(_201).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _207 + _205 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _320 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_320] = bool(ext_call.success)
                        mem[_320 + 32] = 96
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _320
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _326 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_326] = bool(ext_call.success)
                        mem[_326 + 32] = 96
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _326
                else:
                    _302 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_302] = return_data.size
                    mem[_302 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _322 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_322] = bool(ext_call.success)
                        mem[_322 + 32] = _302
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _322
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _329 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_329] = bool(ext_call.success)
                        mem[_329 + 32] = _302
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _329
            _196 = mem[96]
            idx = idx + 1
            continue 
        _199 = mem[64]
        mem[mem[64]] = 32
        _206 = mem[_101]
        mem[mem[64] + 32] = mem[_101]
        idx = 0
        s = _101 + 32
        t = mem[64] + (32 * _206) + 64
        u = mem[64] + 64
        while idx < _206:
            mem[u] = t + -_199 - 64
            _290 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _292 = mem[_290 + 32]
            mem[t + 32] = 64
            _294 = mem[_292]
            mem[t + 64] = mem[_292]
            v = 0
            while v < _294:
                mem[v + t + 96] = mem[v + _292 + 32]
                v = v + 32
                continue 
            if ceil32(_294) > _294:
                mem[t + _294 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_294) + t + 96
            u = u + 32
            continue 
    else:
        mem[64] = _101 + (32 * _100) + 96
        mem[_101 + (32 * _100) + 32] = 0
        mem[_101 + (32 * _100) + 64] = 96
        mem[var23001] = _101 + (32 * _100) + 32
        s = var23001
        idx = var23002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_101 + (32 * _100) + 32] = 0
            mem[_101 + (32 * _100) + 64] = 96
            mem[s + 32] = _101 + (32 * _100) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _371 = mem[96]
        idx = 0
        while idx < _371:
            require idx < mem[96]
            _376 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _379 = mem[mem[(32 * idx) + 128] + 32]
            _380 = mem[64]
            _382 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _382:
                mem[s + _380] = mem[s + _379 + 32]
                _371 = mem[96]
                s = s + 32
                continue 
            if ceil32(_382) <= _382:
                call address(_376).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _382 + _380 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _429 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_429] = bool(ext_call.success)
                        mem[_429 + 32] = 96
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _429
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _433 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_433] = bool(ext_call.success)
                        mem[_433 + 32] = 96
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _433
                else:
                    _426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_426] = return_data.size
                    mem[_426 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _431 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_431] = bool(ext_call.success)
                        mem[_431 + 32] = _426
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _431
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _436 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_436] = bool(ext_call.success)
                        mem[_436 + 32] = _426
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _436
            else:
                mem[_380 + _382] = 0
                call address(_376).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _382 + _380 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _439 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_439] = bool(ext_call.success)
                        mem[_439 + 32] = 96
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _439
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _443 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_443] = bool(ext_call.success)
                        mem[_443 + 32] = 96
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _443
                else:
                    _428 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_428] = return_data.size
                    mem[_428 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _441 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_441] = bool(ext_call.success)
                        mem[_441 + 32] = _428
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _441
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _446 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_446] = bool(ext_call.success)
                        mem[_446 + 32] = _428
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _446
            _371 = mem[96]
            idx = idx + 1
            continue 
        _374 = mem[64]
        mem[mem[64]] = 32
        _381 = mem[_101]
        mem[mem[64] + 32] = mem[_101]
        idx = 0
        s = _101 + 32
        t = mem[64] + (32 * _381) + 64
        u = mem[64] + 64
        while idx < _381:
            mem[u] = t + -_374 - 64
            _418 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _420 = mem[_418 + 32]
            mem[t + 32] = 64
            _422 = mem[_420]
            mem[t + 64] = mem[_420]
            v = 0
            while v < _422:
                mem[v + t + 96] = mem[v + _420 + 32]
                v = v + 32
                continue 
            if ceil32(_422) > _422:
                mem[t + _422 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_422) + t + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function tryBlockAndAggregate(bool arg1, address arg2, bytes[] arg3) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 >= 96 and (32 * arg2.length) + 128 <= test266151307()
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require calldata.size + -arg2 + -cd[s] - 36 >= 64
        _99 = mem[64]
        require mem[64] + 64 >= mem[64] and mem[64] + 64 <= test266151307()
        mem[64] = mem[64] + 64
        require cd[(arg2 + cd[s] + 36)] == address(cd[(arg2 + cd[s] + 36)])
        mem[_99] = cd[(arg2 + cd[s] + 36)]
        require cd[(arg2 + cd[s] + 68)] <= test266151307()
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 67 < calldata.size
        require cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] <= test266151307()
        _115 = mem[64]
        require mem[64] + ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]) + 32
        mem[_115] = cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_115 + 32 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]] = call.data[arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 68 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]]
        mem[_115 + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_99 + 32] = _115
        mem[t] = _99
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _100 = mem[96]
    require mem[96] <= test266151307()
    _101 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _100) + 32
    if not _100:
        _196 = mem[96]
        idx = 0
        while idx < _196:
            require idx < mem[96]
            _200 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _204 = mem[mem[(32 * idx) + 128] + 32]
            _205 = mem[64]
            _206 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while arg2.length < _206:
                mem[arg2.length + _205] = mem[arg2.length + _204 + 32]
                _196 = mem[96]
                s = arg2.length + 32
                continue 
            if arg2.length <= _206:
                call address(_200).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _206 + _205 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _306 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_306] = bool(ext_call.success)
                        mem[_306 + 32] = 96
                        require s < mem[_101]
                        mem[(32 * s) + _101 + 32] = _306
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _314 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_314] = bool(ext_call.success)
                        mem[_314 + 32] = 96
                        require s < mem[_101]
                        mem[(32 * s) + _101 + 32] = _314
                else:
                    _299 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_299] = return_data.size
                    mem[_299 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _308 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_308] = bool(ext_call.success)
                        mem[_308 + 32] = _299
                        require s < mem[_101]
                        mem[(32 * s) + _101 + 32] = _308
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _317 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_317] = bool(ext_call.success)
                        mem[_317 + 32] = _299
                        require s < mem[_101]
                        mem[(32 * s) + _101 + 32] = _317
            else:
                mem[_205 + _206] = 0
                call address(_200).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _206 + _205 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _320 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_320] = bool(ext_call.success)
                        mem[_320 + 32] = 96
                        require s < mem[_101]
                        mem[(32 * s) + _101 + 32] = _320
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _325 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_325] = bool(ext_call.success)
                        mem[_325 + 32] = 96
                        require s < mem[_101]
                        mem[(32 * s) + _101 + 32] = _325
                else:
                    _302 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_302] = return_data.size
                    mem[_302 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _322 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_322] = bool(ext_call.success)
                        mem[_322 + 32] = _302
                        require s < mem[_101]
                        mem[(32 * s) + _101 + 32] = _322
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _328 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_328] = bool(ext_call.success)
                        mem[_328 + 32] = _302
                        require s < mem[_101]
                        mem[(32 * s) + _101 + 32] = _328
            _196 = mem[96]
            s = s + 1
            continue 
        _202 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _207 = mem[_101]
        mem[mem[64] + 96] = mem[_101]
        s = 0
        t = _101 + 32
        u = mem[64] + (32 * _207) + 128
        v = mem[64] + 128
        while s < _207:
            mem[v] = u + -_202 - 128
            _290 = mem[t]
            mem[u] = bool(mem[mem[t]])
            _292 = mem[_290 + 32]
            mem[u + 32] = 64
            _294 = mem[_292]
            mem[u + 64] = mem[_292]
            idx = 0
            while idx < _294:
                mem[idx + u + 96] = mem[idx + _292 + 32]
                idx = idx + 32
                continue 
            if ceil32(_294) > _294:
                mem[u + _294 + 96] = 0
            s = s + 1
            t = t + 32
            u = ceil32(_294) + u + 96
            v = v + 32
            continue 
    else:
        mem[64] = _101 + (32 * _100) + 96
        mem[_101 + (32 * _100) + 32] = 0
        mem[_101 + (32 * _100) + 64] = 96
        mem[var24001] = _101 + (32 * _100) + 32
        s = var24001
        idx = var24002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_101 + (32 * _100) + 32] = 0
            mem[_101 + (32 * _100) + 64] = 96
            mem[s + 32] = _101 + (32 * _100) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _371 = mem[96]
        idx = 0
        while idx < _371:
            require idx < mem[96]
            _375 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _379 = mem[mem[(32 * idx) + 128] + 32]
            _380 = mem[64]
            _381 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _381:
                mem[s + _380] = mem[s + _379 + 32]
                _371 = mem[96]
                s = s + 32
                continue 
            if ceil32(_381) <= _381:
                call address(_375).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _381 + _380 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _429 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_429] = bool(ext_call.success)
                        mem[_429 + 32] = 96
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _429
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _433 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_433] = bool(ext_call.success)
                        mem[_433 + 32] = 96
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _433
                else:
                    _426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_426] = return_data.size
                    mem[_426 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _431 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_431] = bool(ext_call.success)
                        mem[_431 + 32] = _426
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _431
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _436 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_436] = bool(ext_call.success)
                        mem[_436 + 32] = _426
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _436
            else:
                mem[_380 + _381] = 0
                call address(_375).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _381 + _380 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _439 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_439] = bool(ext_call.success)
                        mem[_439 + 32] = 96
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _439
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _443 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_443] = bool(ext_call.success)
                        mem[_443 + 32] = 96
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _443
                else:
                    _428 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_428] = return_data.size
                    mem[_428 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _441 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_441] = bool(ext_call.success)
                        mem[_441 + 32] = _428
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _441
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _446 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_446] = bool(ext_call.success)
                        mem[_446 + 32] = _428
                        require idx < mem[_101]
                        mem[(32 * idx) + _101 + 32] = _446
            _371 = mem[96]
            idx = idx + 1
            continue 
        _377 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _382 = mem[_101]
        mem[mem[64] + 96] = mem[_101]
        s = 0
        t = _101 + 32
        u = mem[64] + (32 * _382) + 128
        v = mem[64] + 128
        while s < _382:
            mem[v] = u + -_377 - 128
            _418 = mem[t]
            mem[u] = bool(mem[mem[t]])
            _420 = mem[_418 + 32]
            mem[u + 32] = 64
            _422 = mem[_420]
            mem[u + 64] = mem[_420]
            idx = 0
            while idx < _422:
                mem[idx + u + 96] = mem[idx + _420 + 32]
                idx = idx + 32
                continue 
            if ceil32(_422) > _422:
                mem[u + _422 + 96] = 0
            s = s + 1
            t = t + 32
            u = ceil32(_422) + u + 96
            v = v + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
