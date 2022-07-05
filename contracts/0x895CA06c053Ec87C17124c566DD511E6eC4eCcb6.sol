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
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
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
        mem[_75 + 32] = cd[(arg1 + cd[s] + 68)]
        require cd[(arg1 + cd[s] + 100)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)] <= test266151307()
        _92 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]) + 32 >= mem[64] and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]) + 32
        mem[_92] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)] + 68 <= calldata.size
        mem[_92 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)]]
        mem[_92 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 100)] + 36)] + 32] = 0
        mem[_75 + 64] = _92
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
            _157 = mem[mem[(32 * idx) + 128] + 32]
            require idx < mem[96]
            _160 = mem[mem[(32 * idx) + 128] + 64]
            _161 = mem[64]
            _167 = mem[mem[mem[(32 * idx) + 128] + 64]]
            s = 0
            while s < _167:
                mem[s + _161] = mem[s + _160 + 32]
                _148 = mem[96]
                s = s + 32
                continue 
            if ceil32(_167) <= _167:
                call address(_153).mem[mem[64] len 4] with:
                     gas _157 wei
                    args mem[mem[64] + 4 len _167 + _161 + -mem[64] - 4]
                if not return_data.size:
                    _231 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_231] = bool(ext_call.success)
                    mem[_231 + 32] = 0
                    mem[_231 + 64] = 96
                    require idx < mem[_77]
                    mem[(32 * idx) + _77 + 32] = _231
                else:
                    _228 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_228] = return_data.size
                    mem[_228 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _233 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_233] = bool(ext_call.success)
                    mem[_233 + 32] = 0
                    mem[_233 + 64] = _228
                    require idx < mem[_77]
                    mem[(32 * idx) + _77 + 32] = _233
            else:
                mem[_161 + _167] = 0
                call address(_153).mem[mem[64] len 4] with:
                     gas _157 wei
                    args mem[mem[64] + 4 len _167 + _161 + -mem[64] - 4]
                if not return_data.size:
                    _240 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_240] = bool(ext_call.success)
                    mem[_240 + 32] = 0
                    mem[_240 + 64] = 96
                    require idx < mem[_77]
                    mem[(32 * idx) + _77 + 32] = _240
                else:
                    _235 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_235] = return_data.size
                    mem[_235 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _242 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_242] = bool(ext_call.success)
                    mem[_242 + 32] = 0
                    mem[_242 + 64] = _235
                    require idx < mem[_77]
                    mem[(32 * idx) + _77 + 32] = _242
            _148 = mem[96]
            idx = idx + 1
            continue 
        _151 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _155 = mem[_77]
        mem[mem[64] + 64] = mem[_77]
        idx = 0
        s = _77 + 32
        t = mem[64] + (32 * _155) + 96
        u = mem[64] + 96
        while idx < _155:
            mem[u] = t + -_151 - 96
            _218 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_218 + 32]
            _221 = mem[_218 + 64]
            mem[t + 64] = 96
            _222 = mem[_221]
            mem[t + 96] = mem[_221]
            v = 0
            while v < _222:
                mem[v + t + 128] = mem[v + _221 + 32]
                v = v + 32
                continue 
            if ceil32(_222) > _222:
                mem[t + _222 + 128] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_222) + t + 128
            u = u + 32
            continue 
    else:
        mem[64] = _77 + (32 * _76) + 128
        mem[_77 + (32 * _76) + 32] = 0
        mem[_77 + (32 * _76) + 64] = 0
        mem[_77 + (32 * _76) + 96] = 96
        mem[var20001] = _77 + (32 * _76) + 32
        s = var20001
        idx = var20002
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
            _281 = mem[mem[(32 * idx) + 128] + 32]
            require idx < mem[96]
            _284 = mem[mem[(32 * idx) + 128] + 64]
            _285 = mem[64]
            _291 = mem[mem[mem[(32 * idx) + 128] + 64]]
            s = 0
            while s < _291:
                mem[s + _285] = mem[s + _284 + 32]
                _272 = mem[96]
                s = s + 32
                continue 
            if ceil32(_291) <= _291:
                call address(_277).mem[mem[64] len 4] with:
                     gas _281 wei
                    args mem[mem[64] + 4 len _291 + _285 + -mem[64] - 4]
                if not return_data.size:
                    _318 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_318] = bool(ext_call.success)
                    mem[_318 + 32] = 0
                    mem[_318 + 64] = 96
                    require idx < mem[_77]
                    mem[(32 * idx) + _77 + 32] = _318
                else:
                    _316 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_316] = return_data.size
                    mem[_316 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _320 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_320] = bool(ext_call.success)
                    mem[_320 + 32] = 0
                    mem[_320 + 64] = _316
                    require idx < mem[_77]
                    mem[(32 * idx) + _77 + 32] = _320
            else:
                mem[_285 + _291] = 0
                call address(_277).mem[mem[64] len 4] with:
                     gas _281 wei
                    args mem[mem[64] + 4 len _291 + _285 + -mem[64] - 4]
                if not return_data.size:
                    _323 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_323] = bool(ext_call.success)
                    mem[_323 + 32] = 0
                    mem[_323 + 64] = 96
                    require idx < mem[_77]
                    mem[(32 * idx) + _77 + 32] = _323
                else:
                    _322 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_322] = return_data.size
                    mem[_322 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    _325 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_325] = bool(ext_call.success)
                    mem[_325 + 32] = 0
                    mem[_325 + 64] = _322
                    require idx < mem[_77]
                    mem[(32 * idx) + _77 + 32] = _325
            _272 = mem[96]
            idx = idx + 1
            continue 
        _275 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _279 = mem[_77]
        mem[mem[64] + 64] = mem[_77]
        idx = 0
        s = _77 + 32
        t = mem[64] + (32 * _279) + 96
        u = mem[64] + 96
        while idx < _279:
            mem[u] = t + -_275 - 96
            _307 = mem[s]
            mem[t] = bool(mem[mem[s]])
            mem[t + 32] = mem[_307 + 32]
            _310 = mem[_307 + 64]
            mem[t + 64] = 96
            _311 = mem[_310]
            mem[t + 96] = mem[_310]
            v = 0
            while v < _311:
                mem[v + t + 128] = mem[v + _310 + 32]
                v = v + 32
                continue 
            if ceil32(_311) > _311:
                mem[t + _311 + 128] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_311) + t + 128
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
