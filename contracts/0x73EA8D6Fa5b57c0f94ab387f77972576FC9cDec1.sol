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
        _102 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_102] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] <= test266151307()
        _118 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32
        mem[_118] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_118 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[_118 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_102 + 32] = _118
        mem[t] = _102
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _103 = mem[96]
    require mem[96] <= test266151307()
    _104 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _103) + 32
    if not _103:
        _202 = mem[96]
        idx = 0
        while idx < _202:
            require idx < mem[96]
            _206 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _210 = mem[mem[(32 * idx) + 128] + 32]
            _211 = mem[64]
            _213 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _213:
                mem[s + _211] = mem[s + _210 + 32]
                _202 = mem[96]
                s = s + 32
                continue 
            if ceil32(_213) <= _213:
                call address(_206).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _213 + _211 + -mem[64] - 4]
                if not return_data.size:
                    _319 = mem[64]
                    mem[mem[64] + 32] = bool(ext_call.success) << 248
                    _323 = mem[96]
                    s = 0
                    while s < _323:
                        mem[s + _319 + 33] = mem[s + 128]
                        _202 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_323) <= _323:
                        _392 = mem[64]
                        mem[mem[64]] = _323 + _319 + -mem[64] + 1
                        mem[64] = _323 + _319 + 33
                        require idx < mem[_104]
                        mem[(32 * idx) + _104 + 32] = _392
                    else:
                        mem[_319 + _323 + 33] = 0
                        _402 = mem[64]
                        mem[mem[64]] = _323 + _319 + -mem[64] + 1
                        mem[64] = _323 + _319 + 33
                        require idx < mem[_104]
                        mem[(32 * idx) + _104 + 32] = _402
                else:
                    _315 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_315] = return_data.size
                    mem[_315 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _320 = mem[64]
                    mem[mem[64] + 32] = bool(ext_call.success) << 248
                    s = 0
                    while s < return_data.size:
                        mem[s + _320 + 33] = mem[s + _315 + 32]
                        _202 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(return_data.size) <= return_data.size:
                        _394 = mem[64]
                        mem[mem[64]] = return_data.size + _320 + -mem[64] + 1
                        mem[64] = return_data.size + _320 + 33
                        require idx < mem[_104]
                        mem[(32 * idx) + _104 + 32] = _394
                    else:
                        mem[_320 + return_data.size + 33] = 0
                        _404 = mem[64]
                        mem[mem[64]] = return_data.size + _320 + -mem[64] + 1
                        mem[64] = return_data.size + _320 + 33
                        require idx < mem[_104]
                        mem[(32 * idx) + _104 + 32] = _404
            else:
                mem[_211 + _213] = 0
                call address(_206).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _213 + _211 + -mem[64] - 4]
                if not return_data.size:
                    _325 = mem[64]
                    mem[mem[64] + 32] = bool(ext_call.success) << 248
                    _328 = mem[96]
                    s = 0
                    while s < _328:
                        mem[s + _325 + 33] = mem[s + 128]
                        _202 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_328) <= _328:
                        _396 = mem[64]
                        mem[mem[64]] = _328 + _325 + -mem[64] + 1
                        mem[64] = _328 + _325 + 33
                        require idx < mem[_104]
                        mem[(32 * idx) + _104 + 32] = _396
                    else:
                        mem[_325 + _328 + 33] = 0
                        _406 = mem[64]
                        mem[mem[64]] = _328 + _325 + -mem[64] + 1
                        mem[64] = _328 + _325 + 33
                        require idx < mem[_104]
                        mem[(32 * idx) + _104 + 32] = _406
                else:
                    _321 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_321] = return_data.size
                    mem[_321 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _326 = mem[64]
                    mem[mem[64] + 32] = bool(ext_call.success) << 248
                    s = 0
                    while s < return_data.size:
                        mem[s + _326 + 33] = mem[s + _321 + 32]
                        _202 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(return_data.size) <= return_data.size:
                        _398 = mem[64]
                        mem[mem[64]] = return_data.size + _326 + -mem[64] + 1
                        mem[64] = return_data.size + _326 + 33
                        require idx < mem[_104]
                        mem[(32 * idx) + _104 + 32] = _398
                    else:
                        mem[_326 + return_data.size + 33] = 0
                        _408 = mem[64]
                        mem[mem[64]] = return_data.size + _326 + -mem[64] + 1
                        mem[64] = return_data.size + _326 + 33
                        require idx < mem[_104]
                        mem[(32 * idx) + _104 + 32] = _408
            _202 = mem[96]
            idx = idx + 1
            continue 
        _204 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _208 = mem[_104]
        mem[mem[64] + 64] = mem[_104]
        idx = 0
        s = _104 + 32
        t = mem[64] + 96
        u = mem[64] + (32 * _208) + 96
        while idx < _208:
            mem[t] = u + -_204 - 96
            _299 = mem[s]
            _300 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _300:
                mem[v + u + 32] = mem[v + _299 + 32]
                v = v + 32
                continue 
            if ceil32(_300) > _300:
                mem[u + _300 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_300) + u + 32
            continue 
    else:
        mem[_104 + 32] = 96
        s = _104 + 32
        idx = _103
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _298 = mem[96]
        idx = 0
        while idx < _298:
            require idx < mem[96]
            _306 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _310 = mem[mem[(32 * idx) + 128] + 32]
            _311 = mem[64]
            _314 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _314:
                mem[s + _311] = mem[s + _310 + 32]
                _298 = mem[96]
                s = s + 32
                continue 
            if ceil32(_314) <= _314:
                call address(_306).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _314 + _311 + -mem[64] - 4]
                if not return_data.size:
                    _412 = mem[64]
                    mem[mem[64] + 32] = bool(ext_call.success) << 248
                    _415 = mem[96]
                    s = 0
                    while s < _415:
                        mem[s + _412 + 33] = mem[s + 128]
                        _298 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_415) <= _415:
                        _446 = mem[64]
                        mem[mem[64]] = _415 + _412 + -mem[64] + 1
                        mem[64] = _415 + _412 + 33
                        require idx < mem[_104]
                        mem[(32 * idx) + _104 + 32] = _446
                    else:
                        mem[_412 + _415 + 33] = 0
                        _454 = mem[64]
                        mem[mem[64]] = _415 + _412 + -mem[64] + 1
                        mem[64] = _415 + _412 + 33
                        require idx < mem[_104]
                        mem[(32 * idx) + _104 + 32] = _454
                else:
                    _410 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_410] = return_data.size
                    mem[_410 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _413 = mem[64]
                    mem[mem[64] + 32] = bool(ext_call.success) << 248
                    s = 0
                    while s < return_data.size:
                        mem[s + _413 + 33] = mem[s + _410 + 32]
                        _298 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(return_data.size) <= return_data.size:
                        _448 = mem[64]
                        mem[mem[64]] = return_data.size + _413 + -mem[64] + 1
                        mem[64] = return_data.size + _413 + 33
                        require idx < mem[_104]
                        mem[(32 * idx) + _104 + 32] = _448
                    else:
                        mem[_413 + return_data.size + 33] = 0
                        _456 = mem[64]
                        mem[mem[64]] = return_data.size + _413 + -mem[64] + 1
                        mem[64] = return_data.size + _413 + 33
                        require idx < mem[_104]
                        mem[(32 * idx) + _104 + 32] = _456
            else:
                mem[_311 + _314] = 0
                call address(_306).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _314 + _311 + -mem[64] - 4]
                if not return_data.size:
                    _417 = mem[64]
                    mem[mem[64] + 32] = bool(ext_call.success) << 248
                    _419 = mem[96]
                    s = 0
                    while s < _419:
                        mem[s + _417 + 33] = mem[s + 128]
                        _298 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_419) <= _419:
                        _450 = mem[64]
                        mem[mem[64]] = _419 + _417 + -mem[64] + 1
                        mem[64] = _419 + _417 + 33
                        require idx < mem[_104]
                        mem[(32 * idx) + _104 + 32] = _450
                    else:
                        mem[_417 + _419 + 33] = 0
                        _458 = mem[64]
                        mem[mem[64]] = _419 + _417 + -mem[64] + 1
                        mem[64] = _419 + _417 + 33
                        require idx < mem[_104]
                        mem[(32 * idx) + _104 + 32] = _458
                else:
                    _414 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_414] = return_data.size
                    mem[_414 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _418 = mem[64]
                    mem[mem[64] + 32] = bool(ext_call.success) << 248
                    s = 0
                    while s < return_data.size:
                        mem[s + _418 + 33] = mem[s + _414 + 32]
                        _298 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(return_data.size) <= return_data.size:
                        _452 = mem[64]
                        mem[mem[64]] = return_data.size + _418 + -mem[64] + 1
                        mem[64] = return_data.size + _418 + 33
                        require idx < mem[_104]
                        mem[(32 * idx) + _104 + 32] = _452
                    else:
                        mem[_418 + return_data.size + 33] = 0
                        _460 = mem[64]
                        mem[mem[64]] = return_data.size + _418 + -mem[64] + 1
                        mem[64] = return_data.size + _418 + 33
                        require idx < mem[_104]
                        mem[(32 * idx) + _104 + 32] = _460
            _298 = mem[96]
            idx = idx + 1
            continue 
        _304 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _308 = mem[_104]
        mem[mem[64] + 64] = mem[_104]
        idx = 0
        s = _104 + 32
        t = mem[64] + 96
        u = mem[64] + (32 * _308) + 96
        while idx < _308:
            mem[t] = u + -_304 - 96
            _388 = mem[s]
            _389 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _389:
                mem[v + u + 32] = mem[v + _388 + 32]
                v = v + 32
                continue 
            if ceil32(_389) > _389:
                mem[u + _389 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_389) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
