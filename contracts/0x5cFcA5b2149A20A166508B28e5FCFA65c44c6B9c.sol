contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function findBalances(address arg1, address[] arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 4] = arg1
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        staticcall address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _37 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_37] <= 0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require s <= test266151307()
    _24 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        idx = 0
        s = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            staticcall address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _81 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_81]:
                idx = idx + 1
                s = s
                continue 
            require s < mem[_24]
            mem[mem[(32 * s) + _24 + 32]] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            staticcall address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _91 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require s < mem[_24]
            mem[mem[(32 * s) + _24 + 32] + 32] = mem[_91]
            idx = idx + 1
            s = s + 1
            continue 
        _67 = mem[64]
        mem[mem[64]] = 32
        _68 = mem[_24]
        mem[mem[64] + 32] = mem[_24]
        idx = 0
        s = _24 + 32
        t = mem[64] + 64
        while idx < _68:
            _104 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_104 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _67 + (64 * _68) + -mem[64] + 64
    mem[64] = _24 + (32 * s) + 96
    mem[_24 + (32 * s) + 32] = 0
    mem[_24 + (32 * s) + 64] = 0
    mem[var23001] = _24 + (32 * s) + 32
    t = var23001
    idx = var23002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[_24 + (32 * s) + 32] = 0
        mem[_24 + (32 * s) + 64] = 0
        mem[t + 32] = _24 + (32 * s) + 32
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 4] = arg1
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        staticcall address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _134 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_134]:
            idx = idx + 1
            s = s
            continue 
        require s < mem[_24]
        mem[mem[(32 * s) + _24 + 32]] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 4] = arg1
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        staticcall address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _140 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require s < mem[_24]
        mem[mem[(32 * s) + _24 + 32] + 32] = mem[_140]
        idx = idx + 1
        s = s + 1
        continue 
    _126 = mem[64]
    mem[mem[64]] = 32
    _127 = mem[_24]
    mem[mem[64] + 32] = mem[_24]
    idx = 0
    s = _24 + 32
    t = mem[64] + 64
    while idx < _127:
        _144 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_144 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _126 + (64 * _127) + -mem[64] + 64
}

function getFactoryInfo(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg1.length <= test266151307()
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require idx < mem[96]
            mem[mem[(32 * idx) + 128]] = address(cd[((32 * idx) + arg1 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x574f2ba3 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _79 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 32] = mem[_79]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).feeTo() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _91 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_91] == mem[_91 + 12 len 20]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 64] = mem[_91 + 12 len 20]
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).feeToSetter() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _104 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_104] == mem[_104 + 12 len 20]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 96] = mem[_104 + 12 len 20]
            idx = idx + 1
            continue 
        _60 = mem[64]
        mem[mem[64]] = 32
        _61 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _61:
            _117 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_117 + 32]
            mem[t + 64] = mem[_117 + 76 len 20]
            mem[t + 96] = mem[_117 + 108 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _60 + (128 * _61) + -mem[64] + 64
    mem[64] = (32 * arg1.length) + 256
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = 0
    mem[(32 * arg1.length) + 224] = 0
    mem[var17001] = (32 * arg1.length) + 128
    s = var17001
    idx = var17002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 192] = 0
        mem[(32 * arg1.length) + 224] = 0
        mem[s + 32] = (32 * arg1.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        require idx < mem[96]
        mem[mem[(32 * idx) + 128]] = address(cd[((32 * idx) + arg1 + 36)])
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).0x574f2ba3 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _163 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 32] = mem[_163]
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).feeTo() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _169 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_169] == mem[_169 + 12 len 20]
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 64] = mem[_169 + 12 len 20]
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).feeToSetter() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _175 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_175] == mem[_175 + 12 len 20]
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 96] = mem[_175 + 12 len 20]
        idx = idx + 1
        continue 
    _151 = mem[64]
    mem[mem[64]] = 32
    _152 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _152:
        _179 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_179 + 32]
        mem[t + 64] = mem[_179 + 76 len 20]
        mem[t + 96] = mem[_179 + 108 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _151 + (128 * _152) + -mem[64] + 64
}

