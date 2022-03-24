contract main {




// =====================  Runtime code  =====================


#
#  - sub_62827861(?)
#
function _fallback() payable {
    revert
}

function sub_960d244e(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == arg4
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg4:
        return 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg4:
        return 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_06b68323(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 4).length <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    if ('cd', 4).length:
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while uint16(idx) < ('cd', 4).length:
        require uint16(idx) < ('cd', 4).length
        require uint16(idx) < mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * uint16(idx)) + (32 * ('cd', 4).length) + 160] = eth.balance(mem[(32 * uint16(idx)) + 128])
        idx = idx + 1
        continue 
    mem[(64 * ('cd', 4).length) + 160] = 32
    mem[(64 * ('cd', 4).length) + 192] = mem[(32 * ('cd', 4).length) + 128]
    mem[(64 * ('cd', 4).length) + 224 len 32 * mem[(32 * ('cd', 4).length) + 128]] = mem[(32 * ('cd', 4).length) + 160 len 32 * mem[(32 * ('cd', 4).length) + 128]]
    return Array(len=mem[(32 * ('cd', 4).length) + 128], data=mem[(64 * ('cd', 4).length) + 224 len 32 * mem[(32 * ('cd', 4).length) + 128]]), 
}

function balanceOf(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 <= test266151307() and (32 * arg2.length) + 128 >= 96
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    mem[64] = (64 * arg2.length) + 160
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < mem[96]
            _59 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_59)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_69] == mem[_69]
            require idx < mem[(32 * arg2.length) + 128]
            mem[(32 * idx) + (32 * arg2.length) + 160] = mem[_69]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _64 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 64 len 32 * _64] = mem[(32 * arg2.length) + 160 len 32 * _64]
        return 32, mem[mem[64] + 32 len (32 * _64) + 32]
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        require idx < mem[96]
        _62 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args address(_62)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _71 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_71] == mem[_71]
        require idx < mem[(32 * arg2.length) + 128]
        mem[(32 * idx) + (32 * arg2.length) + 160] = mem[_71]
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _65 = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 64 len 32 * _65] = mem[(32 * arg2.length) + 160 len 32 * _65]
    return 32, mem[mem[64] + 32 len (32 * _65) + 32]
}

function getReserves(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg1.length <= test266151307()
    mem[96] = arg1.length
    if not arg1.length:
        require arg1.length <= test266151307()
        mem[(32 * arg1.length) + 128] = arg1.length
        if not arg1.length:
            require arg1.length <= test266151307()
            mem[(64 * arg1.length) + 160] = arg1.length
            mem[64] = (98 * arg1.length) + 192
            if not arg1.length:
                idx = 0
                while uint32(idx) < arg1.length:
                    require cd[((32 * uint32(idx)) + arg1 + 36)] == address(cd[((32 * uint32(idx)) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + arg1 + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + arg1 + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _192 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_192] == mem[_192 + 18 len 14]
                    _224 = mem[_192 + 32]
                    require mem[_192 + 32] == mem[_192 + 50 len 14]
                    _240 = mem[_192 + 64]
                    require mem[_192 + 64] == mem[_192 + 92 len 4]
                    require uint32(idx) < mem[96]
                    mem[(32 * uint32(idx)) + 128] = mem[_192 + 18 len 14]
                    require uint32(idx) < mem[(32 * arg1.length) + 128]
                    mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] = Mask(112, 0, _224)
                    require uint32(idx) < mem[(64 * arg1.length) + 160]
                    mem[(32 * uint32(idx)) + (64 * arg1.length) + 192] = uint32(_240)
                    idx = idx + 1
                    continue 
                _144 = mem[64]
                mem[mem[64]] = 96
                _152 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _152:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _152) + 128
                _288 = mem[(32 * arg1.length) + 128]
                mem[_144 + (32 * _152) + 128] = mem[(32 * arg1.length) + 128]
                idx = 0
                s = (32 * arg1.length) + 160
                t = _144 + (32 * _152) + 160
                while idx < _288:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_144 + 64] = (32 * _152) + (32 * _288) + 160
                _336 = mem[(64 * arg1.length) + 160]
                mem[_144 + (32 * _152) + (32 * _288) + 160] = mem[(64 * arg1.length) + 160]
                s = 0
                s = (64 * arg1.length) + 192
                t = _144 + (32 * _152) + (32 * _288) + 192
                while None < _336:
                    mem[t] = mem[s + 28 len 4]
                    s = None + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                mem[(64 * arg1.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
                idx = 0
                while uint32(idx) < arg1.length:
                    require cd[((32 * uint32(idx)) + arg1 + 36)] == address(cd[((32 * uint32(idx)) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + arg1 + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + arg1 + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _193 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_193] == mem[_193 + 18 len 14]
                    _225 = mem[_193 + 32]
                    require mem[_193 + 32] == mem[_193 + 50 len 14]
                    _241 = mem[_193 + 64]
                    require mem[_193 + 64] == mem[_193 + 92 len 4]
                    require uint32(idx) < mem[96]
                    mem[(32 * uint32(idx)) + 128] = mem[_193 + 18 len 14]
                    require uint32(idx) < mem[(32 * arg1.length) + 128]
                    mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] = Mask(112, 0, _225)
                    require uint32(idx) < mem[(64 * arg1.length) + 160]
                    mem[(32 * uint32(idx)) + (64 * arg1.length) + 192] = uint32(_241)
                    idx = idx + 1
                    continue 
                _145 = mem[64]
                mem[mem[64]] = 96
                _153 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _153:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _153) + 128
                _289 = mem[(32 * arg1.length) + 128]
                mem[_145 + (32 * _153) + 128] = mem[(32 * arg1.length) + 128]
                idx = 0
                s = (32 * arg1.length) + 160
                t = _145 + (32 * _153) + 160
                while idx < _289:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_145 + 64] = (32 * _153) + (32 * _289) + 160
                _337 = mem[(64 * arg1.length) + 160]
                mem[_145 + (32 * _153) + (32 * _289) + 160] = mem[(64 * arg1.length) + 160]
                s = 0
                s = (64 * arg1.length) + 192
                t = _145 + (32 * _153) + (32 * _289) + 192
                while None < _337:
                    mem[t] = mem[s + 28 len 4]
                    s = None + 1
                    s = s + 32
                    t = t + 32
                    continue 
        else:
            mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            require arg1.length <= test266151307()
            mem[(64 * arg1.length) + 160] = arg1.length
            mem[64] = (98 * arg1.length) + 192
            if not arg1.length:
                idx = 0
                while uint32(idx) < arg1.length:
                    require cd[((32 * uint32(idx)) + arg1 + 36)] == address(cd[((32 * uint32(idx)) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + arg1 + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + arg1 + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _194 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_194] == mem[_194 + 18 len 14]
                    _226 = mem[_194 + 32]
                    require mem[_194 + 32] == mem[_194 + 50 len 14]
                    _242 = mem[_194 + 64]
                    require mem[_194 + 64] == mem[_194 + 92 len 4]
                    require uint32(idx) < mem[96]
                    mem[(32 * uint32(idx)) + 128] = mem[_194 + 18 len 14]
                    require uint32(idx) < mem[(32 * arg1.length) + 128]
                    mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] = Mask(112, 0, _226)
                    require uint32(idx) < mem[(64 * arg1.length) + 160]
                    mem[(32 * uint32(idx)) + (64 * arg1.length) + 192] = uint32(_242)
                    idx = idx + 1
                    continue 
                _146 = mem[64]
                mem[mem[64]] = 96
                _154 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _154:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_146 + 32] = (32 * _154) + 128
                _290 = mem[(32 * arg1.length) + 128]
                mem[_146 + (32 * _154) + 128] = mem[(32 * arg1.length) + 128]
                idx = 0
                s = (32 * arg1.length) + 160
                t = _146 + (32 * _154) + 160
                while idx < _290:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_146 + 64] = (32 * _154) + (32 * _290) + 160
                _338 = mem[(64 * arg1.length) + 160]
                mem[_146 + (32 * _154) + (32 * _290) + 160] = mem[(64 * arg1.length) + 160]
                s = 0
                s = (64 * arg1.length) + 192
                t = _146 + (32 * _154) + (32 * _290) + 192
                while None < _338:
                    mem[t] = mem[s + 28 len 4]
                    s = None + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                mem[(64 * arg1.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
                idx = 0
                while uint32(idx) < arg1.length:
                    require cd[((32 * uint32(idx)) + arg1 + 36)] == address(cd[((32 * uint32(idx)) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + arg1 + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + arg1 + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _195 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_195] == mem[_195 + 18 len 14]
                    _227 = mem[_195 + 32]
                    require mem[_195 + 32] == mem[_195 + 50 len 14]
                    _243 = mem[_195 + 64]
                    require mem[_195 + 64] == mem[_195 + 92 len 4]
                    require uint32(idx) < mem[96]
                    mem[(32 * uint32(idx)) + 128] = mem[_195 + 18 len 14]
                    require uint32(idx) < mem[(32 * arg1.length) + 128]
                    mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] = Mask(112, 0, _227)
                    require uint32(idx) < mem[(64 * arg1.length) + 160]
                    mem[(32 * uint32(idx)) + (64 * arg1.length) + 192] = uint32(_243)
                    idx = idx + 1
                    continue 
                _147 = mem[64]
                mem[mem[64]] = 96
                _155 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _155:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _155) + 128
                _291 = mem[(32 * arg1.length) + 128]
                mem[_147 + (32 * _155) + 128] = mem[(32 * arg1.length) + 128]
                idx = 0
                s = (32 * arg1.length) + 160
                t = _147 + (32 * _155) + 160
                while idx < _291:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_147 + 64] = (32 * _155) + (32 * _291) + 160
                _339 = mem[(64 * arg1.length) + 160]
                mem[_147 + (32 * _155) + (32 * _291) + 160] = mem[(64 * arg1.length) + 160]
                s = 0
                s = (64 * arg1.length) + 192
                t = _147 + (32 * _155) + (32 * _291) + 192
                while None < _339:
                    mem[t] = mem[s + 28 len 4]
                    s = None + 1
                    s = s + 32
                    t = t + 32
                    continue 
    else:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        require arg1.length <= test266151307()
        mem[(32 * arg1.length) + 128] = arg1.length
        if not arg1.length:
            require arg1.length <= test266151307()
            mem[(64 * arg1.length) + 160] = arg1.length
            mem[64] = (98 * arg1.length) + 192
            if not arg1.length:
                idx = 0
                while uint32(idx) < arg1.length:
                    require cd[((32 * uint32(idx)) + arg1 + 36)] == address(cd[((32 * uint32(idx)) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + arg1 + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + arg1 + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _196 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_196] == mem[_196 + 18 len 14]
                    _228 = mem[_196 + 32]
                    require mem[_196 + 32] == mem[_196 + 50 len 14]
                    _244 = mem[_196 + 64]
                    require mem[_196 + 64] == mem[_196 + 92 len 4]
                    require uint32(idx) < mem[96]
                    mem[(32 * uint32(idx)) + 128] = mem[_196 + 18 len 14]
                    require uint32(idx) < mem[(32 * arg1.length) + 128]
                    mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] = Mask(112, 0, _228)
                    require uint32(idx) < mem[(64 * arg1.length) + 160]
                    mem[(32 * uint32(idx)) + (64 * arg1.length) + 192] = uint32(_244)
                    idx = idx + 1
                    continue 
                _148 = mem[64]
                mem[mem[64]] = 96
                _156 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _156:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _156) + 128
                _292 = mem[(32 * arg1.length) + 128]
                mem[_148 + (32 * _156) + 128] = mem[(32 * arg1.length) + 128]
                idx = 0
                s = (32 * arg1.length) + 160
                t = _148 + (32 * _156) + 160
                while idx < _292:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_148 + 64] = (32 * _156) + (32 * _292) + 160
                _340 = mem[(64 * arg1.length) + 160]
                mem[_148 + (32 * _156) + (32 * _292) + 160] = mem[(64 * arg1.length) + 160]
                s = 0
                s = (64 * arg1.length) + 192
                t = _148 + (32 * _156) + (32 * _292) + 192
                while None < _340:
                    mem[t] = mem[s + 28 len 4]
                    s = None + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                mem[(64 * arg1.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
                idx = 0
                while uint32(idx) < arg1.length:
                    require cd[((32 * uint32(idx)) + arg1 + 36)] == address(cd[((32 * uint32(idx)) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + arg1 + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + arg1 + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _197 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_197] == mem[_197 + 18 len 14]
                    _229 = mem[_197 + 32]
                    require mem[_197 + 32] == mem[_197 + 50 len 14]
                    _245 = mem[_197 + 64]
                    require mem[_197 + 64] == mem[_197 + 92 len 4]
                    require uint32(idx) < mem[96]
                    mem[(32 * uint32(idx)) + 128] = mem[_197 + 18 len 14]
                    require uint32(idx) < mem[(32 * arg1.length) + 128]
                    mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] = Mask(112, 0, _229)
                    require uint32(idx) < mem[(64 * arg1.length) + 160]
                    mem[(32 * uint32(idx)) + (64 * arg1.length) + 192] = uint32(_245)
                    idx = idx + 1
                    continue 
                _149 = mem[64]
                mem[mem[64]] = 96
                _157 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _157:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_149 + 32] = (32 * _157) + 128
                _293 = mem[(32 * arg1.length) + 128]
                mem[_149 + (32 * _157) + 128] = mem[(32 * arg1.length) + 128]
                idx = 0
                s = (32 * arg1.length) + 160
                t = _149 + (32 * _157) + 160
                while idx < _293:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_149 + 64] = (32 * _157) + (32 * _293) + 160
                _341 = mem[(64 * arg1.length) + 160]
                mem[_149 + (32 * _157) + (32 * _293) + 160] = mem[(64 * arg1.length) + 160]
                s = 0
                s = (64 * arg1.length) + 192
                t = _149 + (32 * _157) + (32 * _293) + 192
                while None < _341:
                    mem[t] = mem[s + 28 len 4]
                    s = None + 1
                    s = s + 32
                    t = t + 32
                    continue 
        else:
            mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
            require arg1.length <= test266151307()
            mem[(64 * arg1.length) + 160] = arg1.length
            mem[64] = (98 * arg1.length) + 192
            if not arg1.length:
                idx = 0
                while uint32(idx) < arg1.length:
                    require cd[((32 * uint32(idx)) + arg1 + 36)] == address(cd[((32 * uint32(idx)) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + arg1 + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + arg1 + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _198 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_198] == mem[_198 + 18 len 14]
                    _230 = mem[_198 + 32]
                    require mem[_198 + 32] == mem[_198 + 50 len 14]
                    _246 = mem[_198 + 64]
                    require mem[_198 + 64] == mem[_198 + 92 len 4]
                    require uint32(idx) < mem[96]
                    mem[(32 * uint32(idx)) + 128] = mem[_198 + 18 len 14]
                    require uint32(idx) < mem[(32 * arg1.length) + 128]
                    mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] = Mask(112, 0, _230)
                    require uint32(idx) < mem[(64 * arg1.length) + 160]
                    mem[(32 * uint32(idx)) + (64 * arg1.length) + 192] = uint32(_246)
                    idx = idx + 1
                    continue 
                _150 = mem[64]
                mem[mem[64]] = 96
                _158 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _158:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _158) + 128
                _294 = mem[(32 * arg1.length) + 128]
                mem[_150 + (32 * _158) + 128] = mem[(32 * arg1.length) + 128]
                idx = 0
                s = (32 * arg1.length) + 160
                t = _150 + (32 * _158) + 160
                while idx < _294:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_150 + 64] = (32 * _158) + (32 * _294) + 160
                _342 = mem[(64 * arg1.length) + 160]
                mem[_150 + (32 * _158) + (32 * _294) + 160] = mem[(64 * arg1.length) + 160]
                s = 0
                s = (64 * arg1.length) + 192
                t = _150 + (32 * _158) + (32 * _294) + 192
                while None < _342:
                    mem[t] = mem[s + 28 len 4]
                    s = None + 1
                    s = s + 32
                    t = t + 32
                    continue 
            else:
                mem[(64 * arg1.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
                idx = 0
                while uint32(idx) < arg1.length:
                    require cd[((32 * uint32(idx)) + arg1 + 36)] == address(cd[((32 * uint32(idx)) + arg1 + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + arg1 + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + arg1 + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _199 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    require mem[_199] == mem[_199 + 18 len 14]
                    _231 = mem[_199 + 32]
                    require mem[_199 + 32] == mem[_199 + 50 len 14]
                    _247 = mem[_199 + 64]
                    require mem[_199 + 64] == mem[_199 + 92 len 4]
                    require uint32(idx) < mem[96]
                    mem[(32 * uint32(idx)) + 128] = mem[_199 + 18 len 14]
                    require uint32(idx) < mem[(32 * arg1.length) + 128]
                    mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] = Mask(112, 0, _231)
                    require uint32(idx) < mem[(64 * arg1.length) + 160]
                    mem[(32 * uint32(idx)) + (64 * arg1.length) + 192] = uint32(_247)
                    idx = idx + 1
                    continue 
                _151 = mem[64]
                mem[mem[64]] = 96
                _159 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _159:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _159) + 128
                _295 = mem[(32 * arg1.length) + 128]
                mem[_151 + (32 * _159) + 128] = mem[(32 * arg1.length) + 128]
                idx = 0
                s = (32 * arg1.length) + 160
                t = _151 + (32 * _159) + 160
                while idx < _295:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_151 + 64] = (32 * _159) + (32 * _295) + 160
                _343 = mem[(64 * arg1.length) + 160]
                mem[_151 + (32 * _159) + (32 * _295) + 160] = mem[(64 * arg1.length) + 160]
                s = 0
                s = (64 * arg1.length) + 192
                t = _151 + (32 * _159) + (32 * _295) + 192
                while None < _343:
                    mem[t] = mem[s + 28 len 4]
                    s = None + 1
                    s = s + 32
                    t = t + 32
                    continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_8f6c7a3c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require arg3 - arg2 <= test266151307()
    mem[96] = arg3 - arg2
    if not arg3 - arg2:
        require arg3 - arg2 <= test266151307()
        mem[(32 * arg3 - arg2) + 128] = arg3 - arg2
        if not arg3 - arg2:
            require arg3 - arg2 <= test266151307()
            mem[(64 * arg3 - arg2) + 160] = arg3 - arg2
            mem[64] = (98 * arg3) + (-98 * arg2) + 192
            if not arg3 - arg2:
                idx = arg2
                s = 0
                while idx < arg3:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).allPairs(uint256 rg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _224 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _233 = mem[_224]
                    require mem[_224] == mem[_224 + 12 len 20]
                    require s < mem[96]
                    mem[(32 * s) + 128] = mem[_224 + 12 len 20]
                    require ext_code.size(address(_233))
                    staticcall address(_233).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _288 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_288] == mem[_288 + 12 len 20]
                    require s < mem[(32 * arg3 - arg2) + 128]
                    mem[(32 * s) + (32 * arg3 - arg2) + 160] = mem[_288 + 12 len 20]
                    require ext_code.size(address(_233))
                    staticcall address(_233).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _352 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_352] == mem[_352 + 12 len 20]
                    require s < mem[(64 * arg3 - arg2) + 160]
                    mem[(32 * s) + (64 * arg3 - arg2) + 192] = mem[_352 + 12 len 20]
                    idx = idx + 1
                    s = s + 1
                    continue 
                _200 = mem[64]
                mem[mem[64]] = 96
                _208 = mem[96]
                mem[mem[64] + 96] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 128
                while idx < _208:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _208) + 128
                _384 = mem[(32 * arg3 - arg2) + 128]
                mem[_200 + (32 * _208) + 128] = mem[(32 * arg3 - arg2) + 128]
                idx = 0
                s = (32 * arg3 - arg2) + 160
                t = _200 + (32 * _208) + 160
                while idx < _384:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_200 + 64] = (32 * _208) + (32 * _384) + 160
                _432 = mem[(64 * arg3 - arg2) + 160]
                mem[_200 + (32 * _208) + (32 * _384) + 160] = mem[(64 * arg3 - arg2) + 160]
                idx = 0
                s = (64 * arg3 - arg2) + 192
                t = _200 + (32 * _208) + (32 * _384) + 192
                while idx < _432:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _200 + (32 * _208) + (32 * _384) + (32 * _432) + -mem[64] + 192
            mem[(64 * arg3 - arg2) + 192 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
            idx = arg2
            s = 0
            while idx < arg3:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _225 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _235 = mem[_225]
                require mem[_225] == mem[_225 + 12 len 20]
                require s < mem[96]
                mem[(32 * s) + 128] = mem[_225 + 12 len 20]
                require ext_code.size(address(_235))
                staticcall address(_235).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _289 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_289] == mem[_289 + 12 len 20]
                require s < mem[(32 * arg3 - arg2) + 128]
                mem[(32 * s) + (32 * arg3 - arg2) + 160] = mem[_289 + 12 len 20]
                require ext_code.size(address(_235))
                staticcall address(_235).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _353 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_353] == mem[_353 + 12 len 20]
                require s < mem[(64 * arg3 - arg2) + 160]
                mem[(32 * s) + (64 * arg3 - arg2) + 192] = mem[_353 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _201 = mem[64]
            mem[mem[64]] = 96
            _209 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _209:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _209) + 128
            _385 = mem[(32 * arg3 - arg2) + 128]
            mem[_201 + (32 * _209) + 128] = mem[(32 * arg3 - arg2) + 128]
            idx = 0
            s = (32 * arg3 - arg2) + 160
            t = _201 + (32 * _209) + 160
            while idx < _385:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_201 + 64] = (32 * _209) + (32 * _385) + 160
            _433 = mem[(64 * arg3 - arg2) + 160]
            mem[_201 + (32 * _209) + (32 * _385) + 160] = mem[(64 * arg3 - arg2) + 160]
            idx = 0
            s = (64 * arg3 - arg2) + 192
            t = _201 + (32 * _209) + (32 * _385) + 192
            while idx < _433:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _201 + (32 * _209) + (32 * _385) + (32 * _433) + -mem[64] + 192
        mem[(32 * arg3 - arg2) + 160 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
        require arg3 - arg2 <= test266151307()
        mem[(64 * arg3 - arg2) + 160] = arg3 - arg2
        mem[64] = (98 * arg3) + (-98 * arg2) + 192
        if not arg3 - arg2:
            idx = arg2
            s = 0
            while idx < arg3:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _226 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _237 = mem[_226]
                require mem[_226] == mem[_226 + 12 len 20]
                require s < mem[96]
                mem[(32 * s) + 128] = mem[_226 + 12 len 20]
                require ext_code.size(address(_237))
                staticcall address(_237).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _290 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_290] == mem[_290 + 12 len 20]
                require s < mem[(32 * arg3 - arg2) + 128]
                mem[(32 * s) + (32 * arg3 - arg2) + 160] = mem[_290 + 12 len 20]
                require ext_code.size(address(_237))
                staticcall address(_237).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _354 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_354] == mem[_354 + 12 len 20]
                require s < mem[(64 * arg3 - arg2) + 160]
                mem[(32 * s) + (64 * arg3 - arg2) + 192] = mem[_354 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _202 = mem[64]
            mem[mem[64]] = 96
            _210 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _210:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_202 + 32] = (32 * _210) + 128
            _386 = mem[(32 * arg3 - arg2) + 128]
            mem[_202 + (32 * _210) + 128] = mem[(32 * arg3 - arg2) + 128]
            idx = 0
            s = (32 * arg3 - arg2) + 160
            t = _202 + (32 * _210) + 160
            while idx < _386:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_202 + 64] = (32 * _210) + (32 * _386) + 160
            _434 = mem[(64 * arg3 - arg2) + 160]
            mem[_202 + (32 * _210) + (32 * _386) + 160] = mem[(64 * arg3 - arg2) + 160]
            idx = 0
            s = (64 * arg3 - arg2) + 192
            t = _202 + (32 * _210) + (32 * _386) + 192
            while idx < _434:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _202 + (32 * _210) + (32 * _386) + (32 * _434) + -mem[64] + 192
        mem[(64 * arg3 - arg2) + 192 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
        idx = arg2
        s = 0
        while idx < arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _227 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _239 = mem[_227]
            require mem[_227] == mem[_227 + 12 len 20]
            require s < mem[96]
            mem[(32 * s) + 128] = mem[_227 + 12 len 20]
            require ext_code.size(address(_239))
            staticcall address(_239).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _291 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_291] == mem[_291 + 12 len 20]
            require s < mem[(32 * arg3 - arg2) + 128]
            mem[(32 * s) + (32 * arg3 - arg2) + 160] = mem[_291 + 12 len 20]
            require ext_code.size(address(_239))
            staticcall address(_239).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _355 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_355] == mem[_355 + 12 len 20]
            require s < mem[(64 * arg3 - arg2) + 160]
            mem[(32 * s) + (64 * arg3 - arg2) + 192] = mem[_355 + 12 len 20]
            idx = idx + 1
            s = s + 1
            continue 
        _203 = mem[64]
        mem[mem[64]] = 96
        _211 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _211:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_203 + 32] = (32 * _211) + 128
        _387 = mem[(32 * arg3 - arg2) + 128]
        mem[_203 + (32 * _211) + 128] = mem[(32 * arg3 - arg2) + 128]
        idx = 0
        s = (32 * arg3 - arg2) + 160
        t = _203 + (32 * _211) + 160
        while idx < _387:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_203 + 64] = (32 * _211) + (32 * _387) + 160
        _435 = mem[(64 * arg3 - arg2) + 160]
        mem[_203 + (32 * _211) + (32 * _387) + 160] = mem[(64 * arg3 - arg2) + 160]
        idx = 0
        s = (64 * arg3 - arg2) + 192
        t = _203 + (32 * _211) + (32 * _387) + 192
        while idx < _435:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _203 + (32 * _211) + (32 * _387) + (32 * _435) + -mem[64] + 192
    mem[128 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
    require arg3 - arg2 <= test266151307()
    mem[(32 * arg3 - arg2) + 128] = arg3 - arg2
    if not arg3 - arg2:
        require arg3 - arg2 <= test266151307()
        mem[(64 * arg3 - arg2) + 160] = arg3 - arg2
        mem[64] = (98 * arg3) + (-98 * arg2) + 192
        if not arg3 - arg2:
            idx = arg2
            s = 0
            while idx < arg3:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _228 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _241 = mem[_228]
                require mem[_228] == mem[_228 + 12 len 20]
                require s < mem[96]
                mem[(32 * s) + 128] = mem[_228 + 12 len 20]
                require ext_code.size(address(_241))
                staticcall address(_241).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _292 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_292] == mem[_292 + 12 len 20]
                require s < mem[(32 * arg3 - arg2) + 128]
                mem[(32 * s) + (32 * arg3 - arg2) + 160] = mem[_292 + 12 len 20]
                require ext_code.size(address(_241))
                staticcall address(_241).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _356 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_356] == mem[_356 + 12 len 20]
                require s < mem[(64 * arg3 - arg2) + 160]
                mem[(32 * s) + (64 * arg3 - arg2) + 192] = mem[_356 + 12 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            _204 = mem[64]
            mem[mem[64]] = 96
            _212 = mem[96]
            mem[mem[64] + 96] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 128
            while idx < _212:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _212) + 128
            _388 = mem[(32 * arg3 - arg2) + 128]
            mem[_204 + (32 * _212) + 128] = mem[(32 * arg3 - arg2) + 128]
            idx = 0
            s = (32 * arg3 - arg2) + 160
            t = _204 + (32 * _212) + 160
            while idx < _388:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_204 + 64] = (32 * _212) + (32 * _388) + 160
            _436 = mem[(64 * arg3 - arg2) + 160]
            mem[_204 + (32 * _212) + (32 * _388) + 160] = mem[(64 * arg3 - arg2) + 160]
            idx = 0
            s = (64 * arg3 - arg2) + 192
            t = _204 + (32 * _212) + (32 * _388) + 192
            while idx < _436:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _204 + (32 * _212) + (32 * _388) + (32 * _436) + -mem[64] + 192
        mem[(64 * arg3 - arg2) + 192 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
        idx = arg2
        s = 0
        while idx < arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _229 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _243 = mem[_229]
            require mem[_229] == mem[_229 + 12 len 20]
            require s < mem[96]
            mem[(32 * s) + 128] = mem[_229 + 12 len 20]
            require ext_code.size(address(_243))
            staticcall address(_243).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _293 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_293] == mem[_293 + 12 len 20]
            require s < mem[(32 * arg3 - arg2) + 128]
            mem[(32 * s) + (32 * arg3 - arg2) + 160] = mem[_293 + 12 len 20]
            require ext_code.size(address(_243))
            staticcall address(_243).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_357] == mem[_357 + 12 len 20]
            require s < mem[(64 * arg3 - arg2) + 160]
            mem[(32 * s) + (64 * arg3 - arg2) + 192] = mem[_357 + 12 len 20]
            idx = idx + 1
            s = s + 1
            continue 
        _205 = mem[64]
        mem[mem[64]] = 96
        _213 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _213:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _213) + 128
        _389 = mem[(32 * arg3 - arg2) + 128]
        mem[_205 + (32 * _213) + 128] = mem[(32 * arg3 - arg2) + 128]
        idx = 0
        s = (32 * arg3 - arg2) + 160
        t = _205 + (32 * _213) + 160
        while idx < _389:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_205 + 64] = (32 * _213) + (32 * _389) + 160
        _437 = mem[(64 * arg3 - arg2) + 160]
        mem[_205 + (32 * _213) + (32 * _389) + 160] = mem[(64 * arg3 - arg2) + 160]
        idx = 0
        s = (64 * arg3 - arg2) + 192
        t = _205 + (32 * _213) + (32 * _389) + 192
        while idx < _437:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _205 + (32 * _213) + (32 * _389) + (32 * _437) + -mem[64] + 192
    mem[(32 * arg3 - arg2) + 160 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
    require arg3 - arg2 <= test266151307()
    mem[(64 * arg3 - arg2) + 160] = arg3 - arg2
    mem[64] = (98 * arg3) + (-98 * arg2) + 192
    if not arg3 - arg2:
        idx = arg2
        s = 0
        while idx < arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _230 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _245 = mem[_230]
            require mem[_230] == mem[_230 + 12 len 20]
            require s < mem[96]
            mem[(32 * s) + 128] = mem[_230 + 12 len 20]
            require ext_code.size(address(_245))
            staticcall address(_245).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _294 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_294] == mem[_294 + 12 len 20]
            require s < mem[(32 * arg3 - arg2) + 128]
            mem[(32 * s) + (32 * arg3 - arg2) + 160] = mem[_294 + 12 len 20]
            require ext_code.size(address(_245))
            staticcall address(_245).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _358 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_358] == mem[_358 + 12 len 20]
            require s < mem[(64 * arg3 - arg2) + 160]
            mem[(32 * s) + (64 * arg3 - arg2) + 192] = mem[_358 + 12 len 20]
            idx = idx + 1
            s = s + 1
            continue 
        _206 = mem[64]
        mem[mem[64]] = 96
        _214 = mem[96]
        mem[mem[64] + 96] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 128
        while idx < _214:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_206 + 32] = (32 * _214) + 128
        _390 = mem[(32 * arg3 - arg2) + 128]
        mem[_206 + (32 * _214) + 128] = mem[(32 * arg3 - arg2) + 128]
        idx = 0
        s = (32 * arg3 - arg2) + 160
        t = _206 + (32 * _214) + 160
        while idx < _390:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_206 + 64] = (32 * _214) + (32 * _390) + 160
        _438 = mem[(64 * arg3 - arg2) + 160]
        mem[_206 + (32 * _214) + (32 * _390) + 160] = mem[(64 * arg3 - arg2) + 160]
        idx = 0
        s = (64 * arg3 - arg2) + 192
        t = _206 + (32 * _214) + (32 * _390) + 192
        while idx < _438:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _206 + (32 * _214) + (32 * _390) + (32 * _438) + -mem[64] + 192
    mem[(64 * arg3 - arg2) + 192 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
    idx = arg2
    s = 0
    while idx < arg3:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _231 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _247 = mem[_231]
        require mem[_231] == mem[_231 + 12 len 20]
        require s < mem[96]
        mem[(32 * s) + 128] = mem[_231 + 12 len 20]
        require ext_code.size(address(_247))
        staticcall address(_247).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _295 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_295] == mem[_295 + 12 len 20]
        require s < mem[(32 * arg3 - arg2) + 128]
        mem[(32 * s) + (32 * arg3 - arg2) + 160] = mem[_295 + 12 len 20]
        require ext_code.size(address(_247))
        staticcall address(_247).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _359 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_359] == mem[_359 + 12 len 20]
        require s < mem[(64 * arg3 - arg2) + 160]
        mem[(32 * s) + (64 * arg3 - arg2) + 192] = mem[_359 + 12 len 20]
        idx = idx + 1
        s = s + 1
        continue 
    _207 = mem[64]
    mem[mem[64]] = 96
    _215 = mem[96]
    mem[mem[64] + 96] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 128
    while idx < _215:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = (32 * _215) + 128
    _391 = mem[(32 * arg3 - arg2) + 128]
    mem[_207 + (32 * _215) + 128] = mem[(32 * arg3 - arg2) + 128]
    idx = 0
    s = (32 * arg3 - arg2) + 160
    t = _207 + (32 * _215) + 160
    while idx < _391:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_207 + 64] = (32 * _215) + (32 * _391) + 160
    _439 = mem[(64 * arg3 - arg2) + 160]
    mem[_207 + (32 * _215) + (32 * _391) + 160] = mem[(64 * arg3 - arg2) + 160]
    idx = 0
    s = (64 * arg3 - arg2) + 192
    t = _207 + (32 * _215) + (32 * _391) + 192
    while idx < _439:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _207 + (32 * _215) + (32 * _391) + (32 * _439) + -mem[64] + 192
}

