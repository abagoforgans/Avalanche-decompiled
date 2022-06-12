contract main {




// =====================  Runtime code  =====================


const getCurrentBlockTimestamp = block.timestamp

const getLastBlockHash = block.hash(block.number - 1)

const getBlockNumber = block.number

const getCurrentBlockDifficulty = block.difficulty

const getCurrentBlockGasLimit = block.gas_limit

const getCurrentBlockCoinbase = block.coinbase


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
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] <= test266151307()
        require 64 <= calldata.size + -arg1 + -cd[idx] - 36
        _71 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[idx] + 36)] == address(cd[(arg1 + cd[idx] + 36)])
        mem[_71] = cd[(arg1 + cd[idx] + 36)]
        require cd[(arg1 + cd[idx] + 68)] <= test266151307()
        require arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 67 < calldata.size
        if cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)] > test266151307():
            revert with 0, 65
        _97 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)])) + 1
        mem[_97] = cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)]
        require arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)] + 68 <= calldata.size
        mem[_97 + 32 len cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)]] = call.data[arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 68 len cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)]]
        mem[_97 + cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)] + 32] = 0
        mem[_71 + 32] = _97
        mem[s] = _71
        s = s + 32
        idx = idx + 32
        continue 
    _70 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _72 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _70) + 32
    if not _70:
        _138 = mem[96]
        idx = 0
        while idx < _138:
            if idx >= mem[96]:
                revert with 0, 50
            _142 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
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
                    if idx >= mem[_72]:
                        revert with 0, 50
                    mem[(32 * idx) + _72 + 32] = 96
                else:
                    _219 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_219] = return_data.size
                    mem[_219 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 0, 50
                    mem[(32 * idx) + _72 + 32] = _219
            else:
                mem[_147 + _149] = 0
                call address(_142).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _149 + _147 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 0, 50
                    mem[(32 * idx) + _72 + 32] = 96
                else:
                    _222 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_222] = return_data.size
                    mem[_222 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 0, 50
                    mem[(32 * idx) + _72 + 32] = _222
            if idx == -1:
                revert with 0, 17
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
        idx = _70
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _202 = mem[96]
        idx = 0
        while idx < _202:
            if idx >= mem[96]:
                revert with 0, 50
            _210 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
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
                    if idx >= mem[_72]:
                        revert with 0, 50
                    mem[(32 * idx) + _72 + 32] = 96
                else:
                    _262 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_262] = return_data.size
                    mem[_262 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 0, 50
                    mem[(32 * idx) + _72 + 32] = _262
            else:
                mem[_215 + _217] = 0
                call address(_210).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _217 + _215 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 0, 50
                    mem[(32 * idx) + _72 + 32] = 96
                else:
                    _264 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_264] = return_data.size
                    mem[_264 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 0, 50
                    mem[(32 * idx) + _72 + 32] = _264
            if idx == -1:
                revert with 0, 17
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
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] <= test266151307()
        require 64 <= calldata.size + -arg1 + -cd[idx] - 36
        _83 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[idx] + 36)] == address(cd[(arg1 + cd[idx] + 36)])
        mem[_83] = cd[(arg1 + cd[idx] + 36)]
        require cd[(arg1 + cd[idx] + 68)] <= test266151307()
        require arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 67 < calldata.size
        if cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)] > test266151307():
            revert with 0, 65
        _99 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)])) + 1
        mem[_99] = cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)]
        require arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)] + 68 <= calldata.size
        mem[_99 + 32 len cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)]] = call.data[arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 68 len cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)]]
        mem[_99 + cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)] + 32] = 0
        mem[_83 + 32] = _99
        mem[s] = _83
        s = s + 32
        idx = idx + 32
        continue 
    _84 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _85 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _84) + 32
    if not _84:
        _164 = mem[96]
        idx = 0
        while idx < _164:
            if idx >= mem[96]:
                revert with 0, 50
            _168 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _171 = mem[mem[(32 * idx) + 128] + 32]
            _172 = mem[64]
            _175 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _175:
                mem[s + _172] = mem[s + _171 + 32]
                _164 = mem[96]
                s = s + 32
                continue 
            if ceil32(_175) <= _175:
                call address(_168).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _175 + _172 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _264 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_264] = bool(ext_call.success)
                    mem[_264 + 32] = 96
                    if idx >= mem[_85]:
                        revert with 0, 50
                    mem[(32 * idx) + _85 + 32] = _264
                else:
                    _259 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_259] = return_data.size
                    mem[_259 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _267 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_267] = bool(ext_call.success)
                    mem[_267 + 32] = _259
                    if idx >= mem[_85]:
                        revert with 0, 50
                    mem[(32 * idx) + _85 + 32] = _267
            else:
                mem[_172 + _175] = 0
                call address(_168).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _175 + _172 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _275 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_275] = bool(ext_call.success)
                    mem[_275 + 32] = 96
                    if idx >= mem[_85]:
                        revert with 0, 50
                    mem[(32 * idx) + _85 + 32] = _275
                else:
                    _261 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_261] = return_data.size
                    mem[_261 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _278 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_278] = bool(ext_call.success)
                    mem[_278 + 32] = _261
                    if idx >= mem[_85]:
                        revert with 0, 50
                    mem[(32 * idx) + _85 + 32] = _278
            if idx == -1:
                revert with 0, 17
            _164 = mem[96]
            idx = idx + 1
            continue 
        _174 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _180 = mem[_85]
        mem[mem[64] + 96] = mem[_85]
        idx = 0
        s = _85 + 32
        t = mem[64] + (32 * _180) + 128
        u = mem[64] + 128
        while idx < _180:
            mem[u] = t + -_174 - 128
            _242 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _244 = mem[_242 + 32]
            mem[t + 32] = 64
            _247 = mem[_244]
            mem[t + 64] = mem[_244]
            v = 0
            while v < _247:
                mem[v + t + 96] = mem[v + _244 + 32]
                v = v + 32
                continue 
            if ceil32(_247) > _247:
                mem[t + _247 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_247) + t + 96
            u = u + 32
            continue 
    else:
        mem[64] = _85 + (32 * _84) + 96
        mem[_85 + (32 * _84) + 32] = 0
        mem[_85 + (32 * _84) + 64] = 96
        mem[_85 + 32] = _85 + (32 * _84) + 32
        s = _85 + 32
        idx = _84
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_85 + (32 * _84) + 32] = 0
            mem[_85 + (32 * _84) + 64] = 96
            mem[s + 32] = _85 + (32 * _84) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _241 = mem[96]
        idx = 0
        while idx < _241:
            if idx >= mem[96]:
                revert with 0, 50
            _249 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _253 = mem[mem[(32 * idx) + 128] + 32]
            _254 = mem[64]
            _257 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _257:
                mem[s + _254] = mem[s + _253 + 32]
                _241 = mem[96]
                s = s + 32
                continue 
            if ceil32(_257) <= _257:
                call address(_249).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _257 + _254 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _318 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_318] = bool(ext_call.success)
                    mem[_318 + 32] = 96
                    if idx >= mem[_85]:
                        revert with 0, 50
                    mem[(32 * idx) + _85 + 32] = _318
                else:
                    _315 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_315] = return_data.size
                    mem[_315 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _321 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_321] = bool(ext_call.success)
                    mem[_321 + 32] = _315
                    if idx >= mem[_85]:
                        revert with 0, 50
                    mem[(32 * idx) + _85 + 32] = _321
            else:
                mem[_254 + _257] = 0
                call address(_249).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _257 + _254 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _326 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_326] = bool(ext_call.success)
                    mem[_326 + 32] = 96
                    if idx >= mem[_85]:
                        revert with 0, 50
                    mem[(32 * idx) + _85 + 32] = _326
                else:
                    _317 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_317] = return_data.size
                    mem[_317 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _329 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_329] = bool(ext_call.success)
                    mem[_329 + 32] = _317
                    if idx >= mem[_85]:
                        revert with 0, 50
                    mem[(32 * idx) + _85 + 32] = _329
            if idx == -1:
                revert with 0, 17
            _241 = mem[96]
            idx = idx + 1
            continue 
        _256 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _262 = mem[_85]
        mem[mem[64] + 96] = mem[_85]
        idx = 0
        s = _85 + 32
        t = mem[64] + (32 * _262) + 128
        u = mem[64] + 128
        while idx < _262:
            mem[u] = t + -_256 - 128
            _307 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _309 = mem[_307 + 32]
            mem[t + 32] = 64
            _311 = mem[_309]
            mem[t + 64] = mem[_309]
            v = 0
            while v < _311:
                mem[v + t + 96] = mem[v + _309 + 32]
                v = v + 32
                continue 
            if ceil32(_311) > _311:
                mem[t + _311 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_311) + t + 96
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
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg2.length) + 97
    mem[96] = arg2.length
    require (32 * arg2.length) + arg2 + 36 <= calldata.size
    s = 128
    idx = arg2 + 36
    while idx < (32 * arg2.length) + arg2 + 36:
        require cd[idx] <= test266151307()
        require 64 <= calldata.size + -arg2 + -cd[idx] - 36
        _100 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[(arg2 + cd[idx] + 36)] == address(cd[(arg2 + cd[idx] + 36)])
        mem[_100] = cd[(arg2 + cd[idx] + 36)]
        require cd[(arg2 + cd[idx] + 68)] <= test266151307()
        require arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 67 < calldata.size
        if cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)] > test266151307():
            revert with 0, 65
        _126 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)])) + 1
        mem[_126] = cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)]
        require arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)] + 68 <= calldata.size
        mem[_126 + 32 len cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)]] = call.data[arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 68 len cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)]]
        mem[_126 + cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)] + 32] = 0
        mem[_100 + 32] = _126
        mem[s] = _100
        s = s + 32
        idx = idx + 32
        continue 
    _99 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _101 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _99) + 32
    if not _99:
        _196 = mem[96]
        idx = 0
        while idx < _196:
            if idx >= mem[96]:
                revert with 0, 50
            _201 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _204 = mem[mem[(32 * idx) + 128] + 32]
            _205 = mem[64]
            _208 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _208:
                mem[s + _205] = mem[s + _204 + 32]
                _196 = mem[96]
                s = s + 32
                continue 
            if ceil32(_208) <= _208:
                call address(_201).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _208 + _205 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _314 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_314] = bool(ext_call.success)
                        mem[_314 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _314
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _320 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_320] = bool(ext_call.success)
                        mem[_320 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _320
                else:
                    _308 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_308] = return_data.size
                    mem[_308 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _316 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_316] = bool(ext_call.success)
                        mem[_316 + 32] = _308
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _316
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _323 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_323] = bool(ext_call.success)
                        mem[_323 + 32] = _308
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _323
            else:
                mem[_205 + _208] = 0
                call address(_201).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _208 + _205 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _326 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_326] = bool(ext_call.success)
                        mem[_326 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _326
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _333 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_333] = bool(ext_call.success)
                        mem[_333 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _333
                else:
                    _310 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_310] = return_data.size
                    mem[_310 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _328 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_328] = bool(ext_call.success)
                        mem[_328 + 32] = _310
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _328
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _336 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_336] = bool(ext_call.success)
                        mem[_336 + 32] = _310
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _336
            if idx == -1:
                revert with 0, 17
            _196 = mem[96]
            idx = idx + 1
            continue 
        _199 = mem[64]
        mem[mem[64]] = 32
        _207 = mem[_101]
        mem[mem[64] + 32] = mem[_101]
        idx = 0
        s = _101 + 32
        t = mem[64] + (32 * _207) + 64
        u = mem[64] + 64
        while idx < _207:
            mem[u] = t + -_199 - 64
            _290 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _292 = mem[_290 + 32]
            mem[t + 32] = 64
            _295 = mem[_292]
            mem[t + 64] = mem[_292]
            v = 0
            while v < _295:
                mem[v + t + 96] = mem[v + _292 + 32]
                v = v + 32
                continue 
            if ceil32(_295) > _295:
                mem[t + _295 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_295) + t + 96
            u = u + 32
            continue 
    else:
        mem[64] = _101 + (32 * _99) + 96
        mem[_101 + (32 * _99) + 32] = 0
        mem[_101 + (32 * _99) + 64] = 96
        mem[_101 + 32] = _101 + (32 * _99) + 32
        s = _101 + 32
        idx = _99
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_101 + (32 * _99) + 32] = 0
            mem[_101 + (32 * _99) + 64] = 96
            mem[s + 32] = _101 + (32 * _99) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _289 = mem[96]
        idx = 0
        while idx < _289:
            if idx >= mem[96]:
                revert with 0, 50
            _298 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _302 = mem[mem[(32 * idx) + 128] + 32]
            _303 = mem[64]
            _306 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _306:
                mem[s + _303] = mem[s + _302 + 32]
                _289 = mem[96]
                s = s + 32
                continue 
            if ceil32(_306) <= _306:
                call address(_298).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _306 + _303 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _382 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_382] = bool(ext_call.success)
                        mem[_382 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _382
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _386 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_386] = bool(ext_call.success)
                        mem[_386 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _386
                else:
                    _379 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_379] = return_data.size
                    mem[_379 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _384 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_384] = bool(ext_call.success)
                        mem[_384 + 32] = _379
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _384
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _389 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_389] = bool(ext_call.success)
                        mem[_389 + 32] = _379
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _389
            else:
                mem[_303 + _306] = 0
                call address(_298).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _306 + _303 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _392 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_392] = bool(ext_call.success)
                        mem[_392 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _392
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _398 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_398] = bool(ext_call.success)
                        mem[_398 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _398
                else:
                    _381 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_381] = return_data.size
                    mem[_381 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _394 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_394] = bool(ext_call.success)
                        mem[_394 + 32] = _381
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _394
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _401 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_401] = bool(ext_call.success)
                        mem[_401 + 32] = _381
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _401
            if idx == -1:
                revert with 0, 17
            _289 = mem[96]
            idx = idx + 1
            continue 
        _296 = mem[64]
        mem[mem[64]] = 32
        _305 = mem[_101]
        mem[mem[64] + 32] = mem[_101]
        idx = 0
        s = _101 + 32
        t = mem[64] + (32 * _305) + 64
        u = mem[64] + 64
        while idx < _305:
            mem[u] = t + -_296 - 64
            _371 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _373 = mem[_371 + 32]
            mem[t + 32] = 64
            _375 = mem[_373]
            mem[t + 64] = mem[_373]
            v = 0
            while v < _375:
                mem[v + t + 96] = mem[v + _373 + 32]
                v = v + 32
                continue 
            if ceil32(_375) > _375:
                mem[t + _375 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_375) + t + 96
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
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 < 96 or ceil32(32 * arg2.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg2.length) + 97
    mem[96] = arg2.length
    require (32 * arg2.length) + arg2 + 36 <= calldata.size
    s = 128
    idx = arg2 + 36
    while idx < (32 * arg2.length) + arg2 + 36:
        require cd[idx] <= test266151307()
        require 64 <= calldata.size + -arg2 + -cd[idx] - 36
        _99 = mem[64]
        if mem[64] + 64 < mem[64] or mem[64] + 64 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 64
        require cd[(arg2 + cd[idx] + 36)] == address(cd[(arg2 + cd[idx] + 36)])
        mem[_99] = cd[(arg2 + cd[idx] + 36)]
        require cd[(arg2 + cd[idx] + 68)] <= test266151307()
        require arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 67 < calldata.size
        if cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)] > test266151307():
            revert with 0, 65
        _119 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)])) + 1
        mem[_119] = cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)]
        require arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)] + 68 <= calldata.size
        mem[_119 + 32 len cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)]] = call.data[arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 68 len cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)]]
        mem[_119 + cd[(arg2 + cd[idx] + cd[(arg2 + cd[idx] + 68)] + 36)] + 32] = 0
        mem[_99 + 32] = _119
        mem[s] = _99
        s = s + 32
        idx = idx + 32
        continue 
    _100 = mem[96]
    if mem[96] > test266151307():
        revert with 0, 65
    _101 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _100) + 32
    if not _100:
        _196 = mem[96]
        idx = 0
        while idx < _196:
            if idx >= mem[96]:
                revert with 0, 50
            _200 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
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
                call address(_200).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _207 + _205 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _311 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_311] = bool(ext_call.success)
                        mem[_311 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _311
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _319 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_319] = bool(ext_call.success)
                        mem[_319 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _319
                else:
                    _307 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_307] = return_data.size
                    mem[_307 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _313 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_313] = bool(ext_call.success)
                        mem[_313 + 32] = _307
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _313
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _322 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_322] = bool(ext_call.success)
                        mem[_322 + 32] = _307
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _322
            else:
                mem[_205 + _207] = 0
                call address(_200).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _207 + _205 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _325 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_325] = bool(ext_call.success)
                        mem[_325 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _325
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _332 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_332] = bool(ext_call.success)
                        mem[_332 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _332
                else:
                    _310 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_310] = return_data.size
                    mem[_310 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _327 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_327] = bool(ext_call.success)
                        mem[_327 + 32] = _310
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _327
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _335 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_335] = bool(ext_call.success)
                        mem[_335 + 32] = _310
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _335
            if idx == -1:
                revert with 0, 17
            _196 = mem[96]
            idx = idx + 1
            continue 
        _202 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _209 = mem[_101]
        mem[mem[64] + 96] = mem[_101]
        idx = 0
        s = _101 + 32
        t = mem[64] + (32 * _209) + 128
        u = mem[64] + 128
        while idx < _209:
            mem[u] = t + -_202 - 128
            _290 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _292 = mem[_290 + 32]
            mem[t + 32] = 64
            _295 = mem[_292]
            mem[t + 64] = mem[_292]
            v = 0
            while v < _295:
                mem[v + t + 96] = mem[v + _292 + 32]
                v = v + 32
                continue 
            if ceil32(_295) > _295:
                mem[t + _295 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_295) + t + 96
            u = u + 32
            continue 
    else:
        mem[64] = _101 + (32 * _100) + 96
        mem[_101 + (32 * _100) + 32] = 0
        mem[_101 + (32 * _100) + 64] = 96
        mem[_101 + 32] = _101 + (32 * _100) + 32
        s = _101 + 32
        idx = _100
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_101 + (32 * _100) + 32] = 0
            mem[_101 + (32 * _100) + 64] = 96
            mem[s + 32] = _101 + (32 * _100) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _289 = mem[96]
        idx = 0
        while idx < _289:
            if idx >= mem[96]:
                revert with 0, 50
            _297 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _302 = mem[mem[(32 * idx) + 128] + 32]
            _303 = mem[64]
            _305 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _305:
                mem[s + _303] = mem[s + _302 + 32]
                _289 = mem[96]
                s = s + 32
                continue 
            if ceil32(_305) <= _305:
                call address(_297).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _305 + _303 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _382 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_382] = bool(ext_call.success)
                        mem[_382 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _382
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _386 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_386] = bool(ext_call.success)
                        mem[_386 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _386
                else:
                    _379 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_379] = return_data.size
                    mem[_379 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _384 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_384] = bool(ext_call.success)
                        mem[_384 + 32] = _379
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _384
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _389 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_389] = bool(ext_call.success)
                        mem[_389 + 32] = _379
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _389
            else:
                mem[_303 + _305] = 0
                call address(_297).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _305 + _303 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _392 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_392] = bool(ext_call.success)
                        mem[_392 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _392
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _398 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_398] = bool(ext_call.success)
                        mem[_398 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _398
                else:
                    _381 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_381] = return_data.size
                    mem[_381 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _394 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_394] = bool(ext_call.success)
                        mem[_394 + 32] = _381
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _394
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _401 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_401] = bool(ext_call.success)
                        mem[_401 + 32] = _381
                        if idx >= mem[_101]:
                            revert with 0, 50
                        mem[(32 * idx) + _101 + 32] = _401
            if idx == -1:
                revert with 0, 17
            _289 = mem[96]
            idx = idx + 1
            continue 
        _300 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _309 = mem[_101]
        mem[mem[64] + 96] = mem[_101]
        idx = 0
        s = _101 + 32
        t = mem[64] + (32 * _309) + 128
        u = mem[64] + 128
        while idx < _309:
            mem[u] = t + -_300 - 128
            _371 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _373 = mem[_371 + 32]
            mem[t + 32] = 64
            _375 = mem[_373]
            mem[t + 64] = mem[_373]
            v = 0
            while v < _375:
                mem[v + t + 96] = mem[v + _373 + 32]
                v = v + 32
                continue 
            if ceil32(_375) > _375:
                mem[t + _375 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_375) + t + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