function getPairsFull(address arg1, address[] arg2) payable {
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
            staticcall address(cd[((32 * idx) + arg2 + 36)]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _111 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_111] == mem[_111 + 12 len 20]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 32] = mem[_111 + 12 len 20]
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            staticcall address(cd[((32 * idx) + arg2 + 36)]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_124] == mem[_124 + 12 len 20]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 64] = mem[_124 + 12 len 20]
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            staticcall address(cd[((32 * idx) + arg2 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _136 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_136] == mem[_136 + 18 len 14]
            _142 = mem[_136 + 32]
            require mem[_136 + 32] == mem[_136 + 50 len 14]
            require mem[_136 + 64] == mem[_136 + 92 len 4]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 96] = mem[_136 + 18 len 14]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 128] = Mask(112, 0, _142)
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            staticcall address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _155 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 192] = mem[_155]
            idx = idx + 1
            continue 
        _86 = mem[64]
        mem[mem[64]] = 32
        _87 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _87:
            _169 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_169 + 44 len 20]
            mem[t + 64] = mem[_169 + 76 len 20]
            mem[t + 96] = mem[_169 + 96]
            mem[t + 128] = mem[_169 + 128]
            mem[t + 160] = mem[_169 + 160]
            mem[t + 192] = mem[_169 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _86 + (224 * _87) + -mem[64] + 64
    mem[64] = (32 * arg2.length) + 352
    mem[(32 * arg2.length) + 128] = 0
    mem[(32 * arg2.length) + 160] = 0
    mem[(32 * arg2.length) + 192] = 0
    mem[(32 * arg2.length) + 224] = 0
    mem[(32 * arg2.length) + 256] = 0
    mem[(32 * arg2.length) + 288] = 0
    mem[(32 * arg2.length) + 320] = 0
    mem[var20001] = (32 * arg2.length) + 128
    s = var20001
    idx = var20002
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[(32 * arg2.length) + 128] = 0
        mem[(32 * arg2.length) + 160] = 0
        mem[(32 * arg2.length) + 192] = 0
        mem[(32 * arg2.length) + 224] = 0
        mem[(32 * arg2.length) + 256] = 0
        mem[(32 * arg2.length) + 288] = 0
        mem[(32 * arg2.length) + 320] = 0
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
        staticcall address(cd[((32 * idx) + arg2 + 36)]).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _234 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_234] == mem[_234 + 12 len 20]
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 32] = mem[_234 + 12 len 20]
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        staticcall address(cd[((32 * idx) + arg2 + 36)]).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _240 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_240] == mem[_240 + 12 len 20]
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 64] = mem[_240 + 12 len 20]
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        staticcall address(cd[((32 * idx) + arg2 + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _246 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_246] == mem[_246 + 18 len 14]
        _248 = mem[_246 + 32]
        require mem[_246 + 32] == mem[_246 + 50 len 14]
        require mem[_246 + 64] == mem[_246 + 92 len 4]
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 96] = mem[_246 + 18 len 14]
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 128] = Mask(112, 0, _248)
        mem[mem[64] + 4] = arg1
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        staticcall address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _256 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 192] = mem[_256]
        idx = idx + 1
        continue 
    _219 = mem[64]
    mem[mem[64]] = 32
    _220 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _220:
        _260 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_260 + 44 len 20]
        mem[t + 64] = mem[_260 + 76 len 20]
        mem[t + 96] = mem[_260 + 96]
        mem[t + 128] = mem[_260 + 128]
        mem[t + 160] = mem[_260 + 160]
        mem[t + 192] = mem[_260 + 192]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _219 + (224 * _220) + -mem[64] + 64
}

