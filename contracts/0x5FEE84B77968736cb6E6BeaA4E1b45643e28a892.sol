contract main {




// =====================  Runtime code  =====================


const getCurrentBlockTimestamp = block.timestamp


function _fallback() payable {
    revert
}

function getEthBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return eth.balance(arg1)
}

function multicall(address arg1, uint256 arg2, bytes[] arg3) payable {
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
        require calldata.size + -arg1 + -cd[s] - 36 >= 96
        _75 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_75] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] == cd[(arg1 + cd[s] + 68)]
        mem[_75 + 32] = cd[(arg1 + cd[s] + 68)]
        require cd[(arg1 + cd[s] + 100)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)] <= test266151307()
        _127 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]) + 32
        mem[_127] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)] + 68 <= calldata.size
        mem[_127 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]]
        mem[_127 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)] + 32] = 0
        mem[_75 + 64] = _127
        mem[t] = _75
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _76 = mem[96]
    require mem[96] <= test266151307()
    _77 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _76) + 32
    if not _76:
        _148 = mem[96]
        idx = 0
        while idx < _148:
            require idx < mem[96]
            _153 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _156 = mem[mem[(32 * idx) + 128] + 32]
            require idx < mem[96]
            _159 = mem[mem[(32 * idx) + 128] + 64]
            _160 = mem[64]
            _163 = mem[mem[mem[(32 * idx) + 128] + 64]]
            s = 0
            while s < _163:
                mem[_160 + s] = mem[_159 + s + 32]
                _148 = mem[96]
                s = s + 32
                continue 
            if ceil32(_163) <= _163:
                call address(_153).mem[mem[64] len 4] with:
                     gas _156 wei
                    args mem[mem[64] + 4 len _160 + _163 + -mem[64] - 4]
                if not return_data.size:
                    _232 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_232] = bool(ext_call.success)
                    mem[_232 + 32] = 0
                    mem[_232 + 64] = 96
                    require idx < mem[_77]
                    mem[(32 * idx) + _77 + 32] = _232
                else:
                    _225 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_225] = return_data.size
                    mem[_225 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _234 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_234] = bool(ext_call.success)
                    mem[_234 + 32] = 0
                    mem[_234 + 64] = _225
                    require idx < mem[_77]
                    mem[(32 * idx) + _77 + 32] = _234
            else:
                mem[_160 + _163] = 0
                call address(_153).mem[mem[64] len 4] with:
                     gas _156 wei
                    args mem[mem[64] + 4 len _160 + _163 + -mem[64] - 4]
                if not return_data.size:
                    _240 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_240] = bool(ext_call.success)
                    mem[_240 + 32] = 0
                    mem[_240 + 64] = 96
                    require idx < mem[_77]
                    mem[(32 * idx) + _77 + 32] = _240
                else:
                    _236 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_236] = return_data.size
                    mem[_236 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _242 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_242] = bool(ext_call.success)
                    mem[_242 + 32] = 0
                    mem[_242 + 64] = _236
                    require idx < mem[_77]
                    mem[(32 * idx) + _77 + 32] = _242
            _148 = mem[96]
            idx = idx + 1
            continue 
        _151 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _171 = mem[_77]
        mem[mem[64] + 64] = mem[_77]
        idx = 0
        s = _77 + 32
        t = mem[64] + (32 * _171) + 96
        u = mem[64] + 96
        while idx < _171:
            mem[u] = t + -_151 - 96
            _218 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_218 + 32]
            _247 = mem[_218 + 64]
            mem[t + 64] = 96
            _249 = mem[_247]
            mem[t + 96] = mem[_247]
            v = 0
            while v < _249:
                mem[t + v + 128] = mem[_247 + v + 32]
                v = v + 32
                continue 
            if ceil32(_249) > _249:
                mem[t + _249 + 128] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_249) + 128
            u = u + 32
            continue 
    else:
        mem[64] = _77 + (32 * _76) + 128
        mem[_77 + (32 * _76) + 32] = 0
        mem[_77 + (32 * _76) + 64] = 0
        mem[_77 + (32 * _76) + 96] = 96
        mem[var26001] = _77 + (32 * _76) + 32
        s = var26001
        idx = var26002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[_77 + (32 * _76) + 32] = 0
            mem[_77 + (32 * _76) + 64] = 0
            mem[_77 + (32 * _76) + 96] = 96
            mem[s + 32] = _77 + (32 * _76) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _272 = mem[96]
        idx = 0
        while idx < _272:
            require idx < mem[96]
            _277 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _280 = mem[mem[(32 * idx) + 128] + 32]
            require idx < mem[96]
            _283 = mem[mem[(32 * idx) + 128] + 64]
            _284 = mem[64]
            _285 = mem[mem[mem[(32 * idx) + 128] + 64]]
            s = 0
            while s < _285:
                mem[_284 + s] = mem[_283 + s + 32]
                _272 = mem[96]
                s = s + 32
                continue 
            if ceil32(_285) <= _285:
                call address(_277).mem[mem[64] len 4] with:
                     gas _280 wei
                    args mem[mem[64] + 4 len _284 + _285 + -mem[64] - 4]
                if not return_data.size:
                    _315 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_315] = bool(ext_call.success)
                    mem[_315 + 32] = 0
                    mem[_315 + 64] = 96
                    require idx < mem[_77]
                    mem[(32 * idx) + _77 + 32] = _315
                else:
                    _312 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_312] = return_data.size
                    mem[_312 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _317 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_317] = bool(ext_call.success)
                    mem[_317 + 32] = 0
                    mem[_317 + 64] = _312
                    require idx < mem[_77]
                    mem[(32 * idx) + _77 + 32] = _317
            else:
                mem[_284 + _285] = 0
                call address(_277).mem[mem[64] len 4] with:
                     gas _280 wei
                    args mem[mem[64] + 4 len _284 + _285 + -mem[64] - 4]
                if not return_data.size:
                    _320 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_320] = bool(ext_call.success)
                    mem[_320 + 32] = 0
                    mem[_320 + 64] = 96
                    require idx < mem[_77]
                    mem[(32 * idx) + _77 + 32] = _320
                else:
                    _319 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_319] = return_data.size
                    mem[_319 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _322 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_322] = bool(ext_call.success)
                    mem[_322 + 32] = 0
                    mem[_322 + 64] = _319
                    require idx < mem[_77]
                    mem[(32 * idx) + _77 + 32] = _322
            _272 = mem[96]
            idx = idx + 1
            continue 
        _275 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _286 = mem[_77]
        mem[mem[64] + 64] = mem[_77]
        idx = 0
        s = _77 + 32
        t = mem[64] + (32 * _286) + 96
        u = mem[64] + 96
        while idx < _286:
            mem[u] = t + -_275 - 96
            _307 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_307 + 32]
            _324 = mem[_307 + 64]
            mem[t + 64] = 96
            _325 = mem[_324]
            mem[t + 96] = mem[_324]
            v = 0
            while v < _325:
                mem[t + v + 128] = mem[_324 + v + 32]
                v = v + 32
                continue 
            if ceil32(_325) > _325:
                mem[t + _325 + 128] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_325) + 128
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
