contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_0634a9ab(?) payable {
    require calldata.size - 4 >= 160
    require calldata.size - 4 >= 128
    require arg4 == arg4
    require arg1 == address(arg1)
    mem[96] = 2
    require arg2 == address(arg2)
    mem[128] = address(arg2)
    require arg3 == address(arg3)
    mem[160] = address(arg3)
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = arg4
    mem[228] = 64
    mem[260] = 2
    idx = 0
    s = 128
    t = 292
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg4, Array(len=2, data=mem[292 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _21 = mem[192 len 4], Mask(224, 32, arg4) >> 32
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 <= test266151307()
    require mem[192 len 4], Mask(224, 32, arg4) >> 32 + 223 < return_data.size + 192
    _22 = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    require mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192] <= test266151307()
    require ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 224 <= test266151307() and (32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 32 >= 0
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]) + 224
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, arg4) >> 32 + 192]
    require _21 + (32 * _22) + 32 <= return_data.size
    idx = 0
    s = _21 + 224
    t = ceil32(return_data.size) + 224
    while idx < _22:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require _22 - 1 < _22
    mem[mem[64]] = mem[(32 * _22 - 1) + ceil32(return_data.size) + 224]
    return memory
      from mem[64]
       len 32
}

function sub_deae0e16(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (128 * ('cd', 4).length) + 36 <= calldata.size
    require 2 * ('cd', 4).length <= test266151307()
    mem[96] = 2 * ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + 128
    if not uint255(('cd', 4).length):
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((128 * idx) + cd[4] + 100)] == address(cd[((128 * idx) + cd[4] + 100)])
            require cd[((128 * idx) + cd[4] + 132)] == address(cd[((128 * idx) + cd[4] + 132)])
            if address(cd[((128 * idx) + cd[4] + 100)]) == address(cd[((128 * idx) + cd[4] + 132)]):
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if address(cd[((128 * idx) + cd[4] + 100)]) < address(cd[((128 * idx) + cd[4] + 132)]):
                if not address(cd[((128 * idx) + cd[4] + 100)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require cd[((128 * idx) + cd[4] + 68)] == address(cd[((128 * idx) + cd[4] + 68)])
                require ext_code.size(address(cd[((128 * idx) + cd[4] + 68)]))
                staticcall address(cd[((128 * idx) + cd[4] + 68)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _90 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _94 = mem[_90]
                require mem[_90] == mem[_90 + 18 len 14]
                _98 = mem[_90 + 32]
                require mem[_90 + 32] == mem[_90 + 50 len 14]
                require mem[_90 + 64] == mem[_90 + 92 len 4]
                require cd[((128 * idx) + cd[4] + 100)] == address(cd[((128 * idx) + cd[4] + 100)])
                require 2 * idx < mem[96]
                if address(cd[((128 * idx) + cd[4] + 100)]) == address(cd[((128 * idx) + cd[4] + 100)]):
                    mem[(64 * idx) + 128] = mem[_90 + 18 len 14]
                    require (2 * idx) + 1 < mem[96]
                    mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _98)
                else:
                    mem[(64 * idx) + 128] = mem[_90 + 50 len 14]
                    require (2 * idx) + 1 < mem[96]
                    mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _94)
            else:
                if not address(cd[((128 * idx) + cd[4] + 132)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require cd[((128 * idx) + cd[4] + 68)] == address(cd[((128 * idx) + cd[4] + 68)])
                require ext_code.size(address(cd[((128 * idx) + cd[4] + 68)]))
                staticcall address(cd[((128 * idx) + cd[4] + 68)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _91 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _95 = mem[_91]
                require mem[_91] == mem[_91 + 18 len 14]
                _99 = mem[_91 + 32]
                require mem[_91 + 32] == mem[_91 + 50 len 14]
                require mem[_91 + 64] == mem[_91 + 92 len 4]
                require cd[((128 * idx) + cd[4] + 100)] == address(cd[((128 * idx) + cd[4] + 100)])
                require 2 * idx < mem[96]
                if address(cd[((128 * idx) + cd[4] + 100)]) == address(cd[((128 * idx) + cd[4] + 132)]):
                    mem[(64 * idx) + 128] = mem[_91 + 18 len 14]
                    require (2 * idx) + 1 < mem[96]
                    mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _99)
                else:
                    mem[(64 * idx) + 128] = mem[_91 + 50 len 14]
                    require (2 * idx) + 1 < mem[96]
                    mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _95)
            idx = idx + 1
            continue 
    else:
        mem[128 len 64 * ('cd', 4).length] = call.data[calldata.size len 64 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((128 * idx) + cd[4] + 100)] == address(cd[((128 * idx) + cd[4] + 100)])
            require cd[((128 * idx) + cd[4] + 132)] == address(cd[((128 * idx) + cd[4] + 132)])
            if address(cd[((128 * idx) + cd[4] + 100)]) == address(cd[((128 * idx) + cd[4] + 132)]):
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if address(cd[((128 * idx) + cd[4] + 100)]) < address(cd[((128 * idx) + cd[4] + 132)]):
                if not address(cd[((128 * idx) + cd[4] + 100)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require cd[((128 * idx) + cd[4] + 68)] == address(cd[((128 * idx) + cd[4] + 68)])
                require ext_code.size(address(cd[((128 * idx) + cd[4] + 68)]))
                staticcall address(cd[((128 * idx) + cd[4] + 68)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _92 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _96 = mem[_92]
                require mem[_92] == mem[_92 + 18 len 14]
                _100 = mem[_92 + 32]
                require mem[_92 + 32] == mem[_92 + 50 len 14]
                require mem[_92 + 64] == mem[_92 + 92 len 4]
                require cd[((128 * idx) + cd[4] + 100)] == address(cd[((128 * idx) + cd[4] + 100)])
                require 2 * idx < mem[96]
                if address(cd[((128 * idx) + cd[4] + 100)]) == address(cd[((128 * idx) + cd[4] + 100)]):
                    mem[(64 * idx) + 128] = mem[_92 + 18 len 14]
                    require (2 * idx) + 1 < mem[96]
                    mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _100)
                else:
                    mem[(64 * idx) + 128] = mem[_92 + 50 len 14]
                    require (2 * idx) + 1 < mem[96]
                    mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _96)
            else:
                if not address(cd[((128 * idx) + cd[4] + 132)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                require cd[((128 * idx) + cd[4] + 68)] == address(cd[((128 * idx) + cd[4] + 68)])
                require ext_code.size(address(cd[((128 * idx) + cd[4] + 68)]))
                staticcall address(cd[((128 * idx) + cd[4] + 68)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _93 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _97 = mem[_93]
                require mem[_93] == mem[_93 + 18 len 14]
                _101 = mem[_93 + 32]
                require mem[_93 + 32] == mem[_93 + 50 len 14]
                require mem[_93 + 64] == mem[_93 + 92 len 4]
                require cd[((128 * idx) + cd[4] + 100)] == address(cd[((128 * idx) + cd[4] + 100)])
                require 2 * idx < mem[96]
                if address(cd[((128 * idx) + cd[4] + 100)]) == address(cd[((128 * idx) + cd[4] + 132)]):
                    mem[(64 * idx) + 128] = mem[_93 + 18 len 14]
                    require (2 * idx) + 1 < mem[96]
                    mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _101)
                else:
                    mem[(64 * idx) + 128] = mem[_93 + 50 len 14]
                    require (2 * idx) + 1 < mem[96]
                    mem[(32 * (2 * idx) + 1) + 128] = Mask(112, 0, _97)
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function aggregate(address arg1, bytes[] arg2) payable {
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
        require calldata.size + -arg1 + -cd[s] - 36 >= 64
        _71 = mem[64]
        require mem[64] + 64 <= test266151307() and mem[64] + 64 >= mem[64]
        mem[64] = mem[64] + 64
        require cd[(arg1 + cd[s] + 36)] == address(cd[(arg1 + cd[s] + 36)])
        mem[_71] = cd[(arg1 + cd[s] + 36)]
        require cd[(arg1 + cd[s] + 68)] <= test266151307()
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 67 < calldata.size
        require cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] <= test266151307()
        _101 = mem[64]
        require mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]) + 32
        mem[_101] = cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]
        require arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 68 <= calldata.size
        mem[_101 + 32 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]] = call.data[arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 68 len cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)]]
        mem[_101 + cd[(arg1 + cd[s] + cd[(arg1 + cd[s] + 68)] + 36)] + 32] = 0
        mem[_71 + 32] = _101
        mem[t] = _71
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _70 = mem[96]
    require mem[96] <= test266151307()
    _72 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _70) + 32
    if not _70:
        _138 = mem[96]
        idx = 0
        while idx < _138:
            require idx < mem[96]
            _142 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _145 = mem[mem[(32 * idx) + 128] + 32]
            _146 = mem[64]
            _154 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _154:
                mem[_146 + s] = mem[_145 + s + 32]
                _138 = mem[96]
                s = s + 32
                continue 
            if ceil32(_154) <= _154:
                staticcall address(_142).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _146 + _154 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require idx < mem[_72]
                        mem[(32 * idx) + _72 + 32] = 96
                    else:
                        _223 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        require idx < mem[_72]
                        mem[(32 * idx) + _72 + 32] = _223
                else:
                    _217 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_217] = return_data.size
                    mem[_217 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require idx < mem[_72]
                        mem[(32 * idx) + _72 + 32] = _217
                    else:
                        _224 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        require idx < mem[_72]
                        mem[(32 * idx) + _72 + 32] = _224
            else:
                mem[_146 + _154] = 0
                staticcall address(_142).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _146 + _154 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require idx < mem[_72]
                        mem[(32 * idx) + _72 + 32] = 96
                    else:
                        _230 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        require idx < mem[_72]
                        mem[(32 * idx) + _72 + 32] = _230
                else:
                    _220 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_220] = return_data.size
                    mem[_220 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require idx < mem[_72]
                        mem[(32 * idx) + _72 + 32] = _220
                    else:
                        _231 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        require idx < mem[_72]
                        mem[(32 * idx) + _72 + 32] = _231
            _138 = mem[96]
            idx = idx + 1
            continue 
        _140 = mem[64]
        mem[mem[64]] = 32
        _149 = mem[_72]
        mem[mem[64] + 32] = mem[_72]
        idx = 0
        s = _72 + 32
        t = mem[64] + (32 * _149) + 64
        u = mem[64] + 64
        while idx < _149:
            mem[u] = t + -_140 - 64
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
            require idx < mem[96]
            _208 = mem[mem[(32 * idx) + 128]]
            require idx < mem[96]
            _212 = mem[mem[(32 * idx) + 128] + 32]
            _213 = mem[64]
            _219 = mem[mem[mem[(32 * idx) + 128] + 32]]
            s = 0
            while s < _219:
                mem[_213 + s] = mem[_212 + s + 32]
                _202 = mem[96]
                s = s + 32
                continue 
            if ceil32(_219) <= _219:
                staticcall address(_208).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _213 + _219 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require idx < mem[_72]
                        mem[(32 * idx) + _72 + 32] = 96
                    else:
                        _266 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        require idx < mem[_72]
                        mem[(32 * idx) + _72 + 32] = _266
                else:
                    _261 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_261] = return_data.size
                    mem[_261 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require idx < mem[_72]
                        mem[(32 * idx) + _72 + 32] = _261
                    else:
                        _267 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        require idx < mem[_72]
                        mem[(32 * idx) + _72 + 32] = _267
            else:
                mem[_213 + _219] = 0
                staticcall address(_208).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _213 + _219 + -mem[64] - 4]
                if not return_data.size:
                    if ext_call.success:
                        require idx < mem[_72]
                        mem[(32 * idx) + _72 + 32] = 96
                    else:
                        _273 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        require idx < mem[_72]
                        mem[(32 * idx) + _72 + 32] = _273
                else:
                    _263 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_263] = return_data.size
                    mem[_263 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if ext_call.success:
                        require idx < mem[_72]
                        mem[(32 * idx) + _72 + 32] = _263
                    else:
                        _274 = mem[64]
                        mem[mem[64]] = 0
                        mem[64] = mem[64] + 32
                        require idx < mem[_72]
                        mem[(32 * idx) + _72 + 32] = _274
            _202 = mem[96]
            idx = idx + 1
            continue 
        _206 = mem[64]
        mem[mem[64]] = 32
        _216 = mem[_72]
        mem[mem[64] + 32] = mem[_72]
        idx = 0
        s = _72 + 32
        t = mem[64] + (32 * _216) + 64
        u = mem[64] + 64
        while idx < _216:
            mem[u] = t + -_206 - 64
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

function sub_5c140aaa(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 <= test266151307() and (32 * ('cd', 36).length) + 128 >= 96
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[36] + cd[s] + 67 < calldata.size
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        _114 = mem[64]
        require mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 <= test266151307() and mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32 >= mem[64]
        mem[64] = mem[64] + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        mem[_114] = cd[(cd[36] + cd[s] + 36)]
        require cd[36] + cd[s] + cd[(cd[36] + cd[s] + 36)] + 68 <= calldata.size
        mem[_114 + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[_114 + cd[(cd[36] + cd[s] + 36)] + 32] = 0
        mem[t] = _114
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] == cd[100]
    require ('cd', 4).length + 1 <= test266151307()
    _115 = mem[64]
    mem[mem[64]] = ('cd', 4).length + 1
    mem[64] = mem[64] + (32 * ('cd', 4).length + 1) + 32
    if not ('cd', 4).length + 1:
        require 0 < mem[_115]
        mem[_115 + 32] = cd[100]
        idx = 0
        s = cd[100]
        while idx < ('cd', 4).length:
            require idx < mem[96]
            _228 = mem[(32 * idx) + 128]
            require idx < ('cd', 68).length
            _232 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            mem[_232 + 32] = call.data[calldata.size]
            if cd[((32 * idx) + cd[68] + 36)] + 32 > mem[_228]:
                mem[_232 + 32] = s
                require idx < ('cd', 4).length
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                staticcall cd[((32 * idx) + cd[4] + 36)] with:
                     funct Mask(32, 224, s) >> 224
                        gas gas_remaining wei
                       args mem[_232 + 36 len mem[_232] - 4]
                mem[0] = ext_call.return_data[0]
                if 1 != ext_call.success:
                    mem[_232 + 64] = 0
                    mem[_232 + 96] = 64
                    if not ext_call.success:
                        _282 = mem[_115]
                        mem[_232 + 128] = mem[_115]
                        idx = 0
                        s = _115 + 32
                        t = _232 + 160
                        while idx < _282:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _232 + (32 * _282) + -mem[64] + 160
                    _287 = mem[_115]
                    mem[_232 + 128] = mem[_115]
                    idx = 0
                    s = _115 + 32
                    t = _232 + 160
                    while idx < _287:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _232 + (32 * _287) + -mem[64] + 160
                if not ext_call.success:
                    mem[_232 + 64] = 0
                    mem[_232 + 96] = 64
                    _288 = mem[_115]
                    mem[_232 + 128] = mem[_115]
                    idx = 0
                    s = _115 + 32
                    t = _232 + 160
                    while idx < _288:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _232 + (32 * _288) + -mem[64] + 160
                if ext_call.return_data[0]:
                    require idx + 1 < mem[_115]
                    mem[(32 * idx + 1) + _115 + 32] = ext_call.return_data[0]
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
                mem[_232 + 64] = 0
                mem[_232 + 96] = 64
                _292 = mem[_115]
                mem[_232 + 128] = mem[_115]
                idx = 0
                s = _115 + 32
                t = _232 + 160
                while idx < _292:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _232 + (32 * _292) + -mem[64] + 160
            _236 = mem[_228]
            mem[_232 + 64] = cd[((32 * idx) + cd[68] + 36)]
            t = _228 + 32
            u = _232 + 96
            while u < _232 + cd[((32 * idx) + cd[68] + 36)] + 96:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                continue 
            mem[_232 + 32] = s
            mem[_232 + 64] = mem[_232 + 64] + 32
            s = _232 + 32
            t = _232 + cd[((32 * idx) + cd[68] + 36)] + 96
            while t < _232 + cd[((32 * idx) + cd[68] + 36)] + 128:
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                continue 
            mem[_232 + 64] = _236 + -cd[((32 * idx) + cd[68] + 36)] + mem[_232 + 64] - 32
            t = _228 + cd[((32 * idx) + cd[68] + 36)] + 64
            s = _232 + cd[((32 * idx) + cd[68] + 36)] + 128
            while s < _232 + _236 + 96:
                mem[s] = mem[t]
                t = t + 32
                s = s + 32
                continue 
            mem[64] = floor32(_232 + _236 + not _236 + -cd[((32 * idx) + cd[68] + 36)] + mem[_228] - 32 + 31) + 3
            require idx < ('cd', 4).length
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall cd[((32 * idx) + cd[4] + 36)].mem[_232 + 96 len 4] with:
                    gas gas_remaining wei
                   args mem[_232 + 100 len mem[_232 + 64] - 4]
            mem[0] = ext_call.return_data[0]
            if 1 != ext_call.success:
                if not ext_call.success:
                    _458 = mem[64]
                    mem[mem[64]] = 0
                    mem[mem[64] + 32] = 64
                    _468 = mem[_115]
                    mem[mem[64] + 64] = mem[_115]
                    idx = 0
                    s = _115 + 32
                    t = mem[64] + 96
                    while idx < _468:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _458 + (32 * _468) + -mem[64] + 96
                _462 = mem[64]
                mem[mem[64]] = 0
                mem[mem[64] + 32] = 64
                _470 = mem[_115]
                mem[mem[64] + 64] = mem[_115]
                idx = 0
                s = _115 + 32
                t = mem[64] + 96
                while idx < _470:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _462 + (32 * _470) + -mem[64] + 96
            if not ext_call.success:
                _463 = mem[64]
                mem[mem[64]] = 0
                mem[mem[64] + 32] = 64
                _471 = mem[_115]
                mem[mem[64] + 64] = mem[_115]
                idx = 0
                s = _115 + 32
                t = mem[64] + 96
                while idx < _471:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _463 + (32 * _471) + -mem[64] + 96
            if ext_call.return_data[0]:
                require idx + 1 < mem[_115]
                mem[(32 * idx + 1) + _115 + 32] = ext_call.return_data[0]
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
            _466 = mem[64]
            mem[mem[64]] = 0
            mem[mem[64] + 32] = 64
            _474 = mem[_115]
            mem[mem[64] + 64] = mem[_115]
            idx = 0
            s = _115 + 32
            t = mem[64] + 96
            while idx < _474:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _466 + (32 * _474) + -mem[64] + 96
        mem[mem[64]] = s
        mem[mem[64] + 32] = 64
        _240 = mem[_115]
        mem[mem[64] + 64] = mem[_115]
        mem[mem[64] + 96 len 32 * _240] = mem[_115 + 32 len 32 * _240]
        return s, 64, mem[mem[64] + 64 len (32 * _240) + 32]
    mem[_115 + 32 len 32 * ('cd', 4).length + 1] = call.data[calldata.size len 32 * ('cd', 4).length + 1]
    require 0 < mem[_115]
    mem[_115 + 32] = cd[100]
    idx = 0
    s = cd[100]
    while idx < ('cd', 4).length:
        require idx < mem[96]
        _229 = mem[(32 * idx) + 128]
        require idx < ('cd', 68).length
        _233 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        mem[_233 + 32] = call.data[calldata.size]
        if cd[((32 * idx) + cd[68] + 36)] + 32 > mem[_229]:
            mem[_233 + 32] = s
            require idx < ('cd', 4).length
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            staticcall cd[((32 * idx) + cd[4] + 36)] with:
                 funct Mask(32, 224, s) >> 224
                    gas gas_remaining wei
                   args mem[_233 + 36 len mem[_233] - 4]
            mem[0] = ext_call.return_data[0]
            if 1 != ext_call.success:
                mem[_233 + 64] = 0
                mem[_233 + 96] = 64
                if not ext_call.success:
                    _285 = mem[_115]
                    mem[_233 + 128] = mem[_115]
                    idx = 0
                    s = _115 + 32
                    t = _233 + 160
                    while idx < _285:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _233 + (32 * _285) + -mem[64] + 160
                _290 = mem[_115]
                mem[_233 + 128] = mem[_115]
                idx = 0
                s = _115 + 32
                t = _233 + 160
                while idx < _290:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _233 + (32 * _290) + -mem[64] + 160
            if not ext_call.success:
                mem[_233 + 64] = 0
                mem[_233 + 96] = 64
                _291 = mem[_115]
                mem[_233 + 128] = mem[_115]
                idx = 0
                s = _115 + 32
                t = _233 + 160
                while idx < _291:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _233 + (32 * _291) + -mem[64] + 160
            if ext_call.return_data[0]:
                require idx + 1 < mem[_115]
                mem[(32 * idx + 1) + _115 + 32] = ext_call.return_data[0]
                idx = idx + 1
                s = ext_call.return_data[0]
                continue 
            mem[_233 + 64] = 0
            mem[_233 + 96] = 64
            _293 = mem[_115]
            mem[_233 + 128] = mem[_115]
            idx = 0
            s = _115 + 32
            t = _233 + 160
            while idx < _293:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _233 + (32 * _293) + -mem[64] + 160
        _238 = mem[_229]
        mem[_233 + 64] = cd[((32 * idx) + cd[68] + 36)]
        t = _229 + 32
        u = _233 + 96
        while u < _233 + cd[((32 * idx) + cd[68] + 36)] + 96:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            continue 
        mem[_233 + 32] = s
        mem[_233 + 64] = mem[_233 + 64] + 32
        s = _233 + 32
        t = _233 + cd[((32 * idx) + cd[68] + 36)] + 96
        while t < _233 + cd[((32 * idx) + cd[68] + 36)] + 128:
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            continue 
        mem[_233 + 64] = _238 + -cd[((32 * idx) + cd[68] + 36)] + mem[_233 + 64] - 32
        t = _229 + cd[((32 * idx) + cd[68] + 36)] + 64
        s = _233 + cd[((32 * idx) + cd[68] + 36)] + 128
        while s < _233 + _238 + 96:
            mem[s] = mem[t]
            t = t + 32
            s = s + 32
            continue 
        mem[64] = floor32(_233 + _238 + not _238 + -cd[((32 * idx) + cd[68] + 36)] + mem[_229] - 32 + 31) + 3
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        staticcall cd[((32 * idx) + cd[4] + 36)].mem[_233 + 96 len 4] with:
                gas gas_remaining wei
               args mem[_233 + 100 len mem[_233 + 64] - 4]
        mem[0] = ext_call.return_data[0]
        if 1 != ext_call.success:
            if not ext_call.success:
                _460 = mem[64]
                mem[mem[64]] = 0
                mem[mem[64] + 32] = 64
                _469 = mem[_115]
                mem[mem[64] + 64] = mem[_115]
                idx = 0
                s = _115 + 32
                t = mem[64] + 96
                while idx < _469:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _460 + (32 * _469) + -mem[64] + 96
            _464 = mem[64]
            mem[mem[64]] = 0
            mem[mem[64] + 32] = 64
            _472 = mem[_115]
            mem[mem[64] + 64] = mem[_115]
            idx = 0
            s = _115 + 32
            t = mem[64] + 96
            while idx < _472:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _464 + (32 * _472) + -mem[64] + 96
        if not ext_call.success:
            _465 = mem[64]
            mem[mem[64]] = 0
            mem[mem[64] + 32] = 64
            _473 = mem[_115]
            mem[mem[64] + 64] = mem[_115]
            idx = 0
            s = _115 + 32
            t = mem[64] + 96
            while idx < _473:
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _465 + (32 * _473) + -mem[64] + 96
        if ext_call.return_data[0]:
            require idx + 1 < mem[_115]
            mem[(32 * idx + 1) + _115 + 32] = ext_call.return_data[0]
            idx = idx + 1
            s = ext_call.return_data[0]
            continue 
        _467 = mem[64]
        mem[mem[64]] = 0
        mem[mem[64] + 32] = 64
        _475 = mem[_115]
        mem[mem[64] + 64] = mem[_115]
        idx = 0
        s = _115 + 32
        t = mem[64] + 96
        while idx < _475:
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _467 + (32 * _475) + -mem[64] + 96
    mem[mem[64]] = s
    mem[mem[64] + 32] = 64
    _243 = mem[_115]
    mem[mem[64] + 64] = mem[_115]
    mem[mem[64] + 96 len 32 * _243] = mem[_115 + 32 len 32 * _243]
    return s, 64, mem[mem[64] + 64 len (32 * _243) + 32]
}



}