function getBalances(address arg1, address[] arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 == arg3
    require arg4 == arg4
    require arg2.length <= test266151307()
    mem[96] = arg2.length
    mem[64] = (32 * arg2.length) + 128
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            require idx < mem[96]
            mem[mem[(32 * idx) + 128]] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            staticcall address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _100 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 32] = mem[_100]
            require idx < arg2.length
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 36] = arg4
            require ext_code.size(arg3)
            staticcall arg3.0xe6a43905 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + arg2 + 36)]), arg4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _114 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _116 = mem[_114]
            require mem[_114] == mem[_114 + 12 len 20]
            if mem[_114 + 12 len 20]:
                require ext_code.size(mem[_114 + 12 len 20])
                staticcall mem[_114 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _122 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_122] == mem[_122 + 12 len 20]
                require ext_code.size(address(_116))
                staticcall address(_116).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_122 + 12 len 20] != arg4:
                    _132 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_132] == mem[_132 + 18 len 14]
                    require mem[_132 + 32] == mem[_132 + 50 len 14]
                    require mem[_132 + 64] == mem[_132 + 92 len 4]
                    require mem[_132 + 50 len 14]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 64] = 10^18 * mem[_132 + 18 len 14] / mem[_132 + 50 len 14]
                else:
                    _133 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_133] == mem[_133 + 18 len 14]
                    require mem[_133 + 32] == mem[_133 + 50 len 14]
                    require mem[_133 + 64] == mem[_133 + 92 len 4]
                    require mem[_133 + 18 len 14]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 64] = 10^18 * mem[_133 + 50 len 14] / mem[_133 + 18 len 14]
            idx = idx + 1
            continue 
        _82 = mem[64]
        mem[mem[64]] = 32
        _83 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _83:
            _161 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_161 + 32]
            mem[t + 64] = mem[_161 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _82 + (96 * _83) + -mem[64] + 64
    mem[64] = (32 * arg2.length) + 224
    mem[(32 * arg2.length) + 128] = 0
    mem[(32 * arg2.length) + 160] = 0
    mem[(32 * arg2.length) + 192] = 0
    mem[var26001] = (32 * arg2.length) + 128
    s = var26001
    idx = var26002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * arg2.length) + 128] = 0
        mem[(32 * arg2.length) + 160] = 0
        mem[(32 * arg2.length) + 192] = 0
        mem[s + 32] = (32 * arg2.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg2.length:
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        require idx < mem[96]
        mem[mem[(32 * idx) + 128]] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 4] = arg1
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        staticcall address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _216 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 32] = mem[_216]
        require idx < arg2.length
        require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
        mem[mem[64] + 36] = arg4
        require ext_code.size(arg3)
        staticcall arg3.0xe6a43905 with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + arg2 + 36)]), arg4
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _222 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _223 = mem[_222]
        require mem[_222] == mem[_222 + 12 len 20]
        if mem[_222 + 12 len 20]:
            require ext_code.size(mem[_222 + 12 len 20])
            staticcall mem[_222 + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _226 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_226] == mem[_226 + 12 len 20]
            require ext_code.size(address(_223))
            staticcall address(_223).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_226 + 12 len 20] != arg4:
                _232 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_232] == mem[_232 + 18 len 14]
                require mem[_232 + 32] == mem[_232 + 50 len 14]
                require mem[_232 + 64] == mem[_232 + 92 len 4]
                require mem[_232 + 50 len 14]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 64] = 10^18 * mem[_232 + 18 len 14] / mem[_232 + 50 len 14]
            else:
                _233 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_233] == mem[_233 + 18 len 14]
                require mem[_233 + 32] == mem[_233 + 50 len 14]
                require mem[_233 + 64] == mem[_233 + 92 len 4]
                require mem[_233 + 18 len 14]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 64] = 10^18 * mem[_233 + 50 len 14] / mem[_233 + 18 len 14]
        idx = idx + 1
        continue 
    _205 = mem[64]
    mem[mem[64]] = 32
    _206 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _206:
        _244 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_244 + 32]
        mem[t + 64] = mem[_244 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _205 + (96 * _206) + -mem[64] + 64
}

