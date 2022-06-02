contract main {




// =====================  Runtime code  =====================


address WETHAddress;
address sub_c62c692fAddress;
uint8 stor2;
address stor2; offset 8
address stor2;

function WETH() {
    return WETHAddress
}

function sub_c62c692f(?) {
    return sub_c62c692fAddress
}

function sub_9e50471e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(arg1))
        call address(arg1).0x23b872dd with:
             gas gas_remaining wei
            args this.address, sub_c62c692fAddress, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1bcb796c(?) {
    require ext_code.size(WETHAddress)
    staticcall WETHAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(WETHAddress)
        call WETHAddress.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address):
        call sub_c62c692fAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function getAmountOut(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if arg3 > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
        revert with 0, 17
    if arg2 == address(ext_call.return_data[0]):
        if 997 * arg3 and ext_call.return_data[50 len 14] > -1 / 997 * arg3:
            revert with 0, 17
        if ext_call.return_data[18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * ext_call.return_data[18 len 14] > !(997 * arg3):
            revert with 0, 17
        if not (1000 * ext_call.return_data[18 len 14]) + (997 * arg3):
            revert with 0, 18
        if arg2 == address(ext_call.return_data[0]):
            return address(ext_call.return_data[0]), 
                   997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3),
                   0,
                   997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3)
        return address(ext_call.return_data[0]), 
               997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3),
               997 * arg3 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg3),
               0
    if 997 * arg3 and ext_call.return_data[18 len 14] > -1 / 997 * arg3:
        revert with 0, 17
    if ext_call.return_data[50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if 1000 * ext_call.return_data[50 len 14] > !(997 * arg3):
        revert with 0, 17
    if not (1000 * ext_call.return_data[50 len 14]) + (997 * arg3):
        revert with 0, 18
    if arg2 == address(ext_call.return_data[0]):
        return address(ext_call.return_data[0]), 
               997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3),
               0,
               997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3)
    return address(ext_call.return_data[0]), 
           997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3),
           997 * arg3 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg3),
           0
}

function _fallback() {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if address(stor2.field_0) != msg.sender:
        revert with 0, 'no permission'
    require arg2.length >= 160
    _5 = mem[128]
    require mem[128] == mem[140 len 20]
    _6 = mem[160]
    _7 = mem[192]
    require mem[192] <= test266151307()
    require mem[192] + 159 < arg2.length + 128
    _8 = mem[mem[192] + 128]
    if mem[mem[192] + 128] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[192] + 128]) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(32 * mem[mem[192] + 128]) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg2.length)) + ceil32(32 * mem[mem[192] + 128]) + 98
    mem[ceil32(ceil32(arg2.length)) + 97] = mem[mem[192] + 128]
    require _7 + (32 * _8) + 64 <= arg2.length + 32
    mem[ceil32(ceil32(arg2.length)) + 129 len 32 * _8] = mem[_7 + 160 len 32 * _8]
    _42 = mem[224]
    require mem[224] <= test266151307()
    require mem[224] + 159 < arg2.length + 128
    _43 = mem[mem[224] + 128]
    if mem[mem[224] + 128] > test266151307():
        revert with 0, 65
    _44 = mem[64]
    if mem[64] + ceil32(32 * mem[mem[224] + 128]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[mem[224] + 128]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[mem[224] + 128]) + 1
    mem[_44] = mem[mem[224] + 128]
    require _42 + (32 * _43) + 64 <= arg2.length + 32
    mem[_44 + 32 len 32 * _43] = mem[_42 + 160 len 32 * _43]
    _73 = mem[256]
    require mem[256] <= test266151307()
    require arg2.length + 128 > mem[256] + 159
    _74 = mem[mem[256] + 128]
    if mem[mem[256] + 128] > test266151307():
        revert with 0, 65
    _75 = mem[64]
    if mem[64] + ceil32(32 * mem[mem[256] + 128]) + 1 < mem[64] or mem[64] + ceil32(32 * mem[mem[256] + 128]) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * mem[mem[256] + 128]) + 1
    mem[_75] = mem[mem[256] + 128]
    require _73 + (32 * _74) + 64 <= arg2.length + 32
    s = _73 + 160
    t = _75 + 32
    idx = 0
    while idx < _74:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if 0 < _74:
        mem[mem[64] + 4] = mem[_75 + 44 len 20]
        mem[mem[64] + 36] = _6
        require ext_code.size(address(_5))
        call address(_5).0xa9059cbb with:
             gas gas_remaining wei
            args mem[mem[64] + 4], _6
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _104 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_104] == bool(mem[_104])
        if var104001 < 1:
            revert with 0, 17
        if var108002 >= var108001:
            return memory
              from 128
               len mem[96]
        if var110001 < _74:
            if var112004 < mem[ceil32(ceil32(arg2.length)) + 97]:
                if var114006 < mem[_44]:
                    if 1 > !var118002:
                        revert with 0, 17
                    idx = var120003 + 1
                    s = var120006
                    t = var120007
                    u = var120009
                    v = var120010
                    v = var120011
                    while idx < _74:
                        _335 = mem[(32 * idx) + _75 + 32]
                        _336 = mem[64]
                        mem[64] = mem[64] + 32
                        mem[_336 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_336 + 36] = t
                        mem[_336 + 68] = s
                        mem[_336 + 100] = address(_335)
                        mem[_336 + 132] = 128
                        mem[_336 + 164] = mem[_336]
                        idx = 0
                        while idx < mem[_336]:
                            mem[idx + _336 + 196] = mem[idx + _336 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(mem[_336]) > mem[_336]:
                            mem[_336 + mem[_336] + 196] = 0
                        require ext_code.size(u)
                        call u.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args t, s, address(_335), Array(len=mem[_336], data=mem[_336 + 196 len ceil32(mem[_336])])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if v == -1:
                            revert with 0, 17
                        if mem[_75] < 1:
                            revert with 0, 17
                        if v + 1 >= mem[_75] - 1:
                            return memory
                              from 128
                               len mem[96]
                        if v + 1 >= mem[_75]:
                            revert with 0, 50
                        if v + 1 >= mem[ceil32(ceil32(arg2.length)) + 97]:
                            revert with 0, 50
                        if v + 1 >= mem[_44]:
                            revert with 0, 50
                        if 1 > !(v + 1):
                            revert with 0, 17
                        idx = v + 2
                        s = mem[(32 * v + 1) + _44 + 32]
                        t = mem[(32 * v + 1) + ceil32(ceil32(arg2.length)) + 129]
                        u = mem[(32 * v + 1) + _75 + 44 len 20]
                        v = mem[(32 * v + 1) + _75 + 32]
                        v = v + 1
                        continue 
    revert with 0, 50
}