function sub_b4111654(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 4).length <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + 160
    if not ('cd', 4).length:
        require ('cd', 4).length <= test266151307()
        mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
        mem[64] = (98 * ('cd', 4).length) + 192
        if not ('cd', 4).length:
            require ('cd', 4).length <= test266151307()
            mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
            mem[64] = (131 * ('cd', 4).length) + 224
            if ('cd', 4).length:
                mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                idx = 0
                while idx < ('cd', 4).length:
                    require idx < mem[96]
                    _871 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_871))
                    staticcall address(_871).name() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _879 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _886 = mem[_879]
                    require mem[_879] <= test266151307()
                    require _879 + mem[_879] + 31 < _879 + return_data.size
                    _904 = mem[_879 + mem[_879]]
                    require mem[_879 + mem[_879]] <= test266151307()
                    require _879 + ceil32(return_data.size) + ceil32(mem[_879 + mem[_879]]) + 32 <= test266151307() and ceil32(mem[_879 + mem[_879]]) + 32 >= 0
                    mem[64] = _879 + ceil32(return_data.size) + ceil32(mem[_879 + mem[_879]]) + 32
                    mem[_879 + ceil32(return_data.size)] = _904
                    require _886 + _904 + 32 <= return_data.size
                    s = 0
                    while s < _904:
                        mem[_879 + ceil32(return_data.size) + s + 32] = mem[_879 + _886 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_904) <= _904:
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _879 + ceil32(return_data.size)
                        require ext_code.size(address(_871))
                        staticcall address(_871).0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1353 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1353] == mem[_1353 + 31 len 1]
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_1353 + 31 len 1]
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_871))
                        staticcall address(_871).0x95d89b41 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1427 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1443 = mem[_1427]
                        require mem[_1427] <= test266151307()
                        require _1427 + mem[_1427] + 31 < _1427 + return_data.size
                        _1481 = mem[_1427 + mem[_1427]]
                        require mem[_1427 + mem[_1427]] <= test266151307()
                        require _1427 + ceil32(return_data.size) + ceil32(mem[_1427 + mem[_1427]]) + 32 <= test266151307() and ceil32(mem[_1427 + mem[_1427]]) + 32 >= 0
                        mem[64] = _1427 + ceil32(return_data.size) + ceil32(mem[_1427 + mem[_1427]]) + 32
                        mem[_1427 + ceil32(return_data.size)] = _1481
                        require _1443 + _1481 + 32 <= return_data.size
                        s = 0
                        while s < _1481:
                            mem[_1427 + ceil32(return_data.size) + s + 32] = mem[_1427 + _1443 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1481) > _1481:
                            mem[_1427 + ceil32(return_data.size) + _1481 + 32] = 0
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _1427 + ceil32(return_data.size)
                    else:
                        mem[_879 + ceil32(return_data.size) + _904 + 32] = 0
                        require idx < mem[(32 * ('cd', 4).length) + 128]
                        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _879 + ceil32(return_data.size)
                        require ext_code.size(address(_871))
                        staticcall address(_871).0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1359 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1359] == mem[_1359 + 31 len 1]
                        require idx < mem[(98 * ('cd', 4).length) + 192]
                        mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_1359 + 31 len 1]
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(address(_871))
                        staticcall address(_871).0x95d89b41 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1435 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1449 = mem[_1435]
                        require mem[_1435] <= test266151307()
                        require _1435 + mem[_1435] + 31 < _1435 + return_data.size
                        _1488 = mem[_1435 + mem[_1435]]
                        require mem[_1435 + mem[_1435]] <= test266151307()
                        require _1435 + ceil32(return_data.size) + ceil32(mem[_1435 + mem[_1435]]) + 32 <= test266151307() and ceil32(mem[_1435 + mem[_1435]]) + 32 >= 0
                        mem[64] = _1435 + ceil32(return_data.size) + ceil32(mem[_1435 + mem[_1435]]) + 32
                        mem[_1435 + ceil32(return_data.size)] = _1488
                        require _1449 + _1488 + 32 <= return_data.size
                        s = 0
                        while s < _1488:
                            mem[_1435 + ceil32(return_data.size) + s + 32] = mem[_1435 + _1449 + s + 32]
                            s = s + 32
                            continue 
                        if ceil32(_1488) > _1488:
                            mem[_1435 + ceil32(return_data.size) + _1488 + 32] = 0
                        require idx < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _1435 + ceil32(return_data.size)
                    idx = idx + 1
                    continue 
                _870 = mem[64]
                mem[mem[64]] = 96
                _882 = mem[(32 * ('cd', 4).length) + 128]
                mem[mem[64] + 96] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                t = mem[64] + (32 * _882) + 128
                u = mem[64] + 128
                while idx < _882:
                    mem[u] = t + -_870 - 128
                    _1292 = mem[s]
                    _1319 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1319:
                        mem[t + v + 32] = mem[_1292 + v + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1319) > _1319:
                        mem[t + _1319 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = t + ceil32(_1319) + 32
                    u = u + 32
                    continue 
                mem[_870 + 32] = t - _870
                _1318 = mem[(64 * ('cd', 4).length) + 160]
                mem[t] = mem[(64 * ('cd', 4).length) + 160]
                idx = 0
                s = (64 * ('cd', 4).length) + 192
                u = t + (32 * _1318) + 32
                v = t + 32
                while idx < _1318:
                    mem[v] = u + -t - 32
                    _1688 = mem[s]
                    _1713 = mem[mem[s]]
                    mem[u] = mem[mem[s]]
                    t = 0
                    while t < _1713:
                        mem[u + t + 32] = mem[_1688 + t + 32]
                        t = t + 32
                        continue 
                    if ceil32(_1713) > _1713:
                        mem[u + _1713 + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    u = u + ceil32(_1713) + 32
                    v = v + 32
                    continue 
                mem[_870 + 64] = u - _870
                _1712 = mem[(98 * ('cd', 4).length) + 192]
                mem[u] = mem[(98 * ('cd', 4).length) + 192]
                mem[u + 32 len 32 * _1712] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1712]
                return memory
                  from mem[64]
                   len u + (32 * _1712) + -mem[64] + 32
            idx = 0
            while idx < ('cd', 4).length:
                require idx < mem[96]
                _867 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_867))
                staticcall address(_867).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _878 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _885 = mem[_878]
                require mem[_878] <= test266151307()
                require _878 + mem[_878] + 31 < _878 + return_data.size
                _903 = mem[_878 + mem[_878]]
                require mem[_878 + mem[_878]] <= test266151307()
                require _878 + ceil32(return_data.size) + ceil32(mem[_878 + mem[_878]]) + 32 <= test266151307() and ceil32(mem[_878 + mem[_878]]) + 32 >= 0
                mem[64] = _878 + ceil32(return_data.size) + ceil32(mem[_878 + mem[_878]]) + 32
                mem[_878 + ceil32(return_data.size)] = _903
                require _885 + _903 + 32 <= return_data.size
                s = 0
                while s < _903:
                    mem[_878 + ceil32(return_data.size) + s + 32] = mem[_878 + _885 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_903) <= _903:
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _878 + ceil32(return_data.size)
                    require ext_code.size(address(_867))
                    staticcall address(_867).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1352 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1352] == mem[_1352 + 31 len 1]
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_1352 + 31 len 1]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_867))
                    staticcall address(_867).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1425 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1441 = mem[_1425]
                    require mem[_1425] <= test266151307()
                    require _1425 + mem[_1425] + 31 < _1425 + return_data.size
                    _1480 = mem[_1425 + mem[_1425]]
                    require mem[_1425 + mem[_1425]] <= test266151307()
                    require _1425 + ceil32(return_data.size) + ceil32(mem[_1425 + mem[_1425]]) + 32 <= test266151307() and ceil32(mem[_1425 + mem[_1425]]) + 32 >= 0
                    mem[64] = _1425 + ceil32(return_data.size) + ceil32(mem[_1425 + mem[_1425]]) + 32
                    mem[_1425 + ceil32(return_data.size)] = _1480
                    require _1441 + _1480 + 32 <= return_data.size
                    s = 0
                    while s < _1480:
                        mem[_1425 + ceil32(return_data.size) + s + 32] = mem[_1425 + _1441 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1480) > _1480:
                        mem[_1425 + ceil32(return_data.size) + _1480 + 32] = 0
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _1425 + ceil32(return_data.size)
                else:
                    mem[_878 + ceil32(return_data.size) + _903 + 32] = 0
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _878 + ceil32(return_data.size)
                    require ext_code.size(address(_867))
                    staticcall address(_867).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1358 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1358] == mem[_1358 + 31 len 1]
                    require idx < mem[(98 * ('cd', 4).length) + 192]
                    mem[(32 * idx) + (98 * ('cd', 4).length) + 224] = mem[_1358 + 31 len 1]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_867))
                    staticcall address(_867).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1434 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1448 = mem[_1434]
                    require mem[_1434] <= test266151307()
                    require _1434 + mem[_1434] + 31 < _1434 + return_data.size
                    _1487 = mem[_1434 + mem[_1434]]
                    require mem[_1434 + mem[_1434]] <= test266151307()
                    require _1434 + ceil32(return_data.size) + ceil32(mem[_1434 + mem[_1434]]) + 32 <= test266151307() and ceil32(mem[_1434 + mem[_1434]]) + 32 >= 0
                    mem[64] = _1434 + ceil32(return_data.size) + ceil32(mem[_1434 + mem[_1434]]) + 32
                    mem[_1434 + ceil32(return_data.size)] = _1487
                    require _1448 + _1487 + 32 <= return_data.size
                    s = 0
                    while s < _1487:
                        mem[_1434 + ceil32(return_data.size) + s + 32] = mem[_1434 + _1448 + s + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1487) > _1487:
                        mem[_1434 + ceil32(return_data.size) + _1487 + 32] = 0
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _1434 + ceil32(return_data.size)
                idx = idx + 1
                continue 
            _866 = mem[64]
            mem[mem[64]] = 96
            _881 = mem[(32 * ('cd', 4).length) + 128]
            mem[mem[64] + 96] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = mem[64] + (32 * _881) + 128
            u = mem[64] + 128
            while idx < _881:
                mem[u] = t + -_866 - 128
                _1290 = mem[s]
                _1317 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1317:
                    mem[t + v + 32] = mem[_1290 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1317) > _1317:
                    mem[t + _1317 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1317) + 32
                u = u + 32
                continue 
            mem[_866 + 32] = t - _866
            _1316 = mem[(64 * ('cd', 4).length) + 160]
            mem[t] = mem[(64 * ('cd', 4).length) + 160]
            idx = 0
            s = (64 * ('cd', 4).length) + 192
            u = t + (32 * _1316) + 32
            v = t + 32
            while idx < _1316:
                mem[v] = u + -t - 32
                _1684 = mem[s]
                _1711 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _1711:
                    mem[u + t + 32] = mem[_1684 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_1711) > _1711:
                    mem[u + _1711 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = u + ceil32(_1711) + 32
                v = v + 32
                continue 
            mem[_866 + 64] = u - _866
            _1710 = mem[(98 * ('cd', 4).length) + 192]
            mem[u] = mem[(98 * ('cd', 4).length) + 192]
            mem[u + 32 len 32 * _1710] = mem[(98 * ('cd', 4).length) + 224 len 32 * _1710]
            var70001 = _1710
            var70002 = (98 * ('cd', 4).length) + (32 * _1710) + 224
            return memory
              from mem[64]
               len u + (32 * _1710) + -mem[64] + 32
        mem[(64 * ('cd', 4).length) + 192] = 96
        s = (64 * ('cd', 4).length) + 192
        s = ('cd', 4).length
        while cd[4] + (32 * ('cd', 4).length) + 35:
            mem[('cd', 4).length + 32] = 96
            s = ('cd', 4).length + 32
            s = cd[4] + (32 * ('cd', 4).length) + 35
            continue 
        _874 = mem[96]
        require mem[96] <= test266151307()
        _876 = mem[64]
        mem[mem[64]] = mem[96]
        mem[64] = mem[64] + (32 * _874) + 32
        if _874:
            mem[_876 + 32 len 32 * _874] = call.data[calldata.size len 32 * _874]
            _1287 = mem[96]
            idx = 0
            while idx < _1287:
                require idx < mem[96]
                _1303 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1303))
                staticcall address(_1303).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1321 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1338 = mem[_1321]
                require mem[_1321] <= test266151307()
                require _1321 + mem[_1321] + 31 < _1321 + return_data.size
                _1361 = mem[_1321 + mem[_1321]]
                require mem[_1321 + mem[_1321]] <= test266151307()
                require _1321 + ceil32(return_data.size) + ceil32(mem[_1321 + mem[_1321]]) + 32 <= test266151307() and ceil32(mem[_1321 + mem[_1321]]) + 32 >= 0
                mem[64] = _1321 + ceil32(return_data.size) + ceil32(mem[_1321 + mem[_1321]]) + 32
                mem[_1321 + ceil32(return_data.size)] = _1361
                require _1338 + _1361 + 32 <= return_data.size
                s = 0
                while s < _1361:
                    mem[_1321 + ceil32(return_data.size) + s + 32] = mem[_1321 + _1338 + s + 32]
                    _1287 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1361) <= _1361:
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _1321 + ceil32(return_data.size)
                    require ext_code.size(address(_1303))
                    staticcall address(_1303).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1761 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1761] == mem[_1761 + 31 len 1]
                    require idx < mem[_876]
                    mem[(32 * idx) + _876 + 32] = mem[_1761 + 31 len 1]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_1303))
                    staticcall address(_1303).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1841 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1857 = mem[_1841]
                    require mem[_1841] <= test266151307()
                    require _1841 + mem[_1841] + 31 < _1841 + return_data.size
                    _1883 = mem[_1841 + mem[_1841]]
                    require mem[_1841 + mem[_1841]] <= test266151307()
                    require _1841 + ceil32(return_data.size) + ceil32(mem[_1841 + mem[_1841]]) + 32 <= test266151307() and ceil32(mem[_1841 + mem[_1841]]) + 32 >= 0
                    mem[64] = _1841 + ceil32(return_data.size) + ceil32(mem[_1841 + mem[_1841]]) + 32
                    mem[_1841 + ceil32(return_data.size)] = _1883
                    require _1857 + _1883 + 32 <= return_data.size
                    s = 0
                    while s < _1883:
                        mem[_1841 + ceil32(return_data.size) + s + 32] = mem[_1841 + _1857 + s + 32]
                        _1287 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_1883) > _1883:
                        mem[_1841 + ceil32(return_data.size) + _1883 + 32] = 0
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _1841 + ceil32(return_data.size)
                else:
                    mem[_1321 + ceil32(return_data.size) + _1361 + 32] = 0
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _1321 + ceil32(return_data.size)
                    require ext_code.size(address(_1303))
                    staticcall address(_1303).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1765 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1765] == mem[_1765 + 31 len 1]
                    require idx < mem[_876]
                    mem[(32 * idx) + _876 + 32] = mem[_1765 + 31 len 1]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_1303))
                    staticcall address(_1303).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1849 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1865 = mem[_1849]
                    require mem[_1849] <= test266151307()
                    require _1849 + mem[_1849] + 31 < _1849 + return_data.size
                    _1889 = mem[_1849 + mem[_1849]]
                    require mem[_1849 + mem[_1849]] <= test266151307()
                    require _1849 + ceil32(return_data.size) + ceil32(mem[_1849 + mem[_1849]]) + 32 <= test266151307() and ceil32(mem[_1849 + mem[_1849]]) + 32 >= 0
                    mem[64] = _1849 + ceil32(return_data.size) + ceil32(mem[_1849 + mem[_1849]]) + 32
                    mem[_1849 + ceil32(return_data.size)] = _1889
                    require _1865 + _1889 + 32 <= return_data.size
                    s = 0
                    while s < _1889:
                        mem[_1849 + ceil32(return_data.size) + s + 32] = mem[_1849 + _1865 + s + 32]
                        _1287 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_1889) > _1889:
                        mem[_1849 + ceil32(return_data.size) + _1889 + 32] = 0
                    require idx < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _1849 + ceil32(return_data.size)
                _1287 = mem[96]
                idx = idx + 1
                continue 
            _1302 = mem[64]
            mem[mem[64]] = 96
            _1327 = mem[(32 * ('cd', 4).length) + 128]
            mem[mem[64] + 96] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = mem[64] + (32 * _1327) + 128
            u = mem[64] + 128
            while idx < _1327:
                mem[u] = t + -_1302 - 128
                _1694 = mem[s]
                _1717 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1717:
                    mem[t + v + 32] = mem[_1694 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1717) > _1717:
                    mem[t + _1717 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1717) + 32
                u = u + 32
                continue 
            mem[_1302 + 32] = t - _1302
            _1716 = mem[(64 * ('cd', 4).length) + 160]
            mem[t] = mem[(64 * ('cd', 4).length) + 160]
            idx = 0
            s = (64 * ('cd', 4).length) + 192
            u = t + (32 * _1716) + 32
            v = t + 32
            while idx < _1716:
                mem[v] = u + -t - 32
                _1984 = mem[s]
                _2005 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _2005:
                    mem[u + t + 32] = mem[_1984 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_2005) > _2005:
                    mem[u + _2005 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = u + ceil32(_2005) + 32
                v = v + 32
                continue 
            mem[_1302 + 64] = u - _1302
            _2004 = mem[_876]
            mem[u] = mem[_876]
            mem[u + 32 len 32 * _2004] = mem[_876 + 32 len 32 * _2004]
            return memory
              from mem[64]
               len u + (32 * _2004) + -mem[64] + 32
        _1286 = mem[96]
        idx = 0
        while idx < _1286:
            require idx < mem[96]
            _1299 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_1299))
            staticcall address(_1299).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1320 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1337 = mem[_1320]
            require mem[_1320] <= test266151307()
            require _1320 + mem[_1320] + 31 < _1320 + return_data.size
            _1360 = mem[_1320 + mem[_1320]]
            require mem[_1320 + mem[_1320]] <= test266151307()
            require _1320 + ceil32(return_data.size) + ceil32(mem[_1320 + mem[_1320]]) + 32 <= test266151307() and ceil32(mem[_1320 + mem[_1320]]) + 32 >= 0
            mem[64] = _1320 + ceil32(return_data.size) + ceil32(mem[_1320 + mem[_1320]]) + 32
            mem[_1320 + ceil32(return_data.size)] = _1360
            require _1337 + _1360 + 32 <= return_data.size
            s = 0
            while s < _1360:
                mem[_1320 + ceil32(return_data.size) + s + 32] = mem[_1320 + _1337 + s + 32]
                _1286 = mem[96]
                s = s + 32
                continue 
            if ceil32(_1360) <= _1360:
                require idx < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _1320 + ceil32(return_data.size)
                require ext_code.size(address(_1299))
                staticcall address(_1299).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1760 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1760] == mem[_1760 + 31 len 1]
                require idx < mem[_876]
                mem[(32 * idx) + _876 + 32] = mem[_1760 + 31 len 1]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1299))
                staticcall address(_1299).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1839 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1855 = mem[_1839]
                require mem[_1839] <= test266151307()
                require _1839 + mem[_1839] + 31 < _1839 + return_data.size
                _1882 = mem[_1839 + mem[_1839]]
                require mem[_1839 + mem[_1839]] <= test266151307()
                require _1839 + ceil32(return_data.size) + ceil32(mem[_1839 + mem[_1839]]) + 32 <= test266151307() and ceil32(mem[_1839 + mem[_1839]]) + 32 >= 0
                mem[64] = _1839 + ceil32(return_data.size) + ceil32(mem[_1839 + mem[_1839]]) + 32
                mem[_1839 + ceil32(return_data.size)] = _1882
                require _1855 + _1882 + 32 <= return_data.size
                s = 0
                while s < _1882:
                    mem[_1839 + ceil32(return_data.size) + s + 32] = mem[_1839 + _1855 + s + 32]
                    _1286 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1882) > _1882:
                    mem[_1839 + ceil32(return_data.size) + _1882 + 32] = 0
                require idx < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _1839 + ceil32(return_data.size)
            else:
                mem[_1320 + ceil32(return_data.size) + _1360 + 32] = 0
                require idx < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _1320 + ceil32(return_data.size)
                require ext_code.size(address(_1299))
                staticcall address(_1299).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1764 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1764] == mem[_1764 + 31 len 1]
                require idx < mem[_876]
                mem[(32 * idx) + _876 + 32] = mem[_1764 + 31 len 1]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1299))
                staticcall address(_1299).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1848 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1864 = mem[_1848]
                require mem[_1848] <= test266151307()
                require _1848 + mem[_1848] + 31 < _1848 + return_data.size
                _1888 = mem[_1848 + mem[_1848]]
                require mem[_1848 + mem[_1848]] <= test266151307()
                require _1848 + ceil32(return_data.size) + ceil32(mem[_1848 + mem[_1848]]) + 32 <= test266151307() and ceil32(mem[_1848 + mem[_1848]]) + 32 >= 0
                mem[64] = _1848 + ceil32(return_data.size) + ceil32(mem[_1848 + mem[_1848]]) + 32
                mem[_1848 + ceil32(return_data.size)] = _1888
                require _1864 + _1888 + 32 <= return_data.size
                s = 0
                while s < _1888:
                    mem[_1848 + ceil32(return_data.size) + s + 32] = mem[_1848 + _1864 + s + 32]
                    _1286 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1888) > _1888:
                    mem[_1848 + ceil32(return_data.size) + _1888 + 32] = 0
                require idx < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 4).length) + 192] = _1848 + ceil32(return_data.size)
            _1286 = mem[96]
            idx = idx + 1
            continue 
        _1298 = mem[64]
        mem[mem[64]] = 96
        _1326 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + 96] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = mem[64] + (32 * _1326) + 128
        u = mem[64] + 128
        while idx < _1326:
            mem[u] = t + -_1298 - 128
            _1692 = mem[s]
            _1715 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1715:
                mem[t + v + 32] = mem[_1692 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1715) > _1715:
                mem[t + _1715 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_1715) + 32
            u = u + 32
            continue 
        mem[_1298 + 32] = t - _1298
        _1714 = mem[(64 * ('cd', 4).length) + 160]
        mem[t] = mem[(64 * ('cd', 4).length) + 160]
        idx = 0
        s = (64 * ('cd', 4).length) + 192
        u = t + (32 * _1714) + 32
        v = t + 32
        while idx < _1714:
            mem[v] = u + -t - 32
            _1980 = mem[s]
            _2003 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _2003:
                mem[u + t + 32] = mem[_1980 + t + 32]
                t = t + 32
                continue 
            if ceil32(_2003) > _2003:
                mem[u + _2003 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_2003) + 32
            v = v + 32
            continue 
        mem[_1298 + 64] = u - _1298
        _2002 = mem[_876]
        mem[u] = mem[_876]
        mem[u + 32 len 32 * _2002] = mem[_876 + 32 len 32 * _2002]
        var74001 = _2002
        var74002 = _876 + (32 * _2002) + 32
        return memory
          from mem[64]
           len u + (32 * _2002) + -mem[64] + 32
    mem[(32 * ('cd', 4).length) + 160] = 96
    s = (32 * ('cd', 4).length) + 160
    idx = ('cd', 4).length
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    _875 = mem[96]
    require mem[96] <= test266151307()
    _877 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _875) + 32
    if not _875:
        _880 = mem[96]
        require mem[96] <= test266151307()
        mem[_877 + (32 * _875) + 32] = mem[96]
        mem[64] = _877 + (32 * _875) + (32 * _880) + 64
        if _880:
            mem[_877 + (32 * _875) + 64 len 32 * _880] = call.data[calldata.size len 32 * _880]
            _1289 = mem[96]
            idx = 0
            while idx < _1289:
                require idx < mem[96]
                _1311 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1311))
                staticcall address(_1311).name() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1323 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1340 = mem[_1323]
                require mem[_1323] <= test266151307()
                require _1323 + mem[_1323] + 31 < _1323 + return_data.size
                _1363 = mem[_1323 + mem[_1323]]
                require mem[_1323 + mem[_1323]] <= test266151307()
                require _1323 + ceil32(return_data.size) + ceil32(mem[_1323 + mem[_1323]]) + 32 <= test266151307() and ceil32(mem[_1323 + mem[_1323]]) + 32 >= 0
                mem[64] = _1323 + ceil32(return_data.size) + ceil32(mem[_1323 + mem[_1323]]) + 32
                mem[_1323 + ceil32(return_data.size)] = _1363
                require _1340 + _1363 + 32 <= return_data.size
                s = 0
                while s < _1363:
                    mem[_1323 + ceil32(return_data.size) + s + 32] = mem[_1323 + _1340 + s + 32]
                    _1289 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1363) <= _1363:
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _1323 + ceil32(return_data.size)
                    require ext_code.size(address(_1311))
                    staticcall address(_1311).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1763 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1763] == mem[_1763 + 31 len 1]
                    require idx < mem[_877 + (32 * _875) + 32]
                    mem[(32 * idx) + _877 + (32 * _875) + 64] = mem[_1763 + 31 len 1]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_1311))
                    staticcall address(_1311).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1845 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1861 = mem[_1845]
                    require mem[_1845] <= test266151307()
                    require _1845 + mem[_1845] + 31 < _1845 + return_data.size
                    _1885 = mem[_1845 + mem[_1845]]
                    require mem[_1845 + mem[_1845]] <= test266151307()
                    require _1845 + ceil32(return_data.size) + ceil32(mem[_1845 + mem[_1845]]) + 32 <= test266151307() and ceil32(mem[_1845 + mem[_1845]]) + 32 >= 0
                    mem[64] = _1845 + ceil32(return_data.size) + ceil32(mem[_1845 + mem[_1845]]) + 32
                    mem[_1845 + ceil32(return_data.size)] = _1885
                    require _1861 + _1885 + 32 <= return_data.size
                    s = 0
                    while s < _1885:
                        mem[_1845 + ceil32(return_data.size) + s + 32] = mem[_1845 + _1861 + s + 32]
                        _1289 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_1885) > _1885:
                        mem[_1845 + ceil32(return_data.size) + _1885 + 32] = 0
                    require idx < mem[_877]
                    mem[(32 * idx) + _877 + 32] = _1845 + ceil32(return_data.size)
                else:
                    mem[_1323 + ceil32(return_data.size) + _1363 + 32] = 0
                    require idx < mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _1323 + ceil32(return_data.size)
                    require ext_code.size(address(_1311))
                    staticcall address(_1311).0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1767 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1767] == mem[_1767 + 31 len 1]
                    require idx < mem[_877 + (32 * _875) + 32]
                    mem[(32 * idx) + _877 + (32 * _875) + 64] = mem[_1767 + 31 len 1]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_1311))
                    staticcall address(_1311).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1851 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1867 = mem[_1851]
                    require mem[_1851] <= test266151307()
                    require _1851 + mem[_1851] + 31 < _1851 + return_data.size
                    _1891 = mem[_1851 + mem[_1851]]
                    require mem[_1851 + mem[_1851]] <= test266151307()
                    require _1851 + ceil32(return_data.size) + ceil32(mem[_1851 + mem[_1851]]) + 32 <= test266151307() and ceil32(mem[_1851 + mem[_1851]]) + 32 >= 0
                    mem[64] = _1851 + ceil32(return_data.size) + ceil32(mem[_1851 + mem[_1851]]) + 32
                    mem[_1851 + ceil32(return_data.size)] = _1891
                    require _1867 + _1891 + 32 <= return_data.size
                    s = 0
                    while s < _1891:
                        mem[_1851 + ceil32(return_data.size) + s + 32] = mem[_1851 + _1867 + s + 32]
                        _1289 = mem[96]
                        s = s + 32
                        continue 
                    if ceil32(_1891) > _1891:
                        mem[_1851 + ceil32(return_data.size) + _1891 + 32] = 0
                    require idx < mem[_877]
                    mem[(32 * idx) + _877 + 32] = _1851 + ceil32(return_data.size)
                _1289 = mem[96]
                idx = idx + 1
                continue 
            _1310 = mem[64]
            mem[mem[64]] = 96
            _1329 = mem[(32 * ('cd', 4).length) + 128]
            mem[mem[64] + 96] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = mem[64] + (32 * _1329) + 128
            u = mem[64] + 128
            while idx < _1329:
                mem[u] = t + -_1310 - 128
                _1698 = mem[s]
                _1721 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1721:
                    mem[t + v + 32] = mem[_1698 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_1721) > _1721:
                    mem[t + _1721 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_1721) + 32
                u = u + 32
                continue 
            mem[_1310 + 32] = t - _1310
            _1720 = mem[_877]
            mem[t] = mem[_877]
            idx = 0
            s = _877 + 32
            u = t + (32 * _1720) + 32
            v = t + 32
            while idx < _1720:
                mem[v] = u + -t - 32
                _1992 = mem[s]
                _2009 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _2009:
                    mem[u + t + 32] = mem[_1992 + t + 32]
                    t = t + 32
                    continue 
                if ceil32(_2009) > _2009:
                    mem[u + _2009 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = u + ceil32(_2009) + 32
                v = v + 32
                continue 
            mem[_1310 + 64] = u - _1310
            _2008 = mem[_877 + (32 * _875) + 32]
            mem[u] = mem[_877 + (32 * _875) + 32]
            mem[u + 32 len 32 * _2008] = mem[_877 + (32 * _875) + 64 len 32 * _2008]
            return memory
              from mem[64]
               len u + (32 * _2008) + -mem[64] + 32
        _1288 = mem[96]
        idx = 0
        while idx < _1288:
            require idx < mem[96]
            _1307 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_1307))
            staticcall address(_1307).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1322 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1339 = mem[_1322]
            require mem[_1322] <= test266151307()
            require _1322 + mem[_1322] + 31 < _1322 + return_data.size
            _1362 = mem[_1322 + mem[_1322]]
            require mem[_1322 + mem[_1322]] <= test266151307()
            require _1322 + ceil32(return_data.size) + ceil32(mem[_1322 + mem[_1322]]) + 32 <= test266151307() and ceil32(mem[_1322 + mem[_1322]]) + 32 >= 0
            mem[64] = _1322 + ceil32(return_data.size) + ceil32(mem[_1322 + mem[_1322]]) + 32
            mem[_1322 + ceil32(return_data.size)] = _1362
            require _1339 + _1362 + 32 <= return_data.size
            s = 0
            while s < _1362:
                mem[_1322 + ceil32(return_data.size) + s + 32] = mem[_1322 + _1339 + s + 32]
                _1288 = mem[96]
                s = s + 32
                continue 
            if ceil32(_1362) <= _1362:
                require idx < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _1322 + ceil32(return_data.size)
                require ext_code.size(address(_1307))
                staticcall address(_1307).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1762 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1762] == mem[_1762 + 31 len 1]
                require idx < mem[_877 + (32 * _875) + 32]
                mem[(32 * idx) + _877 + (32 * _875) + 64] = mem[_1762 + 31 len 1]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1307))
                staticcall address(_1307).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1843 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1859 = mem[_1843]
                require mem[_1843] <= test266151307()
                require _1843 + mem[_1843] + 31 < _1843 + return_data.size
                _1884 = mem[_1843 + mem[_1843]]
                require mem[_1843 + mem[_1843]] <= test266151307()
                require _1843 + ceil32(return_data.size) + ceil32(mem[_1843 + mem[_1843]]) + 32 <= test266151307() and ceil32(mem[_1843 + mem[_1843]]) + 32 >= 0
                mem[64] = _1843 + ceil32(return_data.size) + ceil32(mem[_1843 + mem[_1843]]) + 32
                mem[_1843 + ceil32(return_data.size)] = _1884
                require _1859 + _1884 + 32 <= return_data.size
                s = 0
                while s < _1884:
                    mem[_1843 + ceil32(return_data.size) + s + 32] = mem[_1843 + _1859 + s + 32]
                    _1288 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1884) > _1884:
                    mem[_1843 + ceil32(return_data.size) + _1884 + 32] = 0
                require idx < mem[_877]
                mem[(32 * idx) + _877 + 32] = _1843 + ceil32(return_data.size)
            else:
                mem[_1322 + ceil32(return_data.size) + _1362 + 32] = 0
                require idx < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _1322 + ceil32(return_data.size)
                require ext_code.size(address(_1307))
                staticcall address(_1307).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1766 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1766] == mem[_1766 + 31 len 1]
                require idx < mem[_877 + (32 * _875) + 32]
                mem[(32 * idx) + _877 + (32 * _875) + 64] = mem[_1766 + 31 len 1]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1307))
                staticcall address(_1307).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1850 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1866 = mem[_1850]
                require mem[_1850] <= test266151307()
                require _1850 + mem[_1850] + 31 < _1850 + return_data.size
                _1890 = mem[_1850 + mem[_1850]]
                require mem[_1850 + mem[_1850]] <= test266151307()
                require _1850 + ceil32(return_data.size) + ceil32(mem[_1850 + mem[_1850]]) + 32 <= test266151307() and ceil32(mem[_1850 + mem[_1850]]) + 32 >= 0
                mem[64] = _1850 + ceil32(return_data.size) + ceil32(mem[_1850 + mem[_1850]]) + 32
                mem[_1850 + ceil32(return_data.size)] = _1890
                require _1866 + _1890 + 32 <= return_data.size
                s = 0
                while s < _1890:
                    mem[_1850 + ceil32(return_data.size) + s + 32] = mem[_1850 + _1866 + s + 32]
                    _1288 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1890) > _1890:
                    mem[_1850 + ceil32(return_data.size) + _1890 + 32] = 0
                require idx < mem[_877]
                mem[(32 * idx) + _877 + 32] = _1850 + ceil32(return_data.size)
            _1288 = mem[96]
            idx = idx + 1
            continue 
        _1306 = mem[64]
        mem[mem[64]] = 96
        _1328 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + 96] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = mem[64] + (32 * _1328) + 128
        u = mem[64] + 128
        while idx < _1328:
            mem[u] = t + -_1306 - 128
            _1696 = mem[s]
            _1719 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1719:
                mem[t + v + 32] = mem[_1696 + v + 32]
                v = v + 32
                continue 
            if ceil32(_1719) > _1719:
                mem[t + _1719 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_1719) + 32
            u = u + 32
            continue 
        mem[_1306 + 32] = t - _1306
        _1718 = mem[_877]
        mem[t] = mem[_877]
        idx = 0
        s = _877 + 32
        u = t + (32 * _1718) + 32
        v = t + 32
        while idx < _1718:
            mem[v] = u + -t - 32
            _1988 = mem[s]
            _2007 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _2007:
                mem[u + t + 32] = mem[_1988 + t + 32]
                t = t + 32
                continue 
            if ceil32(_2007) > _2007:
                mem[u + _2007 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_2007) + 32
            v = v + 32
            continue 
        mem[_1306 + 64] = u - _1306
        _2006 = mem[_877 + (32 * _875) + 32]
        mem[u] = mem[_877 + (32 * _875) + 32]
        mem[u + 32 len 32 * _2006] = mem[_877 + (32 * _875) + 64 len 32 * _2006]
        var74001 = _2006
        var74002 = _877 + (32 * _875) + (32 * _2006) + 64
        return memory
          from mem[64]
           len u + (32 * _2006) + -mem[64] + 32
    mem[_877 + 32] = 96
    s = _877 + 32
    idx = _875
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    _1314 = mem[96]
    require mem[96] <= test266151307()
    _1315 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _1314) + 32
    if _1314:
        mem[_1315 + 32 len 32 * _1314] = call.data[calldata.size len 32 * _1314]
        _1683 = mem[96]
        idx = 0
        while idx < _1683:
            require idx < mem[96]
            _1707 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_1707))
            staticcall address(_1707).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1723 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1751 = mem[_1723]
            require mem[_1723] <= test266151307()
            require _1723 + mem[_1723] + 31 < _1723 + return_data.size
            _1769 = mem[_1723 + mem[_1723]]
            require mem[_1723 + mem[_1723]] <= test266151307()
            require _1723 + ceil32(return_data.size) + ceil32(mem[_1723 + mem[_1723]]) + 32 <= test266151307() and ceil32(mem[_1723 + mem[_1723]]) + 32 >= 0
            mem[64] = _1723 + ceil32(return_data.size) + ceil32(mem[_1723 + mem[_1723]]) + 32
            mem[_1723 + ceil32(return_data.size)] = _1769
            require _1751 + _1769 + 32 <= return_data.size
            s = 0
            while s < _1769:
                mem[_1723 + ceil32(return_data.size) + s + 32] = mem[_1723 + _1751 + s + 32]
                _1683 = mem[96]
                s = s + 32
                continue 
            if ceil32(_1769) <= _1769:
                require idx < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _1723 + ceil32(return_data.size)
                require ext_code.size(address(_1707))
                staticcall address(_1707).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2043 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2043] == mem[_2043 + 31 len 1]
                require idx < mem[_1315]
                mem[(32 * idx) + _1315 + 32] = mem[_2043 + 31 len 1]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1707))
                staticcall address(_1707).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2087 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2093 = mem[_2087]
                require mem[_2087] <= test266151307()
                require _2087 + mem[_2087] + 31 < _2087 + return_data.size
                _2097 = mem[_2087 + mem[_2087]]
                require mem[_2087 + mem[_2087]] <= test266151307()
                require _2087 + ceil32(return_data.size) + ceil32(mem[_2087 + mem[_2087]]) + 32 <= test266151307() and ceil32(mem[_2087 + mem[_2087]]) + 32 >= 0
                mem[64] = _2087 + ceil32(return_data.size) + ceil32(mem[_2087 + mem[_2087]]) + 32
                mem[_2087 + ceil32(return_data.size)] = _2097
                require _2093 + _2097 + 32 <= return_data.size
                s = 0
                while s < _2097:
                    mem[_2087 + ceil32(return_data.size) + s + 32] = mem[_2087 + _2093 + s + 32]
                    _1683 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_2097) > _2097:
                    mem[_2087 + ceil32(return_data.size) + _2097 + 32] = 0
                require idx < mem[_877]
                mem[(32 * idx) + _877 + 32] = _2087 + ceil32(return_data.size)
            else:
                mem[_1723 + ceil32(return_data.size) + _1769 + 32] = 0
                require idx < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _1723 + ceil32(return_data.size)
                require ext_code.size(address(_1707))
                staticcall address(_1707).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2045 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2045] == mem[_2045 + 31 len 1]
                require idx < mem[_1315]
                mem[(32 * idx) + _1315 + 32] = mem[_2045 + 31 len 1]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_1707))
                staticcall address(_1707).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2089 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _2095 = mem[_2089]
                require mem[_2089] <= test266151307()
                require _2089 + mem[_2089] + 31 < _2089 + return_data.size
                _2099 = mem[_2089 + mem[_2089]]
                require mem[_2089 + mem[_2089]] <= test266151307()
                require _2089 + ceil32(return_data.size) + ceil32(mem[_2089 + mem[_2089]]) + 32 <= test266151307() and ceil32(mem[_2089 + mem[_2089]]) + 32 >= 0
                mem[64] = _2089 + ceil32(return_data.size) + ceil32(mem[_2089 + mem[_2089]]) + 32
                mem[_2089 + ceil32(return_data.size)] = _2099
                require _2095 + _2099 + 32 <= return_data.size
                s = 0
                while s < _2099:
                    mem[_2089 + ceil32(return_data.size) + s + 32] = mem[_2089 + _2095 + s + 32]
                    _1683 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_2099) > _2099:
                    mem[_2089 + ceil32(return_data.size) + _2099 + 32] = 0
                require idx < mem[_877]
                mem[(32 * idx) + _877 + 32] = _2089 + ceil32(return_data.size)
            _1683 = mem[96]
            idx = idx + 1
            continue 
        _1706 = mem[64]
        mem[mem[64]] = 96
        _1733 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + 96] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = mem[64] + (32 * _1733) + 128
        u = mem[64] + 128
        while idx < _1733:
            mem[u] = t + -_1706 - 128
            _1998 = mem[s]
            _2013 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _2013:
                mem[t + v + 32] = mem[_1998 + v + 32]
                v = v + 32
                continue 
            if ceil32(_2013) > _2013:
                mem[t + _2013 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(_2013) + 32
            u = u + 32
            continue 
        mem[_1706 + 32] = t - _1706
        _2012 = mem[_877]
        mem[t] = mem[_877]
        idx = 0
        s = _877 + 32
        u = t + (32 * _2012) + 32
        v = t + 32
        while idx < _2012:
            mem[v] = u + -t - 32
            _2128 = mem[s]
            _2139 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            t = 0
            while t < _2139:
                mem[u + t + 32] = mem[_2128 + t + 32]
                t = t + 32
                continue 
            if ceil32(_2139) > _2139:
                mem[u + _2139 + 32] = 0
            idx = idx + 1
            s = s + 32
            u = u + ceil32(_2139) + 32
            v = v + 32
            continue 
        mem[_1706 + 64] = u - _1706
        _2138 = mem[_1315]
        mem[u] = mem[_1315]
        mem[u + 32 len 32 * _2138] = mem[_1315 + 32 len 32 * _2138]
        return memory
          from mem[64]
           len u + (32 * _2138) + -mem[64] + 32
    _1682 = mem[96]
    idx = 0
    while idx < _1682:
        require idx < mem[96]
        _1703 = mem[(32 * idx) + 128]
        mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(_1703))
        staticcall address(_1703).name() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1722 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1750 = mem[_1722]
        require mem[_1722] <= test266151307()
        require _1722 + mem[_1722] + 31 < _1722 + return_data.size
        _1768 = mem[_1722 + mem[_1722]]
        require mem[_1722 + mem[_1722]] <= test266151307()
        require _1722 + ceil32(return_data.size) + ceil32(mem[_1722 + mem[_1722]]) + 32 <= test266151307() and ceil32(mem[_1722 + mem[_1722]]) + 32 >= 0
        mem[64] = _1722 + ceil32(return_data.size) + ceil32(mem[_1722 + mem[_1722]]) + 32
        mem[_1722 + ceil32(return_data.size)] = _1768
        require _1750 + _1768 + 32 <= return_data.size
        s = 0
        while s < _1768:
            mem[_1722 + ceil32(return_data.size) + s + 32] = mem[_1722 + _1750 + s + 32]
            _1682 = mem[96]
            s = s + 32
            continue 
        if ceil32(_1768) <= _1768:
            require idx < mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _1722 + ceil32(return_data.size)
            require ext_code.size(address(_1703))
            staticcall address(_1703).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2042 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2042] == mem[_2042 + 31 len 1]
            require idx < mem[_1315]
            mem[(32 * idx) + _1315 + 32] = mem[_2042 + 31 len 1]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_1703))
            staticcall address(_1703).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2085 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2091 = mem[_2085]
            require mem[_2085] <= test266151307()
            require _2085 + mem[_2085] + 31 < _2085 + return_data.size
            _2096 = mem[_2085 + mem[_2085]]
            require mem[_2085 + mem[_2085]] <= test266151307()
            require _2085 + ceil32(return_data.size) + ceil32(mem[_2085 + mem[_2085]]) + 32 <= test266151307() and ceil32(mem[_2085 + mem[_2085]]) + 32 >= 0
            mem[64] = _2085 + ceil32(return_data.size) + ceil32(mem[_2085 + mem[_2085]]) + 32
            mem[_2085 + ceil32(return_data.size)] = _2096
            require _2091 + _2096 + 32 <= return_data.size
            s = 0
            while s < _2096:
                mem[_2085 + ceil32(return_data.size) + s + 32] = mem[_2085 + _2091 + s + 32]
                _1682 = mem[96]
                s = s + 32
                continue 
            if ceil32(_2096) > _2096:
                mem[_2085 + ceil32(return_data.size) + _2096 + 32] = 0
            require idx < mem[_877]
            mem[(32 * idx) + _877 + 32] = _2085 + ceil32(return_data.size)
        else:
            mem[_1722 + ceil32(return_data.size) + _1768 + 32] = 0
            require idx < mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _1722 + ceil32(return_data.size)
            require ext_code.size(address(_1703))
            staticcall address(_1703).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2044 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2044] == mem[_2044 + 31 len 1]
            require idx < mem[_1315]
            mem[(32 * idx) + _1315 + 32] = mem[_2044 + 31 len 1]
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_1703))
            staticcall address(_1703).0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2088 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2094 = mem[_2088]
            require mem[_2088] <= test266151307()
            require _2088 + mem[_2088] + 31 < _2088 + return_data.size
            _2098 = mem[_2088 + mem[_2088]]
            require mem[_2088 + mem[_2088]] <= test266151307()
            require _2088 + ceil32(return_data.size) + ceil32(mem[_2088 + mem[_2088]]) + 32 <= test266151307() and ceil32(mem[_2088 + mem[_2088]]) + 32 >= 0
            mem[64] = _2088 + ceil32(return_data.size) + ceil32(mem[_2088 + mem[_2088]]) + 32
            mem[_2088 + ceil32(return_data.size)] = _2098
            require _2094 + _2098 + 32 <= return_data.size
            s = 0
            while s < _2098:
                mem[_2088 + ceil32(return_data.size) + s + 32] = mem[_2088 + _2094 + s + 32]
                _1682 = mem[96]
                s = s + 32
                continue 
            if ceil32(_2098) > _2098:
                mem[_2088 + ceil32(return_data.size) + _2098 + 32] = 0
            require idx < mem[_877]
            mem[(32 * idx) + _877 + 32] = _2088 + ceil32(return_data.size)
        _1682 = mem[96]
        idx = idx + 1
        continue 
    _1702 = mem[64]
    mem[mem[64]] = 96
    _1732 = mem[(32 * ('cd', 4).length) + 128]
    mem[mem[64] + 96] = mem[(32 * ('cd', 4).length) + 128]
    idx = 0
    s = (32 * ('cd', 4).length) + 160
    t = mem[64] + (32 * _1732) + 128
    u = mem[64] + 128
    while idx < _1732:
        mem[u] = t + -_1702 - 128
        _1996 = mem[s]
        _2011 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _2011:
            mem[t + v + 32] = mem[_1996 + v + 32]
            v = v + 32
            continue 
        if ceil32(_2011) > _2011:
            mem[t + _2011 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_2011) + 32
        u = u + 32
        continue 
    mem[_1702 + 32] = t - _1702
    _2010 = mem[_877]
    mem[t] = mem[_877]
    idx = 0
    s = _877 + 32
    u = t + (32 * _2010) + 32
    v = t + 32
    while idx < _2010:
        mem[v] = u + -t - 32
        _2124 = mem[s]
        _2137 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        t = 0
        while t < _2137:
            mem[u + t + 32] = mem[_2124 + t + 32]
            t = t + 32
            continue 
        if ceil32(_2137) > _2137:
            mem[u + _2137 + 32] = 0
        idx = idx + 1
        s = s + 32
        u = u + ceil32(_2137) + 32
        v = v + 32
        continue 
    mem[_1702 + 64] = u - _1702
    _2136 = mem[_1315]
    mem[u] = mem[_1315]
    mem[u + 32 len 32 * _2136] = mem[_1315 + 32 len 32 * _2136]
    var78001 = _2136
    var78002 = _1315 + (32 * _2136) + 32
    return memory
      from mem[64]
       len u + (32 * _2136) + -mem[64] + 32
}