function getPairs(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if arg3:
        require arg3 - arg2 <= test266151307()
        mem[96] = arg3 - arg2
        mem[64] = (32 * arg3 - arg2) + 128
        if not arg3 - arg2:
            idx = arg2
            while idx < arg3:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.0x1e3dd18b with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _123 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _133 = mem[_123]
                require mem[_123] == mem[_123 + 12 len 20]
                require idx - arg2 < mem[96]
                mem[mem[(32 * idx - arg2) + 128]] = mem[_123 + 12 len 20]
                require ext_code.size(address(_133))
                staticcall address(_133).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _163 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_163] == mem[_163 + 12 len 20]
                require idx - arg2 < mem[96]
                mem[mem[(32 * idx - arg2) + 128] + 32] = mem[_163 + 12 len 20]
                require ext_code.size(address(_133))
                staticcall address(_133).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _187 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_187] == mem[_187 + 12 len 20]
                require idx - arg2 < mem[96]
                mem[mem[(32 * idx - arg2) + 128] + 64] = mem[_187 + 12 len 20]
                idx = idx + 1
                continue 
            _113 = mem[64]
            mem[mem[64]] = 32
            _115 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _115:
                _213 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_213 + 44 len 20]
                mem[t + 64] = mem[_213 + 76 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _113 + (96 * _115) + -mem[64] + 64
        mem[64] = (32 * arg3 - arg2) + 224
        mem[(32 * arg3 - arg2) + 128] = 0
        mem[(32 * arg3 - arg2) + 160] = 0
        mem[(32 * arg3 - arg2) + 192] = 0
        mem[var15001] = (32 * arg3 - arg2) + 128
        s = var15001
        idx = var15002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * arg3 - arg2) + 128] = 0
            mem[(32 * arg3 - arg2) + 160] = 0
            mem[(32 * arg3 - arg2) + 192] = 0
            mem[s + 32] = (32 * arg3 - arg2) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = arg2
        while idx < arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.0x1e3dd18b with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _285 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _293 = mem[_285]
            require mem[_285] == mem[_285 + 12 len 20]
            require idx - arg2 < mem[96]
            mem[mem[(32 * idx - arg2) + 128]] = mem[_285 + 12 len 20]
            require ext_code.size(address(_293))
            staticcall address(_293).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _303 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_303] == mem[_303 + 12 len 20]
            require idx - arg2 < mem[96]
            mem[mem[(32 * idx - arg2) + 128] + 32] = mem[_303 + 12 len 20]
            require ext_code.size(address(_293))
            staticcall address(_293).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _315 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_315] == mem[_315 + 12 len 20]
            require idx - arg2 < mem[96]
            mem[mem[(32 * idx - arg2) + 128] + 64] = mem[_315 + 12 len 20]
            idx = idx + 1
            continue 
        _275 = mem[64]
        mem[mem[64]] = 32
        _277 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _277:
            _323 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_323 + 44 len 20]
            mem[t + 64] = mem[_323 + 76 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _275 + (96 * _277) + -mem[64] + 64
    require ext_code.size(arg1)
    staticcall arg1.0x574f2ba3 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] - arg2 <= test266151307()
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg2
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
    if not ext_call.return_data[0] - arg2:
        idx = arg2
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.0x1e3dd18b with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _128 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _135 = mem[_128]
            require mem[_128] == mem[_128 + 12 len 20]
            require idx - arg2 < mem[ceil32(return_data.size) + 96]
            mem[mem[(32 * idx - arg2) + ceil32(return_data.size) + 128]] = mem[_128 + 12 len 20]
            require ext_code.size(address(_135))
            staticcall address(_135).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _164 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_164] == mem[_164 + 12 len 20]
            require idx - arg2 < mem[ceil32(return_data.size) + 96]
            mem[mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] + 32] = mem[_164 + 12 len 20]
            require ext_code.size(address(_135))
            staticcall address(_135).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _188 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_188] == mem[_188 + 12 len 20]
            require idx - arg2 < mem[ceil32(return_data.size) + 96]
            mem[mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] + 64] = mem[_188 + 12 len 20]
            idx = idx + 1
            continue 
        _114 = mem[64]
        mem[mem[64]] = 32
        _117 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _117:
            _217 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_217 + 44 len 20]
            mem[t + 64] = mem[_217 + 76 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _114 + (96 * _117) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 224
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192] = 0
    mem[var21001] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
    s = var21001
    idx = var21002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = arg2
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(arg1)
        staticcall arg1.0x1e3dd18b with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _290 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _294 = mem[_290]
        require mem[_290] == mem[_290 + 12 len 20]
        require idx - arg2 < mem[ceil32(return_data.size) + 96]
        mem[mem[(32 * idx - arg2) + ceil32(return_data.size) + 128]] = mem[_290 + 12 len 20]
        require ext_code.size(address(_294))
        staticcall address(_294).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _304 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_304] == mem[_304 + 12 len 20]
        require idx - arg2 < mem[ceil32(return_data.size) + 96]
        mem[mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] + 32] = mem[_304 + 12 len 20]
        require ext_code.size(address(_294))
        staticcall address(_294).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _316 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_316] == mem[_316 + 12 len 20]
        require idx - arg2 < mem[ceil32(return_data.size) + 96]
        mem[mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] + 64] = mem[_316 + 12 len 20]
        idx = idx + 1
        continue 
    _276 = mem[64]
    mem[mem[64]] = 32
    _279 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _279:
        _327 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_327 + 44 len 20]
        mem[t + 64] = mem[_327 + 76 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _276 + (96 * _279) + -mem[64] + 64
}