function sub_e5d17e96(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 97 < 96 or ceil32(32 * ('cd', 68).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 68).length) + 97] = ('cd', 68).length
    if not ('cd', 68).length:
        if ('cd', 68).length > test266151307():
            revert with 0, 65
        mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 129] = ('cd', 68).length
        mem[64] = ceil32(32 * ('cd', 68).length) + (64 * ('cd', 68).length) + 161
        if not ('cd', 68).length:
            idx = 0
            s = cd[4]
            t = cd[36]
            while idx < ('cd', 68).length:
                if idx >= mem[96]:
                    revert with 0, 50
                _271 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _290 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _298 = mem[_290]
                require mem[_290] == mem[_290 + 12 len 20]
                require ext_code.size(address(_271))
                staticcall address(_271).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _322 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _326 = mem[_322]
                require mem[_322] == mem[_322 + 12 len 20]
                require ext_code.size(address(_271))
                staticcall address(_271).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _338 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _342 = mem[_338]
                require mem[_338] == mem[_338 + 18 len 14]
                _346 = mem[_338 + 32]
                require mem[_338 + 32] == mem[_338 + 50 len 14]
                require mem[_338 + 64] == mem[_338 + 92 len 4]
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if address(s) == address(_298):
                    if 997 * t and mem[_338 + 50 len 14] > -1 / 997 * t:
                        revert with 0, 17
                    if mem[_338 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_338 + 18 len 14] > !(997 * t):
                        revert with 0, 17
                    if not (1000 * mem[_338 + 18 len 14]) + (997 * t):
                        revert with 0, 18
                    if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                        revert with 0, 50
                    if idx >= mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 129]:
                        revert with 0, 50
                    if address(s) == address(_298):
                        mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161] = 997 * t * mem[_338 + 50 len 14] / (1000 * mem[_338 + 18 len 14]) + (997 * t)
                        mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _326
                        t = 997 * t * Mask(112, 0, _346) / (1000 * Mask(112, 0, _342)) + (997 * t)
                        continue 
                    mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161] = 0
                    mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] = 997 * t * Mask(112, 0, _346) / (1000 * Mask(112, 0, _342)) + (997 * t)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _298
                    t = 997 * t * Mask(112, 0, _346) / (1000 * Mask(112, 0, _342)) + (997 * t)
                    continue 
                if 997 * t and mem[_338 + 18 len 14] > -1 / 997 * t:
                    revert with 0, 17
                if mem[_338 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_338 + 50 len 14] > !(997 * t):
                    revert with 0, 17
                if not (1000 * mem[_338 + 50 len 14]) + (997 * t):
                    revert with 0, 18
                if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 129]:
                    revert with 0, 50
                if address(s) == address(_298):
                    mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161] = 997 * t * mem[_338 + 18 len 14] / (1000 * mem[_338 + 50 len 14]) + (997 * t)
                    mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _326
                    t = 997 * t * Mask(112, 0, _342) / (1000 * Mask(112, 0, _346)) + (997 * t)
                    continue 
                mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161] = 0
                mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] = 997 * t * Mask(112, 0, _342) / (1000 * Mask(112, 0, _346)) + (997 * t)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _298
                t = 997 * t * Mask(112, 0, _342) / (1000 * Mask(112, 0, _346)) + (997 * t)
                continue 
            _270 = mem[64]
            mem[mem[64]] = t
            mem[mem[64] + 32] = 96
            _286 = mem[ceil32(32 * ('cd', 68).length) + 97]
            mem[mem[64] + 96] = mem[ceil32(32 * ('cd', 68).length) + 97]
            mem[mem[64] + 128 len 32 * _286] = mem[ceil32(32 * ('cd', 68).length) + 129 len 32 * _286]
            mem[mem[64] + 64] = (32 * _286) + 128
            _390 = mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 129]
            mem[_270 + (32 * _286) + 128] = mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 129]
            mem[_270 + (32 * _286) + 160 len 32 * _390] = mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161 len 32 * _390]
            return memory
              from mem[64]
               len _270 + (32 * _286) + (32 * _390) + -mem[64] + 160
        mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        idx = 0
        s = cd[4]
        t = cd[36]
        while idx < ('cd', 68).length:
            if idx >= mem[96]:
                revert with 0, 50
            _273 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _291 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _299 = mem[_291]
            require mem[_291] == mem[_291 + 12 len 20]
            require ext_code.size(address(_273))
            staticcall address(_273).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _323 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _327 = mem[_323]
            require mem[_323] == mem[_323 + 12 len 20]
            require ext_code.size(address(_273))
            staticcall address(_273).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _339 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _343 = mem[_339]
            require mem[_339] == mem[_339 + 18 len 14]
            _347 = mem[_339 + 32]
            require mem[_339 + 32] == mem[_339 + 50 len 14]
            require mem[_339 + 64] == mem[_339 + 92 len 4]
            if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if address(s) == address(_299):
                if 997 * t and mem[_339 + 50 len 14] > -1 / 997 * t:
                    revert with 0, 17
                if mem[_339 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_339 + 18 len 14] > !(997 * t):
                    revert with 0, 17
                if not (1000 * mem[_339 + 18 len 14]) + (997 * t):
                    revert with 0, 18
                if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 129]:
                    revert with 0, 50
                if address(s) == address(_299):
                    mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161] = 997 * t * mem[_339 + 50 len 14] / (1000 * mem[_339 + 18 len 14]) + (997 * t)
                    mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _327
                    t = 997 * t * Mask(112, 0, _347) / (1000 * Mask(112, 0, _343)) + (997 * t)
                    continue 
                mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161] = 0
                mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] = 997 * t * Mask(112, 0, _347) / (1000 * Mask(112, 0, _343)) + (997 * t)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _299
                t = 997 * t * Mask(112, 0, _347) / (1000 * Mask(112, 0, _343)) + (997 * t)
                continue 
            if 997 * t and mem[_339 + 18 len 14] > -1 / 997 * t:
                revert with 0, 17
            if mem[_339 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * mem[_339 + 50 len 14] > !(997 * t):
                revert with 0, 17
            if not (1000 * mem[_339 + 50 len 14]) + (997 * t):
                revert with 0, 18
            if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                revert with 0, 50
            if idx >= mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 129]:
                revert with 0, 50
            if address(s) == address(_299):
                mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161] = 997 * t * mem[_339 + 18 len 14] / (1000 * mem[_339 + 50 len 14]) + (997 * t)
                mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _327
                t = 997 * t * Mask(112, 0, _343) / (1000 * Mask(112, 0, _347)) + (997 * t)
                continue 
            mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161] = 0
            mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] = 997 * t * Mask(112, 0, _343) / (1000 * Mask(112, 0, _347)) + (997 * t)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _299
            t = 997 * t * Mask(112, 0, _343) / (1000 * Mask(112, 0, _347)) + (997 * t)
            continue 
        _272 = mem[64]
        mem[mem[64]] = t
        mem[mem[64] + 32] = 96
        _287 = mem[ceil32(32 * ('cd', 68).length) + 97]
        mem[mem[64] + 96] = mem[ceil32(32 * ('cd', 68).length) + 97]
        mem[mem[64] + 128 len 32 * _287] = mem[ceil32(32 * ('cd', 68).length) + 129 len 32 * _287]
        mem[mem[64] + 64] = (32 * _287) + 128
        _391 = mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 129]
        mem[_272 + (32 * _287) + 128] = mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 129]
        mem[_272 + (32 * _287) + 160 len 32 * _391] = mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161 len 32 * _391]
        return memory
          from mem[64]
           len _272 + (32 * _287) + (32 * _391) + -mem[64] + 160
    mem[ceil32(32 * ('cd', 68).length) + 129 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 129] = ('cd', 68).length
    mem[64] = ceil32(32 * ('cd', 68).length) + (64 * ('cd', 68).length) + 161
    if not ('cd', 68).length:
        idx = 0
        s = cd[4]
        t = cd[36]
        while idx < ('cd', 68).length:
            if idx >= mem[96]:
                revert with 0, 50
            _275 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _292 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _300 = mem[_292]
            require mem[_292] == mem[_292 + 12 len 20]
            require ext_code.size(address(_275))
            staticcall address(_275).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _324 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _328 = mem[_324]
            require mem[_324] == mem[_324 + 12 len 20]
            require ext_code.size(address(_275))
            staticcall address(_275).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _340 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _344 = mem[_340]
            require mem[_340] == mem[_340 + 18 len 14]
            _348 = mem[_340 + 32]
            require mem[_340 + 32] == mem[_340 + 50 len 14]
            require mem[_340 + 64] == mem[_340 + 92 len 4]
            if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                revert with 0, 17
            if address(s) == address(_300):
                if 997 * t and mem[_340 + 50 len 14] > -1 / 997 * t:
                    revert with 0, 17
                if mem[_340 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_340 + 18 len 14] > !(997 * t):
                    revert with 0, 17
                if not (1000 * mem[_340 + 18 len 14]) + (997 * t):
                    revert with 0, 18
                if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 129]:
                    revert with 0, 50
                if address(s) == address(_300):
                    mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161] = 997 * t * mem[_340 + 50 len 14] / (1000 * mem[_340 + 18 len 14]) + (997 * t)
                    mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _328
                    t = 997 * t * Mask(112, 0, _348) / (1000 * Mask(112, 0, _344)) + (997 * t)
                    continue 
                mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161] = 0
                mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] = 997 * t * Mask(112, 0, _348) / (1000 * Mask(112, 0, _344)) + (997 * t)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _300
                t = 997 * t * Mask(112, 0, _348) / (1000 * Mask(112, 0, _344)) + (997 * t)
                continue 
            if 997 * t and mem[_340 + 18 len 14] > -1 / 997 * t:
                revert with 0, 17
            if mem[_340 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * mem[_340 + 50 len 14] > !(997 * t):
                revert with 0, 17
            if not (1000 * mem[_340 + 50 len 14]) + (997 * t):
                revert with 0, 18
            if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                revert with 0, 50
            if idx >= mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 129]:
                revert with 0, 50
            if address(s) == address(_300):
                mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161] = 997 * t * mem[_340 + 18 len 14] / (1000 * mem[_340 + 50 len 14]) + (997 * t)
                mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _328
                t = 997 * t * Mask(112, 0, _344) / (1000 * Mask(112, 0, _348)) + (997 * t)
                continue 
            mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161] = 0
            mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] = 997 * t * Mask(112, 0, _344) / (1000 * Mask(112, 0, _348)) + (997 * t)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _300
            t = 997 * t * Mask(112, 0, _344) / (1000 * Mask(112, 0, _348)) + (997 * t)
            continue 
        _274 = mem[64]
        mem[mem[64]] = t
        mem[mem[64] + 32] = 96
        _288 = mem[ceil32(32 * ('cd', 68).length) + 97]
        mem[mem[64] + 96] = mem[ceil32(32 * ('cd', 68).length) + 97]
        mem[mem[64] + 128 len 32 * _288] = mem[ceil32(32 * ('cd', 68).length) + 129 len 32 * _288]
        mem[mem[64] + 64] = (32 * _288) + 128
        _392 = mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 129]
        mem[_274 + (32 * _288) + 128] = mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 129]
        mem[_274 + (32 * _288) + 160 len 32 * _392] = mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161 len 32 * _392]
        return memory
          from mem[64]
           len _274 + (32 * _288) + (32 * _392) + -mem[64] + 160
    mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
    idx = 0
    s = cd[4]
    t = cd[36]
    while idx < ('cd', 68).length:
        if idx >= mem[96]:
            revert with 0, 50
        _277 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _293 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _301 = mem[_293]
        require mem[_293] == mem[_293 + 12 len 20]
        require ext_code.size(address(_277))
        staticcall address(_277).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _325 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _329 = mem[_325]
        require mem[_325] == mem[_325 + 12 len 20]
        require ext_code.size(address(_277))
        staticcall address(_277).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _341 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _345 = mem[_341]
        require mem[_341] == mem[_341 + 18 len 14]
        _349 = mem[_341 + 32]
        require mem[_341 + 32] == mem[_341 + 50 len 14]
        require mem[_341 + 64] == mem[_341 + 92 len 4]
        if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
            revert with 0, 17
        if address(s) == address(_301):
            if 997 * t and mem[_341 + 50 len 14] > -1 / 997 * t:
                revert with 0, 17
            if mem[_341 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                revert with 0, 17
            if 1000 * mem[_341 + 18 len 14] > !(997 * t):
                revert with 0, 17
            if not (1000 * mem[_341 + 18 len 14]) + (997 * t):
                revert with 0, 18
            if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
                revert with 0, 50
            if idx >= mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 129]:
                revert with 0, 50
            if address(s) == address(_301):
                mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161] = 997 * t * mem[_341 + 50 len 14] / (1000 * mem[_341 + 18 len 14]) + (997 * t)
                mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _329
                t = 997 * t * Mask(112, 0, _349) / (1000 * Mask(112, 0, _345)) + (997 * t)
                continue 
            mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161] = 0
            mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] = 997 * t * Mask(112, 0, _349) / (1000 * Mask(112, 0, _345)) + (997 * t)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _301
            t = 997 * t * Mask(112, 0, _349) / (1000 * Mask(112, 0, _345)) + (997 * t)
            continue 
        if 997 * t and mem[_341 + 18 len 14] > -1 / 997 * t:
            revert with 0, 17
        if mem[_341 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
            revert with 0, 17
        if 1000 * mem[_341 + 50 len 14] > !(997 * t):
            revert with 0, 17
        if not (1000 * mem[_341 + 50 len 14]) + (997 * t):
            revert with 0, 18
        if idx >= mem[ceil32(32 * ('cd', 68).length) + 97]:
            revert with 0, 50
        if idx >= mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 129]:
            revert with 0, 50
        if address(s) == address(_301):
            mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161] = 997 * t * mem[_341 + 18 len 14] / (1000 * mem[_341 + 50 len 14]) + (997 * t)
            mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _329
            t = 997 * t * Mask(112, 0, _345) / (1000 * Mask(112, 0, _349)) + (997 * t)
            continue 
        mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161] = 0
        mem[(32 * idx) + ceil32(32 * ('cd', 68).length) + 129] = 997 * t * Mask(112, 0, _345) / (1000 * Mask(112, 0, _349)) + (997 * t)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _301
        t = 997 * t * Mask(112, 0, _345) / (1000 * Mask(112, 0, _349)) + (997 * t)
        continue 
    _276 = mem[64]
    mem[mem[64]] = t
    mem[mem[64] + 32] = 96
    _289 = mem[ceil32(32 * ('cd', 68).length) + 97]
    mem[mem[64] + 96] = mem[ceil32(32 * ('cd', 68).length) + 97]
    mem[mem[64] + 128 len 32 * _289] = mem[ceil32(32 * ('cd', 68).length) + 129 len 32 * _289]
    mem[mem[64] + 64] = (32 * _289) + 128
    _393 = mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 129]
    mem[_276 + (32 * _289) + 128] = mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 129]
    mem[_276 + (32 * _289) + 160 len 32 * _393] = mem[ceil32(32 * ('cd', 68).length) + (32 * ('cd', 68).length) + 161 len 32 * _393]
    return memory
      from mem[64]
       len _276 + (32 * _289) + (32 * _393) + -mem[64] + 160
}

