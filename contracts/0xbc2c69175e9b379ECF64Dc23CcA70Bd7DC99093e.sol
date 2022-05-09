contract main {




// =====================  Runtime code  =====================


address sushiFactoryAddress;

function sushiFactory() payable {
    return sushiFactoryAddress
}

function _fallback() payable {
    revert
}

function getPairs(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg3 - arg2 <= test266151307()
    mem[96] = arg3 - arg2
    mem[64] = (32 * arg3 - arg2) + 128
    if not arg3 - arg2:
        idx = arg2
        while idx < arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _74 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _77 = mem[_74]
            require mem[_74] == mem[_74 + 12 len 20]
            require idx - arg2 < mem[96]
            mem[mem[(32 * idx - arg2) + 128]] = mem[_74 + 12 len 20]
            require ext_code.size(address(_77))
            staticcall address(_77).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _91 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_91] == mem[_91 + 12 len 20]
            require idx - arg2 < mem[96]
            mem[mem[(32 * idx - arg2) + 128] + 32] = mem[_91 + 12 len 20]
            require ext_code.size(address(_77))
            staticcall address(_77).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _107 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_107] == mem[_107 + 12 len 20]
            require idx - arg2 < mem[96]
            mem[mem[(32 * idx - arg2) + 128] + 64] = mem[_107 + 12 len 20]
            require ext_code.size(address(_77))
            staticcall address(_77).0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _120 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_120] == mem[_120]
            require idx - arg2 < mem[96]
            mem[mem[(32 * idx - arg2) + 128] + 96] = mem[_120]
            idx = idx + 1
            continue 
        _69 = mem[64]
        mem[mem[64]] = 32
        _70 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _70:
            _133 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_133 + 44 len 20]
            mem[t + 64] = mem[_133 + 76 len 20]
            mem[t + 96] = mem[_133 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _69 + (128 * _70) + -mem[64] + 64
    mem[64] = (32 * arg3 - arg2) + 256
    mem[(32 * arg3 - arg2) + 128] = 0
    mem[(32 * arg3 - arg2) + 160] = 0
    mem[(32 * arg3 - arg2) + 192] = 0
    mem[(32 * arg3 - arg2) + 224] = 0
    mem[var36001] = (32 * arg3 - arg2) + 128
    s = var36001
    idx = var36002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(32 * arg3 - arg2) + 128] = 0
        mem[(32 * arg3 - arg2) + 160] = 0
        mem[(32 * arg3 - arg2) + 192] = 0
        mem[(32 * arg3 - arg2) + 224] = 0
        mem[s + 32] = (32 * arg3 - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = arg2
    while idx < arg3:
        mem[mem[64] + 4] = idx
        require ext_code.size(arg1)
        staticcall arg1.allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _175 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _177 = mem[_175]
        require mem[_175] == mem[_175 + 12 len 20]
        require idx - arg2 < mem[96]
        mem[mem[(32 * idx - arg2) + 128]] = mem[_175 + 12 len 20]
        require ext_code.size(address(_177))
        staticcall address(_177).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _185 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_185] == mem[_185 + 12 len 20]
        require idx - arg2 < mem[96]
        mem[mem[(32 * idx - arg2) + 128] + 32] = mem[_185 + 12 len 20]
        require ext_code.size(address(_177))
        staticcall address(_177).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _193 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_193] == mem[_193 + 12 len 20]
        require idx - arg2 < mem[96]
        mem[mem[(32 * idx - arg2) + 128] + 64] = mem[_193 + 12 len 20]
        require ext_code.size(address(_177))
        staticcall address(_177).0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _199 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_199] == mem[_199]
        require idx - arg2 < mem[96]
        mem[mem[(32 * idx - arg2) + 128] + 96] = mem[_199]
        idx = idx + 1
        continue 
    _172 = mem[64]
    mem[mem[64]] = 32
    _173 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _173:
        _203 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_203 + 44 len 20]
        mem[t + 64] = mem[_203 + 76 len 20]
        mem[t + 96] = mem[_203 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _172 + (128 * _173) + -mem[64] + 64
}

function pollPairs(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg2.length <= test266151307()
    mem[96] = arg2.length
    mem[64] = (32 * arg2.length) + 128
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            require idx < mem[96]
            mem[mem[(32 * idx) + 128]] = address(cd[((32 * idx) + arg2 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            staticcall address(cd[((32 * idx) + arg2 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _82 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_82] == mem[_82 + 18 len 14]
            _95 = mem[_82 + 32]
            require mem[_82 + 32] == mem[_82 + 50 len 14]
            require mem[_82 + 64] == mem[_82 + 92 len 4]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 32] = mem[_82 + 18 len 14]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 64] = Mask(112, 0, _95)
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            staticcall address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _115 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_115] == mem[_115]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 128] = mem[_115]
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            staticcall address(cd[((32 * idx) + arg2 + 36)]).0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_124] == mem[_124]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 96] = mem[_124]
            idx = idx + 1
            continue 
        _70 = mem[64]
        mem[mem[64]] = 32
        _71 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _71:
            _137 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_137 + 32]
            mem[t + 64] = mem[_137 + 64]
            mem[t + 96] = mem[_137 + 96]
            mem[t + 128] = mem[_137 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _70 + (160 * _71) + -mem[64] + 64
    mem[64] = (32 * arg2.length) + 288
    mem[(32 * arg2.length) + 128] = 0
    mem[(32 * arg2.length) + 160] = 0
    mem[(32 * arg2.length) + 192] = 0
    mem[(32 * arg2.length) + 224] = 0
    mem[(32 * arg2.length) + 256] = 0
    mem[var26001] = (32 * arg2.length) + 128
    s = var26001
    idx = var26002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(32 * arg2.length) + 128] = 0
        mem[(32 * arg2.length) + 160] = 0
        mem[(32 * arg2.length) + 192] = 0
        mem[(32 * arg2.length) + 224] = 0
        mem[(32 * arg2.length) + 256] = 0
        mem[s + 32] = (32 * arg2.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        require idx < mem[96]
        mem[mem[(32 * idx) + 128]] = address(cd[((32 * idx) + arg2 + 36)])
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        staticcall address(cd[((32 * idx) + arg2 + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _186 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_186] == mem[_186 + 18 len 14]
        _190 = mem[_186 + 32]
        require mem[_186 + 32] == mem[_186 + 50 len 14]
        require mem[_186 + 64] == mem[_186 + 92 len 4]
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 32] = mem[_186 + 18 len 14]
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 64] = Mask(112, 0, _190)
        mem[mem[64] + 4] = arg1
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        staticcall address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _200 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_200] == mem[_200]
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 128] = mem[_200]
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        staticcall address(cd[((32 * idx) + arg2 + 36)]).0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _206 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_206] == mem[_206]
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 96] = mem[_206]
        idx = idx + 1
        continue 
    _177 = mem[64]
    mem[mem[64]] = 32
    _178 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _178:
        _210 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_210 + 32]
        mem[t + 64] = mem[_210 + 64]
        mem[t + 96] = mem[_210 + 96]
        mem[t + 128] = mem[_210 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _177 + (160 * _178) + -mem[64] + 64
}



}