function findPairs(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    if arg4:
        idx = arg3
        s = 0
        while idx < arg4:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg2)
            staticcall arg2.0x1e3dd18b with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _89 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _97 = mem[_89]
            require mem[_89] == mem[_89 + 12 len 20]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_97))
            staticcall address(_97).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _139 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_139] <= 0:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = s + 1
            continue 
        require s <= test266151307()
        _83 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + (32 * s) + 32
        if not s:
            idx = arg3
            s = 0
            while idx < arg4:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg2)
                staticcall arg2.0x1e3dd18b with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _231 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _241 = mem[_231]
                require mem[_231] == mem[_231 + 12 len 20]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_241))
                staticcall address(_241).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _267 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_267]:
                    idx = idx + 1
                    s = s
                    continue 
                require s < mem[_83]
                mem[mem[(32 * s) + _83 + 32]] = address(_241)
                require ext_code.size(address(_241))
                staticcall address(_241).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _285 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_285] == mem[_285 + 12 len 20]
                require s < mem[_83]
                mem[mem[(32 * s) + _83 + 32] + 32] = mem[_285 + 12 len 20]
                require ext_code.size(address(_241))
                staticcall address(_241).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _311 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_311] == mem[_311 + 12 len 20]
                require s < mem[_83]
                mem[mem[(32 * s) + _83 + 32] + 64] = mem[_311 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _221 = mem[64]
            mem[mem[64]] = 32
            _223 = mem[_83]
            mem[mem[64] + 32] = mem[_83]
            idx = 0
            s = _83 + 32
            t = mem[64] + 64
            while idx < _223:
                _337 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_337 + 44 len 20]
                mem[t + 64] = mem[_337 + 76 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _221 + (96 * _223) + -mem[64] + 64
        mem[64] = _83 + (32 * s) + 128
        mem[_83 + (32 * s) + 32] = 0
        mem[_83 + (32 * s) + 64] = 0
        mem[_83 + (32 * s) + 96] = 0
        mem[var21001] = _83 + (32 * s) + 32
        t = var21001
        idx = var21002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[_83 + (32 * s) + 32] = 0
            mem[_83 + (32 * s) + 64] = 0
            mem[_83 + (32 * s) + 96] = 0
            mem[t + 32] = _83 + (32 * s) + 32
            t = t + 32
            idx = idx - 1
            continue 
        idx = arg3
        s = 0
        while idx < arg4:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg2)
            staticcall arg2.0x1e3dd18b with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _417 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _425 = mem[_417]
            require mem[_417] == mem[_417 + 12 len 20]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_425))
            staticcall address(_425).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _431 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_431]:
                idx = idx + 1
                s = s
                continue 
            require s < mem[_83]
            mem[mem[(32 * s) + _83 + 32]] = address(_425)
            require ext_code.size(address(_425))
            staticcall address(_425).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _443 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_443] == mem[_443 + 12 len 20]
            require s < mem[_83]
            mem[mem[(32 * s) + _83 + 32] + 32] = mem[_443 + 12 len 20]
            require ext_code.size(address(_425))
            staticcall address(_425).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _455 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_455] == mem[_455 + 12 len 20]
            require s < mem[_83]
            mem[mem[(32 * s) + _83 + 32] + 64] = mem[_455 + 12 len 20]
            idx = idx + 1
            s = s + 1
            continue 
        _407 = mem[64]
        mem[mem[64]] = 32
        _409 = mem[_83]
        mem[mem[64] + 32] = mem[_83]
        idx = 0
        s = _83 + 32
        t = mem[64] + 64
        while idx < _409:
            _463 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_463 + 44 len 20]
            mem[t + 64] = mem[_463 + 76 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _407 + (96 * _409) + -mem[64] + 64
    require ext_code.size(arg2)
    staticcall arg2.0x574f2ba3 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = arg3
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(arg2)
        staticcall arg2.0x1e3dd18b with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _92 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _100 = mem[_92]
        require mem[_92] == mem[_92 + 12 len 20]
        mem[mem[64] + 4] = arg1
        require ext_code.size(address(_100))
        staticcall address(_100).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _142 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_142] <= 0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require s <= test266151307()
    _84 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        idx = arg3
        s = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg2)
            staticcall arg2.0x1e3dd18b with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _236 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _243 = mem[_236]
            require mem[_236] == mem[_236 + 12 len 20]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_243))
            staticcall address(_243).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _268 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_268]:
                idx = idx + 1
                s = s
                continue 
            require s < mem[_84]
            mem[mem[(32 * s) + _84 + 32]] = address(_243)
            require ext_code.size(address(_243))
            staticcall address(_243).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _287 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_287] == mem[_287 + 12 len 20]
            require s < mem[_84]
            mem[mem[(32 * s) + _84 + 32] + 32] = mem[_287 + 12 len 20]
            require ext_code.size(address(_243))
            staticcall address(_243).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _312 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_312] == mem[_312 + 12 len 20]
            require s < mem[_84]
            mem[mem[(32 * s) + _84 + 32] + 64] = mem[_312 + 12 len 20]
            idx = idx + 1
            s = s + 1
            continue 
        _222 = mem[64]
        mem[mem[64]] = 32
        _225 = mem[_84]
        mem[mem[64] + 32] = mem[_84]
        idx = 0
        s = _84 + 32
        t = mem[64] + 64
        while idx < _225:
            _341 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_341 + 44 len 20]
            mem[t + 64] = mem[_341 + 76 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _222 + (96 * _225) + -mem[64] + 64
    mem[64] = _84 + (32 * s) + 128
    mem[_84 + (32 * s) + 32] = 0
    mem[_84 + (32 * s) + 64] = 0
    mem[_84 + (32 * s) + 96] = 0
    mem[var27001] = _84 + (32 * s) + 32
    t = var27001
    idx = var27002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[_84 + (32 * s) + 32] = 0
        mem[_84 + (32 * s) + 64] = 0
        mem[_84 + (32 * s) + 96] = 0
        mem[t + 32] = _84 + (32 * s) + 32
        t = t + 32
        idx = idx - 1
        continue 
    idx = arg3
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(arg2)
        staticcall arg2.0x1e3dd18b with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _422 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _426 = mem[_422]
        require mem[_422] == mem[_422 + 12 len 20]
        mem[mem[64] + 4] = arg1
        require ext_code.size(address(_426))
        staticcall address(_426).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _432 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_432]:
            idx = idx + 1
            s = s
            continue 
        require s < mem[_84]
        mem[mem[(32 * s) + _84 + 32]] = address(_426)
        require ext_code.size(address(_426))
        staticcall address(_426).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _444 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_444] == mem[_444 + 12 len 20]
        require s < mem[_84]
        mem[mem[(32 * s) + _84 + 32] + 32] = mem[_444 + 12 len 20]
        require ext_code.size(address(_426))
        staticcall address(_426).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _456 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_456] == mem[_456 + 12 len 20]
        require s < mem[_84]
        mem[mem[(32 * s) + _84 + 32] + 64] = mem[_456 + 12 len 20]
        idx = idx + 1
        s = s + 1
        continue 
    _408 = mem[64]
    mem[mem[64]] = 32
    _411 = mem[_84]
    mem[mem[64] + 32] = mem[_84]
    idx = 0
    s = _84 + 32
    t = mem[64] + 64
    while idx < _411:
        _467 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_467 + 44 len 20]
        mem[t + 64] = mem[_467 + 76 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _408 + (96 * _411) + -mem[64] + 64
}