function sub_c8c17f8d(?) {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 97 < 96 or ceil32(32 * ('cd', 100).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 100).length) + 97] = ('cd', 100).length
    if not ('cd', 100).length:
        if ('cd', 100).length > test266151307():
            revert with 0, 65
        mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129] = ('cd', 100).length
        mem[64] = ceil32(32 * ('cd', 100).length) + (64 * ('cd', 100).length) + 161
        if not ('cd', 100).length:
            idx = 0
            s = cd[4]
            t = cd[36]
            while idx < ('cd', 100).length:
                if idx >= mem[96]:
                    revert with 0, 50
                _414 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _438 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _448 = mem[_438]
                require mem[_438] == mem[_438 + 12 len 20]
                require ext_code.size(address(_414))
                staticcall address(_414).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _478 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _488 = mem[_478]
                require mem[_478] == mem[_478 + 12 len 20]
                require ext_code.size(address(_414))
                staticcall address(_414).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _515 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _527 = mem[_515]
                require mem[_515] == mem[_515 + 18 len 14]
                _540 = mem[_515 + 32]
                require mem[_515 + 32] == mem[_515 + 50 len 14]
                require mem[_515 + 64] == mem[_515 + 92 len 4]
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if address(s) == address(_448):
                    if 997 * t and mem[_515 + 50 len 14] > -1 / 997 * t:
                        revert with 0, 17
                    if mem[_515 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_515 + 18 len 14] > !(997 * t):
                        revert with 0, 17
                    if not (1000 * mem[_515 + 18 len 14]) + (997 * t):
                        revert with 0, 18
                    if idx >= mem[ceil32(32 * ('cd', 100).length) + 97]:
                        revert with 0, 50
                    if idx >= mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129]:
                        revert with 0, 50
                    if address(s) == address(_448):
                        mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161] = 997 * t * mem[_515 + 50 len 14] / (1000 * mem[_515 + 18 len 14]) + (997 * t)
                        mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + 129] = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _488
                        t = 997 * t * Mask(112, 0, _540) / (1000 * Mask(112, 0, _527)) + (997 * t)
                        continue 
                    mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161] = 0
                    mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + 129] = 997 * t * Mask(112, 0, _540) / (1000 * Mask(112, 0, _527)) + (997 * t)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _448
                    t = 997 * t * Mask(112, 0, _540) / (1000 * Mask(112, 0, _527)) + (997 * t)
                    continue 
                if 997 * t and mem[_515 + 18 len 14] > -1 / 997 * t:
                    revert with 0, 17
                if mem[_515 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_515 + 50 len 14] > !(997 * t):
                    revert with 0, 17
                if not (1000 * mem[_515 + 50 len 14]) + (997 * t):
                    revert with 0, 18
                if idx >= mem[ceil32(32 * ('cd', 100).length) + 97]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129]:
                    revert with 0, 50
                if address(s) == address(_448):
                    mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161] = 997 * t * mem[_515 + 18 len 14] / (1000 * mem[_515 + 50 len 14]) + (997 * t)
                    mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + 129] = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _488
                    t = 997 * t * Mask(112, 0, _527) / (1000 * Mask(112, 0, _540)) + (997 * t)
                    continue 
                mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161] = 0
                mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + 129] = 997 * t * Mask(112, 0, _527) / (1000 * Mask(112, 0, _540)) + (997 * t)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _448
                t = 997 * t * Mask(112, 0, _527) / (1000 * Mask(112, 0, _540)) + (997 * t)
                continue 
            if t < cd[68]:
                revert with 0, 'no profit'
            if mem[96] < 1:
                revert with 0, 17
            if mem[96] - 1 >= mem[96]:
                revert with 0, 50
            _446 = mem[(32 * mem[96] - 1) + 128]
            address(stor2.field_0) = mem[(32 * mem[96] - 1) + 140 len 20]
            if mem[ceil32(32 * ('cd', 100).length) + 97] < 1:
                revert with 0, 17
            if mem[ceil32(32 * ('cd', 100).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 100).length) + 97]:
                revert with 0, 50
            _462 = mem[(32 * mem[ceil32(32 * ('cd', 100).length) + 97] - 1) + ceil32(32 * ('cd', 100).length) + 129]
            if mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129] < 1:
                revert with 0, 17
            if mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129]:
                revert with 0, 50
            _486 = mem[(32 * mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129] - 1) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161]
            _487 = mem[64]
            mem[mem[64] + 32] = address(cd[4])
            mem[mem[64] + 64] = cd[36]
            mem[mem[64] + 96] = 160
            _498 = mem[ceil32(32 * ('cd', 100).length) + 97]
            mem[mem[64] + 192] = mem[ceil32(32 * ('cd', 100).length) + 97]
            mem[mem[64] + 224 len 32 * _498] = mem[ceil32(32 * ('cd', 100).length) + 129 len 32 * _498]
            mem[mem[64] + 128] = (32 * _498) + 192
            _606 = mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129]
            mem[mem[64] + (32 * _498) + 224] = mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129]
            mem[mem[64] + (32 * _498) + 256 len 32 * _606] = mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161 len 32 * _606]
            mem[mem[64] + 160] = (32 * _498) + (32 * _606) + 224
            _650 = mem[96]
            mem[mem[64] + (32 * _498) + (32 * _606) + 256] = mem[96]
            idx = 0
            s = mem[64] + (32 * _498) + (32 * _606) + 288
            t = 128
            while idx < mem[96]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _686 = mem[64]
            mem[64] = _487 + (32 * _498) + (32 * _606) + (32 * mem[96]) + 288
            mem[_487 + (32 * _498) + (32 * _606) + (32 * mem[96]) + 288] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_487 + (32 * _498) + (32 * _606) + (32 * mem[96]) + 292] = _462
            mem[_487 + (32 * _498) + (32 * _606) + (32 * mem[96]) + 324] = _486
            mem[_487 + (32 * _498) + (32 * _606) + (32 * mem[96]) + 356] = this.address
            mem[_487 + (32 * _498) + (32 * _606) + (32 * mem[96]) + 388] = 128
            _694 = mem[_686]
            mem[_487 + (32 * _498) + (32 * _606) + (32 * mem[96]) + 420] = mem[_686]
            mem[_487 + (32 * _498) + (32 * _606) + (32 * mem[96]) + 452 len ceil32(_694)] = mem[_686 + 32 len ceil32(_694)]
            if ceil32(_694) > _694:
                mem[_487 + (32 * _498) + (32 * _606) + (32 * mem[96]) + _694 + 452] = 0
            require ext_code.size(address(_446))
            call address(_446).mem[_487 + (32 * _498) + (32 * _606) + (32 * _650) + 288 len 4] with:
                 gas gas_remaining wei
                args mem[_487 + (32 * _498) + (32 * _606) + (32 * _650) + 292 len ceil32(_694) + (32 * mem[96]) + -(32 * _650) + 160]
        else:
            mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161 len 32 * ('cd', 100).length] = call.data[calldata.size len 32 * ('cd', 100).length]
            idx = 0
            s = cd[4]
            t = cd[36]
            while idx < ('cd', 100).length:
                if idx >= mem[96]:
                    revert with 0, 50
                _415 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _439 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _451 = mem[_439]
                require mem[_439] == mem[_439 + 12 len 20]
                require ext_code.size(address(_415))
                staticcall address(_415).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _479 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _491 = mem[_479]
                require mem[_479] == mem[_479 + 12 len 20]
                require ext_code.size(address(_415))
                staticcall address(_415).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _517 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _529 = mem[_517]
                require mem[_517] == mem[_517 + 18 len 14]
                _543 = mem[_517 + 32]
                require mem[_517 + 32] == mem[_517 + 50 len 14]
                require mem[_517 + 64] == mem[_517 + 92 len 4]
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if address(s) == address(_451):
                    if 997 * t and mem[_517 + 50 len 14] > -1 / 997 * t:
                        revert with 0, 17
                    if mem[_517 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_517 + 18 len 14] > !(997 * t):
                        revert with 0, 17
                    if not (1000 * mem[_517 + 18 len 14]) + (997 * t):
                        revert with 0, 18
                    if idx >= mem[ceil32(32 * ('cd', 100).length) + 97]:
                        revert with 0, 50
                    if idx >= mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129]:
                        revert with 0, 50
                    if address(s) == address(_451):
                        mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161] = 997 * t * mem[_517 + 50 len 14] / (1000 * mem[_517 + 18 len 14]) + (997 * t)
                        mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + 129] = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _491
                        t = 997 * t * Mask(112, 0, _543) / (1000 * Mask(112, 0, _529)) + (997 * t)
                        continue 
                    mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161] = 0
                    mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + 129] = 997 * t * Mask(112, 0, _543) / (1000 * Mask(112, 0, _529)) + (997 * t)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _451
                    t = 997 * t * Mask(112, 0, _543) / (1000 * Mask(112, 0, _529)) + (997 * t)
                    continue 
                if 997 * t and mem[_517 + 18 len 14] > -1 / 997 * t:
                    revert with 0, 17
                if mem[_517 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_517 + 50 len 14] > !(997 * t):
                    revert with 0, 17
                if not (1000 * mem[_517 + 50 len 14]) + (997 * t):
                    revert with 0, 18
                if idx >= mem[ceil32(32 * ('cd', 100).length) + 97]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129]:
                    revert with 0, 50
                if address(s) == address(_451):
                    mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161] = 997 * t * mem[_517 + 18 len 14] / (1000 * mem[_517 + 50 len 14]) + (997 * t)
                    mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + 129] = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _491
                    t = 997 * t * Mask(112, 0, _529) / (1000 * Mask(112, 0, _543)) + (997 * t)
                    continue 
                mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161] = 0
                mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + 129] = 997 * t * Mask(112, 0, _529) / (1000 * Mask(112, 0, _543)) + (997 * t)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _451
                t = 997 * t * Mask(112, 0, _529) / (1000 * Mask(112, 0, _543)) + (997 * t)
                continue 
            if t < cd[68]:
                revert with 0, 'no profit'
            if mem[96] < 1:
                revert with 0, 17
            if mem[96] - 1 >= mem[96]:
                revert with 0, 50
            _449 = mem[(32 * mem[96] - 1) + 128]
            address(stor2.field_0) = mem[(32 * mem[96] - 1) + 140 len 20]
            if mem[ceil32(32 * ('cd', 100).length) + 97] < 1:
                revert with 0, 17
            if mem[ceil32(32 * ('cd', 100).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 100).length) + 97]:
                revert with 0, 50
            _466 = mem[(32 * mem[ceil32(32 * ('cd', 100).length) + 97] - 1) + ceil32(32 * ('cd', 100).length) + 129]
            if mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129] < 1:
                revert with 0, 17
            if mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129]:
                revert with 0, 50
            _489 = mem[(32 * mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129] - 1) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161]
            _490 = mem[64]
            mem[mem[64] + 32] = address(cd[4])
            mem[mem[64] + 64] = cd[36]
            mem[mem[64] + 96] = 160
            _499 = mem[ceil32(32 * ('cd', 100).length) + 97]
            mem[mem[64] + 192] = mem[ceil32(32 * ('cd', 100).length) + 97]
            mem[mem[64] + 224 len 32 * _499] = mem[ceil32(32 * ('cd', 100).length) + 129 len 32 * _499]
            mem[mem[64] + 128] = (32 * _499) + 192
            _607 = mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129]
            mem[mem[64] + (32 * _499) + 224] = mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129]
            mem[mem[64] + (32 * _499) + 256 len 32 * _607] = mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161 len 32 * _607]
            mem[mem[64] + 160] = (32 * _499) + (32 * _607) + 224
            _651 = mem[96]
            mem[mem[64] + (32 * _499) + (32 * _607) + 256] = mem[96]
            idx = 0
            s = mem[64] + (32 * _499) + (32 * _607) + 288
            t = 128
            while idx < mem[96]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _688 = mem[64]
            mem[64] = _490 + (32 * _499) + (32 * _607) + (32 * mem[96]) + 288
            mem[_490 + (32 * _499) + (32 * _607) + (32 * mem[96]) + 288] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_490 + (32 * _499) + (32 * _607) + (32 * mem[96]) + 292] = _466
            mem[_490 + (32 * _499) + (32 * _607) + (32 * mem[96]) + 324] = _489
            mem[_490 + (32 * _499) + (32 * _607) + (32 * mem[96]) + 356] = this.address
            mem[_490 + (32 * _499) + (32 * _607) + (32 * mem[96]) + 388] = 128
            _695 = mem[_688]
            mem[_490 + (32 * _499) + (32 * _607) + (32 * mem[96]) + 420] = mem[_688]
            mem[_490 + (32 * _499) + (32 * _607) + (32 * mem[96]) + 452 len ceil32(_695)] = mem[_688 + 32 len ceil32(_695)]
            if ceil32(_695) > _695:
                mem[_490 + (32 * _499) + (32 * _607) + (32 * mem[96]) + _695 + 452] = 0
            require ext_code.size(address(_449))
            call address(_449).mem[_490 + (32 * _499) + (32 * _607) + (32 * _651) + 288 len 4] with:
                 gas gas_remaining wei
                args mem[_490 + (32 * _499) + (32 * _607) + (32 * _651) + 292 len ceil32(_695) + (32 * mem[96]) + -(32 * _651) + 160]
    else:
        mem[ceil32(32 * ('cd', 100).length) + 129 len 32 * ('cd', 100).length] = call.data[calldata.size len 32 * ('cd', 100).length]
        if ('cd', 100).length > test266151307():
            revert with 0, 65
        mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129] = ('cd', 100).length
        mem[64] = ceil32(32 * ('cd', 100).length) + (64 * ('cd', 100).length) + 161
        if not ('cd', 100).length:
            idx = 0
            s = cd[4]
            t = cd[36]
            while idx < ('cd', 100).length:
                if idx >= mem[96]:
                    revert with 0, 50
                _416 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _440 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _454 = mem[_440]
                require mem[_440] == mem[_440 + 12 len 20]
                require ext_code.size(address(_416))
                staticcall address(_416).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _480 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _494 = mem[_480]
                require mem[_480] == mem[_480 + 12 len 20]
                require ext_code.size(address(_416))
                staticcall address(_416).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _519 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _531 = mem[_519]
                require mem[_519] == mem[_519 + 18 len 14]
                _546 = mem[_519 + 32]
                require mem[_519 + 32] == mem[_519 + 50 len 14]
                require mem[_519 + 64] == mem[_519 + 92 len 4]
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if address(s) == address(_454):
                    if 997 * t and mem[_519 + 50 len 14] > -1 / 997 * t:
                        revert with 0, 17
                    if mem[_519 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_519 + 18 len 14] > !(997 * t):
                        revert with 0, 17
                    if not (1000 * mem[_519 + 18 len 14]) + (997 * t):
                        revert with 0, 18
                    if idx >= mem[ceil32(32 * ('cd', 100).length) + 97]:
                        revert with 0, 50
                    if idx >= mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129]:
                        revert with 0, 50
                    if address(s) == address(_454):
                        mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161] = 997 * t * mem[_519 + 50 len 14] / (1000 * mem[_519 + 18 len 14]) + (997 * t)
                        mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + 129] = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _494
                        t = 997 * t * Mask(112, 0, _546) / (1000 * Mask(112, 0, _531)) + (997 * t)
                        continue 
                    mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161] = 0
                    mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + 129] = 997 * t * Mask(112, 0, _546) / (1000 * Mask(112, 0, _531)) + (997 * t)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _454
                    t = 997 * t * Mask(112, 0, _546) / (1000 * Mask(112, 0, _531)) + (997 * t)
                    continue 
                if 997 * t and mem[_519 + 18 len 14] > -1 / 997 * t:
                    revert with 0, 17
                if mem[_519 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_519 + 50 len 14] > !(997 * t):
                    revert with 0, 17
                if not (1000 * mem[_519 + 50 len 14]) + (997 * t):
                    revert with 0, 18
                if idx >= mem[ceil32(32 * ('cd', 100).length) + 97]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129]:
                    revert with 0, 50
                if address(s) == address(_454):
                    mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161] = 997 * t * mem[_519 + 18 len 14] / (1000 * mem[_519 + 50 len 14]) + (997 * t)
                    mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + 129] = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _494
                    t = 997 * t * Mask(112, 0, _531) / (1000 * Mask(112, 0, _546)) + (997 * t)
                    continue 
                mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161] = 0
                mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + 129] = 997 * t * Mask(112, 0, _531) / (1000 * Mask(112, 0, _546)) + (997 * t)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _454
                t = 997 * t * Mask(112, 0, _531) / (1000 * Mask(112, 0, _546)) + (997 * t)
                continue 
            if t < cd[68]:
                revert with 0, 'no profit'
            if mem[96] < 1:
                revert with 0, 17
            if mem[96] - 1 >= mem[96]:
                revert with 0, 50
            _452 = mem[(32 * mem[96] - 1) + 128]
            address(stor2.field_0) = mem[(32 * mem[96] - 1) + 140 len 20]
            if mem[ceil32(32 * ('cd', 100).length) + 97] < 1:
                revert with 0, 17
            if mem[ceil32(32 * ('cd', 100).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 100).length) + 97]:
                revert with 0, 50
            _470 = mem[(32 * mem[ceil32(32 * ('cd', 100).length) + 97] - 1) + ceil32(32 * ('cd', 100).length) + 129]
            if mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129] < 1:
                revert with 0, 17
            if mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129]:
                revert with 0, 50
            _492 = mem[(32 * mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129] - 1) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161]
            _493 = mem[64]
            mem[mem[64] + 32] = address(cd[4])
            mem[mem[64] + 64] = cd[36]
            mem[mem[64] + 96] = 160
            _500 = mem[ceil32(32 * ('cd', 100).length) + 97]
            mem[mem[64] + 192] = mem[ceil32(32 * ('cd', 100).length) + 97]
            mem[mem[64] + 224 len 32 * _500] = mem[ceil32(32 * ('cd', 100).length) + 129 len 32 * _500]
            mem[mem[64] + 128] = (32 * _500) + 192
            _608 = mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129]
            mem[mem[64] + (32 * _500) + 224] = mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129]
            mem[mem[64] + (32 * _500) + 256 len 32 * _608] = mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161 len 32 * _608]
            mem[mem[64] + 160] = (32 * _500) + (32 * _608) + 224
            _652 = mem[96]
            mem[mem[64] + (32 * _500) + (32 * _608) + 256] = mem[96]
            idx = 0
            s = mem[64] + (32 * _500) + (32 * _608) + 288
            t = 128
            while idx < mem[96]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _690 = mem[64]
            mem[64] = _493 + (32 * _500) + (32 * _608) + (32 * mem[96]) + 288
            mem[_493 + (32 * _500) + (32 * _608) + (32 * mem[96]) + 288] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_493 + (32 * _500) + (32 * _608) + (32 * mem[96]) + 292] = _470
            mem[_493 + (32 * _500) + (32 * _608) + (32 * mem[96]) + 324] = _492
            mem[_493 + (32 * _500) + (32 * _608) + (32 * mem[96]) + 356] = this.address
            mem[_493 + (32 * _500) + (32 * _608) + (32 * mem[96]) + 388] = 128
            _696 = mem[_690]
            mem[_493 + (32 * _500) + (32 * _608) + (32 * mem[96]) + 420] = mem[_690]
            mem[_493 + (32 * _500) + (32 * _608) + (32 * mem[96]) + 452 len ceil32(_696)] = mem[_690 + 32 len ceil32(_696)]
            if ceil32(_696) > _696:
                mem[_493 + (32 * _500) + (32 * _608) + (32 * mem[96]) + _696 + 452] = 0
            require ext_code.size(address(_452))
            call address(_452).mem[_493 + (32 * _500) + (32 * _608) + (32 * _652) + 288 len 4] with:
                 gas gas_remaining wei
                args mem[_493 + (32 * _500) + (32 * _608) + (32 * _652) + 292 len ceil32(_696) + (32 * mem[96]) + -(32 * _652) + 160]
        else:
            mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161 len 32 * ('cd', 100).length] = call.data[calldata.size len 32 * ('cd', 100).length]
            idx = 0
            s = cd[4]
            t = cd[36]
            while idx < ('cd', 100).length:
                if idx >= mem[96]:
                    revert with 0, 50
                _417 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _441 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _457 = mem[_441]
                require mem[_441] == mem[_441 + 12 len 20]
                require ext_code.size(address(_417))
                staticcall address(_417).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _481 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _497 = mem[_481]
                require mem[_481] == mem[_481 + 12 len 20]
                require ext_code.size(address(_417))
                staticcall address(_417).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _521 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _533 = mem[_521]
                require mem[_521] == mem[_521 + 18 len 14]
                _549 = mem[_521 + 32]
                require mem[_521 + 32] == mem[_521 + 50 len 14]
                require mem[_521 + 64] == mem[_521 + 92 len 4]
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if address(s) == address(_457):
                    if 997 * t and mem[_521 + 50 len 14] > -1 / 997 * t:
                        revert with 0, 17
                    if mem[_521 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_521 + 18 len 14] > !(997 * t):
                        revert with 0, 17
                    if not (1000 * mem[_521 + 18 len 14]) + (997 * t):
                        revert with 0, 18
                    if idx >= mem[ceil32(32 * ('cd', 100).length) + 97]:
                        revert with 0, 50
                    if idx >= mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129]:
                        revert with 0, 50
                    if address(s) == address(_457):
                        mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161] = 997 * t * mem[_521 + 50 len 14] / (1000 * mem[_521 + 18 len 14]) + (997 * t)
                        mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + 129] = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _497
                        t = 997 * t * Mask(112, 0, _549) / (1000 * Mask(112, 0, _533)) + (997 * t)
                        continue 
                    mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161] = 0
                    mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + 129] = 997 * t * Mask(112, 0, _549) / (1000 * Mask(112, 0, _533)) + (997 * t)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _457
                    t = 997 * t * Mask(112, 0, _549) / (1000 * Mask(112, 0, _533)) + (997 * t)
                    continue 
                if 997 * t and mem[_521 + 18 len 14] > -1 / 997 * t:
                    revert with 0, 17
                if mem[_521 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_521 + 50 len 14] > !(997 * t):
                    revert with 0, 17
                if not (1000 * mem[_521 + 50 len 14]) + (997 * t):
                    revert with 0, 18
                if idx >= mem[ceil32(32 * ('cd', 100).length) + 97]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129]:
                    revert with 0, 50
                if address(s) == address(_457):
                    mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161] = 997 * t * mem[_521 + 18 len 14] / (1000 * mem[_521 + 50 len 14]) + (997 * t)
                    mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + 129] = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _497
                    t = 997 * t * Mask(112, 0, _533) / (1000 * Mask(112, 0, _549)) + (997 * t)
                    continue 
                mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161] = 0
                mem[(32 * idx) + ceil32(32 * ('cd', 100).length) + 129] = 997 * t * Mask(112, 0, _533) / (1000 * Mask(112, 0, _549)) + (997 * t)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _457
                t = 997 * t * Mask(112, 0, _533) / (1000 * Mask(112, 0, _549)) + (997 * t)
                continue 
            if t < cd[68]:
                revert with 0, 'no profit'
            if mem[96] < 1:
                revert with 0, 17
            if mem[96] - 1 >= mem[96]:
                revert with 0, 50
            _455 = mem[(32 * mem[96] - 1) + 128]
            address(stor2.field_0) = mem[(32 * mem[96] - 1) + 140 len 20]
            if mem[ceil32(32 * ('cd', 100).length) + 97] < 1:
                revert with 0, 17
            if mem[ceil32(32 * ('cd', 100).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 100).length) + 97]:
                revert with 0, 50
            _474 = mem[(32 * mem[ceil32(32 * ('cd', 100).length) + 97] - 1) + ceil32(32 * ('cd', 100).length) + 129]
            if mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129] < 1:
                revert with 0, 17
            if mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129]:
                revert with 0, 50
            _495 = mem[(32 * mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129] - 1) + ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161]
            _496 = mem[64]
            mem[mem[64] + 32] = address(cd[4])
            mem[mem[64] + 64] = cd[36]
            mem[mem[64] + 96] = 160
            _501 = mem[ceil32(32 * ('cd', 100).length) + 97]
            mem[mem[64] + 192] = mem[ceil32(32 * ('cd', 100).length) + 97]
            mem[mem[64] + 224 len 32 * _501] = mem[ceil32(32 * ('cd', 100).length) + 129 len 32 * _501]
            mem[mem[64] + 128] = (32 * _501) + 192
            _609 = mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129]
            mem[mem[64] + (32 * _501) + 224] = mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 129]
            mem[mem[64] + (32 * _501) + 256 len 32 * _609] = mem[ceil32(32 * ('cd', 100).length) + (32 * ('cd', 100).length) + 161 len 32 * _609]
            mem[mem[64] + 160] = (32 * _501) + (32 * _609) + 224
            _653 = mem[96]
            mem[mem[64] + (32 * _501) + (32 * _609) + 256] = mem[96]
            idx = 0
            s = mem[64] + (32 * _501) + (32 * _609) + 288
            t = 128
            while idx < mem[96]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            _692 = mem[64]
            mem[64] = _496 + (32 * _501) + (32 * _609) + (32 * mem[96]) + 288
            mem[_496 + (32 * _501) + (32 * _609) + (32 * mem[96]) + 288] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_496 + (32 * _501) + (32 * _609) + (32 * mem[96]) + 292] = _474
            mem[_496 + (32 * _501) + (32 * _609) + (32 * mem[96]) + 324] = _495
            mem[_496 + (32 * _501) + (32 * _609) + (32 * mem[96]) + 356] = this.address
            mem[_496 + (32 * _501) + (32 * _609) + (32 * mem[96]) + 388] = 128
            _697 = mem[_692]
            mem[_496 + (32 * _501) + (32 * _609) + (32 * mem[96]) + 420] = mem[_692]
            mem[_496 + (32 * _501) + (32 * _609) + (32 * mem[96]) + 452 len ceil32(_697)] = mem[_692 + 32 len ceil32(_697)]
            if ceil32(_697) > _697:
                mem[_496 + (32 * _501) + (32 * _609) + (32 * mem[96]) + _697 + 452] = 0
            require ext_code.size(address(_455))
            call address(_455).mem[_496 + (32 * _501) + (32 * _609) + (32 * _653) + 288 len 4] with:
                 gas gas_remaining wei
                args mem[_496 + (32 * _501) + (32 * _609) + (32 * _653) + 292 len ceil32(_697) + (32 * mem[96]) + -(32 * _653) + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor2.field_0) = 1
    Mask(152, 0, stor2.field_8) = 0
}