function sub_76a7a689(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ('cd', 4).length <= test266151307()
    mem[96] = ('cd', 4).length
    if not ('cd', 4).length:
        require ('cd', 4).length <= test266151307()
        mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
        if not ('cd', 4).length:
            require ('cd', 4).length <= test266151307()
            mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
            if not ('cd', 4).length:
                require ('cd', 4).length <= test266151307()
                mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
                if not ('cd', 4).length:
                    require ('cd', 4).length <= test266151307()
                    mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
                    mem[64] = (164 * ('cd', 4).length) + 256
                    if not ('cd', 4).length:
                        idx = 0
                        s = 0
                        s = 0
                        s = 0
                        s = 0
                        s = 0
                        while uint32(idx) < ('cd', 4).length:
                            require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                            require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                            staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1248 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 96
                            _1280 = mem[_1248]
                            require mem[_1248] == mem[_1248 + 18 len 14]
                            _1376 = mem[_1248 + 32]
                            require mem[_1248 + 32] == mem[_1248 + 50 len 14]
                            _1440 = mem[_1248 + 64]
                            require mem[_1248 + 64] == mem[_1248 + 92 len 4]
                            require uint32(idx) < ('cd', 4).length
                            require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                            require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                            staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                                    gas gas_remaining wei
                            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1696 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _1728 = mem[_1696]
                            require mem[_1696] == mem[_1696 + 28 len 4]
                            require mem[_1696 + 32] == mem[_1696 + 60 len 4]
                            require uint32(idx) < ('cd', 4).length
                            require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                            require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                            staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1856 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1888 = mem[_1856]
                            require mem[_1856] == mem[_1856 + 28 len 4]
                            require uint32(idx) < mem[96]
                            mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1280)
                            require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                            mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1376)
                            require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                            mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1440)
                            require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                            mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1728)
                            require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                            mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1888)
                            idx = idx + 1
                            s = _1888
                            s = _1440
                            s = _1376
                            s = _1280
                            s = _1728
                            continue 
                        _1056 = mem[64]
                        mem[mem[64]] = 160
                        _1088 = mem[96]
                        mem[mem[64] + 160] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 192
                        while idx < mem[96]:
                            mem[t] = mem[s + 18 len 14]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 32] = (32 * mem[96]) + 192
                        _2112 = mem[(32 * ('cd', 4).length) + 128]
                        mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
                        idx = 0
                        s = (32 * ('cd', 4).length) + 160
                        t = mem[64] + (32 * mem[96]) + 224
                        while idx < _2112:
                            mem[t] = mem[s + 18 len 14]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2112) + 224
                        _2432 = mem[(64 * ('cd', 4).length) + 160]
                        mem[mem[64] + (32 * mem[96]) + (32 * _2112) + 224] = mem[(64 * ('cd', 4).length) + 160]
                        idx = 0
                        s = (64 * ('cd', 4).length) + 192
                        t = mem[64] + (32 * mem[96]) + (32 * _2112) + 256
                        while idx < _2432:
                            mem[t] = mem[s + 28 len 4]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 96] = (32 * mem[96]) + (32 * _2112) + (32 * _2432) + 256
                        _2688 = mem[(98 * ('cd', 4).length) + 192]
                        mem[mem[64] + (32 * mem[96]) + (32 * _2112) + (32 * _2432) + 256] = mem[(98 * ('cd', 4).length) + 192]
                        idx = 0
                        s = (98 * ('cd', 4).length) + 224
                        t = mem[64] + (32 * mem[96]) + (32 * _2112) + (32 * _2432) + 288
                        while idx < _2688:
                            mem[t] = mem[s + 28 len 4]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_1056 + 128] = (32 * _1088) + (32 * _2112) + (32 * _2432) + (32 * _2688) + 288
                        _2880 = mem[(131 * ('cd', 4).length) + 224]
                        mem[_1056 + (32 * _1088) + (32 * _2112) + (32 * _2432) + (32 * _2688) + 288] = mem[(131 * ('cd', 4).length) + 224]
                        idx = 0
                        s = (131 * ('cd', 4).length) + 256
                        t = _1056 + (32 * _1088) + (32 * _2112) + (32 * _2432) + (32 * _2688) + 320
                        while idx < _2880:
                            mem[t] = mem[s + 28 len 4]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        return memory
                          from mem[64]
                           len _1056 + (32 * _1088) + (32 * _2112) + (32 * _2432) + (32 * _2688) + (32 * _2880) + -mem[64] + 320
                    mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                    idx = 0
                    s = 0
                    s = 0
                    s = 0
                    s = 0
                    s = 0
                    while uint32(idx) < ('cd', 4).length:
                        require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                        require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                        staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1249 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1281 = mem[_1249]
                        require mem[_1249] == mem[_1249 + 18 len 14]
                        _1377 = mem[_1249 + 32]
                        require mem[_1249 + 32] == mem[_1249 + 50 len 14]
                        _1441 = mem[_1249 + 64]
                        require mem[_1249 + 64] == mem[_1249 + 92 len 4]
                        require uint32(idx) < ('cd', 4).length
                        require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                        require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                        staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                                gas gas_remaining wei
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1697 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _1729 = mem[_1697]
                        require mem[_1697] == mem[_1697 + 28 len 4]
                        require mem[_1697 + 32] == mem[_1697 + 60 len 4]
                        require uint32(idx) < ('cd', 4).length
                        require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                        require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                        staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1857 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1889 = mem[_1857]
                        require mem[_1857] == mem[_1857 + 28 len 4]
                        require uint32(idx) < mem[96]
                        mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1281)
                        require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                        mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1377)
                        require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1441)
                        require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                        mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1729)
                        require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                        mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1889)
                        idx = idx + 1
                        s = _1889
                        s = _1441
                        s = _1377
                        s = _1281
                        s = _1729
                        continue 
                    _1057 = mem[64]
                    mem[mem[64]] = 160
                    _1089 = mem[96]
                    mem[mem[64] + 160] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 192
                    while idx < _1089:
                        mem[t] = mem[s + 18 len 14]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1057 + 32] = (32 * _1089) + 192
                    _2113 = mem[(32 * ('cd', 4).length) + 128]
                    mem[_1057 + (32 * _1089) + 192] = mem[(32 * ('cd', 4).length) + 128]
                    idx = 0
                    s = (32 * ('cd', 4).length) + 160
                    t = _1057 + (32 * _1089) + 224
                    while idx < _2113:
                        mem[t] = mem[s + 18 len 14]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1057 + 64] = (32 * _1089) + (32 * _2113) + 224
                    _2433 = mem[(64 * ('cd', 4).length) + 160]
                    mem[_1057 + (32 * _1089) + (32 * _2113) + 224] = mem[(64 * ('cd', 4).length) + 160]
                    idx = 0
                    s = (64 * ('cd', 4).length) + 192
                    t = _1057 + (32 * _1089) + (32 * _2113) + 256
                    while idx < _2433:
                        mem[t] = mem[s + 28 len 4]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1057 + 96] = (32 * _1089) + (32 * _2113) + (32 * _2433) + 256
                    _2689 = mem[(98 * ('cd', 4).length) + 192]
                    mem[_1057 + (32 * _1089) + (32 * _2113) + (32 * _2433) + 256] = mem[(98 * ('cd', 4).length) + 192]
                    idx = 0
                    s = (98 * ('cd', 4).length) + 224
                    t = _1057 + (32 * _1089) + (32 * _2113) + (32 * _2433) + 288
                    while idx < _2689:
                        mem[t] = mem[s + 28 len 4]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1057 + 128] = (32 * _1089) + (32 * _2113) + (32 * _2433) + (32 * _2689) + 288
                    _2881 = mem[(131 * ('cd', 4).length) + 224]
                    mem[_1057 + (32 * _1089) + (32 * _2113) + (32 * _2433) + (32 * _2689) + 288] = mem[(131 * ('cd', 4).length) + 224]
                    idx = 0
                    s = (131 * ('cd', 4).length) + 256
                    t = _1057 + (32 * _1089) + (32 * _2113) + (32 * _2433) + (32 * _2689) + 320
                    while idx < _2881:
                        mem[t] = mem[s + 28 len 4]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1057 + (32 * _1089) + (32 * _2113) + (32 * _2433) + (32 * _2689) + (32 * _2881) + -mem[64] + 320
                mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                require ('cd', 4).length <= test266151307()
                mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
                mem[64] = (164 * ('cd', 4).length) + 256
                if not ('cd', 4).length:
                    idx = 0
                    s = 0
                    s = 0
                    s = 0
                    s = 0
                    s = 0
                    while uint32(idx) < ('cd', 4).length:
                        require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                        require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                        staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1250 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1282 = mem[_1250]
                        require mem[_1250] == mem[_1250 + 18 len 14]
                        _1378 = mem[_1250 + 32]
                        require mem[_1250 + 32] == mem[_1250 + 50 len 14]
                        _1442 = mem[_1250 + 64]
                        require mem[_1250 + 64] == mem[_1250 + 92 len 4]
                        require uint32(idx) < ('cd', 4).length
                        require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                        require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                        staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                                gas gas_remaining wei
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1698 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _1730 = mem[_1698]
                        require mem[_1698] == mem[_1698 + 28 len 4]
                        require mem[_1698 + 32] == mem[_1698 + 60 len 4]
                        require uint32(idx) < ('cd', 4).length
                        require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                        require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                        staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1858 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1890 = mem[_1858]
                        require mem[_1858] == mem[_1858 + 28 len 4]
                        require uint32(idx) < mem[96]
                        mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1282)
                        require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                        mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1378)
                        require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1442)
                        require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                        mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1730)
                        require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                        mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1890)
                        idx = idx + 1
                        s = _1890
                        s = _1442
                        s = _1378
                        s = _1282
                        s = _1730
                        continue 
                    _1058 = mem[64]
                    mem[mem[64]] = 160
                    _1090 = mem[96]
                    mem[mem[64] + 160] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 192
                    while idx < mem[96]:
                        mem[t] = mem[s + 18 len 14]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 32] = (32 * mem[96]) + 192
                    _2114 = mem[(32 * ('cd', 4).length) + 128]
                    mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
                    idx = 0
                    s = (32 * ('cd', 4).length) + 160
                    t = mem[64] + (32 * mem[96]) + 224
                    while idx < _2114:
                        mem[t] = mem[s + 18 len 14]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2114) + 224
                    _2434 = mem[(64 * ('cd', 4).length) + 160]
                    mem[mem[64] + (32 * mem[96]) + (32 * _2114) + 224] = mem[(64 * ('cd', 4).length) + 160]
                    idx = 0
                    s = (64 * ('cd', 4).length) + 192
                    t = mem[64] + (32 * mem[96]) + (32 * _2114) + 256
                    while idx < _2434:
                        mem[t] = mem[s + 28 len 4]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 96] = (32 * mem[96]) + (32 * _2114) + (32 * _2434) + 256
                    _2690 = mem[(98 * ('cd', 4).length) + 192]
                    mem[mem[64] + (32 * mem[96]) + (32 * _2114) + (32 * _2434) + 256] = mem[(98 * ('cd', 4).length) + 192]
                    idx = 0
                    s = (98 * ('cd', 4).length) + 224
                    t = mem[64] + (32 * mem[96]) + (32 * _2114) + (32 * _2434) + 288
                    while idx < _2690:
                        mem[t] = mem[s + 28 len 4]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1058 + 128] = (32 * _1090) + (32 * _2114) + (32 * _2434) + (32 * _2690) + 288
                    _2882 = mem[(131 * ('cd', 4).length) + 224]
                    mem[_1058 + (32 * _1090) + (32 * _2114) + (32 * _2434) + (32 * _2690) + 288] = mem[(131 * ('cd', 4).length) + 224]
                    idx = 0
                    s = (131 * ('cd', 4).length) + 256
                    t = _1058 + (32 * _1090) + (32 * _2114) + (32 * _2434) + (32 * _2690) + 320
                    while idx < _2882:
                        mem[t] = mem[s + 28 len 4]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1058 + (32 * _1090) + (32 * _2114) + (32 * _2434) + (32 * _2690) + (32 * _2882) + -mem[64] + 320
                mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                while uint32(idx) < ('cd', 4).length:
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1251 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1283 = mem[_1251]
                    require mem[_1251] == mem[_1251 + 18 len 14]
                    _1379 = mem[_1251 + 32]
                    require mem[_1251 + 32] == mem[_1251 + 50 len 14]
                    _1443 = mem[_1251 + 64]
                    require mem[_1251 + 64] == mem[_1251 + 92 len 4]
                    require uint32(idx) < ('cd', 4).length
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                            gas gas_remaining wei
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1699 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1731 = mem[_1699]
                    require mem[_1699] == mem[_1699 + 28 len 4]
                    require mem[_1699 + 32] == mem[_1699 + 60 len 4]
                    require uint32(idx) < ('cd', 4).length
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1859 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1891 = mem[_1859]
                    require mem[_1859] == mem[_1859 + 28 len 4]
                    require uint32(idx) < mem[96]
                    mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1283)
                    require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1379)
                    require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1443)
                    require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                    mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1731)
                    require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                    mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1891)
                    idx = idx + 1
                    s = _1891
                    s = _1443
                    s = _1379
                    s = _1283
                    s = _1731
                    continue 
                _1059 = mem[64]
                mem[mem[64]] = 160
                _1091 = mem[96]
                mem[mem[64] + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < _1091:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1059 + 32] = (32 * _1091) + 192
                _2115 = mem[(32 * ('cd', 4).length) + 128]
                mem[_1059 + (32 * _1091) + 192] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                t = _1059 + (32 * _1091) + 224
                while idx < _2115:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1059 + 64] = (32 * _1091) + (32 * _2115) + 224
                _2435 = mem[(64 * ('cd', 4).length) + 160]
                mem[_1059 + (32 * _1091) + (32 * _2115) + 224] = mem[(64 * ('cd', 4).length) + 160]
                idx = 0
                s = (64 * ('cd', 4).length) + 192
                t = _1059 + (32 * _1091) + (32 * _2115) + 256
                while idx < _2435:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1059 + 96] = (32 * _1091) + (32 * _2115) + (32 * _2435) + 256
                _2691 = mem[(98 * ('cd', 4).length) + 192]
                mem[_1059 + (32 * _1091) + (32 * _2115) + (32 * _2435) + 256] = mem[(98 * ('cd', 4).length) + 192]
                idx = 0
                s = (98 * ('cd', 4).length) + 224
                t = _1059 + (32 * _1091) + (32 * _2115) + (32 * _2435) + 288
                while idx < _2691:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1059 + 128] = (32 * _1091) + (32 * _2115) + (32 * _2435) + (32 * _2691) + 288
                _2883 = mem[(131 * ('cd', 4).length) + 224]
                mem[_1059 + (32 * _1091) + (32 * _2115) + (32 * _2435) + (32 * _2691) + 288] = mem[(131 * ('cd', 4).length) + 224]
                idx = 0
                s = (131 * ('cd', 4).length) + 256
                t = _1059 + (32 * _1091) + (32 * _2115) + (32 * _2435) + (32 * _2691) + 320
                while idx < _2883:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1059 + (32 * _1091) + (32 * _2115) + (32 * _2435) + (32 * _2691) + (32 * _2883) + -mem[64] + 320
            mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            require ('cd', 4).length <= test266151307()
            mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
            if not ('cd', 4).length:
                require ('cd', 4).length <= test266151307()
                mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
                mem[64] = (164 * ('cd', 4).length) + 256
                if not ('cd', 4).length:
                    idx = 0
                    s = 0
                    s = 0
                    s = 0
                    s = 0
                    s = 0
                    while uint32(idx) < ('cd', 4).length:
                        require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                        require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                        staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1252 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1284 = mem[_1252]
                        require mem[_1252] == mem[_1252 + 18 len 14]
                        _1380 = mem[_1252 + 32]
                        require mem[_1252 + 32] == mem[_1252 + 50 len 14]
                        _1444 = mem[_1252 + 64]
                        require mem[_1252 + 64] == mem[_1252 + 92 len 4]
                        require uint32(idx) < ('cd', 4).length
                        require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                        require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                        staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                                gas gas_remaining wei
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1700 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _1732 = mem[_1700]
                        require mem[_1700] == mem[_1700 + 28 len 4]
                        require mem[_1700 + 32] == mem[_1700 + 60 len 4]
                        require uint32(idx) < ('cd', 4).length
                        require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                        require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                        staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1860 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1892 = mem[_1860]
                        require mem[_1860] == mem[_1860 + 28 len 4]
                        require uint32(idx) < mem[96]
                        mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1284)
                        require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                        mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1380)
                        require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1444)
                        require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                        mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1732)
                        require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                        mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1892)
                        idx = idx + 1
                        s = _1892
                        s = _1444
                        s = _1380
                        s = _1284
                        s = _1732
                        continue 
                    _1060 = mem[64]
                    mem[mem[64]] = 160
                    _1092 = mem[96]
                    mem[mem[64] + 160] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 192
                    while idx < _1092:
                        mem[t] = mem[s + 18 len 14]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1060 + 32] = (32 * _1092) + 192
                    _2116 = mem[(32 * ('cd', 4).length) + 128]
                    mem[_1060 + (32 * _1092) + 192] = mem[(32 * ('cd', 4).length) + 128]
                    idx = 0
                    s = (32 * ('cd', 4).length) + 160
                    t = _1060 + (32 * _1092) + 224
                    while idx < _2116:
                        mem[t] = mem[s + 18 len 14]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1060 + 64] = (32 * _1092) + (32 * _2116) + 224
                    _2436 = mem[(64 * ('cd', 4).length) + 160]
                    mem[_1060 + (32 * _1092) + (32 * _2116) + 224] = mem[(64 * ('cd', 4).length) + 160]
                    idx = 0
                    s = (64 * ('cd', 4).length) + 192
                    t = _1060 + (32 * _1092) + (32 * _2116) + 256
                    while idx < _2436:
                        mem[t] = mem[s + 28 len 4]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1060 + 96] = (32 * _1092) + (32 * _2116) + (32 * _2436) + 256
                    _2692 = mem[(98 * ('cd', 4).length) + 192]
                    mem[_1060 + (32 * _1092) + (32 * _2116) + (32 * _2436) + 256] = mem[(98 * ('cd', 4).length) + 192]
                    idx = 0
                    s = (98 * ('cd', 4).length) + 224
                    t = _1060 + (32 * _1092) + (32 * _2116) + (32 * _2436) + 288
                    while idx < _2692:
                        mem[t] = mem[s + 28 len 4]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1060 + 128] = (32 * _1092) + (32 * _2116) + (32 * _2436) + (32 * _2692) + 288
                    _2884 = mem[(131 * ('cd', 4).length) + 224]
                    mem[_1060 + (32 * _1092) + (32 * _2116) + (32 * _2436) + (32 * _2692) + 288] = mem[(131 * ('cd', 4).length) + 224]
                    idx = 0
                    s = (131 * ('cd', 4).length) + 256
                    t = _1060 + (32 * _1092) + (32 * _2116) + (32 * _2436) + (32 * _2692) + 320
                    while idx < _2884:
                        mem[t] = mem[s + 28 len 4]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1060 + (32 * _1092) + (32 * _2116) + (32 * _2436) + (32 * _2692) + (32 * _2884) + -mem[64] + 320
                mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                while uint32(idx) < ('cd', 4).length:
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1253 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1285 = mem[_1253]
                    require mem[_1253] == mem[_1253 + 18 len 14]
                    _1381 = mem[_1253 + 32]
                    require mem[_1253 + 32] == mem[_1253 + 50 len 14]
                    _1445 = mem[_1253 + 64]
                    require mem[_1253 + 64] == mem[_1253 + 92 len 4]
                    require uint32(idx) < ('cd', 4).length
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                            gas gas_remaining wei
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1701 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1733 = mem[_1701]
                    require mem[_1701] == mem[_1701 + 28 len 4]
                    require mem[_1701 + 32] == mem[_1701 + 60 len 4]
                    require uint32(idx) < ('cd', 4).length
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1861 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1893 = mem[_1861]
                    require mem[_1861] == mem[_1861 + 28 len 4]
                    require uint32(idx) < mem[96]
                    mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1285)
                    require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1381)
                    require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1445)
                    require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                    mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1733)
                    require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                    mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1893)
                    idx = idx + 1
                    s = _1893
                    s = _1445
                    s = _1381
                    s = _1285
                    s = _1733
                    continue 
                _1061 = mem[64]
                mem[mem[64]] = 160
                _1093 = mem[96]
                mem[mem[64] + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < mem[96]:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                _2117 = mem[(32 * ('cd', 4).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                t = mem[64] + (32 * mem[96]) + 224
                while idx < _2117:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2117) + 224
                _2437 = mem[(64 * ('cd', 4).length) + 160]
                mem[mem[64] + (32 * mem[96]) + (32 * _2117) + 224] = mem[(64 * ('cd', 4).length) + 160]
                idx = 0
                s = (64 * ('cd', 4).length) + 192
                t = mem[64] + (32 * mem[96]) + (32 * _2117) + 256
                while idx < _2437:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1061 + 96] = (32 * mem[96]) + (32 * _2117) + (32 * _2437) + 256
                _2693 = mem[(98 * ('cd', 4).length) + 192]
                mem[_1061 + (32 * _1093) + (32 * _2117) + (32 * _2437) + 256] = mem[(98 * ('cd', 4).length) + 192]
                idx = 0
                s = (98 * ('cd', 4).length) + 224
                t = _1061 + (32 * _1093) + (32 * _2117) + (32 * _2437) + 288
                while idx < _2693:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1061 + 128] = (32 * _1093) + (32 * _2117) + (32 * _2437) + (32 * _2693) + 288
                _2885 = mem[(131 * ('cd', 4).length) + 224]
                mem[_1061 + (32 * _1093) + (32 * _2117) + (32 * _2437) + (32 * _2693) + 288] = mem[(131 * ('cd', 4).length) + 224]
                idx = 0
                s = (131 * ('cd', 4).length) + 256
                t = _1061 + (32 * _1093) + (32 * _2117) + (32 * _2437) + (32 * _2693) + 320
                while idx < _2885:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1061 + (32 * _1093) + (32 * _2117) + (32 * _2437) + (32 * _2693) + (32 * _2885) + -mem[64] + 320
            mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            require ('cd', 4).length <= test266151307()
            mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
            mem[64] = (164 * ('cd', 4).length) + 256
            if not ('cd', 4).length:
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                while uint32(idx) < ('cd', 4).length:
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1254 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1286 = mem[_1254]
                    require mem[_1254] == mem[_1254 + 18 len 14]
                    _1382 = mem[_1254 + 32]
                    require mem[_1254 + 32] == mem[_1254 + 50 len 14]
                    _1446 = mem[_1254 + 64]
                    require mem[_1254 + 64] == mem[_1254 + 92 len 4]
                    require uint32(idx) < ('cd', 4).length
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                            gas gas_remaining wei
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1702 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1734 = mem[_1702]
                    require mem[_1702] == mem[_1702 + 28 len 4]
                    require mem[_1702 + 32] == mem[_1702 + 60 len 4]
                    require uint32(idx) < ('cd', 4).length
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1862 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1894 = mem[_1862]
                    require mem[_1862] == mem[_1862 + 28 len 4]
                    require uint32(idx) < mem[96]
                    mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1286)
                    require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1382)
                    require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1446)
                    require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                    mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1734)
                    require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                    mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1894)
                    idx = idx + 1
                    s = _1894
                    s = _1446
                    s = _1382
                    s = _1286
                    s = _1734
                    continue 
                _1062 = mem[64]
                mem[mem[64]] = 160
                _1094 = mem[96]
                mem[mem[64] + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < _1094:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1062 + 32] = (32 * _1094) + 192
                _2118 = mem[(32 * ('cd', 4).length) + 128]
                mem[_1062 + (32 * _1094) + 192] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                t = _1062 + (32 * _1094) + 224
                while idx < _2118:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1062 + 64] = (32 * _1094) + (32 * _2118) + 224
                _2438 = mem[(64 * ('cd', 4).length) + 160]
                mem[_1062 + (32 * _1094) + (32 * _2118) + 224] = mem[(64 * ('cd', 4).length) + 160]
                idx = 0
                s = (64 * ('cd', 4).length) + 192
                t = _1062 + (32 * _1094) + (32 * _2118) + 256
                while idx < _2438:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1062 + 96] = (32 * _1094) + (32 * _2118) + (32 * _2438) + 256
                _2694 = mem[(98 * ('cd', 4).length) + 192]
                mem[_1062 + (32 * _1094) + (32 * _2118) + (32 * _2438) + 256] = mem[(98 * ('cd', 4).length) + 192]
                idx = 0
                s = (98 * ('cd', 4).length) + 224
                t = _1062 + (32 * _1094) + (32 * _2118) + (32 * _2438) + 288
                while idx < _2694:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1062 + 128] = (32 * _1094) + (32 * _2118) + (32 * _2438) + (32 * _2694) + 288
                _2886 = mem[(131 * ('cd', 4).length) + 224]
                mem[_1062 + (32 * _1094) + (32 * _2118) + (32 * _2438) + (32 * _2694) + 288] = mem[(131 * ('cd', 4).length) + 224]
                idx = 0
                s = (131 * ('cd', 4).length) + 256
                t = _1062 + (32 * _1094) + (32 * _2118) + (32 * _2438) + (32 * _2694) + 320
                while idx < _2886:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1062 + (32 * _1094) + (32 * _2118) + (32 * _2438) + (32 * _2694) + (32 * _2886) + -mem[64] + 320
            mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            while uint32(idx) < ('cd', 4).length:
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1255 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1287 = mem[_1255]
                require mem[_1255] == mem[_1255 + 18 len 14]
                _1383 = mem[_1255 + 32]
                require mem[_1255 + 32] == mem[_1255 + 50 len 14]
                _1447 = mem[_1255 + 64]
                require mem[_1255 + 64] == mem[_1255 + 92 len 4]
                require uint32(idx) < ('cd', 4).length
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                        gas gas_remaining wei
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1703 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1735 = mem[_1703]
                require mem[_1703] == mem[_1703 + 28 len 4]
                require mem[_1703 + 32] == mem[_1703 + 60 len 4]
                require uint32(idx) < ('cd', 4).length
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1863 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1895 = mem[_1863]
                require mem[_1863] == mem[_1863 + 28 len 4]
                require uint32(idx) < mem[96]
                mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1287)
                require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1383)
                require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1447)
                require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1735)
                require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1895)
                idx = idx + 1
                s = _1895
                s = _1447
                s = _1383
                s = _1287
                s = _1735
                continue 
            _1063 = mem[64]
            mem[mem[64]] = 160
            _1095 = mem[96]
            mem[mem[64] + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < mem[96]:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            _2119 = mem[(32 * ('cd', 4).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = mem[64] + (32 * mem[96]) + 224
            while idx < _2119:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2119) + 224
            _2439 = mem[(64 * ('cd', 4).length) + 160]
            mem[mem[64] + (32 * mem[96]) + (32 * _2119) + 224] = mem[(64 * ('cd', 4).length) + 160]
            idx = 0
            s = (64 * ('cd', 4).length) + 192
            t = mem[64] + (32 * mem[96]) + (32 * _2119) + 256
            while idx < _2439:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 96] = (32 * mem[96]) + (32 * _2119) + (32 * _2439) + 256
            _2695 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + (32 * mem[96]) + (32 * _2119) + (32 * _2439) + 256] = mem[(98 * ('cd', 4).length) + 192]
            idx = 0
            s = (98 * ('cd', 4).length) + 224
            t = mem[64] + (32 * mem[96]) + (32 * _2119) + (32 * _2439) + 288
            while idx < _2695:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1063 + 128] = (32 * _1095) + (32 * _2119) + (32 * _2439) + (32 * _2695) + 288
            _2887 = mem[(131 * ('cd', 4).length) + 224]
            mem[_1063 + (32 * _1095) + (32 * _2119) + (32 * _2439) + (32 * _2695) + 288] = mem[(131 * ('cd', 4).length) + 224]
            idx = 0
            s = (131 * ('cd', 4).length) + 256
            t = _1063 + (32 * _1095) + (32 * _2119) + (32 * _2439) + (32 * _2695) + 320
            while idx < _2887:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1063 + (32 * _1095) + (32 * _2119) + (32 * _2439) + (32 * _2695) + (32 * _2887) + -mem[64] + 320
        mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        require ('cd', 4).length <= test266151307()
        mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
        if not ('cd', 4).length:
            require ('cd', 4).length <= test266151307()
            mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
            if not ('cd', 4).length:
                require ('cd', 4).length <= test266151307()
                mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
                mem[64] = (164 * ('cd', 4).length) + 256
                if not ('cd', 4).length:
                    idx = 0
                    s = 0
                    s = 0
                    s = 0
                    s = 0
                    s = 0
                    while uint32(idx) < ('cd', 4).length:
                        require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                        require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                        staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1256 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1288 = mem[_1256]
                        require mem[_1256] == mem[_1256 + 18 len 14]
                        _1384 = mem[_1256 + 32]
                        require mem[_1256 + 32] == mem[_1256 + 50 len 14]
                        _1448 = mem[_1256 + 64]
                        require mem[_1256 + 64] == mem[_1256 + 92 len 4]
                        require uint32(idx) < ('cd', 4).length
                        require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                        require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                        staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                                gas gas_remaining wei
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1704 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _1736 = mem[_1704]
                        require mem[_1704] == mem[_1704 + 28 len 4]
                        require mem[_1704 + 32] == mem[_1704 + 60 len 4]
                        require uint32(idx) < ('cd', 4).length
                        require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                        require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                        staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1864 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1896 = mem[_1864]
                        require mem[_1864] == mem[_1864 + 28 len 4]
                        require uint32(idx) < mem[96]
                        mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1288)
                        require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                        mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1384)
                        require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1448)
                        require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                        mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1736)
                        require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                        mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1896)
                        idx = idx + 1
                        s = _1896
                        s = _1448
                        s = _1384
                        s = _1288
                        s = _1736
                        continue 
                    _1064 = mem[64]
                    mem[mem[64]] = 160
                    _1096 = mem[96]
                    mem[mem[64] + 160] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 192
                    while idx < mem[96]:
                        mem[t] = mem[s + 18 len 14]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 32] = (32 * mem[96]) + 192
                    _2120 = mem[(32 * ('cd', 4).length) + 128]
                    mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
                    idx = 0
                    s = (32 * ('cd', 4).length) + 160
                    t = mem[64] + (32 * mem[96]) + 224
                    while idx < _2120:
                        mem[t] = mem[s + 18 len 14]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2120) + 224
                    _2440 = mem[(64 * ('cd', 4).length) + 160]
                    mem[mem[64] + (32 * mem[96]) + (32 * _2120) + 224] = mem[(64 * ('cd', 4).length) + 160]
                    idx = 0
                    s = (64 * ('cd', 4).length) + 192
                    t = mem[64] + (32 * mem[96]) + (32 * _2120) + 256
                    while idx < _2440:
                        mem[t] = mem[s + 28 len 4]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1064 + 96] = (32 * mem[96]) + (32 * _2120) + (32 * _2440) + 256
                    _2696 = mem[(98 * ('cd', 4).length) + 192]
                    mem[_1064 + (32 * _1096) + (32 * _2120) + (32 * _2440) + 256] = mem[(98 * ('cd', 4).length) + 192]
                    idx = 0
                    s = (98 * ('cd', 4).length) + 224
                    t = _1064 + (32 * _1096) + (32 * _2120) + (32 * _2440) + 288
                    while idx < _2696:
                        mem[t] = mem[s + 28 len 4]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1064 + 128] = (32 * _1096) + (32 * _2120) + (32 * _2440) + (32 * _2696) + 288
                    _2888 = mem[(131 * ('cd', 4).length) + 224]
                    mem[_1064 + (32 * _1096) + (32 * _2120) + (32 * _2440) + (32 * _2696) + 288] = mem[(131 * ('cd', 4).length) + 224]
                    idx = 0
                    s = (131 * ('cd', 4).length) + 256
                    t = _1064 + (32 * _1096) + (32 * _2120) + (32 * _2440) + (32 * _2696) + 320
                    while idx < _2888:
                        mem[t] = mem[s + 28 len 4]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1064 + (32 * _1096) + (32 * _2120) + (32 * _2440) + (32 * _2696) + (32 * _2888) + -mem[64] + 320
                mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                while uint32(idx) < ('cd', 4).length:
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1257 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1289 = mem[_1257]
                    require mem[_1257] == mem[_1257 + 18 len 14]
                    _1385 = mem[_1257 + 32]
                    require mem[_1257 + 32] == mem[_1257 + 50 len 14]
                    _1449 = mem[_1257 + 64]
                    require mem[_1257 + 64] == mem[_1257 + 92 len 4]
                    require uint32(idx) < ('cd', 4).length
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                            gas gas_remaining wei
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1705 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1737 = mem[_1705]
                    require mem[_1705] == mem[_1705 + 28 len 4]
                    require mem[_1705 + 32] == mem[_1705 + 60 len 4]
                    require uint32(idx) < ('cd', 4).length
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1865 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1897 = mem[_1865]
                    require mem[_1865] == mem[_1865 + 28 len 4]
                    require uint32(idx) < mem[96]
                    mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1289)
                    require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1385)
                    require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1449)
                    require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                    mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1737)
                    require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                    mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1897)
                    idx = idx + 1
                    s = _1897
                    s = _1449
                    s = _1385
                    s = _1289
                    s = _1737
                    continue 
                _1065 = mem[64]
                mem[mem[64]] = 160
                _1097 = mem[96]
                mem[mem[64] + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < mem[96]:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                _2121 = mem[(32 * ('cd', 4).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                t = mem[64] + (32 * mem[96]) + 224
                while idx < _2121:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2121) + 224
                _2441 = mem[(64 * ('cd', 4).length) + 160]
                mem[mem[64] + (32 * mem[96]) + (32 * _2121) + 224] = mem[(64 * ('cd', 4).length) + 160]
                idx = 0
                s = (64 * ('cd', 4).length) + 192
                t = mem[64] + (32 * mem[96]) + (32 * _2121) + 256
                while idx < _2441:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 96] = (32 * mem[96]) + (32 * _2121) + (32 * _2441) + 256
                _2697 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + (32 * mem[96]) + (32 * _2121) + (32 * _2441) + 256] = mem[(98 * ('cd', 4).length) + 192]
                idx = 0
                s = (98 * ('cd', 4).length) + 224
                t = mem[64] + (32 * mem[96]) + (32 * _2121) + (32 * _2441) + 288
                while idx < _2697:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1065 + 128] = (32 * _1097) + (32 * _2121) + (32 * _2441) + (32 * _2697) + 288
                _2889 = mem[(131 * ('cd', 4).length) + 224]
                mem[_1065 + (32 * _1097) + (32 * _2121) + (32 * _2441) + (32 * _2697) + 288] = mem[(131 * ('cd', 4).length) + 224]
                idx = 0
                s = (131 * ('cd', 4).length) + 256
                t = _1065 + (32 * _1097) + (32 * _2121) + (32 * _2441) + (32 * _2697) + 320
                while idx < _2889:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1065 + (32 * _1097) + (32 * _2121) + (32 * _2441) + (32 * _2697) + (32 * _2889) + -mem[64] + 320
            mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            require ('cd', 4).length <= test266151307()
            mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
            mem[64] = (164 * ('cd', 4).length) + 256
            if not ('cd', 4).length:
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                while uint32(idx) < ('cd', 4).length:
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1258 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1290 = mem[_1258]
                    require mem[_1258] == mem[_1258 + 18 len 14]
                    _1386 = mem[_1258 + 32]
                    require mem[_1258 + 32] == mem[_1258 + 50 len 14]
                    _1450 = mem[_1258 + 64]
                    require mem[_1258 + 64] == mem[_1258 + 92 len 4]
                    require uint32(idx) < ('cd', 4).length
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                            gas gas_remaining wei
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1706 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1738 = mem[_1706]
                    require mem[_1706] == mem[_1706 + 28 len 4]
                    require mem[_1706 + 32] == mem[_1706 + 60 len 4]
                    require uint32(idx) < ('cd', 4).length
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1866 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1898 = mem[_1866]
                    require mem[_1866] == mem[_1866 + 28 len 4]
                    require uint32(idx) < mem[96]
                    mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1290)
                    require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1386)
                    require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1450)
                    require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                    mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1738)
                    require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                    mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1898)
                    idx = idx + 1
                    s = _1898
                    s = _1450
                    s = _1386
                    s = _1290
                    s = _1738
                    continue 
                _1066 = mem[64]
                mem[mem[64]] = 160
                _1098 = mem[96]
                mem[mem[64] + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < mem[96]:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                _2122 = mem[(32 * ('cd', 4).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                t = mem[64] + (32 * mem[96]) + 224
                while idx < _2122:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1066 + 64] = (32 * mem[96]) + (32 * _2122) + 224
                _2442 = mem[(64 * ('cd', 4).length) + 160]
                mem[_1066 + (32 * _1098) + (32 * _2122) + 224] = mem[(64 * ('cd', 4).length) + 160]
                idx = 0
                s = (64 * ('cd', 4).length) + 192
                t = _1066 + (32 * _1098) + (32 * _2122) + 256
                while idx < _2442:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1066 + 96] = (32 * _1098) + (32 * _2122) + (32 * _2442) + 256
                _2698 = mem[(98 * ('cd', 4).length) + 192]
                mem[_1066 + (32 * _1098) + (32 * _2122) + (32 * _2442) + 256] = mem[(98 * ('cd', 4).length) + 192]
                idx = 0
                s = (98 * ('cd', 4).length) + 224
                t = _1066 + (32 * _1098) + (32 * _2122) + (32 * _2442) + 288
                while idx < _2698:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1066 + 128] = (32 * _1098) + (32 * _2122) + (32 * _2442) + (32 * _2698) + 288
                _2890 = mem[(131 * ('cd', 4).length) + 224]
                mem[_1066 + (32 * _1098) + (32 * _2122) + (32 * _2442) + (32 * _2698) + 288] = mem[(131 * ('cd', 4).length) + 224]
                idx = 0
                s = (131 * ('cd', 4).length) + 256
                t = _1066 + (32 * _1098) + (32 * _2122) + (32 * _2442) + (32 * _2698) + 320
                while idx < _2890:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1066 + (32 * _1098) + (32 * _2122) + (32 * _2442) + (32 * _2698) + (32 * _2890) + -mem[64] + 320
            mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            while uint32(idx) < ('cd', 4).length:
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1259 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1291 = mem[_1259]
                require mem[_1259] == mem[_1259 + 18 len 14]
                _1387 = mem[_1259 + 32]
                require mem[_1259 + 32] == mem[_1259 + 50 len 14]
                _1451 = mem[_1259 + 64]
                require mem[_1259 + 64] == mem[_1259 + 92 len 4]
                require uint32(idx) < ('cd', 4).length
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                        gas gas_remaining wei
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1707 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1739 = mem[_1707]
                require mem[_1707] == mem[_1707 + 28 len 4]
                require mem[_1707 + 32] == mem[_1707 + 60 len 4]
                require uint32(idx) < ('cd', 4).length
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1867 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1899 = mem[_1867]
                require mem[_1867] == mem[_1867 + 28 len 4]
                require uint32(idx) < mem[96]
                mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1291)
                require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1387)
                require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1451)
                require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1739)
                require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1899)
                idx = idx + 1
                s = _1899
                s = _1451
                s = _1387
                s = _1291
                s = _1739
                continue 
            _1067 = mem[64]
            mem[mem[64]] = 160
            _1099 = mem[96]
            mem[mem[64] + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < _1099:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1067 + 32] = (32 * _1099) + 192
            _2123 = mem[(32 * ('cd', 4).length) + 128]
            mem[_1067 + (32 * _1099) + 192] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = _1067 + (32 * _1099) + 224
            while idx < _2123:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1067 + 64] = (32 * _1099) + (32 * _2123) + 224
            _2443 = mem[(64 * ('cd', 4).length) + 160]
            mem[_1067 + (32 * _1099) + (32 * _2123) + 224] = mem[(64 * ('cd', 4).length) + 160]
            idx = 0
            s = (64 * ('cd', 4).length) + 192
            t = _1067 + (32 * _1099) + (32 * _2123) + 256
            while idx < _2443:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1067 + 96] = (32 * _1099) + (32 * _2123) + (32 * _2443) + 256
            _2699 = mem[(98 * ('cd', 4).length) + 192]
            mem[_1067 + (32 * _1099) + (32 * _2123) + (32 * _2443) + 256] = mem[(98 * ('cd', 4).length) + 192]
            idx = 0
            s = (98 * ('cd', 4).length) + 224
            t = _1067 + (32 * _1099) + (32 * _2123) + (32 * _2443) + 288
            while idx < _2699:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1067 + 128] = (32 * _1099) + (32 * _2123) + (32 * _2443) + (32 * _2699) + 288
            _2891 = mem[(131 * ('cd', 4).length) + 224]
            mem[_1067 + (32 * _1099) + (32 * _2123) + (32 * _2443) + (32 * _2699) + 288] = mem[(131 * ('cd', 4).length) + 224]
            idx = 0
            s = (131 * ('cd', 4).length) + 256
            t = _1067 + (32 * _1099) + (32 * _2123) + (32 * _2443) + (32 * _2699) + 320
            while idx < _2891:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1067 + (32 * _1099) + (32 * _2123) + (32 * _2443) + (32 * _2699) + (32 * _2891) + -mem[64] + 320
        mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        require ('cd', 4).length <= test266151307()
        mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
        if not ('cd', 4).length:
            require ('cd', 4).length <= test266151307()
            mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
            mem[64] = (164 * ('cd', 4).length) + 256
            if not ('cd', 4).length:
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                while uint32(idx) < ('cd', 4).length:
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1260 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1292 = mem[_1260]
                    require mem[_1260] == mem[_1260 + 18 len 14]
                    _1388 = mem[_1260 + 32]
                    require mem[_1260 + 32] == mem[_1260 + 50 len 14]
                    _1452 = mem[_1260 + 64]
                    require mem[_1260 + 64] == mem[_1260 + 92 len 4]
                    require uint32(idx) < ('cd', 4).length
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                            gas gas_remaining wei
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1708 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1740 = mem[_1708]
                    require mem[_1708] == mem[_1708 + 28 len 4]
                    require mem[_1708 + 32] == mem[_1708 + 60 len 4]
                    require uint32(idx) < ('cd', 4).length
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1868 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1900 = mem[_1868]
                    require mem[_1868] == mem[_1868 + 28 len 4]
                    require uint32(idx) < mem[96]
                    mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1292)
                    require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1388)
                    require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1452)
                    require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                    mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1740)
                    require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                    mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1900)
                    idx = idx + 1
                    s = _1900
                    s = _1452
                    s = _1388
                    s = _1292
                    s = _1740
                    continue 
                _1068 = mem[64]
                mem[mem[64]] = 160
                _1100 = mem[96]
                mem[mem[64] + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < mem[96]:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                _2124 = mem[(32 * ('cd', 4).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                t = mem[64] + (32 * mem[96]) + 224
                while idx < _2124:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2124) + 224
                _2444 = mem[(64 * ('cd', 4).length) + 160]
                mem[mem[64] + (32 * mem[96]) + (32 * _2124) + 224] = mem[(64 * ('cd', 4).length) + 160]
                idx = 0
                s = (64 * ('cd', 4).length) + 192
                t = mem[64] + (32 * mem[96]) + (32 * _2124) + 256
                while idx < _2444:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 96] = (32 * mem[96]) + (32 * _2124) + (32 * _2444) + 256
                _2700 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + (32 * mem[96]) + (32 * _2124) + (32 * _2444) + 256] = mem[(98 * ('cd', 4).length) + 192]
                idx = 0
                s = (98 * ('cd', 4).length) + 224
                t = mem[64] + (32 * mem[96]) + (32 * _2124) + (32 * _2444) + 288
                while idx < _2700:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1068 + 128] = (32 * _1100) + (32 * _2124) + (32 * _2444) + (32 * _2700) + 288
                _2892 = mem[(131 * ('cd', 4).length) + 224]
                mem[_1068 + (32 * _1100) + (32 * _2124) + (32 * _2444) + (32 * _2700) + 288] = mem[(131 * ('cd', 4).length) + 224]
                idx = 0
                s = (131 * ('cd', 4).length) + 256
                t = _1068 + (32 * _1100) + (32 * _2124) + (32 * _2444) + (32 * _2700) + 320
                while idx < _2892:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1068 + (32 * _1100) + (32 * _2124) + (32 * _2444) + (32 * _2700) + (32 * _2892) + -mem[64] + 320
            mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            while uint32(idx) < ('cd', 4).length:
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1261 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1293 = mem[_1261]
                require mem[_1261] == mem[_1261 + 18 len 14]
                _1389 = mem[_1261 + 32]
                require mem[_1261 + 32] == mem[_1261 + 50 len 14]
                _1453 = mem[_1261 + 64]
                require mem[_1261 + 64] == mem[_1261 + 92 len 4]
                require uint32(idx) < ('cd', 4).length
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                        gas gas_remaining wei
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1709 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1741 = mem[_1709]
                require mem[_1709] == mem[_1709 + 28 len 4]
                require mem[_1709 + 32] == mem[_1709 + 60 len 4]
                require uint32(idx) < ('cd', 4).length
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1869 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1901 = mem[_1869]
                require mem[_1869] == mem[_1869 + 28 len 4]
                require uint32(idx) < mem[96]
                mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1293)
                require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1389)
                require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1453)
                require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1741)
                require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1901)
                idx = idx + 1
                s = _1901
                s = _1453
                s = _1389
                s = _1293
                s = _1741
                continue 
            _1069 = mem[64]
            mem[mem[64]] = 160
            _1101 = mem[96]
            mem[mem[64] + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < _1101:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1069 + 32] = (32 * _1101) + 192
            _2125 = mem[(32 * ('cd', 4).length) + 128]
            mem[_1069 + (32 * _1101) + 192] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = _1069 + (32 * _1101) + 224
            while idx < _2125:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1069 + 64] = (32 * _1101) + (32 * _2125) + 224
            _2445 = mem[(64 * ('cd', 4).length) + 160]
            mem[_1069 + (32 * _1101) + (32 * _2125) + 224] = mem[(64 * ('cd', 4).length) + 160]
            idx = 0
            s = (64 * ('cd', 4).length) + 192
            t = _1069 + (32 * _1101) + (32 * _2125) + 256
            while idx < _2445:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1069 + 96] = (32 * _1101) + (32 * _2125) + (32 * _2445) + 256
            _2701 = mem[(98 * ('cd', 4).length) + 192]
            mem[_1069 + (32 * _1101) + (32 * _2125) + (32 * _2445) + 256] = mem[(98 * ('cd', 4).length) + 192]
            idx = 0
            s = (98 * ('cd', 4).length) + 224
            t = _1069 + (32 * _1101) + (32 * _2125) + (32 * _2445) + 288
            while idx < _2701:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1069 + 128] = (32 * _1101) + (32 * _2125) + (32 * _2445) + (32 * _2701) + 288
            _2893 = mem[(131 * ('cd', 4).length) + 224]
            mem[_1069 + (32 * _1101) + (32 * _2125) + (32 * _2445) + (32 * _2701) + 288] = mem[(131 * ('cd', 4).length) + 224]
            idx = 0
            s = (131 * ('cd', 4).length) + 256
            t = _1069 + (32 * _1101) + (32 * _2125) + (32 * _2445) + (32 * _2701) + 320
            while idx < _2893:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1069 + (32 * _1101) + (32 * _2125) + (32 * _2445) + (32 * _2701) + (32 * _2893) + -mem[64] + 320
        mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        require ('cd', 4).length <= test266151307()
        mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
        mem[64] = (164 * ('cd', 4).length) + 256
        if not ('cd', 4).length:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            while uint32(idx) < ('cd', 4).length:
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1262 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1294 = mem[_1262]
                require mem[_1262] == mem[_1262 + 18 len 14]
                _1390 = mem[_1262 + 32]
                require mem[_1262 + 32] == mem[_1262 + 50 len 14]
                _1454 = mem[_1262 + 64]
                require mem[_1262 + 64] == mem[_1262 + 92 len 4]
                require uint32(idx) < ('cd', 4).length
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                        gas gas_remaining wei
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1710 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1742 = mem[_1710]
                require mem[_1710] == mem[_1710 + 28 len 4]
                require mem[_1710 + 32] == mem[_1710 + 60 len 4]
                require uint32(idx) < ('cd', 4).length
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1870 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1902 = mem[_1870]
                require mem[_1870] == mem[_1870 + 28 len 4]
                require uint32(idx) < mem[96]
                mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1294)
                require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1390)
                require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1454)
                require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1742)
                require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1902)
                idx = idx + 1
                s = _1902
                s = _1454
                s = _1390
                s = _1294
                s = _1742
                continue 
            _1070 = mem[64]
            mem[mem[64]] = 160
            _1102 = mem[96]
            mem[mem[64] + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < _1102:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1070 + 32] = (32 * _1102) + 192
            _2126 = mem[(32 * ('cd', 4).length) + 128]
            mem[_1070 + (32 * _1102) + 192] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = _1070 + (32 * _1102) + 224
            while idx < _2126:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1070 + 64] = (32 * _1102) + (32 * _2126) + 224
            _2446 = mem[(64 * ('cd', 4).length) + 160]
            mem[_1070 + (32 * _1102) + (32 * _2126) + 224] = mem[(64 * ('cd', 4).length) + 160]
            idx = 0
            s = (64 * ('cd', 4).length) + 192
            t = _1070 + (32 * _1102) + (32 * _2126) + 256
            while idx < _2446:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1070 + 96] = (32 * _1102) + (32 * _2126) + (32 * _2446) + 256
            _2702 = mem[(98 * ('cd', 4).length) + 192]
            mem[_1070 + (32 * _1102) + (32 * _2126) + (32 * _2446) + 256] = mem[(98 * ('cd', 4).length) + 192]
            idx = 0
            s = (98 * ('cd', 4).length) + 224
            t = _1070 + (32 * _1102) + (32 * _2126) + (32 * _2446) + 288
            while idx < _2702:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1070 + 128] = (32 * _1102) + (32 * _2126) + (32 * _2446) + (32 * _2702) + 288
            _2894 = mem[(131 * ('cd', 4).length) + 224]
            mem[_1070 + (32 * _1102) + (32 * _2126) + (32 * _2446) + (32 * _2702) + 288] = mem[(131 * ('cd', 4).length) + 224]
            idx = 0
            s = (131 * ('cd', 4).length) + 256
            t = _1070 + (32 * _1102) + (32 * _2126) + (32 * _2446) + (32 * _2702) + 320
            while idx < _2894:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1070 + (32 * _1102) + (32 * _2126) + (32 * _2446) + (32 * _2702) + (32 * _2894) + -mem[64] + 320
        mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        while uint32(idx) < ('cd', 4).length:
            require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1263 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1295 = mem[_1263]
            require mem[_1263] == mem[_1263 + 18 len 14]
            _1391 = mem[_1263 + 32]
            require mem[_1263 + 32] == mem[_1263 + 50 len 14]
            _1455 = mem[_1263 + 64]
            require mem[_1263 + 64] == mem[_1263 + 92 len 4]
            require uint32(idx) < ('cd', 4).length
            require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                    gas gas_remaining wei
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1711 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1743 = mem[_1711]
            require mem[_1711] == mem[_1711 + 28 len 4]
            require mem[_1711 + 32] == mem[_1711 + 60 len 4]
            require uint32(idx) < ('cd', 4).length
            require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1871 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1903 = mem[_1871]
            require mem[_1871] == mem[_1871 + 28 len 4]
            require uint32(idx) < mem[96]
            mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1295)
            require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1391)
            require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1455)
            require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
            mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1743)
            require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1903)
            idx = idx + 1
            s = _1903
            s = _1455
            s = _1391
            s = _1295
            s = _1743
            continue 
        _1071 = mem[64]
        mem[mem[64]] = 160
        _1103 = mem[96]
        mem[mem[64] + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < mem[96]:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        _2127 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = mem[64] + (32 * mem[96]) + 224
        while idx < _2127:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1071 + 64] = (32 * mem[96]) + (32 * _2127) + 224
        _2447 = mem[(64 * ('cd', 4).length) + 160]
        mem[_1071 + (32 * _1103) + (32 * _2127) + 224] = mem[(64 * ('cd', 4).length) + 160]
        idx = 0
        s = (64 * ('cd', 4).length) + 192
        t = _1071 + (32 * _1103) + (32 * _2127) + 256
        while idx < _2447:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1071 + 96] = (32 * _1103) + (32 * _2127) + (32 * _2447) + 256
        _2703 = mem[(98 * ('cd', 4).length) + 192]
        mem[_1071 + (32 * _1103) + (32 * _2127) + (32 * _2447) + 256] = mem[(98 * ('cd', 4).length) + 192]
        idx = 0
        s = (98 * ('cd', 4).length) + 224
        t = _1071 + (32 * _1103) + (32 * _2127) + (32 * _2447) + 288
        while idx < _2703:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1071 + 128] = (32 * _1103) + (32 * _2127) + (32 * _2447) + (32 * _2703) + 288
        _2895 = mem[(131 * ('cd', 4).length) + 224]
        mem[_1071 + (32 * _1103) + (32 * _2127) + (32 * _2447) + (32 * _2703) + 288] = mem[(131 * ('cd', 4).length) + 224]
        idx = 0
        s = (131 * ('cd', 4).length) + 256
        t = _1071 + (32 * _1103) + (32 * _2127) + (32 * _2447) + (32 * _2703) + 320
        while idx < _2895:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1071 + (32 * _1103) + (32 * _2127) + (32 * _2447) + (32 * _2703) + (32 * _2895) + -mem[64] + 320
    mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    require ('cd', 4).length <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    if not ('cd', 4).length:
        require ('cd', 4).length <= test266151307()
        mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
        if not ('cd', 4).length:
            require ('cd', 4).length <= test266151307()
            mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
            if not ('cd', 4).length:
                require ('cd', 4).length <= test266151307()
                mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
                mem[64] = (164 * ('cd', 4).length) + 256
                if not ('cd', 4).length:
                    idx = 0
                    s = 0
                    s = 0
                    s = 0
                    s = 0
                    s = 0
                    while uint32(idx) < ('cd', 4).length:
                        require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                        require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                        staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1264 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1296 = mem[_1264]
                        require mem[_1264] == mem[_1264 + 18 len 14]
                        _1392 = mem[_1264 + 32]
                        require mem[_1264 + 32] == mem[_1264 + 50 len 14]
                        _1456 = mem[_1264 + 64]
                        require mem[_1264 + 64] == mem[_1264 + 92 len 4]
                        require uint32(idx) < ('cd', 4).length
                        require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                        require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                        staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                                gas gas_remaining wei
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1712 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _1744 = mem[_1712]
                        require mem[_1712] == mem[_1712 + 28 len 4]
                        require mem[_1712 + 32] == mem[_1712 + 60 len 4]
                        require uint32(idx) < ('cd', 4).length
                        require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                        require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                        staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1872 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1904 = mem[_1872]
                        require mem[_1872] == mem[_1872 + 28 len 4]
                        require uint32(idx) < mem[96]
                        mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1296)
                        require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                        mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1392)
                        require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                        mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1456)
                        require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                        mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1744)
                        require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                        mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1904)
                        idx = idx + 1
                        s = _1904
                        s = _1456
                        s = _1392
                        s = _1296
                        s = _1744
                        continue 
                    _1072 = mem[64]
                    mem[mem[64]] = 160
                    _1104 = mem[96]
                    mem[mem[64] + 160] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 192
                    while idx < mem[96]:
                        mem[t] = mem[s + 18 len 14]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 32] = (32 * mem[96]) + 192
                    _2128 = mem[(32 * ('cd', 4).length) + 128]
                    mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
                    idx = 0
                    s = (32 * ('cd', 4).length) + 160
                    t = mem[64] + (32 * mem[96]) + 224
                    while idx < _2128:
                        mem[t] = mem[s + 18 len 14]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2128) + 224
                    _2448 = mem[(64 * ('cd', 4).length) + 160]
                    mem[mem[64] + (32 * mem[96]) + (32 * _2128) + 224] = mem[(64 * ('cd', 4).length) + 160]
                    idx = 0
                    s = (64 * ('cd', 4).length) + 192
                    t = mem[64] + (32 * mem[96]) + (32 * _2128) + 256
                    while idx < _2448:
                        mem[t] = mem[s + 28 len 4]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1072 + 96] = (32 * mem[96]) + (32 * _2128) + (32 * _2448) + 256
                    _2704 = mem[(98 * ('cd', 4).length) + 192]
                    mem[_1072 + (32 * _1104) + (32 * _2128) + (32 * _2448) + 256] = mem[(98 * ('cd', 4).length) + 192]
                    idx = 0
                    s = (98 * ('cd', 4).length) + 224
                    t = _1072 + (32 * _1104) + (32 * _2128) + (32 * _2448) + 288
                    while idx < _2704:
                        mem[t] = mem[s + 28 len 4]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1072 + 128] = (32 * _1104) + (32 * _2128) + (32 * _2448) + (32 * _2704) + 288
                    _2896 = mem[(131 * ('cd', 4).length) + 224]
                    mem[_1072 + (32 * _1104) + (32 * _2128) + (32 * _2448) + (32 * _2704) + 288] = mem[(131 * ('cd', 4).length) + 224]
                    idx = 0
                    s = (131 * ('cd', 4).length) + 256
                    t = _1072 + (32 * _1104) + (32 * _2128) + (32 * _2448) + (32 * _2704) + 320
                    while idx < _2896:
                        mem[t] = mem[s + 28 len 4]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _1072 + (32 * _1104) + (32 * _2128) + (32 * _2448) + (32 * _2704) + (32 * _2896) + -mem[64] + 320
                mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                while uint32(idx) < ('cd', 4).length:
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1265 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1297 = mem[_1265]
                    require mem[_1265] == mem[_1265 + 18 len 14]
                    _1393 = mem[_1265 + 32]
                    require mem[_1265 + 32] == mem[_1265 + 50 len 14]
                    _1457 = mem[_1265 + 64]
                    require mem[_1265 + 64] == mem[_1265 + 92 len 4]
                    require uint32(idx) < ('cd', 4).length
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                            gas gas_remaining wei
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1713 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1745 = mem[_1713]
                    require mem[_1713] == mem[_1713 + 28 len 4]
                    require mem[_1713 + 32] == mem[_1713 + 60 len 4]
                    require uint32(idx) < ('cd', 4).length
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1873 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1905 = mem[_1873]
                    require mem[_1873] == mem[_1873 + 28 len 4]
                    require uint32(idx) < mem[96]
                    mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1297)
                    require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1393)
                    require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1457)
                    require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                    mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1745)
                    require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                    mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1905)
                    idx = idx + 1
                    s = _1905
                    s = _1457
                    s = _1393
                    s = _1297
                    s = _1745
                    continue 
                _1073 = mem[64]
                mem[mem[64]] = 160
                _1105 = mem[96]
                mem[mem[64] + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < mem[96]:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                _2129 = mem[(32 * ('cd', 4).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                t = mem[64] + (32 * mem[96]) + 224
                while idx < _2129:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2129) + 224
                _2449 = mem[(64 * ('cd', 4).length) + 160]
                mem[mem[64] + (32 * mem[96]) + (32 * _2129) + 224] = mem[(64 * ('cd', 4).length) + 160]
                idx = 0
                s = (64 * ('cd', 4).length) + 192
                t = mem[64] + (32 * mem[96]) + (32 * _2129) + 256
                while idx < _2449:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 96] = (32 * mem[96]) + (32 * _2129) + (32 * _2449) + 256
                _2705 = mem[(98 * ('cd', 4).length) + 192]
                mem[mem[64] + (32 * mem[96]) + (32 * _2129) + (32 * _2449) + 256] = mem[(98 * ('cd', 4).length) + 192]
                idx = 0
                s = (98 * ('cd', 4).length) + 224
                t = mem[64] + (32 * mem[96]) + (32 * _2129) + (32 * _2449) + 288
                while idx < _2705:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1073 + 128] = (32 * _1105) + (32 * _2129) + (32 * _2449) + (32 * _2705) + 288
                _2897 = mem[(131 * ('cd', 4).length) + 224]
                mem[_1073 + (32 * _1105) + (32 * _2129) + (32 * _2449) + (32 * _2705) + 288] = mem[(131 * ('cd', 4).length) + 224]
                idx = 0
                s = (131 * ('cd', 4).length) + 256
                t = _1073 + (32 * _1105) + (32 * _2129) + (32 * _2449) + (32 * _2705) + 320
                while idx < _2897:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1073 + (32 * _1105) + (32 * _2129) + (32 * _2449) + (32 * _2705) + (32 * _2897) + -mem[64] + 320
            mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            require ('cd', 4).length <= test266151307()
            mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
            mem[64] = (164 * ('cd', 4).length) + 256
            if not ('cd', 4).length:
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                while uint32(idx) < ('cd', 4).length:
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1266 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1298 = mem[_1266]
                    require mem[_1266] == mem[_1266 + 18 len 14]
                    _1394 = mem[_1266 + 32]
                    require mem[_1266 + 32] == mem[_1266 + 50 len 14]
                    _1458 = mem[_1266 + 64]
                    require mem[_1266 + 64] == mem[_1266 + 92 len 4]
                    require uint32(idx) < ('cd', 4).length
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                            gas gas_remaining wei
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1714 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1746 = mem[_1714]
                    require mem[_1714] == mem[_1714 + 28 len 4]
                    require mem[_1714 + 32] == mem[_1714 + 60 len 4]
                    require uint32(idx) < ('cd', 4).length
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1874 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1906 = mem[_1874]
                    require mem[_1874] == mem[_1874 + 28 len 4]
                    require uint32(idx) < mem[96]
                    mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1298)
                    require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1394)
                    require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1458)
                    require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                    mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1746)
                    require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                    mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1906)
                    idx = idx + 1
                    s = _1906
                    s = _1458
                    s = _1394
                    s = _1298
                    s = _1746
                    continue 
                _1074 = mem[64]
                mem[mem[64]] = 160
                _1106 = mem[96]
                mem[mem[64] + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < mem[96]:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                _2130 = mem[(32 * ('cd', 4).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                t = mem[64] + (32 * mem[96]) + 224
                while idx < _2130:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2130) + 224
                _2450 = mem[(64 * ('cd', 4).length) + 160]
                mem[mem[64] + (32 * mem[96]) + (32 * _2130) + 224] = mem[(64 * ('cd', 4).length) + 160]
                idx = 0
                s = (64 * ('cd', 4).length) + 192
                t = mem[64] + (32 * mem[96]) + (32 * _2130) + 256
                while idx < _2450:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1074 + 96] = (32 * mem[96]) + (32 * _2130) + (32 * _2450) + 256
                _2706 = mem[(98 * ('cd', 4).length) + 192]
                mem[_1074 + (32 * _1106) + (32 * _2130) + (32 * _2450) + 256] = mem[(98 * ('cd', 4).length) + 192]
                idx = 0
                s = (98 * ('cd', 4).length) + 224
                t = _1074 + (32 * _1106) + (32 * _2130) + (32 * _2450) + 288
                while idx < _2706:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1074 + 128] = (32 * _1106) + (32 * _2130) + (32 * _2450) + (32 * _2706) + 288
                _2898 = mem[(131 * ('cd', 4).length) + 224]
                mem[_1074 + (32 * _1106) + (32 * _2130) + (32 * _2450) + (32 * _2706) + 288] = mem[(131 * ('cd', 4).length) + 224]
                idx = 0
                s = (131 * ('cd', 4).length) + 256
                t = _1074 + (32 * _1106) + (32 * _2130) + (32 * _2450) + (32 * _2706) + 320
                while idx < _2898:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1074 + (32 * _1106) + (32 * _2130) + (32 * _2450) + (32 * _2706) + (32 * _2898) + -mem[64] + 320
            mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            while uint32(idx) < ('cd', 4).length:
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1267 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1299 = mem[_1267]
                require mem[_1267] == mem[_1267 + 18 len 14]
                _1395 = mem[_1267 + 32]
                require mem[_1267 + 32] == mem[_1267 + 50 len 14]
                _1459 = mem[_1267 + 64]
                require mem[_1267 + 64] == mem[_1267 + 92 len 4]
                require uint32(idx) < ('cd', 4).length
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                        gas gas_remaining wei
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1715 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1747 = mem[_1715]
                require mem[_1715] == mem[_1715 + 28 len 4]
                require mem[_1715 + 32] == mem[_1715 + 60 len 4]
                require uint32(idx) < ('cd', 4).length
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1875 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1907 = mem[_1875]
                require mem[_1875] == mem[_1875 + 28 len 4]
                require uint32(idx) < mem[96]
                mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1299)
                require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1395)
                require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1459)
                require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1747)
                require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1907)
                idx = idx + 1
                s = _1907
                s = _1459
                s = _1395
                s = _1299
                s = _1747
                continue 
            _1075 = mem[64]
            mem[mem[64]] = 160
            _1107 = mem[96]
            mem[mem[64] + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < mem[96]:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            _2131 = mem[(32 * ('cd', 4).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = mem[64] + (32 * mem[96]) + 224
            while idx < _2131:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1075 + 64] = (32 * mem[96]) + (32 * _2131) + 224
            _2451 = mem[(64 * ('cd', 4).length) + 160]
            mem[_1075 + (32 * _1107) + (32 * _2131) + 224] = mem[(64 * ('cd', 4).length) + 160]
            idx = 0
            s = (64 * ('cd', 4).length) + 192
            t = _1075 + (32 * _1107) + (32 * _2131) + 256
            while idx < _2451:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1075 + 96] = (32 * _1107) + (32 * _2131) + (32 * _2451) + 256
            _2707 = mem[(98 * ('cd', 4).length) + 192]
            mem[_1075 + (32 * _1107) + (32 * _2131) + (32 * _2451) + 256] = mem[(98 * ('cd', 4).length) + 192]
            idx = 0
            s = (98 * ('cd', 4).length) + 224
            t = _1075 + (32 * _1107) + (32 * _2131) + (32 * _2451) + 288
            while idx < _2707:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1075 + 128] = (32 * _1107) + (32 * _2131) + (32 * _2451) + (32 * _2707) + 288
            _2899 = mem[(131 * ('cd', 4).length) + 224]
            mem[_1075 + (32 * _1107) + (32 * _2131) + (32 * _2451) + (32 * _2707) + 288] = mem[(131 * ('cd', 4).length) + 224]
            idx = 0
            s = (131 * ('cd', 4).length) + 256
            t = _1075 + (32 * _1107) + (32 * _2131) + (32 * _2451) + (32 * _2707) + 320
            while idx < _2899:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1075 + (32 * _1107) + (32 * _2131) + (32 * _2451) + (32 * _2707) + (32 * _2899) + -mem[64] + 320
        mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        require ('cd', 4).length <= test266151307()
        mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
        if not ('cd', 4).length:
            require ('cd', 4).length <= test266151307()
            mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
            mem[64] = (164 * ('cd', 4).length) + 256
            if not ('cd', 4).length:
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                while uint32(idx) < ('cd', 4).length:
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1268 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1300 = mem[_1268]
                    require mem[_1268] == mem[_1268 + 18 len 14]
                    _1396 = mem[_1268 + 32]
                    require mem[_1268 + 32] == mem[_1268 + 50 len 14]
                    _1460 = mem[_1268 + 64]
                    require mem[_1268 + 64] == mem[_1268 + 92 len 4]
                    require uint32(idx) < ('cd', 4).length
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                            gas gas_remaining wei
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1716 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1748 = mem[_1716]
                    require mem[_1716] == mem[_1716 + 28 len 4]
                    require mem[_1716 + 32] == mem[_1716 + 60 len 4]
                    require uint32(idx) < ('cd', 4).length
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1876 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1908 = mem[_1876]
                    require mem[_1876] == mem[_1876 + 28 len 4]
                    require uint32(idx) < mem[96]
                    mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1300)
                    require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1396)
                    require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1460)
                    require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                    mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1748)
                    require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                    mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1908)
                    idx = idx + 1
                    s = _1908
                    s = _1460
                    s = _1396
                    s = _1300
                    s = _1748
                    continue 
                _1076 = mem[64]
                mem[mem[64]] = 160
                _1108 = mem[96]
                mem[mem[64] + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < mem[96]:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                _2132 = mem[(32 * ('cd', 4).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                t = mem[64] + (32 * mem[96]) + 224
                while idx < _2132:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2132) + 224
                _2452 = mem[(64 * ('cd', 4).length) + 160]
                mem[mem[64] + (32 * mem[96]) + (32 * _2132) + 224] = mem[(64 * ('cd', 4).length) + 160]
                idx = 0
                s = (64 * ('cd', 4).length) + 192
                t = mem[64] + (32 * mem[96]) + (32 * _2132) + 256
                while idx < _2452:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1076 + 96] = (32 * mem[96]) + (32 * _2132) + (32 * _2452) + 256
                _2708 = mem[(98 * ('cd', 4).length) + 192]
                mem[_1076 + (32 * _1108) + (32 * _2132) + (32 * _2452) + 256] = mem[(98 * ('cd', 4).length) + 192]
                idx = 0
                s = (98 * ('cd', 4).length) + 224
                t = _1076 + (32 * _1108) + (32 * _2132) + (32 * _2452) + 288
                while idx < _2708:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1076 + 128] = (32 * _1108) + (32 * _2132) + (32 * _2452) + (32 * _2708) + 288
                _2900 = mem[(131 * ('cd', 4).length) + 224]
                mem[_1076 + (32 * _1108) + (32 * _2132) + (32 * _2452) + (32 * _2708) + 288] = mem[(131 * ('cd', 4).length) + 224]
                idx = 0
                s = (131 * ('cd', 4).length) + 256
                t = _1076 + (32 * _1108) + (32 * _2132) + (32 * _2452) + (32 * _2708) + 320
                while idx < _2900:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1076 + (32 * _1108) + (32 * _2132) + (32 * _2452) + (32 * _2708) + (32 * _2900) + -mem[64] + 320
            mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            while uint32(idx) < ('cd', 4).length:
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1269 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1301 = mem[_1269]
                require mem[_1269] == mem[_1269 + 18 len 14]
                _1397 = mem[_1269 + 32]
                require mem[_1269 + 32] == mem[_1269 + 50 len 14]
                _1461 = mem[_1269 + 64]
                require mem[_1269 + 64] == mem[_1269 + 92 len 4]
                require uint32(idx) < ('cd', 4).length
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                        gas gas_remaining wei
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1717 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1749 = mem[_1717]
                require mem[_1717] == mem[_1717 + 28 len 4]
                require mem[_1717 + 32] == mem[_1717 + 60 len 4]
                require uint32(idx) < ('cd', 4).length
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1877 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1909 = mem[_1877]
                require mem[_1877] == mem[_1877 + 28 len 4]
                require uint32(idx) < mem[96]
                mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1301)
                require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1397)
                require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1461)
                require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1749)
                require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1909)
                idx = idx + 1
                s = _1909
                s = _1461
                s = _1397
                s = _1301
                s = _1749
                continue 
            _1077 = mem[64]
            mem[mem[64]] = 160
            _1109 = mem[96]
            mem[mem[64] + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < _1109:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1077 + 32] = (32 * _1109) + 192
            _2133 = mem[(32 * ('cd', 4).length) + 128]
            mem[_1077 + (32 * _1109) + 192] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = _1077 + (32 * _1109) + 224
            while idx < _2133:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1077 + 64] = (32 * _1109) + (32 * _2133) + 224
            _2453 = mem[(64 * ('cd', 4).length) + 160]
            mem[_1077 + (32 * _1109) + (32 * _2133) + 224] = mem[(64 * ('cd', 4).length) + 160]
            idx = 0
            s = (64 * ('cd', 4).length) + 192
            t = _1077 + (32 * _1109) + (32 * _2133) + 256
            while idx < _2453:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1077 + 96] = (32 * _1109) + (32 * _2133) + (32 * _2453) + 256
            _2709 = mem[(98 * ('cd', 4).length) + 192]
            mem[_1077 + (32 * _1109) + (32 * _2133) + (32 * _2453) + 256] = mem[(98 * ('cd', 4).length) + 192]
            idx = 0
            s = (98 * ('cd', 4).length) + 224
            t = _1077 + (32 * _1109) + (32 * _2133) + (32 * _2453) + 288
            while idx < _2709:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1077 + 128] = (32 * _1109) + (32 * _2133) + (32 * _2453) + (32 * _2709) + 288
            _2901 = mem[(131 * ('cd', 4).length) + 224]
            mem[_1077 + (32 * _1109) + (32 * _2133) + (32 * _2453) + (32 * _2709) + 288] = mem[(131 * ('cd', 4).length) + 224]
            idx = 0
            s = (131 * ('cd', 4).length) + 256
            t = _1077 + (32 * _1109) + (32 * _2133) + (32 * _2453) + (32 * _2709) + 320
            while idx < _2901:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1077 + (32 * _1109) + (32 * _2133) + (32 * _2453) + (32 * _2709) + (32 * _2901) + -mem[64] + 320
        mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        require ('cd', 4).length <= test266151307()
        mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
        mem[64] = (164 * ('cd', 4).length) + 256
        if not ('cd', 4).length:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            while uint32(idx) < ('cd', 4).length:
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1270 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1302 = mem[_1270]
                require mem[_1270] == mem[_1270 + 18 len 14]
                _1398 = mem[_1270 + 32]
                require mem[_1270 + 32] == mem[_1270 + 50 len 14]
                _1462 = mem[_1270 + 64]
                require mem[_1270 + 64] == mem[_1270 + 92 len 4]
                require uint32(idx) < ('cd', 4).length
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                        gas gas_remaining wei
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1718 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1750 = mem[_1718]
                require mem[_1718] == mem[_1718 + 28 len 4]
                require mem[_1718 + 32] == mem[_1718 + 60 len 4]
                require uint32(idx) < ('cd', 4).length
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1878 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1910 = mem[_1878]
                require mem[_1878] == mem[_1878 + 28 len 4]
                require uint32(idx) < mem[96]
                mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1302)
                require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1398)
                require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1462)
                require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1750)
                require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1910)
                idx = idx + 1
                s = _1910
                s = _1462
                s = _1398
                s = _1302
                s = _1750
                continue 
            _1078 = mem[64]
            mem[mem[64]] = 160
            _1110 = mem[96]
            mem[mem[64] + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < _1110:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1078 + 32] = (32 * _1110) + 192
            _2134 = mem[(32 * ('cd', 4).length) + 128]
            mem[_1078 + (32 * _1110) + 192] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = _1078 + (32 * _1110) + 224
            while idx < _2134:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1078 + 64] = (32 * _1110) + (32 * _2134) + 224
            _2454 = mem[(64 * ('cd', 4).length) + 160]
            mem[_1078 + (32 * _1110) + (32 * _2134) + 224] = mem[(64 * ('cd', 4).length) + 160]
            idx = 0
            s = (64 * ('cd', 4).length) + 192
            t = _1078 + (32 * _1110) + (32 * _2134) + 256
            while idx < _2454:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1078 + 96] = (32 * _1110) + (32 * _2134) + (32 * _2454) + 256
            _2710 = mem[(98 * ('cd', 4).length) + 192]
            mem[_1078 + (32 * _1110) + (32 * _2134) + (32 * _2454) + 256] = mem[(98 * ('cd', 4).length) + 192]
            idx = 0
            s = (98 * ('cd', 4).length) + 224
            t = _1078 + (32 * _1110) + (32 * _2134) + (32 * _2454) + 288
            while idx < _2710:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1078 + 128] = (32 * _1110) + (32 * _2134) + (32 * _2454) + (32 * _2710) + 288
            _2902 = mem[(131 * ('cd', 4).length) + 224]
            mem[_1078 + (32 * _1110) + (32 * _2134) + (32 * _2454) + (32 * _2710) + 288] = mem[(131 * ('cd', 4).length) + 224]
            idx = 0
            s = (131 * ('cd', 4).length) + 256
            t = _1078 + (32 * _1110) + (32 * _2134) + (32 * _2454) + (32 * _2710) + 320
            while idx < _2902:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1078 + (32 * _1110) + (32 * _2134) + (32 * _2454) + (32 * _2710) + (32 * _2902) + -mem[64] + 320
        mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        while uint32(idx) < ('cd', 4).length:
            require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1271 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1303 = mem[_1271]
            require mem[_1271] == mem[_1271 + 18 len 14]
            _1399 = mem[_1271 + 32]
            require mem[_1271 + 32] == mem[_1271 + 50 len 14]
            _1463 = mem[_1271 + 64]
            require mem[_1271 + 64] == mem[_1271 + 92 len 4]
            require uint32(idx) < ('cd', 4).length
            require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                    gas gas_remaining wei
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1719 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1751 = mem[_1719]
            require mem[_1719] == mem[_1719 + 28 len 4]
            require mem[_1719 + 32] == mem[_1719 + 60 len 4]
            require uint32(idx) < ('cd', 4).length
            require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1879 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1911 = mem[_1879]
            require mem[_1879] == mem[_1879 + 28 len 4]
            require uint32(idx) < mem[96]
            mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1303)
            require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1399)
            require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1463)
            require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
            mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1751)
            require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1911)
            idx = idx + 1
            s = _1911
            s = _1463
            s = _1399
            s = _1303
            s = _1751
            continue 
        _1079 = mem[64]
        mem[mem[64]] = 160
        _1111 = mem[96]
        mem[mem[64] + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < _1111:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1079 + 32] = (32 * _1111) + 192
        _2135 = mem[(32 * ('cd', 4).length) + 128]
        mem[_1079 + (32 * _1111) + 192] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = _1079 + (32 * _1111) + 224
        while idx < _2135:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1079 + 64] = (32 * _1111) + (32 * _2135) + 224
        _2455 = mem[(64 * ('cd', 4).length) + 160]
        mem[_1079 + (32 * _1111) + (32 * _2135) + 224] = mem[(64 * ('cd', 4).length) + 160]
        idx = 0
        s = (64 * ('cd', 4).length) + 192
        t = _1079 + (32 * _1111) + (32 * _2135) + 256
        while idx < _2455:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1079 + 96] = (32 * _1111) + (32 * _2135) + (32 * _2455) + 256
        _2711 = mem[(98 * ('cd', 4).length) + 192]
        mem[_1079 + (32 * _1111) + (32 * _2135) + (32 * _2455) + 256] = mem[(98 * ('cd', 4).length) + 192]
        idx = 0
        s = (98 * ('cd', 4).length) + 224
        t = _1079 + (32 * _1111) + (32 * _2135) + (32 * _2455) + 288
        while idx < _2711:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1079 + 128] = (32 * _1111) + (32 * _2135) + (32 * _2455) + (32 * _2711) + 288
        _2903 = mem[(131 * ('cd', 4).length) + 224]
        mem[_1079 + (32 * _1111) + (32 * _2135) + (32 * _2455) + (32 * _2711) + 288] = mem[(131 * ('cd', 4).length) + 224]
        idx = 0
        s = (131 * ('cd', 4).length) + 256
        t = _1079 + (32 * _1111) + (32 * _2135) + (32 * _2455) + (32 * _2711) + 320
        while idx < _2903:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1079 + (32 * _1111) + (32 * _2135) + (32 * _2455) + (32 * _2711) + (32 * _2903) + -mem[64] + 320
    mem[(32 * ('cd', 4).length) + 160 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    require ('cd', 4).length <= test266151307()
    mem[(64 * ('cd', 4).length) + 160] = ('cd', 4).length
    if not ('cd', 4).length:
        require ('cd', 4).length <= test266151307()
        mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
        if not ('cd', 4).length:
            require ('cd', 4).length <= test266151307()
            mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
            mem[64] = (164 * ('cd', 4).length) + 256
            if not ('cd', 4).length:
                idx = 0
                s = 0
                s = 0
                s = 0
                s = 0
                s = 0
                while uint32(idx) < ('cd', 4).length:
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1272 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1304 = mem[_1272]
                    require mem[_1272] == mem[_1272 + 18 len 14]
                    _1400 = mem[_1272 + 32]
                    require mem[_1272 + 32] == mem[_1272 + 50 len 14]
                    _1464 = mem[_1272 + 64]
                    require mem[_1272 + 64] == mem[_1272 + 92 len 4]
                    require uint32(idx) < ('cd', 4).length
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                            gas gas_remaining wei
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1720 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1752 = mem[_1720]
                    require mem[_1720] == mem[_1720 + 28 len 4]
                    require mem[_1720 + 32] == mem[_1720 + 60 len 4]
                    require uint32(idx) < ('cd', 4).length
                    require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                    require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                    staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1880 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1912 = mem[_1880]
                    require mem[_1880] == mem[_1880 + 28 len 4]
                    require uint32(idx) < mem[96]
                    mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1304)
                    require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                    mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1400)
                    require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                    mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1464)
                    require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                    mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1752)
                    require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                    mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1912)
                    idx = idx + 1
                    s = _1912
                    s = _1464
                    s = _1400
                    s = _1304
                    s = _1752
                    continue 
                _1080 = mem[64]
                mem[mem[64]] = 160
                _1112 = mem[96]
                mem[mem[64] + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + 192
                while idx < mem[96]:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * mem[96]) + 192
                _2136 = mem[(32 * ('cd', 4).length) + 128]
                mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
                idx = 0
                s = (32 * ('cd', 4).length) + 160
                t = mem[64] + (32 * mem[96]) + 224
                while idx < _2136:
                    mem[t] = mem[s + 18 len 14]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1080 + 64] = (32 * mem[96]) + (32 * _2136) + 224
                _2456 = mem[(64 * ('cd', 4).length) + 160]
                mem[_1080 + (32 * _1112) + (32 * _2136) + 224] = mem[(64 * ('cd', 4).length) + 160]
                idx = 0
                s = (64 * ('cd', 4).length) + 192
                t = _1080 + (32 * _1112) + (32 * _2136) + 256
                while idx < _2456:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1080 + 96] = (32 * _1112) + (32 * _2136) + (32 * _2456) + 256
                _2712 = mem[(98 * ('cd', 4).length) + 192]
                mem[_1080 + (32 * _1112) + (32 * _2136) + (32 * _2456) + 256] = mem[(98 * ('cd', 4).length) + 192]
                idx = 0
                s = (98 * ('cd', 4).length) + 224
                t = _1080 + (32 * _1112) + (32 * _2136) + (32 * _2456) + 288
                while idx < _2712:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1080 + 128] = (32 * _1112) + (32 * _2136) + (32 * _2456) + (32 * _2712) + 288
                _2904 = mem[(131 * ('cd', 4).length) + 224]
                mem[_1080 + (32 * _1112) + (32 * _2136) + (32 * _2456) + (32 * _2712) + 288] = mem[(131 * ('cd', 4).length) + 224]
                idx = 0
                s = (131 * ('cd', 4).length) + 256
                t = _1080 + (32 * _1112) + (32 * _2136) + (32 * _2456) + (32 * _2712) + 320
                while idx < _2904:
                    mem[t] = mem[s + 28 len 4]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1080 + (32 * _1112) + (32 * _2136) + (32 * _2456) + (32 * _2712) + (32 * _2904) + -mem[64] + 320
            mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            while uint32(idx) < ('cd', 4).length:
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1273 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1305 = mem[_1273]
                require mem[_1273] == mem[_1273 + 18 len 14]
                _1401 = mem[_1273 + 32]
                require mem[_1273 + 32] == mem[_1273 + 50 len 14]
                _1465 = mem[_1273 + 64]
                require mem[_1273 + 64] == mem[_1273 + 92 len 4]
                require uint32(idx) < ('cd', 4).length
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                        gas gas_remaining wei
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1721 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1753 = mem[_1721]
                require mem[_1721] == mem[_1721 + 28 len 4]
                require mem[_1721 + 32] == mem[_1721 + 60 len 4]
                require uint32(idx) < ('cd', 4).length
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1881 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1913 = mem[_1881]
                require mem[_1881] == mem[_1881 + 28 len 4]
                require uint32(idx) < mem[96]
                mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1305)
                require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1401)
                require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1465)
                require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1753)
                require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1913)
                idx = idx + 1
                s = _1913
                s = _1465
                s = _1401
                s = _1305
                s = _1753
                continue 
            _1081 = mem[64]
            mem[mem[64]] = 160
            _1113 = mem[96]
            mem[mem[64] + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < _1113:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1081 + 32] = (32 * _1113) + 192
            _2137 = mem[(32 * ('cd', 4).length) + 128]
            mem[_1081 + (32 * _1113) + 192] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = _1081 + (32 * _1113) + 224
            while idx < _2137:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1081 + 64] = (32 * _1113) + (32 * _2137) + 224
            _2457 = mem[(64 * ('cd', 4).length) + 160]
            mem[_1081 + (32 * _1113) + (32 * _2137) + 224] = mem[(64 * ('cd', 4).length) + 160]
            idx = 0
            s = (64 * ('cd', 4).length) + 192
            t = _1081 + (32 * _1113) + (32 * _2137) + 256
            while idx < _2457:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1081 + 96] = (32 * _1113) + (32 * _2137) + (32 * _2457) + 256
            _2713 = mem[(98 * ('cd', 4).length) + 192]
            mem[_1081 + (32 * _1113) + (32 * _2137) + (32 * _2457) + 256] = mem[(98 * ('cd', 4).length) + 192]
            idx = 0
            s = (98 * ('cd', 4).length) + 224
            t = _1081 + (32 * _1113) + (32 * _2137) + (32 * _2457) + 288
            while idx < _2713:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1081 + 128] = (32 * _1113) + (32 * _2137) + (32 * _2457) + (32 * _2713) + 288
            _2905 = mem[(131 * ('cd', 4).length) + 224]
            mem[_1081 + (32 * _1113) + (32 * _2137) + (32 * _2457) + (32 * _2713) + 288] = mem[(131 * ('cd', 4).length) + 224]
            idx = 0
            s = (131 * ('cd', 4).length) + 256
            t = _1081 + (32 * _1113) + (32 * _2137) + (32 * _2457) + (32 * _2713) + 320
            while idx < _2905:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1081 + (32 * _1113) + (32 * _2137) + (32 * _2457) + (32 * _2713) + (32 * _2905) + -mem[64] + 320
        mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        require ('cd', 4).length <= test266151307()
        mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
        mem[64] = (164 * ('cd', 4).length) + 256
        if not ('cd', 4).length:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            while uint32(idx) < ('cd', 4).length:
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1274 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1306 = mem[_1274]
                require mem[_1274] == mem[_1274 + 18 len 14]
                _1402 = mem[_1274 + 32]
                require mem[_1274 + 32] == mem[_1274 + 50 len 14]
                _1466 = mem[_1274 + 64]
                require mem[_1274 + 64] == mem[_1274 + 92 len 4]
                require uint32(idx) < ('cd', 4).length
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                        gas gas_remaining wei
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1722 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1754 = mem[_1722]
                require mem[_1722] == mem[_1722 + 28 len 4]
                require mem[_1722 + 32] == mem[_1722 + 60 len 4]
                require uint32(idx) < ('cd', 4).length
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1882 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1914 = mem[_1882]
                require mem[_1882] == mem[_1882 + 28 len 4]
                require uint32(idx) < mem[96]
                mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1306)
                require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1402)
                require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1466)
                require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1754)
                require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1914)
                idx = idx + 1
                s = _1914
                s = _1466
                s = _1402
                s = _1306
                s = _1754
                continue 
            _1082 = mem[64]
            mem[mem[64]] = 160
            _1114 = mem[96]
            mem[mem[64] + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < mem[96]:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            _2138 = mem[(32 * ('cd', 4).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = mem[64] + (32 * mem[96]) + 224
            while idx < _2138:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1082 + 64] = (32 * mem[96]) + (32 * _2138) + 224
            _2458 = mem[(64 * ('cd', 4).length) + 160]
            mem[_1082 + (32 * _1114) + (32 * _2138) + 224] = mem[(64 * ('cd', 4).length) + 160]
            idx = 0
            s = (64 * ('cd', 4).length) + 192
            t = _1082 + (32 * _1114) + (32 * _2138) + 256
            while idx < _2458:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1082 + 96] = (32 * _1114) + (32 * _2138) + (32 * _2458) + 256
            _2714 = mem[(98 * ('cd', 4).length) + 192]
            mem[_1082 + (32 * _1114) + (32 * _2138) + (32 * _2458) + 256] = mem[(98 * ('cd', 4).length) + 192]
            idx = 0
            s = (98 * ('cd', 4).length) + 224
            t = _1082 + (32 * _1114) + (32 * _2138) + (32 * _2458) + 288
            while idx < _2714:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1082 + 128] = (32 * _1114) + (32 * _2138) + (32 * _2458) + (32 * _2714) + 288
            _2906 = mem[(131 * ('cd', 4).length) + 224]
            mem[_1082 + (32 * _1114) + (32 * _2138) + (32 * _2458) + (32 * _2714) + 288] = mem[(131 * ('cd', 4).length) + 224]
            idx = 0
            s = (131 * ('cd', 4).length) + 256
            t = _1082 + (32 * _1114) + (32 * _2138) + (32 * _2458) + (32 * _2714) + 320
            while idx < _2906:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1082 + (32 * _1114) + (32 * _2138) + (32 * _2458) + (32 * _2714) + (32 * _2906) + -mem[64] + 320
        mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        while uint32(idx) < ('cd', 4).length:
            require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1275 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1307 = mem[_1275]
            require mem[_1275] == mem[_1275 + 18 len 14]
            _1403 = mem[_1275 + 32]
            require mem[_1275 + 32] == mem[_1275 + 50 len 14]
            _1467 = mem[_1275 + 64]
            require mem[_1275 + 64] == mem[_1275 + 92 len 4]
            require uint32(idx) < ('cd', 4).length
            require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                    gas gas_remaining wei
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1723 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1755 = mem[_1723]
            require mem[_1723] == mem[_1723 + 28 len 4]
            require mem[_1723 + 32] == mem[_1723 + 60 len 4]
            require uint32(idx) < ('cd', 4).length
            require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1883 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1915 = mem[_1883]
            require mem[_1883] == mem[_1883 + 28 len 4]
            require uint32(idx) < mem[96]
            mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1307)
            require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1403)
            require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1467)
            require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
            mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1755)
            require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1915)
            idx = idx + 1
            s = _1915
            s = _1467
            s = _1403
            s = _1307
            s = _1755
            continue 
        _1083 = mem[64]
        mem[mem[64]] = 160
        _1115 = mem[96]
        mem[mem[64] + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < mem[96]:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        _2139 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = mem[64] + (32 * mem[96]) + 224
        while idx < _2139:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1083 + 64] = (32 * mem[96]) + (32 * _2139) + 224
        _2459 = mem[(64 * ('cd', 4).length) + 160]
        mem[_1083 + (32 * _1115) + (32 * _2139) + 224] = mem[(64 * ('cd', 4).length) + 160]
        idx = 0
        s = (64 * ('cd', 4).length) + 192
        t = _1083 + (32 * _1115) + (32 * _2139) + 256
        while idx < _2459:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1083 + 96] = (32 * _1115) + (32 * _2139) + (32 * _2459) + 256
        _2715 = mem[(98 * ('cd', 4).length) + 192]
        mem[_1083 + (32 * _1115) + (32 * _2139) + (32 * _2459) + 256] = mem[(98 * ('cd', 4).length) + 192]
        idx = 0
        s = (98 * ('cd', 4).length) + 224
        t = _1083 + (32 * _1115) + (32 * _2139) + (32 * _2459) + 288
        while idx < _2715:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1083 + 128] = (32 * _1115) + (32 * _2139) + (32 * _2459) + (32 * _2715) + 288
        _2907 = mem[(131 * ('cd', 4).length) + 224]
        mem[_1083 + (32 * _1115) + (32 * _2139) + (32 * _2459) + (32 * _2715) + 288] = mem[(131 * ('cd', 4).length) + 224]
        idx = 0
        s = (131 * ('cd', 4).length) + 256
        t = _1083 + (32 * _1115) + (32 * _2139) + (32 * _2459) + (32 * _2715) + 320
        while idx < _2907:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1083 + (32 * _1115) + (32 * _2139) + (32 * _2459) + (32 * _2715) + (32 * _2907) + -mem[64] + 320
    mem[(64 * ('cd', 4).length) + 192 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    require ('cd', 4).length <= test266151307()
    mem[(98 * ('cd', 4).length) + 192] = ('cd', 4).length
    if not ('cd', 4).length:
        require ('cd', 4).length <= test266151307()
        mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
        mem[64] = (164 * ('cd', 4).length) + 256
        if not ('cd', 4).length:
            idx = 0
            s = 0
            s = 0
            s = 0
            s = 0
            s = 0
            while uint32(idx) < ('cd', 4).length:
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1276 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1308 = mem[_1276]
                require mem[_1276] == mem[_1276 + 18 len 14]
                _1404 = mem[_1276 + 32]
                require mem[_1276 + 32] == mem[_1276 + 50 len 14]
                _1468 = mem[_1276 + 64]
                require mem[_1276 + 64] == mem[_1276 + 92 len 4]
                require uint32(idx) < ('cd', 4).length
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                        gas gas_remaining wei
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1724 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _1756 = mem[_1724]
                require mem[_1724] == mem[_1724 + 28 len 4]
                require mem[_1724 + 32] == mem[_1724 + 60 len 4]
                require uint32(idx) < ('cd', 4).length
                require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
                require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
                staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1884 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1916 = mem[_1884]
                require mem[_1884] == mem[_1884 + 28 len 4]
                require uint32(idx) < mem[96]
                mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1308)
                require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
                mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1404)
                require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
                mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1468)
                require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
                mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1756)
                require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
                mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1916)
                idx = idx + 1
                s = _1916
                s = _1468
                s = _1404
                s = _1308
                s = _1756
                continue 
            _1084 = mem[64]
            mem[mem[64]] = 160
            _1116 = mem[96]
            mem[mem[64] + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 192
            while idx < mem[96]:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * mem[96]) + 192
            _2140 = mem[(32 * ('cd', 4).length) + 128]
            mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
            idx = 0
            s = (32 * ('cd', 4).length) + 160
            t = mem[64] + (32 * mem[96]) + 224
            while idx < _2140:
                mem[t] = mem[s + 18 len 14]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2140) + 224
            _2460 = mem[(64 * ('cd', 4).length) + 160]
            mem[mem[64] + (32 * mem[96]) + (32 * _2140) + 224] = mem[(64 * ('cd', 4).length) + 160]
            idx = 0
            s = (64 * ('cd', 4).length) + 192
            t = mem[64] + (32 * mem[96]) + (32 * _2140) + 256
            while idx < _2460:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 96] = (32 * mem[96]) + (32 * _2140) + (32 * _2460) + 256
            _2716 = mem[(98 * ('cd', 4).length) + 192]
            mem[mem[64] + (32 * mem[96]) + (32 * _2140) + (32 * _2460) + 256] = mem[(98 * ('cd', 4).length) + 192]
            idx = 0
            s = (98 * ('cd', 4).length) + 224
            t = mem[64] + (32 * mem[96]) + (32 * _2140) + (32 * _2460) + 288
            while idx < _2716:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1084 + 128] = (32 * _1116) + (32 * _2140) + (32 * _2460) + (32 * _2716) + 288
            _2908 = mem[(131 * ('cd', 4).length) + 224]
            mem[_1084 + (32 * _1116) + (32 * _2140) + (32 * _2460) + (32 * _2716) + 288] = mem[(131 * ('cd', 4).length) + 224]
            idx = 0
            s = (131 * ('cd', 4).length) + 256
            t = _1084 + (32 * _1116) + (32 * _2140) + (32 * _2460) + (32 * _2716) + 320
            while idx < _2908:
                mem[t] = mem[s + 28 len 4]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _1084 + (32 * _1116) + (32 * _2140) + (32 * _2460) + (32 * _2716) + (32 * _2908) + -mem[64] + 320
        mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        while uint32(idx) < ('cd', 4).length:
            require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1277 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1309 = mem[_1277]
            require mem[_1277] == mem[_1277 + 18 len 14]
            _1405 = mem[_1277 + 32]
            require mem[_1277 + 32] == mem[_1277 + 50 len 14]
            _1469 = mem[_1277 + 64]
            require mem[_1277 + 64] == mem[_1277 + 92 len 4]
            require uint32(idx) < ('cd', 4).length
            require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                    gas gas_remaining wei
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1725 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1757 = mem[_1725]
            require mem[_1725] == mem[_1725 + 28 len 4]
            require mem[_1725 + 32] == mem[_1725 + 60 len 4]
            require uint32(idx) < ('cd', 4).length
            require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1885 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1917 = mem[_1885]
            require mem[_1885] == mem[_1885 + 28 len 4]
            require uint32(idx) < mem[96]
            mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1309)
            require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1405)
            require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1469)
            require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
            mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1757)
            require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1917)
            idx = idx + 1
            s = _1917
            s = _1469
            s = _1405
            s = _1309
            s = _1757
            continue 
        _1085 = mem[64]
        mem[mem[64]] = 160
        _1117 = mem[96]
        mem[mem[64] + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < mem[96]:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        _2141 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = mem[64] + (32 * mem[96]) + 224
        while idx < _2141:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2141) + 224
        _2461 = mem[(64 * ('cd', 4).length) + 160]
        mem[mem[64] + (32 * mem[96]) + (32 * _2141) + 224] = mem[(64 * ('cd', 4).length) + 160]
        idx = 0
        s = (64 * ('cd', 4).length) + 192
        t = mem[64] + (32 * mem[96]) + (32 * _2141) + 256
        while idx < _2461:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 96] = (32 * mem[96]) + (32 * _2141) + (32 * _2461) + 256
        _2717 = mem[(98 * ('cd', 4).length) + 192]
        mem[mem[64] + (32 * mem[96]) + (32 * _2141) + (32 * _2461) + 256] = mem[(98 * ('cd', 4).length) + 192]
        idx = 0
        s = (98 * ('cd', 4).length) + 224
        t = mem[64] + (32 * mem[96]) + (32 * _2141) + (32 * _2461) + 288
        while idx < _2717:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1085 + 128] = (32 * _1117) + (32 * _2141) + (32 * _2461) + (32 * _2717) + 288
        _2909 = mem[(131 * ('cd', 4).length) + 224]
        mem[_1085 + (32 * _1117) + (32 * _2141) + (32 * _2461) + (32 * _2717) + 288] = mem[(131 * ('cd', 4).length) + 224]
        idx = 0
        s = (131 * ('cd', 4).length) + 256
        t = _1085 + (32 * _1117) + (32 * _2141) + (32 * _2461) + (32 * _2717) + 320
        while idx < _2909:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1085 + (32 * _1117) + (32 * _2141) + (32 * _2461) + (32 * _2717) + (32 * _2909) + -mem[64] + 320
    mem[(98 * ('cd', 4).length) + 224 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    require ('cd', 4).length <= test266151307()
    mem[(131 * ('cd', 4).length) + 224] = ('cd', 4).length
    mem[64] = (164 * ('cd', 4).length) + 256
    if not ('cd', 4).length:
        idx = 0
        s = 0
        s = 0
        s = 0
        s = 0
        s = 0
        while uint32(idx) < ('cd', 4).length:
            require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1278 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1310 = mem[_1278]
            require mem[_1278] == mem[_1278 + 18 len 14]
            _1406 = mem[_1278 + 32]
            require mem[_1278 + 32] == mem[_1278 + 50 len 14]
            _1470 = mem[_1278 + 64]
            require mem[_1278 + 64] == mem[_1278 + 92 len 4]
            require uint32(idx) < ('cd', 4).length
            require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                    gas gas_remaining wei
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1726 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1758 = mem[_1726]
            require mem[_1726] == mem[_1726 + 28 len 4]
            require mem[_1726 + 32] == mem[_1726 + 60 len 4]
            require uint32(idx) < ('cd', 4).length
            require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
            require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
            staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1886 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1918 = mem[_1886]
            require mem[_1886] == mem[_1886 + 28 len 4]
            require uint32(idx) < mem[96]
            mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1310)
            require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1406)
            require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
            mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1470)
            require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
            mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1758)
            require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
            mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1918)
            idx = idx + 1
            s = _1918
            s = _1470
            s = _1406
            s = _1310
            s = _1758
            continue 
        _1086 = mem[64]
        mem[mem[64]] = 160
        _1118 = mem[96]
        mem[mem[64] + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 192
        while idx < mem[96]:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * mem[96]) + 192
        _2142 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = mem[64] + (32 * mem[96]) + 224
        while idx < _2142:
            mem[t] = mem[s + 18 len 14]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1086 + 64] = (32 * mem[96]) + (32 * _2142) + 224
        _2462 = mem[(64 * ('cd', 4).length) + 160]
        mem[_1086 + (32 * _1118) + (32 * _2142) + 224] = mem[(64 * ('cd', 4).length) + 160]
        idx = 0
        s = (64 * ('cd', 4).length) + 192
        t = _1086 + (32 * _1118) + (32 * _2142) + 256
        while idx < _2462:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1086 + 96] = (32 * _1118) + (32 * _2142) + (32 * _2462) + 256
        _2718 = mem[(98 * ('cd', 4).length) + 192]
        mem[_1086 + (32 * _1118) + (32 * _2142) + (32 * _2462) + 256] = mem[(98 * ('cd', 4).length) + 192]
        idx = 0
        s = (98 * ('cd', 4).length) + 224
        t = _1086 + (32 * _1118) + (32 * _2142) + (32 * _2462) + 288
        while idx < _2718:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1086 + 128] = (32 * _1118) + (32 * _2142) + (32 * _2462) + (32 * _2718) + 288
        _2910 = mem[(131 * ('cd', 4).length) + 224]
        mem[_1086 + (32 * _1118) + (32 * _2142) + (32 * _2462) + (32 * _2718) + 288] = mem[(131 * ('cd', 4).length) + 224]
        idx = 0
        s = (131 * ('cd', 4).length) + 256
        t = _1086 + (32 * _1118) + (32 * _2142) + (32 * _2462) + (32 * _2718) + 320
        while idx < _2910:
            mem[t] = mem[s + 28 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _1086 + (32 * _1118) + (32 * _2142) + (32 * _2462) + (32 * _2718) + (32 * _2910) + -mem[64] + 320
    mem[(131 * ('cd', 4).length) + 256 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    while uint32(idx) < ('cd', 4).length:
        require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
        require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
        staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1279 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1311 = mem[_1279]
        require mem[_1279] == mem[_1279 + 18 len 14]
        _1407 = mem[_1279 + 32]
        require mem[_1279 + 32] == mem[_1279 + 50 len 14]
        _1471 = mem[_1279 + 64]
        require mem[_1279 + 64] == mem[_1279 + 92 len 4]
        require uint32(idx) < ('cd', 4).length
        require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
        require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
        staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getTokenWeights() with:
                gas gas_remaining wei
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1727 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1759 = mem[_1727]
        require mem[_1727] == mem[_1727 + 28 len 4]
        require mem[_1727 + 32] == mem[_1727 + 60 len 4]
        require uint32(idx) < ('cd', 4).length
        require cd[((32 * uint32(idx)) + cd[4] + 36)] == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
        require ext_code.size(address(cd[((32 * uint32(idx)) + cd[4] + 36)]))
        staticcall address(cd[((32 * uint32(idx)) + cd[4] + 36)]).getSwapFee() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1887 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1919 = mem[_1887]
        require mem[_1887] == mem[_1887 + 28 len 4]
        require uint32(idx) < mem[96]
        mem[(32 * uint32(idx)) + 128] = Mask(112, 0, _1311)
        require uint32(idx) < mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * uint32(idx)) + (32 * ('cd', 4).length) + 160] = Mask(112, 0, _1407)
        require uint32(idx) < mem[(64 * ('cd', 4).length) + 160]
        mem[(32 * uint32(idx)) + (64 * ('cd', 4).length) + 192] = uint32(_1471)
        require uint32(idx) < mem[(98 * ('cd', 4).length) + 192]
        mem[(32 * uint32(idx)) + (98 * ('cd', 4).length) + 224] = uint32(_1759)
        require uint32(idx) < mem[(131 * ('cd', 4).length) + 224]
        mem[(32 * uint32(idx)) + (131 * ('cd', 4).length) + 256] = uint32(_1919)
        idx = idx + 1
        s = _1919
        s = _1471
        s = _1407
        s = _1311
        s = _1759
        continue 
    _1087 = mem[64]
    mem[mem[64]] = 160
    _1119 = mem[96]
    mem[mem[64] + 160] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 192
    while idx < mem[96]:
        mem[t] = mem[s + 18 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = (32 * mem[96]) + 192
    _2143 = mem[(32 * ('cd', 4).length) + 128]
    mem[mem[64] + (32 * mem[96]) + 192] = mem[(32 * ('cd', 4).length) + 128]
    idx = 0
    s = (32 * ('cd', 4).length) + 160
    t = mem[64] + (32 * mem[96]) + 224
    while idx < _2143:
        mem[t] = mem[s + 18 len 14]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 64] = (32 * mem[96]) + (32 * _2143) + 224
    _2463 = mem[(64 * ('cd', 4).length) + 160]
    mem[mem[64] + (32 * mem[96]) + (32 * _2143) + 224] = mem[(64 * ('cd', 4).length) + 160]
    idx = 0
    s = (64 * ('cd', 4).length) + 192
    t = mem[64] + (32 * mem[96]) + (32 * _2143) + 256
    while idx < _2463:
        mem[t] = mem[s + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 96] = (32 * mem[96]) + (32 * _2143) + (32 * _2463) + 256
    _2719 = mem[(98 * ('cd', 4).length) + 192]
    mem[mem[64] + (32 * mem[96]) + (32 * _2143) + (32 * _2463) + 256] = mem[(98 * ('cd', 4).length) + 192]
    idx = 0
    s = (98 * ('cd', 4).length) + 224
    t = mem[64] + (32 * mem[96]) + (32 * _2143) + (32 * _2463) + 288
    while idx < _2719:
        mem[t] = mem[s + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1087 + 128] = (32 * _1119) + (32 * _2143) + (32 * _2463) + (32 * _2719) + 288
    _2911 = mem[(131 * ('cd', 4).length) + 224]
    mem[_1087 + (32 * _1119) + (32 * _2143) + (32 * _2463) + (32 * _2719) + 288] = mem[(131 * ('cd', 4).length) + 224]
    idx = 0
    s = (131 * ('cd', 4).length) + 256
    t = _1087 + (32 * _1119) + (32 * _2143) + (32 * _2463) + (32 * _2719) + 320
    while idx < _2911:
        mem[t] = mem[s + 28 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _1087 + (32 * _1119) + (32 * _2143) + (32 * _2463) + (32 * _2719) + (32 * _2911) + -mem[64] + 320
}



}