function getTokenInfo(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg1.length <= test266151307()
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require idx < mem[96]
            mem[mem[(32 * idx) + 128]] = address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _171 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _177 = mem[_171]
            require mem[_171] <= test266151307()
            require _171 + mem[_171] + 31 < _171 + return_data.size
            _184 = mem[_171 + mem[_171]]
            require mem[_171 + mem[_171]] <= test266151307()
            require ceil32(mem[_171 + mem[_171]]) + 32 >= 0 and _171 + ceil32(return_data.size) + ceil32(mem[_171 + mem[_171]]) + 32 <= test266151307()
            mem[64] = _171 + ceil32(return_data.size) + ceil32(mem[_171 + mem[_171]]) + 32
            mem[_171 + ceil32(return_data.size)] = _184
            require return_data.size >= _184 + _177 + 32
            s = 0
            while s < _184:
                mem[s + _171 + ceil32(return_data.size) + 32] = mem[s + _171 + _177 + 32]
                s = s + 32
                continue 
            if ceil32(_184) <= _184:
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 64] = _171 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _318 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _324 = mem[_318]
                require mem[_318] <= test266151307()
                require _318 + mem[_318] + 31 < _318 + return_data.size
                _333 = mem[_318 + mem[_318]]
                require mem[_318 + mem[_318]] <= test266151307()
                require ceil32(mem[_318 + mem[_318]]) + 32 >= 0 and _318 + ceil32(return_data.size) + ceil32(mem[_318 + mem[_318]]) + 32 <= test266151307()
                mem[64] = _318 + ceil32(return_data.size) + ceil32(mem[_318 + mem[_318]]) + 32
                mem[_318 + ceil32(return_data.size)] = _333
                require return_data.size >= _333 + _324 + 32
                s = 0
                while s < _333:
                    mem[s + _318 + ceil32(return_data.size) + 32] = mem[s + _318 + _324 + 32]
                    s = s + 32
                    continue 
                if ceil32(_333) <= _333:
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 96] = _318 + ceil32(return_data.size)
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _470 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = mem[_470]
                else:
                    mem[_318 + ceil32(return_data.size) + _333 + 32] = 0
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 96] = _318 + ceil32(return_data.size)
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _473 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = mem[_473]
            else:
                mem[_171 + ceil32(return_data.size) + _184 + 32] = 0
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 64] = _171 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _321 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _330 = mem[_321]
                require mem[_321] <= test266151307()
                require _321 + mem[_321] + 31 < _321 + return_data.size
                _336 = mem[_321 + mem[_321]]
                require mem[_321 + mem[_321]] <= test266151307()
                require ceil32(mem[_321 + mem[_321]]) + 32 >= 0 and _321 + ceil32(return_data.size) + ceil32(mem[_321 + mem[_321]]) + 32 <= test266151307()
                mem[64] = _321 + ceil32(return_data.size) + ceil32(mem[_321 + mem[_321]]) + 32
                mem[_321 + ceil32(return_data.size)] = _336
                require return_data.size >= _336 + _330 + 32
                s = 0
                while s < _336:
                    mem[s + _321 + ceil32(return_data.size) + 32] = mem[s + _321 + _330 + 32]
                    s = s + 32
                    continue 
                if ceil32(_336) <= _336:
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 96] = _321 + ceil32(return_data.size)
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _471 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = mem[_471]
                else:
                    mem[_321 + ceil32(return_data.size) + _336 + 32] = 0
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 96] = _321 + ceil32(return_data.size)
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _474 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = mem[_474]
            idx = idx + 1
            continue 
        _152 = mem[64]
        mem[mem[64]] = 32
        _153 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _153:
            mem[u] = t + -_152 - 64
            _301 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_301 + 32]
            _304 = mem[_301 + 64]
            mem[t + 64] = 128
            _307 = mem[_304]
            mem[t + 128] = mem[_304]
            v = 0
            while v < _307:
                mem[v + t + 160] = mem[v + _304 + 32]
                v = v + 32
                continue 
            if ceil32(_307) <= _307:
                _444 = mem[_301 + 96]
                mem[t + 96] = ceil32(_307) + 160
                _447 = mem[_444]
                mem[ceil32(_307) + t + 160] = mem[_444]
                v = 0
                while v < _447:
                    mem[v + ceil32(_307) + t + 192] = mem[v + _444 + 32]
                    v = v + 32
                    continue 
                if ceil32(_447) > _447:
                    mem[ceil32(_307) + t + _447 + 192] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_447) + ceil32(_307) + t + 192
                u = u + 32
                continue 
            mem[t + _307 + 160] = 0
            _448 = mem[_301 + 96]
            mem[t + 96] = ceil32(_307) + 160
            _461 = mem[_448]
            mem[ceil32(_307) + t + 160] = mem[_448]
            v = 0
            while v < _461:
                mem[v + ceil32(_307) + t + 192] = mem[v + _448 + 32]
                v = v + 32
                continue 
            if ceil32(_461) > _461:
                mem[ceil32(_307) + t + _461 + 192] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_461) + ceil32(_307) + t + 192
            u = u + 32
            continue 
    else:
        mem[64] = (32 * arg1.length) + 256
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 192] = 96
        mem[(32 * arg1.length) + 224] = 96
        mem[var17001] = (32 * arg1.length) + 128
        s = var17001
        idx = var17002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[(32 * arg1.length) + 128] = 0
            mem[(32 * arg1.length) + 160] = 0
            mem[(32 * arg1.length) + 192] = 96
            mem[(32 * arg1.length) + 224] = 96
            mem[s + 32] = (32 * arg1.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require idx < mem[96]
            mem[mem[(32 * idx) + 128]] = address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _491 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _497 = mem[_491]
            require mem[_491] <= test266151307()
            require _491 + mem[_491] + 31 < _491 + return_data.size
            _499 = mem[_491 + mem[_491]]
            require mem[_491 + mem[_491]] <= test266151307()
            require ceil32(mem[_491 + mem[_491]]) + 32 >= 0 and _491 + ceil32(return_data.size) + ceil32(mem[_491 + mem[_491]]) + 32 <= test266151307()
            mem[64] = _491 + ceil32(return_data.size) + ceil32(mem[_491 + mem[_491]]) + 32
            mem[_491 + ceil32(return_data.size)] = _499
            require return_data.size >= _499 + _497 + 32
            s = 0
            while s < _499:
                mem[s + _491 + ceil32(return_data.size) + 32] = mem[s + _491 + _497 + 32]
                s = s + 32
                continue 
            if ceil32(_499) <= _499:
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 64] = _491 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _572 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _577 = mem[_572]
                require mem[_572] <= test266151307()
                require _572 + mem[_572] + 31 < _572 + return_data.size
                _580 = mem[_572 + mem[_572]]
                require mem[_572 + mem[_572]] <= test266151307()
                require ceil32(mem[_572 + mem[_572]]) + 32 >= 0 and _572 + ceil32(return_data.size) + ceil32(mem[_572 + mem[_572]]) + 32 <= test266151307()
                mem[64] = _572 + ceil32(return_data.size) + ceil32(mem[_572 + mem[_572]]) + 32
                mem[_572 + ceil32(return_data.size)] = _580
                require return_data.size >= _580 + _577 + 32
                s = 0
                while s < _580:
                    mem[s + _572 + ceil32(return_data.size) + 32] = mem[s + _572 + _577 + 32]
                    s = s + 32
                    continue 
                if ceil32(_580) <= _580:
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 96] = _572 + ceil32(return_data.size)
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _643 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = mem[_643]
                else:
                    mem[_572 + ceil32(return_data.size) + _580 + 32] = 0
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 96] = _572 + ceil32(return_data.size)
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _646 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = mem[_646]
            else:
                mem[_491 + ceil32(return_data.size) + _499 + 32] = 0
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 64] = _491 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                staticcall address(cd[((32 * idx) + arg1 + 36)]).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _574 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _579 = mem[_574]
                require mem[_574] <= test266151307()
                require _574 + mem[_574] + 31 < _574 + return_data.size
                _583 = mem[_574 + mem[_574]]
                require mem[_574 + mem[_574]] <= test266151307()
                require ceil32(mem[_574 + mem[_574]]) + 32 >= 0 and _574 + ceil32(return_data.size) + ceil32(mem[_574 + mem[_574]]) + 32 <= test266151307()
                mem[64] = _574 + ceil32(return_data.size) + ceil32(mem[_574 + mem[_574]]) + 32
                mem[_574 + ceil32(return_data.size)] = _583
                require return_data.size >= _583 + _579 + 32
                s = 0
                while s < _583:
                    mem[s + _574 + ceil32(return_data.size) + 32] = mem[s + _574 + _579 + 32]
                    s = s + 32
                    continue 
                if ceil32(_583) <= _583:
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 96] = _574 + ceil32(return_data.size)
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _644 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = mem[_644]
                else:
                    mem[_574 + ceil32(return_data.size) + _583 + 32] = 0
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 96] = _574 + ceil32(return_data.size)
                    require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
                    staticcall address(cd[((32 * idx) + arg1 + 36)]).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _647 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = mem[_647]
            idx = idx + 1
            continue 
        _442 = mem[64]
        mem[mem[64]] = 32
        _443 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * mem[96]) + 64
        u = mem[64] + 64
        while idx < _443:
            mem[u] = t + -_442 - 64
            _556 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_556 + 32]
            _559 = mem[_556 + 64]
            mem[t + 64] = 128
            _562 = mem[_559]
            mem[t + 128] = mem[_559]
            v = 0
            while v < _562:
                mem[v + t + 160] = mem[v + _559 + 32]
                v = v + 32
                continue 
            if ceil32(_562) <= _562:
                _623 = mem[_556 + 96]
                mem[t + 96] = ceil32(_562) + 160
                _626 = mem[_623]
                mem[ceil32(_562) + t + 160] = mem[_623]
                v = 0
                while v < _626:
                    mem[v + ceil32(_562) + t + 192] = mem[v + _623 + 32]
                    v = v + 32
                    continue 
                if ceil32(_626) > _626:
                    mem[ceil32(_562) + t + _626 + 192] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_626) + ceil32(_562) + t + 192
                u = u + 32
                continue 
            mem[t + _562 + 160] = 0
            _627 = mem[_556 + 96]
            mem[t + 96] = ceil32(_562) + 160
            _636 = mem[_627]
            mem[ceil32(_562) + t + 160] = mem[_627]
            v = 0
            while v < _636:
                mem[v + ceil32(_562) + t + 192] = mem[v + _627 + 32]
                v = v + 32
                continue 
            if ceil32(_636) > _636:
                mem[ceil32(_562) + t + _636 + 192] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_636) + ceil32(_562) + t + 192
            u = u + 32
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