function sub_130aa9e0(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 36).length
    if not ('cd', 36).length:
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] = ('cd', 36).length
        mem[64] = ceil32(32 * ('cd', 36).length) + (64 * ('cd', 36).length) + 161
        if not ('cd', 36).length:
            idx = 0
            s = cd[4]
            t = msg.value
            while idx < ('cd', 36).length:
                if idx >= mem[96]:
                    revert with 0, 50
                _624 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _648 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _662 = mem[_648]
                require mem[_648] == mem[_648 + 12 len 20]
                require ext_code.size(address(_624))
                staticcall address(_624).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _683 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _690 = mem[_683]
                require mem[_683] == mem[_683 + 12 len 20]
                require ext_code.size(address(_624))
                staticcall address(_624).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _736 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _752 = mem[_736]
                require mem[_736] == mem[_736 + 18 len 14]
                _779 = mem[_736 + 32]
                require mem[_736 + 32] == mem[_736 + 50 len 14]
                require mem[_736 + 64] == mem[_736 + 92 len 4]
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if address(s) == address(_662):
                    if 997 * t and mem[_736 + 50 len 14] > -1 / 997 * t:
                        revert with 0, 17
                    if mem[_736 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_736 + 18 len 14] > !(997 * t):
                        revert with 0, 17
                    if not (1000 * mem[_736 + 18 len 14]) + (997 * t):
                        revert with 0, 18
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                        revert with 0, 50
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                        revert with 0, 50
                    if address(s) == address(_662):
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 997 * t * mem[_736 + 50 len 14] / (1000 * mem[_736 + 18 len 14]) + (997 * t)
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _690
                        t = 997 * t * Mask(112, 0, _779) / (1000 * Mask(112, 0, _752)) + (997 * t)
                        continue 
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 0
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 997 * t * Mask(112, 0, _779) / (1000 * Mask(112, 0, _752)) + (997 * t)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _662
                    t = 997 * t * Mask(112, 0, _779) / (1000 * Mask(112, 0, _752)) + (997 * t)
                    continue 
                if 997 * t and mem[_736 + 18 len 14] > -1 / 997 * t:
                    revert with 0, 17
                if mem[_736 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_736 + 50 len 14] > !(997 * t):
                    revert with 0, 17
                if not (1000 * mem[_736 + 50 len 14]) + (997 * t):
                    revert with 0, 18
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                    revert with 0, 50
                if address(s) == address(_662):
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 997 * t * mem[_736 + 18 len 14] / (1000 * mem[_736 + 50 len 14]) + (997 * t)
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _690
                    t = 997 * t * Mask(112, 0, _752) / (1000 * Mask(112, 0, _779)) + (997 * t)
                    continue 
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 0
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 997 * t * Mask(112, 0, _752) / (1000 * Mask(112, 0, _779)) + (997 * t)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _662
                t = 997 * t * Mask(112, 0, _752) / (1000 * Mask(112, 0, _779)) + (997 * t)
                continue 
            mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(WETHAddress)
            call WETHAddress.deposit() with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= mem[96]:
                revert with 0, 50
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = msg.value
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], msg.value
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _666 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_666] == bool(mem[_666])
            if var69001 < 1:
                revert with 0, 17
            if var73002 < var73001:
                if var75001 < mem[96]:
                    if var77004 < mem[ceil32(32 * ('cd', 36).length) + 97]:
                        if var79006 < mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                            if 1 > !var83002:
                                revert with 0, 17
                            _3694 = mem[96]
                            idx = var85003 + 1
                            s = var85006
                            u = var85007
                            v = var85009
                            w = var85010
                            w = var85011
                            while idx < _3694:
                                _3698 = mem[(32 * idx) + 128]
                                _3702 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3702 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3702 + 36] = u
                                mem[_3702 + 68] = s
                                mem[_3702 + 100] = address(_3698)
                                mem[_3702 + 132] = 128
                                mem[_3702 + 164] = mem[_3702]
                                idx = 0
                                while idx < mem[_3702]:
                                    mem[idx + _3702 + 196] = mem[idx + _3702 + 32]
                                    _3694 = mem[96]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_3702]) <= mem[_3702]:
                                    require ext_code.size(v)
                                    call v.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args u, s, address(_3698), Array(len=mem[_3702], data=mem[_3702 + 196 len ceil32(mem[_3702])])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if w == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if w + 1 < mem[96] - 1:
                                        if w + 1 >= mem[96]:
                                            revert with 0, 50
                                        if w + 1 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                            revert with 0, 50
                                        if w + 1 >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                                            revert with 0, 50
                                        if 1 > !(w + 1):
                                            revert with 0, 17
                                        _3694 = mem[96]
                                        idx = w + 2
                                        s = mem[(32 * w + 1) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161]
                                        u = mem[(32 * w + 1) + ceil32(32 * ('cd', 36).length) + 129]
                                        v = mem[(32 * w + 1) + 140 len 20]
                                        w = mem[(32 * w + 1) + 128]
                                        w = w + 1
                                        continue 
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if mem[96] - 1 >= mem[96]:
                                        revert with 0, 50
                                    _4074 = mem[(32 * mem[96] - 1) + 128]
                                    if mem[ceil32(32 * ('cd', 36).length) + 97] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 36).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                        revert with 0, 50
                                    _4102 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + 97] - 1) + ceil32(32 * ('cd', 36).length) + 129]
                                    if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                                        revert with 0, 50
                                    _4126 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161]
                                    mem[_3702 + 32] = 0
                                    mem[64] = _3702 + 64
                                    mem[_3702 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3702 + 68] = _4102
                                    mem[_3702 + 100] = _4126
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _3702 + 228] = mem[idx + _3702 + 64]
                                        _3694 = mem[96]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(_4074))
                                    call address(_4074).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4102, _4126, address(this.address), 128, 0
                                else:
                                    mem[_3702 + mem[_3702] + 196] = 0
                                    require ext_code.size(v)
                                    call v.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args u, s, address(_3698), Array(len=mem[_3702], data=mem[_3702 + 196 len ceil32(mem[_3702])])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if w == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if w + 1 < mem[96] - 1:
                                        if w + 1 >= mem[96]:
                                            revert with 0, 50
                                        if w + 1 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                            revert with 0, 50
                                        if w + 1 >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                                            revert with 0, 50
                                        if 1 > !(w + 1):
                                            revert with 0, 17
                                        _3694 = mem[96]
                                        idx = w + 2
                                        s = mem[(32 * w + 1) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161]
                                        u = mem[(32 * w + 1) + ceil32(32 * ('cd', 36).length) + 129]
                                        v = mem[(32 * w + 1) + 140 len 20]
                                        w = mem[(32 * w + 1) + 128]
                                        w = w + 1
                                        continue 
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if mem[96] - 1 >= mem[96]:
                                        revert with 0, 50
                                    _4090 = mem[(32 * mem[96] - 1) + 128]
                                    if mem[ceil32(32 * ('cd', 36).length) + 97] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 36).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                        revert with 0, 50
                                    _4114 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + 97] - 1) + ceil32(32 * ('cd', 36).length) + 129]
                                    if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                                        revert with 0, 50
                                    _4135 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161]
                                    mem[_3702 + 32] = 0
                                    mem[64] = _3702 + 64
                                    mem[_3702 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3702 + 68] = _4114
                                    mem[_3702 + 100] = _4135
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _3702 + 228] = mem[idx + _3702 + 64]
                                        _3694 = mem[96]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(_4090))
                                    call address(_4090).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4114, _4135, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(WETHAddress)
                                staticcall WETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < t:
                                    revert with 0, 'no profit'
                revert with 0, 50
            if mem[96] < 1:
                revert with 0, 17
            if mem[96] - 1 >= mem[96]:
                revert with 0, 50
            _1466 = mem[(32 * mem[96] - 1) + 128]
            if mem[ceil32(32 * ('cd', 36).length) + 97] < 1:
                revert with 0, 17
            if mem[ceil32(32 * ('cd', 36).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                revert with 0, 50
            _1486 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + 97] - 1) + ceil32(32 * ('cd', 36).length) + 129]
            if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] < 1:
                revert with 0, 17
            if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                revert with 0, 50
            _1510 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161]
            _1518 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1518 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_1518 + 36] = _1486
            mem[_1518 + 68] = _1510
            mem[_1518 + 100] = this.address
            mem[_1518 + 132] = 128
            mem[_1518 + 164] = mem[_1518]
            mem[_1518 + 196 len ceil32(mem[_1518])] = mem[_1518 + 32 len ceil32(mem[_1518])]
            if ceil32(mem[_1518]) > mem[_1518]:
                mem[_1518 + mem[_1518] + 196] = 0
            require ext_code.size(address(_1466))
            call address(_1466).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _1486, _1510, address(this.address), Array(len=mem[_1518], data=mem[_1518 + 196 len ceil32(mem[_1518])])
        else:
            mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            s = cd[4]
            t = msg.value
            while idx < ('cd', 36).length:
                if idx >= mem[96]:
                    revert with 0, 50
                _627 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _651 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _663 = mem[_651]
                require mem[_651] == mem[_651 + 12 len 20]
                require ext_code.size(address(_627))
                staticcall address(_627).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _685 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _691 = mem[_685]
                require mem[_685] == mem[_685 + 12 len 20]
                require ext_code.size(address(_627))
                staticcall address(_627).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _739 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _755 = mem[_739]
                require mem[_739] == mem[_739 + 18 len 14]
                _781 = mem[_739 + 32]
                require mem[_739 + 32] == mem[_739 + 50 len 14]
                require mem[_739 + 64] == mem[_739 + 92 len 4]
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if address(s) == address(_663):
                    if 997 * t and mem[_739 + 50 len 14] > -1 / 997 * t:
                        revert with 0, 17
                    if mem[_739 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_739 + 18 len 14] > !(997 * t):
                        revert with 0, 17
                    if not (1000 * mem[_739 + 18 len 14]) + (997 * t):
                        revert with 0, 18
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                        revert with 0, 50
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                        revert with 0, 50
                    if address(s) == address(_663):
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 997 * t * mem[_739 + 50 len 14] / (1000 * mem[_739 + 18 len 14]) + (997 * t)
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _691
                        t = 997 * t * Mask(112, 0, _781) / (1000 * Mask(112, 0, _755)) + (997 * t)
                        continue 
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 0
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 997 * t * Mask(112, 0, _781) / (1000 * Mask(112, 0, _755)) + (997 * t)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _663
                    t = 997 * t * Mask(112, 0, _781) / (1000 * Mask(112, 0, _755)) + (997 * t)
                    continue 
                if 997 * t and mem[_739 + 18 len 14] > -1 / 997 * t:
                    revert with 0, 17
                if mem[_739 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_739 + 50 len 14] > !(997 * t):
                    revert with 0, 17
                if not (1000 * mem[_739 + 50 len 14]) + (997 * t):
                    revert with 0, 18
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                    revert with 0, 50
                if address(s) == address(_663):
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 997 * t * mem[_739 + 18 len 14] / (1000 * mem[_739 + 50 len 14]) + (997 * t)
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _691
                    t = 997 * t * Mask(112, 0, _755) / (1000 * Mask(112, 0, _781)) + (997 * t)
                    continue 
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 0
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 997 * t * Mask(112, 0, _755) / (1000 * Mask(112, 0, _781)) + (997 * t)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _663
                t = 997 * t * Mask(112, 0, _755) / (1000 * Mask(112, 0, _781)) + (997 * t)
                continue 
            mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(WETHAddress)
            call WETHAddress.deposit() with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= mem[96]:
                revert with 0, 50
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = msg.value
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], msg.value
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _667 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_667] == bool(mem[_667])
            if var70001 < 1:
                revert with 0, 17
            if var74002 < var74001:
                if var76001 < mem[96]:
                    if var78004 < mem[ceil32(32 * ('cd', 36).length) + 97]:
                        if var80006 < mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                            if 1 > !var84002:
                                revert with 0, 17
                            _3695 = mem[96]
                            idx = var86003 + 1
                            s = var86006
                            u = var86007
                            v = var86009
                            w = var86010
                            w = var86011
                            while idx < _3695:
                                _3699 = mem[(32 * idx) + 128]
                                _3703 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3703 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3703 + 36] = u
                                mem[_3703 + 68] = s
                                mem[_3703 + 100] = address(_3699)
                                mem[_3703 + 132] = 128
                                mem[_3703 + 164] = mem[_3703]
                                idx = 0
                                while idx < mem[_3703]:
                                    mem[idx + _3703 + 196] = mem[idx + _3703 + 32]
                                    _3695 = mem[96]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_3703]) <= mem[_3703]:
                                    require ext_code.size(v)
                                    call v.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args u, s, address(_3699), Array(len=mem[_3703], data=mem[_3703 + 196 len ceil32(mem[_3703])])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if w == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if w + 1 < mem[96] - 1:
                                        if w + 1 >= mem[96]:
                                            revert with 0, 50
                                        if w + 1 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                            revert with 0, 50
                                        if w + 1 >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                                            revert with 0, 50
                                        if 1 > !(w + 1):
                                            revert with 0, 17
                                        _3695 = mem[96]
                                        idx = w + 2
                                        s = mem[(32 * w + 1) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161]
                                        u = mem[(32 * w + 1) + ceil32(32 * ('cd', 36).length) + 129]
                                        v = mem[(32 * w + 1) + 140 len 20]
                                        w = mem[(32 * w + 1) + 128]
                                        w = w + 1
                                        continue 
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if mem[96] - 1 >= mem[96]:
                                        revert with 0, 50
                                    _4078 = mem[(32 * mem[96] - 1) + 128]
                                    if mem[ceil32(32 * ('cd', 36).length) + 97] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 36).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                        revert with 0, 50
                                    _4105 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + 97] - 1) + ceil32(32 * ('cd', 36).length) + 129]
                                    if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                                        revert with 0, 50
                                    _4128 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161]
                                    mem[_3703 + 32] = 0
                                    mem[64] = _3703 + 64
                                    mem[_3703 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3703 + 68] = _4105
                                    mem[_3703 + 100] = _4128
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _3703 + 228] = mem[idx + _3703 + 64]
                                        _3695 = mem[96]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(_4078))
                                    call address(_4078).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4105, _4128, address(this.address), 128, 0
                                else:
                                    mem[_3703 + mem[_3703] + 196] = 0
                                    require ext_code.size(v)
                                    call v.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args u, s, address(_3699), Array(len=mem[_3703], data=mem[_3703 + 196 len ceil32(mem[_3703])])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if w == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if w + 1 < mem[96] - 1:
                                        if w + 1 >= mem[96]:
                                            revert with 0, 50
                                        if w + 1 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                            revert with 0, 50
                                        if w + 1 >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                                            revert with 0, 50
                                        if 1 > !(w + 1):
                                            revert with 0, 17
                                        _3695 = mem[96]
                                        idx = w + 2
                                        s = mem[(32 * w + 1) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161]
                                        u = mem[(32 * w + 1) + ceil32(32 * ('cd', 36).length) + 129]
                                        v = mem[(32 * w + 1) + 140 len 20]
                                        w = mem[(32 * w + 1) + 128]
                                        w = w + 1
                                        continue 
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if mem[96] - 1 >= mem[96]:
                                        revert with 0, 50
                                    _4092 = mem[(32 * mem[96] - 1) + 128]
                                    if mem[ceil32(32 * ('cd', 36).length) + 97] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 36).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                        revert with 0, 50
                                    _4116 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + 97] - 1) + ceil32(32 * ('cd', 36).length) + 129]
                                    if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                                        revert with 0, 50
                                    _4137 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161]
                                    mem[_3703 + 32] = 0
                                    mem[64] = _3703 + 64
                                    mem[_3703 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3703 + 68] = _4116
                                    mem[_3703 + 100] = _4137
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _3703 + 228] = mem[idx + _3703 + 64]
                                        _3695 = mem[96]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(_4092))
                                    call address(_4092).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4116, _4137, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(WETHAddress)
                                staticcall WETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < t:
                                    revert with 0, 'no profit'
                revert with 0, 50
            if mem[96] < 1:
                revert with 0, 17
            if mem[96] - 1 >= mem[96]:
                revert with 0, 50
            _1468 = mem[(32 * mem[96] - 1) + 128]
            if mem[ceil32(32 * ('cd', 36).length) + 97] < 1:
                revert with 0, 17
            if mem[ceil32(32 * ('cd', 36).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                revert with 0, 50
            _1489 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + 97] - 1) + ceil32(32 * ('cd', 36).length) + 129]
            if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] < 1:
                revert with 0, 17
            if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                revert with 0, 50
            _1512 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161]
            _1519 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1519 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_1519 + 36] = _1489
            mem[_1519 + 68] = _1512
            mem[_1519 + 100] = this.address
            mem[_1519 + 132] = 128
            mem[_1519 + 164] = mem[_1519]
            mem[_1519 + 196 len ceil32(mem[_1519])] = mem[_1519 + 32 len ceil32(mem[_1519])]
            var69001 = ceil32(mem[_1519])
            if ceil32(mem[_1519]) > mem[_1519]:
                mem[_1519 + mem[_1519] + 196] = 0
            require ext_code.size(address(_1468))
            call address(_1468).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _1489, _1512, address(this.address), Array(len=mem[_1519], data=mem[_1519 + 196 len ceil32(mem[_1519])])
    else:
        mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] = ('cd', 36).length
        mem[64] = ceil32(32 * ('cd', 36).length) + (64 * ('cd', 36).length) + 161
        if not ('cd', 36).length:
            idx = 0
            s = cd[4]
            t = msg.value
            while idx < ('cd', 36).length:
                if idx >= mem[96]:
                    revert with 0, 50
                _630 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _654 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _664 = mem[_654]
                require mem[_654] == mem[_654 + 12 len 20]
                require ext_code.size(address(_630))
                staticcall address(_630).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _687 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _692 = mem[_687]
                require mem[_687] == mem[_687 + 12 len 20]
                require ext_code.size(address(_630))
                staticcall address(_630).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _742 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _758 = mem[_742]
                require mem[_742] == mem[_742 + 18 len 14]
                _783 = mem[_742 + 32]
                require mem[_742 + 32] == mem[_742 + 50 len 14]
                require mem[_742 + 64] == mem[_742 + 92 len 4]
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if address(s) == address(_664):
                    if 997 * t and mem[_742 + 50 len 14] > -1 / 997 * t:
                        revert with 0, 17
                    if mem[_742 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_742 + 18 len 14] > !(997 * t):
                        revert with 0, 17
                    if not (1000 * mem[_742 + 18 len 14]) + (997 * t):
                        revert with 0, 18
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                        revert with 0, 50
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                        revert with 0, 50
                    if address(s) == address(_664):
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 997 * t * mem[_742 + 50 len 14] / (1000 * mem[_742 + 18 len 14]) + (997 * t)
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _692
                        t = 997 * t * Mask(112, 0, _783) / (1000 * Mask(112, 0, _758)) + (997 * t)
                        continue 
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 0
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 997 * t * Mask(112, 0, _783) / (1000 * Mask(112, 0, _758)) + (997 * t)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _664
                    t = 997 * t * Mask(112, 0, _783) / (1000 * Mask(112, 0, _758)) + (997 * t)
                    continue 
                if 997 * t and mem[_742 + 18 len 14] > -1 / 997 * t:
                    revert with 0, 17
                if mem[_742 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_742 + 50 len 14] > !(997 * t):
                    revert with 0, 17
                if not (1000 * mem[_742 + 50 len 14]) + (997 * t):
                    revert with 0, 18
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                    revert with 0, 50
                if address(s) == address(_664):
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 997 * t * mem[_742 + 18 len 14] / (1000 * mem[_742 + 50 len 14]) + (997 * t)
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _692
                    t = 997 * t * Mask(112, 0, _758) / (1000 * Mask(112, 0, _783)) + (997 * t)
                    continue 
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 0
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 997 * t * Mask(112, 0, _758) / (1000 * Mask(112, 0, _783)) + (997 * t)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _664
                t = 997 * t * Mask(112, 0, _758) / (1000 * Mask(112, 0, _783)) + (997 * t)
                continue 
            mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(WETHAddress)
            call WETHAddress.deposit() with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= mem[96]:
                revert with 0, 50
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = msg.value
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], msg.value
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _668 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_668] == bool(mem[_668])
            if var70001 < 1:
                revert with 0, 17
            if var74002 < var74001:
                if var76001 < mem[96]:
                    if var78004 < mem[ceil32(32 * ('cd', 36).length) + 97]:
                        if var80006 < mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                            if 1 > !var84002:
                                revert with 0, 17
                            _3696 = mem[96]
                            idx = var86003 + 1
                            s = var86006
                            u = var86007
                            v = var86009
                            w = var86010
                            w = var86011
                            while idx < _3696:
                                _3700 = mem[(32 * idx) + 128]
                                _3704 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3704 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3704 + 36] = u
                                mem[_3704 + 68] = s
                                mem[_3704 + 100] = address(_3700)
                                mem[_3704 + 132] = 128
                                mem[_3704 + 164] = mem[_3704]
                                idx = 0
                                while idx < mem[_3704]:
                                    mem[idx + _3704 + 196] = mem[idx + _3704 + 32]
                                    _3696 = mem[96]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_3704]) <= mem[_3704]:
                                    require ext_code.size(v)
                                    call v.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args u, s, address(_3700), Array(len=mem[_3704], data=mem[_3704 + 196 len ceil32(mem[_3704])])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if w == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if w + 1 < mem[96] - 1:
                                        if w + 1 >= mem[96]:
                                            revert with 0, 50
                                        if w + 1 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                            revert with 0, 50
                                        if w + 1 >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                                            revert with 0, 50
                                        if 1 > !(w + 1):
                                            revert with 0, 17
                                        _3696 = mem[96]
                                        idx = w + 2
                                        s = mem[(32 * w + 1) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161]
                                        u = mem[(32 * w + 1) + ceil32(32 * ('cd', 36).length) + 129]
                                        v = mem[(32 * w + 1) + 140 len 20]
                                        w = mem[(32 * w + 1) + 128]
                                        w = w + 1
                                        continue 
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if mem[96] - 1 >= mem[96]:
                                        revert with 0, 50
                                    _4082 = mem[(32 * mem[96] - 1) + 128]
                                    if mem[ceil32(32 * ('cd', 36).length) + 97] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 36).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                        revert with 0, 50
                                    _4108 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + 97] - 1) + ceil32(32 * ('cd', 36).length) + 129]
                                    if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                                        revert with 0, 50
                                    _4130 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161]
                                    mem[_3704 + 32] = 0
                                    mem[64] = _3704 + 64
                                    mem[_3704 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3704 + 68] = _4108
                                    mem[_3704 + 100] = _4130
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _3704 + 228] = mem[idx + _3704 + 64]
                                        _3696 = mem[96]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(_4082))
                                    call address(_4082).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4108, _4130, address(this.address), 128, 0
                                else:
                                    mem[_3704 + mem[_3704] + 196] = 0
                                    require ext_code.size(v)
                                    call v.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args u, s, address(_3700), Array(len=mem[_3704], data=mem[_3704 + 196 len ceil32(mem[_3704])])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if w == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if w + 1 < mem[96] - 1:
                                        if w + 1 >= mem[96]:
                                            revert with 0, 50
                                        if w + 1 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                            revert with 0, 50
                                        if w + 1 >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                                            revert with 0, 50
                                        if 1 > !(w + 1):
                                            revert with 0, 17
                                        _3696 = mem[96]
                                        idx = w + 2
                                        s = mem[(32 * w + 1) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161]
                                        u = mem[(32 * w + 1) + ceil32(32 * ('cd', 36).length) + 129]
                                        v = mem[(32 * w + 1) + 140 len 20]
                                        w = mem[(32 * w + 1) + 128]
                                        w = w + 1
                                        continue 
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if mem[96] - 1 >= mem[96]:
                                        revert with 0, 50
                                    _4094 = mem[(32 * mem[96] - 1) + 128]
                                    if mem[ceil32(32 * ('cd', 36).length) + 97] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 36).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                        revert with 0, 50
                                    _4118 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + 97] - 1) + ceil32(32 * ('cd', 36).length) + 129]
                                    if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                                        revert with 0, 50
                                    _4139 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161]
                                    mem[_3704 + 32] = 0
                                    mem[64] = _3704 + 64
                                    mem[_3704 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3704 + 68] = _4118
                                    mem[_3704 + 100] = _4139
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _3704 + 228] = mem[idx + _3704 + 64]
                                        _3696 = mem[96]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(_4094))
                                    call address(_4094).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4118, _4139, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(WETHAddress)
                                staticcall WETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < t:
                                    revert with 0, 'no profit'
                revert with 0, 50
            if mem[96] < 1:
                revert with 0, 17
            if mem[96] - 1 >= mem[96]:
                revert with 0, 50
            _1470 = mem[(32 * mem[96] - 1) + 128]
            if mem[ceil32(32 * ('cd', 36).length) + 97] < 1:
                revert with 0, 17
            if mem[ceil32(32 * ('cd', 36).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                revert with 0, 50
            _1492 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + 97] - 1) + ceil32(32 * ('cd', 36).length) + 129]
            if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] < 1:
                revert with 0, 17
            if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                revert with 0, 50
            _1514 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161]
            _1520 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1520 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_1520 + 36] = _1492
            mem[_1520 + 68] = _1514
            mem[_1520 + 100] = this.address
            mem[_1520 + 132] = 128
            mem[_1520 + 164] = mem[_1520]
            mem[_1520 + 196 len ceil32(mem[_1520])] = mem[_1520 + 32 len ceil32(mem[_1520])]
            var69001 = ceil32(mem[_1520])
            if ceil32(mem[_1520]) > mem[_1520]:
                mem[_1520 + mem[_1520] + 196] = 0
            require ext_code.size(address(_1470))
            call address(_1470).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _1492, _1514, address(this.address), Array(len=mem[_1520], data=mem[_1520 + 196 len ceil32(mem[_1520])])
        else:
            mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            s = cd[4]
            t = msg.value
            while idx < ('cd', 36).length:
                if idx >= mem[96]:
                    revert with 0, 50
                _633 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _657 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _665 = mem[_657]
                require mem[_657] == mem[_657 + 12 len 20]
                require ext_code.size(address(_633))
                staticcall address(_633).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _689 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _693 = mem[_689]
                require mem[_689] == mem[_689 + 12 len 20]
                require ext_code.size(address(_633))
                staticcall address(_633).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _745 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _761 = mem[_745]
                require mem[_745] == mem[_745 + 18 len 14]
                _785 = mem[_745 + 32]
                require mem[_745 + 32] == mem[_745 + 50 len 14]
                require mem[_745 + 64] == mem[_745 + 92 len 4]
                if t > 0x41bbb2f80a4553f6c19ad51e8e40314cc63a07b3fef911341fd6eab024f994:
                    revert with 0, 17
                if address(s) == address(_665):
                    if 997 * t and mem[_745 + 50 len 14] > -1 / 997 * t:
                        revert with 0, 17
                    if mem[_745 + 18 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                        revert with 0, 17
                    if 1000 * mem[_745 + 18 len 14] > !(997 * t):
                        revert with 0, 17
                    if not (1000 * mem[_745 + 18 len 14]) + (997 * t):
                        revert with 0, 18
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                        revert with 0, 50
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                        revert with 0, 50
                    if address(s) == address(_665):
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 997 * t * mem[_745 + 50 len 14] / (1000 * mem[_745 + 18 len 14]) + (997 * t)
                        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _693
                        t = 997 * t * Mask(112, 0, _785) / (1000 * Mask(112, 0, _761)) + (997 * t)
                        continue 
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 0
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 997 * t * Mask(112, 0, _785) / (1000 * Mask(112, 0, _761)) + (997 * t)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _665
                    t = 997 * t * Mask(112, 0, _785) / (1000 * Mask(112, 0, _761)) + (997 * t)
                    continue 
                if 997 * t and mem[_745 + 18 len 14] > -1 / 997 * t:
                    revert with 0, 17
                if mem[_745 + 50 len 14] > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if 1000 * mem[_745 + 50 len 14] > !(997 * t):
                    revert with 0, 17
                if not (1000 * mem[_745 + 50 len 14]) + (997 * t):
                    revert with 0, 18
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                    revert with 0, 50
                if address(s) == address(_665):
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 997 * t * mem[_745 + 18 len 14] / (1000 * mem[_745 + 50 len 14]) + (997 * t)
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _693
                    t = 997 * t * Mask(112, 0, _761) / (1000 * Mask(112, 0, _785)) + (997 * t)
                    continue 
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 0
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = 997 * t * Mask(112, 0, _761) / (1000 * Mask(112, 0, _785)) + (997 * t)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _665
                t = 997 * t * Mask(112, 0, _761) / (1000 * Mask(112, 0, _785)) + (997 * t)
                continue 
            mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
            require ext_code.size(WETHAddress)
            call WETHAddress.deposit() with:
               value msg.value wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if 0 >= mem[96]:
                revert with 0, 50
            mem[mem[64] + 4] = mem[140 len 20]
            mem[mem[64] + 36] = msg.value
            require ext_code.size(address(cd[4]))
            call address(cd[4]).0xa9059cbb with:
                 gas gas_remaining wei
                args mem[mem[64] + 4], msg.value
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _669 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_669] == bool(mem[_669])
            if var71001 < 1:
                revert with 0, 17
            if var75002 < var75001:
                if var77001 < mem[96]:
                    if var79004 < mem[ceil32(32 * ('cd', 36).length) + 97]:
                        if var81006 < mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                            if 1 > !var85002:
                                revert with 0, 17
                            _3697 = mem[96]
                            idx = var87003 + 1
                            s = var87006
                            u = var87007
                            v = var87009
                            w = var87010
                            w = var87011
                            while idx < _3697:
                                _3701 = mem[(32 * idx) + 128]
                                _3705 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_3705 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_3705 + 36] = u
                                mem[_3705 + 68] = s
                                mem[_3705 + 100] = address(_3701)
                                mem[_3705 + 132] = 128
                                mem[_3705 + 164] = mem[_3705]
                                idx = 0
                                while idx < mem[_3705]:
                                    mem[idx + _3705 + 196] = mem[idx + _3705 + 32]
                                    _3697 = mem[96]
                                    idx = idx + 32
                                    continue 
                                if ceil32(mem[_3705]) <= mem[_3705]:
                                    require ext_code.size(v)
                                    call v.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args u, s, address(_3701), Array(len=mem[_3705], data=mem[_3705 + 196 len ceil32(mem[_3705])])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if w == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if w + 1 < mem[96] - 1:
                                        if w + 1 >= mem[96]:
                                            revert with 0, 50
                                        if w + 1 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                            revert with 0, 50
                                        if w + 1 >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                                            revert with 0, 50
                                        if 1 > !(w + 1):
                                            revert with 0, 17
                                        _3697 = mem[96]
                                        idx = w + 2
                                        s = mem[(32 * w + 1) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161]
                                        u = mem[(32 * w + 1) + ceil32(32 * ('cd', 36).length) + 129]
                                        v = mem[(32 * w + 1) + 140 len 20]
                                        w = mem[(32 * w + 1) + 128]
                                        w = w + 1
                                        continue 
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if mem[96] - 1 >= mem[96]:
                                        revert with 0, 50
                                    _4086 = mem[(32 * mem[96] - 1) + 128]
                                    if mem[ceil32(32 * ('cd', 36).length) + 97] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 36).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                        revert with 0, 50
                                    _4111 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + 97] - 1) + ceil32(32 * ('cd', 36).length) + 129]
                                    if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                                        revert with 0, 50
                                    _4132 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161]
                                    mem[_3705 + 32] = 0
                                    mem[64] = _3705 + 64
                                    mem[_3705 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3705 + 68] = _4111
                                    mem[_3705 + 100] = _4132
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _3705 + 228] = mem[idx + _3705 + 64]
                                        _3697 = mem[96]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(_4086))
                                    call address(_4086).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4111, _4132, address(this.address), 128, 0
                                else:
                                    mem[_3705 + mem[_3705] + 196] = 0
                                    require ext_code.size(v)
                                    call v.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args u, s, address(_3701), Array(len=mem[_3705], data=mem[_3705 + 196 len ceil32(mem[_3705])])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if w == -1:
                                        revert with 0, 17
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if w + 1 < mem[96] - 1:
                                        if w + 1 >= mem[96]:
                                            revert with 0, 50
                                        if w + 1 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                            revert with 0, 50
                                        if w + 1 >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                                            revert with 0, 50
                                        if 1 > !(w + 1):
                                            revert with 0, 17
                                        _3697 = mem[96]
                                        idx = w + 2
                                        s = mem[(32 * w + 1) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161]
                                        u = mem[(32 * w + 1) + ceil32(32 * ('cd', 36).length) + 129]
                                        v = mem[(32 * w + 1) + 140 len 20]
                                        w = mem[(32 * w + 1) + 128]
                                        w = w + 1
                                        continue 
                                    if mem[96] < 1:
                                        revert with 0, 17
                                    if mem[96] - 1 >= mem[96]:
                                        revert with 0, 50
                                    _4096 = mem[(32 * mem[96] - 1) + 128]
                                    if mem[ceil32(32 * ('cd', 36).length) + 97] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 36).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                                        revert with 0, 50
                                    _4120 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + 97] - 1) + ceil32(32 * ('cd', 36).length) + 129]
                                    if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] < 1:
                                        revert with 0, 17
                                    if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                                        revert with 0, 50
                                    _4141 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161]
                                    mem[_3705 + 32] = 0
                                    mem[64] = _3705 + 64
                                    mem[_3705 + 64] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                    mem[_3705 + 68] = _4120
                                    mem[_3705 + 100] = _4141
                                    idx = 0
                                    while idx < 0:
                                        mem[idx + _3705 + 228] = mem[idx + _3705 + 64]
                                        _3697 = mem[96]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(_4096))
                                    call address(_4096).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args _4120, _4141, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require ext_code.size(WETHAddress)
                                staticcall WETHAddress.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < t:
                                    revert with 0, 'no profit'
                revert with 0, 50
            if mem[96] < 1:
                revert with 0, 17
            if mem[96] - 1 >= mem[96]:
                revert with 0, 50
            _1472 = mem[(32 * mem[96] - 1) + 128]
            if mem[ceil32(32 * ('cd', 36).length) + 97] < 1:
                revert with 0, 17
            if mem[ceil32(32 * ('cd', 36).length) + 97] - 1 >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                revert with 0, 50
            _1495 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + 97] - 1) + ceil32(32 * ('cd', 36).length) + 129]
            if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] < 1:
                revert with 0, 17
            if mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1 >= mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129]:
                revert with 0, 50
            _1516 = mem[(32 * mem[ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 129] - 1) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 161]
            _1521 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1521 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_1521 + 36] = _1495
            mem[_1521 + 68] = _1516
            mem[_1521 + 100] = this.address
            mem[_1521 + 132] = 128
            mem[_1521 + 164] = mem[_1521]
            mem[_1521 + 196 len ceil32(mem[_1521])] = mem[_1521 + 32 len ceil32(mem[_1521])]
            var70001 = ceil32(mem[_1521])
            if ceil32(mem[_1521]) > mem[_1521]:
                mem[_1521 + mem[_1521] + 196] = 0
            require ext_code.size(address(_1472))
            call address(_1472).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args _1495, _1516, address(this.address), Array(len=mem[_1521], data=mem[_1521 + 196 len ceil32(mem[_1521])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(WETHAddress)
    staticcall WETHAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < t:
        revert with 0, 'no profit'
}



}
