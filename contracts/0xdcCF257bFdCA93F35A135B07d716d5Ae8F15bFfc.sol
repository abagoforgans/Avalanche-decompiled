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
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 64
        _71 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_71] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        if cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _127 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)])) + 1
        mem[_127] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_127 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[_127 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_71 + 32] = _127
        mem[t] = _71
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _70 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _72 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _70) + 32
    if not _70:
        _138 = mem[96]
        idx = 0
        while idx < _138:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _142 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _145 = mem[mem[(32 * idx) + 128] + 32]
            _146 = mem[64]
            _153 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _153:
                mem[_146 + s] = mem[_145 + s + 32]
                _138 = mem[96]
                s = s + 32
                continue 
            if ceil32(_153) <= _153:
                call address(_142).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _146 + _153 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _72 + 32] = 96
                else:
                    _216 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_216] = return_data.size
                    mem[_216 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _72 + 32] = _216
            else:
                mem[_146 + _153] = 0
                call address(_142).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _146 + _153 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _72 + 32] = 96
                else:
                    _219 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_219] = return_data.size
                    mem[_219 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _72 + 32] = _219
            if idx == -1:
                revert with 'NH{q', 17
            _138 = mem[96]
            idx = idx + 1
            continue 
        _140 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _157 = mem[_72]
        mem[mem[64] + 64] = mem[_72]
        idx = 0
        s = _72 + 32
        t = mem[64] + (32 * _157) + 96
        u = mem[64] + 96
        while idx < _157:
            mem[u] = t + -_140 - 96
            _203 = mem[s]
            _214 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _214:
                mem[t + v + 32] = mem[_203 + v + 32]
                v = v + 32
                continue 
            if ceil32(_214) > _214:
                mem[t + _214 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_214) + 32
            u = u + 32
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
                revert with 'NH{q', 50
            _208 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _212 = mem[mem[(32 * idx) + 128] + 32]
            _213 = mem[64]
            _218 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _218:
                mem[_213 + s] = mem[_212 + s + 32]
                _202 = mem[96]
                s = s + 32
                continue 
            if ceil32(_218) <= _218:
                call address(_208).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _213 + _218 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _72 + 32] = 96
                else:
                    _261 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_261] = return_data.size
                    mem[_261 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _72 + 32] = _261
            else:
                mem[_213 + _218] = 0
                call address(_208).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _213 + _218 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _72 + 32] = 96
                else:
                    _263 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_263] = return_data.size
                    mem[_263 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall aggregate: call failed'
                    if idx >= mem[_72]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _72 + 32] = _263
            if idx == -1:
                revert with 'NH{q', 17
            _202 = mem[96]
            idx = idx + 1
            continue 
        _206 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _228 = mem[_72]
        mem[mem[64] + 64] = mem[_72]
        idx = 0
        s = _72 + 32
        t = mem[64] + (32 * _228) + 96
        u = mem[64] + 96
        while idx < _228:
            mem[u] = t + -_206 - 96
            _256 = mem[s]
            _259 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _259:
                mem[t + v + 32] = mem[_256 + v + 32]
                v = v + 32
                continue 
            if ceil32(_259) > _259:
                mem[t + _259 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_259) + 32
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function blockAndAggregate(address arg1, bytes[] arg2) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require calldata.size + -arg1 + -cd[s] - 36 >= 64
        _83 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_83] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        if cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _131 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)])) + 1
        mem[_131] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_131 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[_131 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_83 + 32] = _131
        mem[t] = _83
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _84 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _85 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _84) + 32
    if not _84:
        _164 = mem[96]
        idx = 0
        while idx < _164:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _168 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _171 = mem[mem[(32 * idx) + 128] + 32]
            _172 = mem[64]
            _175 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _175:
                mem[_172 + s] = mem[_171 + s + 32]
                _164 = mem[96]
                s = s + 32
                continue 
            if ceil32(_175) <= _175:
                call address(_168).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _172 + _175 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _263 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_263] = bool(ext_call.success)
                    mem[_263 + 32] = 96
                    if idx >= mem[_85]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _85 + 32] = _263
                else:
                    _249 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_249] = return_data.size
                    mem[_249 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _265 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_265] = bool(ext_call.success)
                    mem[_265 + 32] = _249
                    if idx >= mem[_85]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _85 + 32] = _265
            else:
                mem[_172 + _175] = 0
                call address(_168).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _172 + _175 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _270 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_270] = bool(ext_call.success)
                    mem[_270 + 32] = 96
                    if idx >= mem[_85]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _85 + 32] = _270
                else:
                    _255 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_255] = return_data.size
                    mem[_255 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _272 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_272] = bool(ext_call.success)
                    mem[_272 + 32] = _255
                    if idx >= mem[_85]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _85 + 32] = _272
            if idx == -1:
                revert with 'NH{q', 17
            _164 = mem[96]
            idx = idx + 1
            continue 
        _173 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _186 = mem[_85]
        mem[mem[64] + 96] = mem[_85]
        idx = 0
        s = _85 + 32
        t = mem[64] + (32 * _186) + 128
        u = mem[64] + 128
        while idx < _186:
            mem[u] = t + -_173 - 128
            _242 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _254 = mem[_242 + 32]
            mem[t + 32] = 64
            _260 = mem[_254]
            mem[t + 64] = mem[_254]
            v = 0
            while v < _260:
                mem[t + v + 96] = mem[_254 + v + 32]
                v = v + 32
                continue 
            if ceil32(_260) > _260:
                mem[t + _260 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_260) + 96
            u = u + 32
            continue 
    else:
        mem[64] = _85 + (32 * _84) + 96
        mem[_85 + (32 * _84) + 32] = 0
        mem[_85 + (32 * _84) + 64] = 96
        mem[var34001] = _85 + (32 * _84) + 32
        s = var34001
        idx = var34002
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
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _311 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _314 = mem[mem[(32 * idx) + 128] + 32]
            _315 = mem[64]
            _317 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _317:
                mem[_315 + s] = mem[_314 + s + 32]
                _307 = mem[96]
                s = s + 32
                continue 
            if ceil32(_317) <= _317:
                call address(_311).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _315 + _317 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _358 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_358] = bool(ext_call.success)
                    mem[_358 + 32] = 96
                    if idx >= mem[_85]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _85 + 32] = _358
                else:
                    _351 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_351] = return_data.size
                    mem[_351 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _360 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_360] = bool(ext_call.success)
                    mem[_360 + 32] = _351
                    if idx >= mem[_85]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _85 + 32] = _360
            else:
                mem[_315 + _317] = 0
                call address(_311).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _315 + _317 + -mem[64] - 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _364 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_364] = bool(ext_call.success)
                    mem[_364 + 32] = 96
                    if idx >= mem[_85]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _85 + 32] = _364
                else:
                    _354 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_354] = return_data.size
                    mem[_354 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'Multicall2 aggregate: call failed'
                    _366 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_366] = bool(ext_call.success)
                    mem[_366 + 32] = _354
                    if idx >= mem[_85]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _85 + 32] = _366
            if idx == -1:
                revert with 'NH{q', 17
            _307 = mem[96]
            idx = idx + 1
            continue 
        _316 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _319 = mem[_85]
        mem[mem[64] + 96] = mem[_85]
        idx = 0
        s = _85 + 32
        t = mem[64] + (32 * _319) + 128
        u = mem[64] + 128
        while idx < _319:
            mem[u] = t + -_316 - 128
            _346 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _353 = mem[_346 + 32]
            mem[t + 32] = 64
            _355 = mem[_353]
            mem[t + 64] = mem[_353]
            v = 0
            while v < _355:
                mem[t + v + 96] = mem[_353 + v + 32]
                v = v + 32
                continue 
            if ceil32(_355) > _355:
                mem[t + _355 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_355) + 96
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
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + 97
    mem[96] = arg2.length
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require calldata.size + -arg2 + -cd[s] - 36 >= 64
        _100 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(arg2 + cd[s] + 36)] == address(cd[(arg2 + cd[s] + 36)])
        mem[_100] = cd[(arg2 + cd[s] + 36)]
        require cd[(arg2 + cd[s] + 68)] <= test266151307()
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 67 < calldata.size
        if cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _168 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)])) + 1
        mem[_168] = cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_168 + 32 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]] = call.data[arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 68 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]]
        mem[_168 + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_100 + 32] = _168
        mem[t] = _100
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _99 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _101 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _99) + 32
    if not _99:
        _196 = mem[96]
        idx = 0
        while idx < _196:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _201 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _204 = mem[mem[(32 * idx) + 128] + 32]
            _205 = mem[64]
            _208 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _208:
                mem[_205 + s] = mem[_204 + s + 32]
                _196 = mem[96]
                s = s + 32
                continue 
            if ceil32(_208) <= _208:
                call address(_201).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _205 + _208 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _308 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_308] = bool(ext_call.success)
                        mem[_308 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _308
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _320 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_320] = bool(ext_call.success)
                        mem[_320 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _320
                else:
                    _297 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_297] = return_data.size
                    mem[_297 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _310 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_310] = bool(ext_call.success)
                        mem[_310 + 32] = _297
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _310
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _322 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_322] = bool(ext_call.success)
                        mem[_322 + 32] = _297
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _322
            else:
                mem[_205 + _208] = 0
                call address(_201).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _205 + _208 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _315 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_315] = bool(ext_call.success)
                        mem[_315 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _315
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _327 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_327] = bool(ext_call.success)
                        mem[_327 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _327
                else:
                    _304 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_304] = return_data.size
                    mem[_304 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _317 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_317] = bool(ext_call.success)
                        mem[_317 + 32] = _304
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _317
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _329 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_329] = bool(ext_call.success)
                        mem[_329 + 32] = _304
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _329
            if idx == -1:
                revert with 'NH{q', 17
            _196 = mem[96]
            idx = idx + 1
            continue 
        _199 = mem[64]
        mem[mem[64]] = 32
        _206 = mem[_101]
        mem[mem[64] + 32] = mem[_101]
        s = 0
        t = _101 + 32
        u = mem[64] + (32 * _206) + 64
        v = mem[64] + 64
        while s < _206:
            mem[v] = u + -_199 - 64
            _290 = mem[t]
            mem[u] = bool(mem[mem[t]])
            _303 = mem[_290 + 32]
            mem[u + 32] = 64
            _312 = mem[_303]
            mem[u + 64] = mem[_303]
            w = 0
            while w < _312:
                mem[u + w + 96] = mem[_303 + w + 32]
                w = w + 32
                continue 
            if ceil32(_312) > _312:
                mem[u + _312 + 96] = 0
            s = s + 1
            t = t + 32
            u = u + ceil32(_312) + 96
            v = v + 32
            continue 
    else:
        mem[64] = _101 + (32 * _99) + 96
        mem[_101 + (32 * _99) + 32] = 0
        mem[_101 + (32 * _99) + 64] = 96
        mem[var39001] = _101 + (32 * _99) + 32
        s = var39001
        idx = var39002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_101 + (32 * _99) + 32] = 0
            mem[_101 + (32 * _99) + 64] = 96
            mem[s + 32] = _101 + (32 * _99) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _371 = mem[96]
        idx = 0
        while idx < _371:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _376 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _379 = mem[mem[(32 * idx) + 128] + 32]
            _380 = mem[64]
            _382 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _382:
                mem[_380 + s] = mem[_379 + s + 32]
                _371 = mem[96]
                s = s + 32
                continue 
            if ceil32(_382) <= _382:
                call address(_376).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _380 + _382 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _427 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_427] = bool(ext_call.success)
                        mem[_427 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _427
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _438 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_438] = bool(ext_call.success)
                        mem[_438 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _438
                else:
                    _423 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_423] = return_data.size
                    mem[_423 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _429 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_429] = bool(ext_call.success)
                        mem[_429 + 32] = _423
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _429
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _440 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_440] = bool(ext_call.success)
                        mem[_440 + 32] = _423
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _440
            else:
                mem[_380 + _382] = 0
                call address(_376).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _380 + _382 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _434 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_434] = bool(ext_call.success)
                        mem[_434 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _434
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _444 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_444] = bool(ext_call.success)
                        mem[_444 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _444
                else:
                    _426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_426] = return_data.size
                    mem[_426 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _436 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_436] = bool(ext_call.success)
                        mem[_436 + 32] = _426
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _436
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _446 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_446] = bool(ext_call.success)
                        mem[_446 + 32] = _426
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _446
            if idx == -1:
                revert with 'NH{q', 17
            _371 = mem[96]
            idx = idx + 1
            continue 
        _374 = mem[64]
        mem[mem[64]] = 32
        _381 = mem[_101]
        mem[mem[64] + 32] = mem[_101]
        s = 0
        t = _101 + 32
        u = mem[64] + (32 * _381) + 64
        v = mem[64] + 64
        while s < _381:
            mem[v] = u + -_374 - 64
            _418 = mem[t]
            mem[u] = bool(mem[mem[t]])
            _425 = mem[_418 + 32]
            mem[u + 32] = 64
            _431 = mem[_425]
            mem[u + 64] = mem[_425]
            w = 0
            while w < _431:
                mem[u + w + 96] = mem[_425 + w + 32]
                w = w + 32
                continue 
            if ceil32(_431) > _431:
                mem[u + _431 + 96] = 0
            s = s + 1
            t = t + 32
            u = u + ceil32(_431) + 96
            v = v + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function tryBlockAndAggregate(bool arg1, address arg2, bytes[] arg3) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg2.length) + 97 > test266151307() or floor32(arg2.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg2.length) + 97
    mem[96] = arg2.length
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require calldata.size + -arg2 + -cd[s] - 36 >= 64
        _99 = mem[64]
        if mem[64] + 64 > test266151307() or mem[64] + 64 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 64
        require cd[(arg2 + cd[s] + 36)] == address(cd[(arg2 + cd[s] + 36)])
        mem[_99] = cd[(arg2 + cd[s] + 36)]
        require cd[(arg2 + cd[s] + 68)] <= test266151307()
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 67 < calldata.size
        if cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] > test266151307():
            revert with 'NH{q', 65
        _158 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)])) + 1 > test266151307() or mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)])) + 1 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)])) + 1
        mem[_158] = cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]
        require arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_158 + 32 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]] = call.data[arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 68 len cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)]]
        mem[_158 + cd[(arg2 + cd[s] + cd[(arg2 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_99 + 32] = _158
        mem[t] = _99
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _100 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _101 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _100) + 32
    if not _100:
        _196 = mem[96]
        idx = 0
        while idx < _196:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _200 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _204 = mem[mem[(32 * idx) + 128] + 32]
            _205 = mem[64]
            _207 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _207:
                mem[_205 + s] = mem[_204 + s + 32]
                _196 = mem[96]
                s = s + 32
                continue 
            if ceil32(_207) <= _207:
                call address(_200).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _205 + _207 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _308 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_308] = bool(ext_call.success)
                        mem[_308 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _308
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _319 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_319] = bool(ext_call.success)
                        mem[_319 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _319
                else:
                    _297 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_297] = return_data.size
                    mem[_297 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _310 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_310] = bool(ext_call.success)
                        mem[_310 + 32] = _297
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _310
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _321 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_321] = bool(ext_call.success)
                        mem[_321 + 32] = _297
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _321
            else:
                mem[_205 + _207] = 0
                call address(_200).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _205 + _207 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _315 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_315] = bool(ext_call.success)
                        mem[_315 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _315
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _326 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_326] = bool(ext_call.success)
                        mem[_326 + 32] = 96
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _326
                else:
                    _303 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_303] = return_data.size
                    mem[_303 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _317 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_317] = bool(ext_call.success)
                        mem[_317 + 32] = _303
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _317
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _328 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_328] = bool(ext_call.success)
                        mem[_328 + 32] = _303
                        if idx >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _101 + 32] = _328
            if idx == -1:
                revert with 'NH{q', 17
            _196 = mem[96]
            idx = idx + 1
            continue 
        _202 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _218 = mem[_101]
        mem[mem[64] + 96] = mem[_101]
        idx = 0
        s = _101 + 32
        t = mem[64] + (32 * _218) + 128
        u = mem[64] + 128
        while idx < _218:
            mem[u] = t + -_202 - 128
            _290 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _302 = mem[_290 + 32]
            mem[t + 32] = 64
            _312 = mem[_302]
            mem[t + 64] = mem[_302]
            v = 0
            while v < _312:
                mem[t + v + 96] = mem[_302 + v + 32]
                v = v + 32
                continue 
            if ceil32(_312) > _312:
                mem[t + _312 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_312) + 96
            u = u + 32
            continue 
    else:
        mem[64] = _101 + (32 * _100) + 96
        mem[_101 + (32 * _100) + 32] = 0
        mem[_101 + (32 * _100) + 64] = 96
        mem[var40001] = _101 + (32 * _100) + 32
        s = var40001
        idx = var40002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_101 + (32 * _100) + 32] = 0
            mem[_101 + (32 * _100) + 64] = 96
            mem[s + 32] = _101 + (32 * _100) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _371 = mem[96]
        s = 0
        while arg2.length < _371:
            if arg2.length >= mem[96]:
                revert with 'NH{q', 50
            _375 = mem[mem[(32 * arg2.length) + 128]]
            if arg2.length >= mem[96]:
                revert with 'NH{q', 50
            _379 = mem[mem[(32 * arg2.length) + 128] + 32]
            _380 = mem[64]
            _381 = mem[mem[mem[(32 * arg2.length) + 128] + 32]]
            idx = 0
            while idx < _381:
                mem[_380 + idx] = mem[_379 + idx + 32]
                _371 = mem[96]
                idx = idx + 32
                continue 
            if ceil32(_381) <= _381:
                call address(_375).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _380 + _381 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _427 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_427] = bool(ext_call.success)
                        mem[_427 + 32] = 96
                        if arg2.length >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * arg2.length) + _101 + 32] = _427
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _438 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_438] = bool(ext_call.success)
                        mem[_438 + 32] = 96
                        if arg2.length >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * arg2.length) + _101 + 32] = _438
                else:
                    _423 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_423] = return_data.size
                    mem[_423 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _429 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_429] = bool(ext_call.success)
                        mem[_429 + 32] = _423
                        if arg2.length >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * arg2.length) + _101 + 32] = _429
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _440 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_440] = bool(ext_call.success)
                        mem[_440 + 32] = _423
                        if arg2.length >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * arg2.length) + _101 + 32] = _440
            else:
                mem[_380 + _381] = 0
                call address(_375).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _380 + _381 + -mem[64] - 4]
                if not return_data.size:
                    if not arg1:
                        _434 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_434] = bool(ext_call.success)
                        mem[_434 + 32] = 96
                        if arg2.length >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * arg2.length) + _101 + 32] = _434
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _444 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_444] = bool(ext_call.success)
                        mem[_444 + 32] = 96
                        if arg2.length >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * arg2.length) + _101 + 32] = _444
                else:
                    _426 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_426] = return_data.size
                    mem[_426 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg1:
                        _436 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_436] = bool(ext_call.success)
                        mem[_436 + 32] = _426
                        if arg2.length >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * arg2.length) + _101 + 32] = _436
                    else:
                        if not ext_call.success:
                            revert with 0, 'Multicall2 aggregate: call failed'
                        _446 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_446] = bool(ext_call.success)
                        mem[_446 + 32] = _426
                        if arg2.length >= mem[_101]:
                            revert with 'NH{q', 50
                        mem[(32 * arg2.length) + _101 + 32] = _446
            if arg2.length == -1:
                revert with 'NH{q', 17
            _371 = mem[96]
            s = arg2.length + 1
            continue 
        _377 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = block.hash(block.number)
        mem[mem[64] + 64] = 96
        _383 = mem[_101]
        mem[mem[64] + 96] = mem[_101]
        idx = 0
        s = _101 + 32
        t = mem[64] + (32 * _383) + 128
        u = mem[64] + 128
        while idx < _383:
            mem[u] = t + -_377 - 128
            _418 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _425 = mem[_418 + 32]
            mem[t + 32] = 64
            _431 = mem[_425]
            mem[t + 64] = mem[_425]
            v = 0
            while v < _431:
                mem[t + v + 96] = mem[_425 + v + 32]
                v = v + 32
                continue 
            if ceil32(_431) > _431:
                mem[t + _431 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_431) + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
