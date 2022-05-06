contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getPairInfosBetweenIndex(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 <= 0:
        revert with 0, 'Wrong index'
    if arg3 <= 0:
        revert with 0, 'Wrong index'
    if arg3 <= arg2:
        revert with 0, 'Wrong index'
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > arg3:
        revert with 0, 'Out of index'
    if arg3 < arg2:
        revert with 'NH{q', 17
    if arg3 - arg2 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = arg3 - arg2
    mem[64] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
    if not arg3 - arg2:
        idx = arg2
        while idx <= arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _112 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _115 = mem[_112]
            require mem[_112] == mem[_112 + 12 len 20]
            require ext_code.size(mem[_112 + 12 len 20])
            staticcall mem[_112 + 12 len 20].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _127 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _130 = mem[_127]
            require mem[_127] == mem[_127 + 31 len 1]
            require ext_code.size(address(_115))
            staticcall address(_115).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _139 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _142 = mem[_139]
            require mem[_139] == mem[_139 + 12 len 20]
            require ext_code.size(address(_115))
            staticcall address(_115).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _154 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _157 = mem[_154]
            require mem[_154] == mem[_154 + 12 len 20]
            require ext_code.size(address(_115))
            staticcall address(_115).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _166 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _167 = mem[_166]
            require mem[_166] == mem[_166 + 18 len 14]
            _172 = mem[_166 + 32]
            require mem[_166 + 32] == mem[_166 + 50 len 14]
            _174 = mem[_166 + 64]
            require mem[_166 + 64] == mem[_166 + 92 len 4]
            _176 = mem[64]
            mem[64] = mem[64] + 288
            mem[_176 + 96] = 0
            mem[_176 + 128] = 0
            mem[_176 + 160] = 0
            mem[_176 + 192] = 0
            mem[_176 + 224] = 0
            mem[_176 + 256] = 0
            mem[_176] = address(_115)
            mem[_176 + 32] = uint8(_130)
            mem[_176 + 64] = address(_142)
            require ext_code.size(address(_142))
            staticcall address(_142).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _179 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_179] == mem[_179 + 31 len 1]
            mem[_176 + 128] = mem[_179 + 31 len 1]
            mem[_176 + 160] = Mask(112, 0, _167)
            mem[_176 + 96] = address(_157)
            require ext_code.size(address(_157))
            staticcall address(_157).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _188 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_188] == mem[_188 + 31 len 1]
            mem[_176 + 224] = mem[_188 + 31 len 1]
            mem[_176 + 192] = Mask(112, 0, _172)
            mem[_176 + 256] = uint32(_174)
            if idx < arg2:
                revert with 'NH{q', 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = _176
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _107 = mem[64]
        mem[mem[64]] = 32
        _108 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _108:
            _197 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_197 + 32]
            mem[t + 64] = mem[_197 + 76 len 20]
            mem[t + 96] = mem[_197 + 108 len 20]
            mem[t + 128] = mem[_197 + 128]
            mem[t + 160] = mem[_197 + 160]
            mem[t + 192] = mem[_197 + 192]
            mem[t + 224] = mem[_197 + 224]
            mem[t + 256] = mem[_197 + 256]
            idx = idx + 1
            s = s + 32
            t = t + 288
            continue 
        return memory
          from mem[64]
           len _107 + (288 * _108) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * arg3 - arg2) + 416
    mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 128] = 0
    mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 160] = 0
    mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 192] = 0
    mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 224] = 0
    mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 256] = 0
    mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 288] = 0
    mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 320] = 0
    mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 352] = 0
    mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 384] = 0
    mem[var59001] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
    s = var59001
    idx = var59002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 128] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 160] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 192] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 224] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 256] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 288] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 320] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 352] = 0
        mem[ceil32(return_data.size) + (32 * arg3 - arg2) + 384] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = arg2
    while idx <= arg3:
        mem[mem[64] + 4] = idx
        require ext_code.size(arg1)
        staticcall arg1.allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _257 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _259 = mem[_257]
        require mem[_257] == mem[_257 + 12 len 20]
        require ext_code.size(mem[_257 + 12 len 20])
        staticcall mem[_257 + 12 len 20].0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _265 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _267 = mem[_265]
        require mem[_265] == mem[_265 + 31 len 1]
        require ext_code.size(address(_259))
        staticcall address(_259).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _271 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _273 = mem[_271]
        require mem[_271] == mem[_271 + 12 len 20]
        require ext_code.size(address(_259))
        staticcall address(_259).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _279 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _281 = mem[_279]
        require mem[_279] == mem[_279 + 12 len 20]
        require ext_code.size(address(_259))
        staticcall address(_259).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _284 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _285 = mem[_284]
        require mem[_284] == mem[_284 + 18 len 14]
        _286 = mem[_284 + 32]
        require mem[_284 + 32] == mem[_284 + 50 len 14]
        _287 = mem[_284 + 64]
        require mem[_284 + 64] == mem[_284 + 92 len 4]
        _288 = mem[64]
        mem[64] = mem[64] + 288
        mem[_288 + 96] = 0
        mem[_288 + 128] = 0
        mem[_288 + 160] = 0
        mem[_288 + 192] = 0
        mem[_288 + 224] = 0
        mem[_288 + 256] = 0
        mem[_288] = address(_259)
        mem[_288 + 32] = uint8(_267)
        mem[_288 + 64] = address(_273)
        require ext_code.size(address(_273))
        staticcall address(_273).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _291 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_291] == mem[_291 + 31 len 1]
        mem[_288 + 128] = mem[_291 + 31 len 1]
        mem[_288 + 160] = Mask(112, 0, _285)
        mem[_288 + 96] = address(_281)
        require ext_code.size(address(_281))
        staticcall address(_281).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _295 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_295] == mem[_295 + 31 len 1]
        mem[_288 + 224] = mem[_295 + 31 len 1]
        mem[_288 + 192] = Mask(112, 0, _286)
        mem[_288 + 256] = uint32(_287)
        if idx < arg2:
            revert with 'NH{q', 17
        if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = _288
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _254 = mem[64]
    mem[mem[64]] = 32
    _255 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _255:
        _298 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_298 + 32]
        mem[t + 64] = mem[_298 + 76 len 20]
        mem[t + 96] = mem[_298 + 108 len 20]
        mem[t + 128] = mem[_298 + 128]
        mem[t + 160] = mem[_298 + 160]
        mem[t + 192] = mem[_298 + 192]
        mem[t + 224] = mem[_298 + 224]
        mem[t + 256] = mem[_298 + 256]
        idx = idx + 1
        s = s + 32
        t = t + 288
        continue 
    return memory
      from mem[64]
       len _254 + (288 * _255) + -mem[64] + 64
}



}
