contract main {




// =====================  Runtime code  =====================


const getCurrentBlockTimestamp = block.timestamp

const getLastBlockHash = block.hash(block.number - 1)

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

function aggregate(address arg1, bytes[] arg2, bool arg3) payable {
    require calldata.size - 4 >= 64
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
        require calldata.size + -arg1 + -cd[idx] - 36 >= 64
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
        _100 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)])) + 1
        mem[_100] = cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)]
        require arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)] + 68 <= calldata.size
        mem[_100 + 32 len cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)]] = call.data[arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 68 len cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)]]
        mem[_100 + cd[(arg1 + cd[idx] + cd[(arg1 + cd[idx] + 68)] + 36)] + 32] = 0
        mem[_83 + 32] = _100
        mem[s] = _83
        s = s + 32
        idx = idx + 32
        continue 
    require arg2 == bool(arg2)
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
            _169 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _173 = mem[mem[(32 * idx) + 128] + 32]
            _174 = mem[64]
            _176 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _176:
                mem[s + _174] = mem[s + _173 + 32]
                _164 = mem[96]
                s = s + 32
                continue 
            if ceil32(_176) <= _176:
                call address(_169).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _176 + _174 + -mem[64] - 4]
                if not return_data.size:
                    if not arg2:
                        _268 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_268] = bool(ext_call.success)
                        mem[_268 + 32] = 96
                        if idx >= mem[_85]:
                            revert with 0, 50
                        mem[(32 * idx) + _85 + 32] = _268
                    else:
                        require ext_call.success
                        _273 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_273] = bool(ext_call.success)
                        mem[_273 + 32] = 96
                        if idx >= mem[_85]:
                            revert with 0, 50
                        mem[(32 * idx) + _85 + 32] = _273
                else:
                    _260 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_260] = return_data.size
                    mem[_260 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _270 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_270] = bool(ext_call.success)
                        mem[_270 + 32] = _260
                        if idx >= mem[_85]:
                            revert with 0, 50
                        mem[(32 * idx) + _85 + 32] = _270
                    else:
                        require ext_call.success
                        _275 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_275] = bool(ext_call.success)
                        mem[_275 + 32] = _260
                        if idx >= mem[_85]:
                            revert with 0, 50
                        mem[(32 * idx) + _85 + 32] = _275
            else:
                mem[_174 + _176] = 0
                call address(_169).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _176 + _174 + -mem[64] - 4]
                if not return_data.size:
                    if not arg2:
                        _277 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_277] = bool(ext_call.success)
                        mem[_277 + 32] = 96
                        if idx >= mem[_85]:
                            revert with 0, 50
                        mem[(32 * idx) + _85 + 32] = _277
                    else:
                        require ext_call.success
                        _282 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_282] = bool(ext_call.success)
                        mem[_282 + 32] = 96
                        if idx >= mem[_85]:
                            revert with 0, 50
                        mem[(32 * idx) + _85 + 32] = _282
                else:
                    _266 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_266] = return_data.size
                    mem[_266 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _279 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_279] = bool(ext_call.success)
                        mem[_279 + 32] = _266
                        if idx >= mem[_85]:
                            revert with 0, 50
                        mem[(32 * idx) + _85 + 32] = _279
                    else:
                        require ext_call.success
                        _284 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_284] = bool(ext_call.success)
                        mem[_284 + 32] = _266
                        if idx >= mem[_85]:
                            revert with 0, 50
                        mem[(32 * idx) + _85 + 32] = _284
            if idx == -1:
                revert with 0, 17
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
        t = mem[64] + (32 * _171) + 96
        u = mem[64] + 96
        while idx < _171:
            mem[u] = t + -_167 - 96
            _242 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _244 = mem[_242 + 32]
            mem[t + 32] = 64
            _245 = mem[_244]
            mem[t + 64] = mem[_244]
            v = 0
            while v < _245:
                mem[v + t + 96] = mem[v + _244 + 32]
                v = v + 32
                continue 
            if ceil32(_245) > _245:
                mem[t + _245 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_245) + t + 96
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
            _251 = mem[mem[(32 * idx) + 128]]
            if idx >= mem[96]:
                revert with 0, 50
            _255 = mem[mem[(32 * idx) + 128] + 32]
            _256 = mem[64]
            _259 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _259:
                mem[s + _256] = mem[s + _255 + 32]
                _241 = mem[96]
                s = s + 32
                continue 
            if ceil32(_259) <= _259:
                call address(_251).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _259 + _256 + -mem[64] - 4]
                if not return_data.size:
                    if not arg2:
                        _318 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_318] = bool(ext_call.success)
                        mem[_318 + 32] = 96
                        if idx >= mem[_85]:
                            revert with 0, 50
                        mem[(32 * idx) + _85 + 32] = _318
                    else:
                        require ext_call.success
                        _322 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_322] = bool(ext_call.success)
                        mem[_322 + 32] = 96
                        if idx >= mem[_85]:
                            revert with 0, 50
                        mem[(32 * idx) + _85 + 32] = _322
                else:
                    _315 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_315] = return_data.size
                    mem[_315 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _320 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_320] = bool(ext_call.success)
                        mem[_320 + 32] = _315
                        if idx >= mem[_85]:
                            revert with 0, 50
                        mem[(32 * idx) + _85 + 32] = _320
                    else:
                        require ext_call.success
                        _324 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_324] = bool(ext_call.success)
                        mem[_324 + 32] = _315
                        if idx >= mem[_85]:
                            revert with 0, 50
                        mem[(32 * idx) + _85 + 32] = _324
            else:
                mem[_256 + _259] = 0
                call address(_251).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _259 + _256 + -mem[64] - 4]
                if not return_data.size:
                    if not arg2:
                        _326 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_326] = bool(ext_call.success)
                        mem[_326 + 32] = 96
                        if idx >= mem[_85]:
                            revert with 0, 50
                        mem[(32 * idx) + _85 + 32] = _326
                    else:
                        require ext_call.success
                        _330 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_330] = bool(ext_call.success)
                        mem[_330 + 32] = 96
                        if idx >= mem[_85]:
                            revert with 0, 50
                        mem[(32 * idx) + _85 + 32] = _330
                else:
                    _317 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_317] = return_data.size
                    mem[_317 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not arg2:
                        _328 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_328] = bool(ext_call.success)
                        mem[_328 + 32] = _317
                        if idx >= mem[_85]:
                            revert with 0, 50
                        mem[(32 * idx) + _85 + 32] = _328
                    else:
                        require ext_call.success
                        _332 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_332] = bool(ext_call.success)
                        mem[_332 + 32] = _317
                        if idx >= mem[_85]:
                            revert with 0, 50
                        mem[(32 * idx) + _85 + 32] = _332
            if idx == -1:
                revert with 0, 17
            _241 = mem[96]
            idx = idx + 1
            continue 
        _249 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _253 = mem[_85]
        mem[mem[64] + 64] = mem[_85]
        idx = 0
        s = _85 + 32
        t = mem[64] + (32 * _253) + 96
        u = mem[64] + 96
        while idx < _253:
            mem[u] = t + -_249 - 96
            _307 = mem[s]
            mem[t] = bool(mem[mem[s]])
            _309 = mem[_307 + 32]
            mem[t + 32] = 64
            _310 = mem[_309]
            mem[t + 64] = mem[_309]
            v = 0
            while v < _310:
                mem[v + t + 96] = mem[v + _309 + 32]
                v = v + 32
                continue 
            if ceil32(_310) > _310:
                mem[t + _310 + 96] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_310) + t + 96
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
