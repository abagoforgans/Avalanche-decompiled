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

function aggregate(address arg1, bytes[] arg2, bool arg3) payable {
    require calldata.size - 4 >= 64
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
        _98 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32
        mem[_98] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_98 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[_98 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_83 + 32] = _98
        mem[t] = _83
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 == bool(arg2)
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
            _169 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _173 = mem[mem[(32 * idx) + 128] + 32]
            _174 = mem[64]
            _175 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _175:
                mem[s + _174] = mem[s + _173 + 32]
                _164 = mem[96]
                s = s + 32
                continue 
            if ceil32(_175) <= _175:
                call address(_169).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _175 + _174 + -mem[64] - 4]
                if not return_data.size:
                    if not arg2:
                        _259 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_259] = bool(ext_call.success)
                        mem[_259 + 32] = 96
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _259
                    else:
                        require ext_call.success
                        _267 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_267] = bool(ext_call.success)
                        mem[_267 + 32] = 96
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _267
                else:
                    _250 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_250] = return_data.size
                    mem[_250 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _261 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_261] = bool(ext_call.success)
                        mem[_261 + 32] = _250
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _261
                    else:
                        require ext_call.success
                        _269 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_269] = bool(ext_call.success)
                        mem[_269 + 32] = _250
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _269
            else:
                mem[_174 + _175] = 0
                call address(_169).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _175 + _174 + -mem[64] - 4]
                if not return_data.size:
                    if not arg2:
                        _271 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_271] = bool(ext_call.success)
                        mem[_271 + 32] = 96
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _271
                    else:
                        require ext_call.success
                        _276 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_276] = bool(ext_call.success)
                        mem[_276 + 32] = 96
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _276
                else:
                    _254 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_254] = return_data.size
                    mem[_254 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _273 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_273] = bool(ext_call.success)
                        mem[_273 + 32] = _254
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _273
                    else:
                        require ext_call.success
                        _278 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_278] = bool(ext_call.success)
                        mem[_278 + 32] = _254
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _278
            _164 = mem[96]
            idx = idx + 1
            continue 
        _167 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _171 = mem[_85]
        mem[mem[64] + 64] = mem[_85]
        idx = 0
        s = _85 + 32
        t = mem[64] + 96
        u = mem[64] + (32 * _171) + 96
        while idx < _171:
            mem[t] = u + -_167 - 96
            _242 = mem[s]
            mem[u] = bool(mem[mem[s]])
            _244 = mem[_242 + 32]
            mem[u + 32] = 64
            _245 = mem[_244]
            mem[u + 64] = mem[_244]
            v = 0
            while v < _245:
                mem[v + u + 96] = mem[v + _244 + 32]
                v = v + 32
                continue 
            if ceil32(_245) > _245:
                mem[u + _245 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_245) + u + 96
            continue 
    else:
        mem[64] = _85 + (32 * _84) + 96
        mem[_85 + (32 * _84) + 32] = 0
        mem[_85 + (32 * _84) + 64] = 96
        mem[var23001] = _85 + (32 * _84) + 32
        s = var23001
        idx = var23002
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
            _312 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _316 = mem[mem[(32 * idx) + 128] + 32]
            _317 = mem[64]
            _318 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _318:
                mem[s + _317] = mem[s + _316 + 32]
                _307 = mem[96]
                s = s + 32
                continue 
            if ceil32(_318) <= _318:
                call address(_312).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _318 + _317 + -mem[64] - 4]
                if not return_data.size:
                    if not arg2:
                        _357 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_357] = bool(ext_call.success)
                        mem[_357 + 32] = 96
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _357
                    else:
                        require ext_call.success
                        _361 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_361] = bool(ext_call.success)
                        mem[_361 + 32] = 96
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _361
                else:
                    _353 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_353] = return_data.size
                    mem[_353 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _359 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_359] = bool(ext_call.success)
                        mem[_359 + 32] = _353
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _359
                    else:
                        require ext_call.success
                        _363 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_363] = bool(ext_call.success)
                        mem[_363 + 32] = _353
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _363
            else:
                mem[_317 + _318] = 0
                call address(_312).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _318 + _317 + -mem[64] - 4]
                if not return_data.size:
                    if not arg2:
                        _365 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_365] = bool(ext_call.success)
                        mem[_365 + 32] = 96
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _365
                    else:
                        require ext_call.success
                        _369 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_369] = bool(ext_call.success)
                        mem[_369 + 32] = 96
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _369
                else:
                    _356 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_356] = return_data.size
                    mem[_356 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _367 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_367] = bool(ext_call.success)
                        mem[_367 + 32] = _356
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _367
                    else:
                        require ext_call.success
                        _371 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_371] = bool(ext_call.success)
                        mem[_371 + 32] = _356
                        require idx < mem[_85]
                        mem[(32 * idx) + _85 + 32] = _371
            _307 = mem[96]
            idx = idx + 1
            continue 
        _310 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _314 = mem[_85]
        mem[mem[64] + 64] = mem[_85]
        idx = 0
        s = _85 + 32
        t = mem[64] + 96
        u = mem[64] + (32 * _314) + 96
        while idx < _314:
            mem[t] = u + -_310 - 96
            _346 = mem[s]
            mem[u] = bool(mem[mem[s]])
            _348 = mem[_346 + 32]
            mem[u + 32] = 64
            _349 = mem[_348]
            mem[u + 64] = mem[_348]
            v = 0
            while v < _349:
                mem[v + u + 96] = mem[v + _348 + 32]
                v = v + 32
                continue 
            if ceil32(_349) > _349:
                mem[u + _349 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_349) + u + 96
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
