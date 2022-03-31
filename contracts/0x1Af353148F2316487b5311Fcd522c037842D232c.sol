contract main {




// =====================  Runtime code  =====================


#
#  - pollPools(address arg1, uint256[] arg2)
#
address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function findPools(address arg1, uint256[] arg2) payable {
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
        mem[mem[64] + 36] = arg1
        require ext_code.size(stor0)
        staticcall stor0.0x93f1a40b with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg2 + 36)], arg1
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _52 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        if not mem[_52]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    require s <= test266151307()
    _46 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + (32 * s) + 32
    if not s:
        idx = 0
        s = 0
        while idx < arg2.length:
            mem[mem[64] + 36] = arg1
            require ext_code.size(stor0)
            staticcall stor0.0x93f1a40b with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg2 + 36)], arg1
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _142 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            if not mem[_142]:
                idx = idx + 1
                s = s
                continue 
            require idx < arg2.length
            require s < mem[_46]
            mem[mem[(32 * s) + _46 + 32]] = cd[((32 * idx) + arg2 + 36)]
            require idx < arg2.length
            require ext_code.size(stor0)
            staticcall stor0.0x1526fe27 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg2 + 36)]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _165 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _168 = mem[_165]
            require mem[_165] == mem[_165 + 12 len 20]
            _170 = mem[_165 + 32]
            require s < mem[_46]
            mem[mem[(32 * s) + _46 + 32] + 32] = mem[_165 + 12 len 20]
            require s < mem[_46]
            mem[mem[(32 * s) + _46 + 32] + 64] = _170
            require ext_code.size(address(_168))
            staticcall address(_168).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _181 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_181] == mem[_181 + 12 len 20]
            require s < mem[_46]
            mem[mem[(32 * s) + _46 + 32] + 96] = mem[_181 + 12 len 20]
            require ext_code.size(address(_168))
            staticcall address(_168).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _198 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_198] == mem[_198 + 12 len 20]
            require s < mem[_46]
            mem[mem[(32 * s) + _46 + 32] + 128] = mem[_198 + 12 len 20]
            idx = idx + 1
            s = s + 1
            continue 
        _132 = mem[64]
        mem[mem[64]] = 32
        _134 = mem[_46]
        mem[mem[64] + 32] = mem[_46]
        idx = 0
        s = _46 + 32
        t = mem[64] + 64
        while idx < _134:
            _211 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_211 + 44 len 20]
            mem[t + 64] = mem[_211 + 64]
            mem[t + 96] = mem[_211 + 108 len 20]
            mem[t + 128] = mem[_211 + 140 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _132 + (160 * _134) + -mem[64] + 64
    mem[64] = _46 + (32 * s) + 192
    mem[_46 + (32 * s) + 32] = 0
    mem[_46 + (32 * s) + 64] = 0
    mem[_46 + (32 * s) + 96] = 0
    mem[_46 + (32 * s) + 128] = 0
    mem[_46 + (32 * s) + 160] = 0
    mem[var23001] = _46 + (32 * s) + 32
    t = var23001
    idx = var23002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[_46 + (32 * s) + 32] = 0
        mem[_46 + (32 * s) + 64] = 0
        mem[_46 + (32 * s) + 96] = 0
        mem[_46 + (32 * s) + 128] = 0
        mem[_46 + (32 * s) + 160] = 0
        mem[t + 32] = _46 + (32 * s) + 32
        t = t + 32
        idx = idx - 1
        continue 
    idx = 0
    s = 0
    while idx < arg2.length:
        mem[mem[64] + 36] = arg1
        require ext_code.size(stor0)
        staticcall stor0.0x93f1a40b with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg2 + 36)], arg1
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _267 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        if not mem[_267]:
            idx = idx + 1
            s = s
            continue 
        require idx < arg2.length
        require s < mem[_46]
        mem[mem[(32 * s) + _46 + 32]] = cd[((32 * idx) + arg2 + 36)]
        require idx < arg2.length
        require ext_code.size(stor0)
        staticcall stor0.0x1526fe27 with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg2 + 36)]
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _275 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _276 = mem[_275]
        require mem[_275] == mem[_275 + 12 len 20]
        _277 = mem[_275 + 32]
        require s < mem[_46]
        mem[mem[(32 * s) + _46 + 32] + 32] = mem[_275 + 12 len 20]
        require s < mem[_46]
        mem[mem[(32 * s) + _46 + 32] + 64] = _277
        require ext_code.size(address(_276))
        staticcall address(_276).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _286 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_286] == mem[_286 + 12 len 20]
        require s < mem[_46]
        mem[mem[(32 * s) + _46 + 32] + 96] = mem[_286 + 12 len 20]
        require ext_code.size(address(_276))
        staticcall address(_276).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _292 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_292] == mem[_292 + 12 len 20]
        require s < mem[_46]
        mem[mem[(32 * s) + _46 + 32] + 128] = mem[_292 + 12 len 20]
        idx = idx + 1
        s = s + 1
        continue 
    _257 = mem[64]
    mem[mem[64]] = 32
    _259 = mem[_46]
    mem[mem[64] + 32] = mem[_46]
    idx = 0
    s = _46 + 32
    t = mem[64] + 64
    while idx < _259:
        _296 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_296 + 44 len 20]
        mem[t + 64] = mem[_296 + 64]
        mem[t + 96] = mem[_296 + 108 len 20]
        mem[t + 128] = mem[_296 + 140 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _257 + (160 * _259) + -mem[64] + 64
}

function getPools(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = 0
    mem[128] = 0
    require ext_code.size(stor0)
    staticcall stor0.0x17caf6f1 with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = ext_call.return_data[0]
    require ext_code.size(stor0)
    staticcall stor0.poolLength() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = ext_call.return_data[0]
    require arg1.length <= test266151307()
    mem[(2 * ceil32(return_data.size)) + 224] = arg1.length
    mem[64] = (2 * ceil32(return_data.size)) + (32 * arg1.length) + 256
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[(2 * ceil32(return_data.size)) + 224]
            mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256]] = cd[((32 * idx) + arg1 + 36)]
            require idx < arg1.length
            require ext_code.size(stor0)
            staticcall stor0.0x1526fe27 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg1 + 36)]
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _101 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _108 = mem[_101]
            require mem[_101] == mem[_101 + 12 len 20]
            _117 = mem[_101 + 32]
            require idx < mem[(2 * ceil32(return_data.size)) + 224]
            mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] + 32] = mem[_101 + 12 len 20]
            require idx < mem[(2 * ceil32(return_data.size)) + 224]
            mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] + 64] = _117
            require ext_code.size(address(_108))
            staticcall address(_108).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _129 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_129] == mem[_129 + 12 len 20]
            require idx < mem[(2 * ceil32(return_data.size)) + 224]
            mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] + 96] = mem[_129 + 12 len 20]
            require ext_code.size(address(_108))
            staticcall address(_108).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _146 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_146] == mem[_146 + 12 len 20]
            require idx < mem[(2 * ceil32(return_data.size)) + 224]
            mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] + 128] = mem[_146 + 12 len 20]
            idx = idx + 1
            continue 
        _87 = mem[64]
        mem[mem[64]] = mem[160]
        mem[mem[64] + 32] = mem[192]
        mem[mem[64] + 64] = 96
        _92 = mem[(2 * ceil32(return_data.size)) + 224]
        mem[mem[64] + 96] = mem[(2 * ceil32(return_data.size)) + 224]
        idx = 0
        s = (2 * ceil32(return_data.size)) + 256
        t = mem[64] + 128
        while idx < _92:
            _159 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_159 + 44 len 20]
            mem[t + 64] = mem[_159 + 64]
            mem[t + 96] = mem[_159 + 108 len 20]
            mem[t + 128] = mem[_159 + 140 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _87 + (160 * _92) + -mem[64] + 128
    mem[64] = (2 * ceil32(return_data.size)) + (32 * arg1.length) + 416
    mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 256] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 288] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 320] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 352] = 0
    mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 384] = 0
    mem[var31001] = (2 * ceil32(return_data.size)) + (32 * arg1.length) + 256
    s = var31001
    idx = var31002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 256] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 288] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 320] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 352] = 0
        mem[(2 * ceil32(return_data.size)) + (32 * arg1.length) + 384] = 0
        mem[s + 32] = (2 * ceil32(return_data.size)) + (32 * arg1.length) + 256
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < mem[(2 * ceil32(return_data.size)) + 224]
        mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256]] = cd[((32 * idx) + arg1 + 36)]
        require idx < arg1.length
        require ext_code.size(stor0)
        staticcall stor0.0x1526fe27 with:
                gas gas_remaining wei
               args cd[((32 * idx) + arg1 + 36)]
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _216 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _218 = mem[_216]
        require mem[_216] == mem[_216 + 12 len 20]
        _219 = mem[_216 + 32]
        require idx < mem[(2 * ceil32(return_data.size)) + 224]
        mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] + 32] = mem[_216 + 12 len 20]
        require idx < mem[(2 * ceil32(return_data.size)) + 224]
        mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] + 64] = _219
        require ext_code.size(address(_218))
        staticcall address(_218).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _228 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_228] == mem[_228 + 12 len 20]
        require idx < mem[(2 * ceil32(return_data.size)) + 224]
        mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] + 96] = mem[_228 + 12 len 20]
        require ext_code.size(address(_218))
        staticcall address(_218).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _234 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_234] == mem[_234 + 12 len 20]
        require idx < mem[(2 * ceil32(return_data.size)) + 224]
        mem[mem[(32 * idx) + (2 * ceil32(return_data.size)) + 256] + 128] = mem[_234 + 12 len 20]
        idx = idx + 1
        continue 
    _203 = mem[64]
    mem[mem[64]] = mem[160]
    mem[mem[64] + 32] = mem[192]
    mem[mem[64] + 64] = 96
    _208 = mem[(2 * ceil32(return_data.size)) + 224]
    mem[mem[64] + 96] = mem[(2 * ceil32(return_data.size)) + 224]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 256
    t = mem[64] + 128
    while idx < _208:
        _238 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_238 + 44 len 20]
        mem[t + 64] = mem[_238 + 64]
        mem[t + 96] = mem[_238 + 108 len 20]
        mem[t + 128] = mem[_238 + 140 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _203 + (160 * _208) + -mem[64] + 128
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
            _118 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_118] == mem[_118 + 12 len 20]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 32] = mem[_118 + 12 len 20]
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            staticcall address(cd[((32 * idx) + arg2 + 36)]).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _136 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_136] == mem[_136 + 12 len 20]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 64] = mem[_136 + 12 len 20]
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            staticcall address(cd[((32 * idx) + arg2 + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _148 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_148] == mem[_148 + 18 len 14]
            _154 = mem[_148 + 32]
            require mem[_148 + 32] == mem[_148 + 50 len 14]
            require mem[_148 + 64] == mem[_148 + 92 len 4]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 96] = mem[_148 + 18 len 14]
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 128] = Mask(112, 0, _154)
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            staticcall address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _167 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 192] = mem[_167]
            require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
            staticcall address(cd[((32 * idx) + arg2 + 36)]).0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _179 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 160] = mem[_179]
            idx = idx + 1
            continue 
        _98 = mem[64]
        mem[mem[64]] = 32
        _99 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _99:
            _193 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_193 + 44 len 20]
            mem[t + 64] = mem[_193 + 76 len 20]
            mem[t + 96] = mem[_193 + 96]
            mem[t + 128] = mem[_193 + 128]
            mem[t + 160] = mem[_193 + 160]
            mem[t + 192] = mem[_193 + 192]
            idx = idx + 1
            s = s + 32
            t = t + 224
            continue 
        return memory
          from mem[64]
           len _98 + (224 * _99) + -mem[64] + 64
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
        _264 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_264] == mem[_264 + 12 len 20]
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 32] = mem[_264 + 12 len 20]
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        staticcall address(cd[((32 * idx) + arg2 + 36)]).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _270 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_270] == mem[_270 + 12 len 20]
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 64] = mem[_270 + 12 len 20]
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        staticcall address(cd[((32 * idx) + arg2 + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _276 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_276] == mem[_276 + 18 len 14]
        _278 = mem[_276 + 32]
        require mem[_276 + 32] == mem[_276 + 50 len 14]
        require mem[_276 + 64] == mem[_276 + 92 len 4]
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 96] = mem[_276 + 18 len 14]
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 128] = Mask(112, 0, _278)
        mem[mem[64] + 4] = arg1
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        staticcall address(cd[((32 * idx) + arg2 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _286 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 192] = mem[_286]
        require ext_code.size(address(cd[((32 * idx) + arg2 + 36)]))
        staticcall address(cd[((32 * idx) + arg2 + 36)]).0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _292 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require idx < mem[96]
        mem[mem[(32 * idx) + 128] + 160] = mem[_292]
        idx = idx + 1
        continue 
    _249 = mem[64]
    mem[mem[64]] = 32
    _250 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _250:
        _296 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_296 + 44 len 20]
        mem[t + 64] = mem[_296 + 76 len 20]
        mem[t + 96] = mem[_296 + 96]
        mem[t + 128] = mem[_296 + 128]
        mem[t + 160] = mem[_296 + 160]
        mem[t + 192] = mem[_296 + 192]
        idx = idx + 1
        s = s + 32
        t = t + 224
        continue 
    return memory
      from mem[64]
       len _249 + (224 * _250) + -mem[64] + 64
}

function getAVAXRate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 == arg1:
        return 10^18
    else:
        require ext_code.size(stor1)
        staticcall stor1.0xe6a43905 with:
                gas gas_remaining wei
               args address(arg1), stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stor2)
            staticcall stor2.0xe6a43905 with:
                    gas gas_remaining wei
                   args address(arg1), stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if address(ext_call.return_data[0]):
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).getReserves() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        if not address(ext_call.return_data[0]):
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if ext_call.return_data[12 len 20] != stor3:
                                    if Mask(112, 0, ext_call.return_data[0]):
                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            else:
                                                require Mask(112, 0, ext_call.return_data[32])
                                                return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                    else:
                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        else:
                                            require Mask(112, 0, ext_call.return_data[32])
                                            return (0 / Mask(112, 0, ext_call.return_data[32]))
                                else:
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        else:
                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            else:
                                                require Mask(112, 0, ext_call.return_data[0])
                                                return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                    else:
                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        else:
                                            require Mask(112, 0, ext_call.return_data[0])
                                            return (0 / Mask(112, 0, ext_call.return_data[0]))
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if not address(ext_call.return_data[0]):
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] != stor3:
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    else:
                                                        require Mask(112, 0, ext_call.return_data[32])
                                                        return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                else:
                                                    require Mask(112, 0, ext_call.return_data[32])
                                                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                                        else:
                                            if Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    else:
                                                        require Mask(112, 0, ext_call.return_data[0])
                                                        return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                else:
                                                    require Mask(112, 0, ext_call.return_data[0])
                                                    return (0 / Mask(112, 0, ext_call.return_data[0]))
                                else:
                                    if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[18 len 14]:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] != stor3:
                                                if Mask(112, 0, ext_call.return_data[0]):
                                                    if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        else:
                                                            require Mask(112, 0, ext_call.return_data[32])
                                                            return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                                else:
                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    else:
                                                        require Mask(112, 0, ext_call.return_data[32])
                                                        return (0 / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if Mask(112, 0, ext_call.return_data[32]):
                                                    if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        else:
                                                            require Mask(112, 0, ext_call.return_data[0])
                                                            return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                                else:
                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    else:
                                                        require Mask(112, 0, ext_call.return_data[0])
                                                        return (0 / Mask(112, 0, ext_call.return_data[0]))
                                    else:
                                        if Mask(112, 0, ext_call.return_data[32]) <= ext_call.return_data[50 len 14]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if ext_call.return_data[12 len 20] != stor3:
                                                    if Mask(112, 0, ext_call.return_data[0]):
                                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            else:
                                                                require Mask(112, 0, ext_call.return_data[32])
                                                                return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        else:
                                                            require Mask(112, 0, ext_call.return_data[32])
                                                            return (0 / Mask(112, 0, ext_call.return_data[32]))
                                                else:
                                                    if Mask(112, 0, ext_call.return_data[32]):
                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            else:
                                                                require Mask(112, 0, ext_call.return_data[0])
                                                                return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        else:
                                                            require Mask(112, 0, ext_call.return_data[0])
                                                            return (0 / Mask(112, 0, ext_call.return_data[0]))
                                        else:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if ext_call.return_data[12 len 20] != stor3:
                                                    if Mask(112, 0, ext_call.return_data[0]):
                                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            else:
                                                                require Mask(112, 0, ext_call.return_data[32])
                                                                return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        else:
                                                            require Mask(112, 0, ext_call.return_data[32])
                                                            return (0 / Mask(112, 0, ext_call.return_data[32]))
                                                else:
                                                    if Mask(112, 0, ext_call.return_data[32]):
                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            else:
                                                                require Mask(112, 0, ext_call.return_data[0])
                                                                return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        else:
                                                            require Mask(112, 0, ext_call.return_data[0])
                                                            return (0 / Mask(112, 0, ext_call.return_data[0]))
                else:
                    if ext_call.return_data[12 len 20]:
                        if not address(ext_call.return_data[0]):
                            if not ext_call.return_data[12 len 20]:
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if ext_call.return_data[12 len 20] == stor3:
                                        revert with 0, 'SafeMath: division by zero'
                                    else:
                                        revert with 0, 'SafeMath: division by zero'
                            else:
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReserves() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 96
                                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                    if not address(ext_call.return_data[0]):
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).token0() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            if ext_call.return_data[12 len 20] == stor3:
                                                revert with 0, 'SafeMath: division by zero'
                                            else:
                                                revert with 0, 'SafeMath: division by zero'
                                    else:
                                        if 0 > ext_call.return_data[18 len 14]:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if ext_call.return_data[12 len 20] == stor3:
                                                    revert with 0, 'SafeMath: division by zero'
                                                else:
                                                    revert with 0, 'SafeMath: division by zero'
                                        else:
                                            if 0 <= ext_call.return_data[50 len 14]:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != stor3:
                                                        if Mask(112, 0, ext_call.return_data[0]):
                                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require Mask(112, 0, ext_call.return_data[32])
                                                                    return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            else:
                                                                require Mask(112, 0, ext_call.return_data[32])
                                                                return (0 / Mask(112, 0, ext_call.return_data[32]))
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[32]):
                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require Mask(112, 0, ext_call.return_data[0])
                                                                    return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            else:
                                                                require Mask(112, 0, ext_call.return_data[0])
                                                                return (0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] == stor3:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    else:
                                                        revert with 0, 'SafeMath: division by zero'
                        else:
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getReserves() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 96
                                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                if not address(ext_call.return_data[0]):
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if ext_call.return_data[12 len 20] != stor3:
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    else:
                                                        require Mask(112, 0, ext_call.return_data[32])
                                                        return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                            else:
                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                else:
                                                    require Mask(112, 0, ext_call.return_data[32])
                                                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                                        else:
                                            if Mask(112, 0, ext_call.return_data[32]):
                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                else:
                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    else:
                                                        require Mask(112, 0, ext_call.return_data[0])
                                                        return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                else:
                                                    require Mask(112, 0, ext_call.return_data[0])
                                                    return (0 / Mask(112, 0, ext_call.return_data[0]))
                                else:
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReserves() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 96
                                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                                        if not address(ext_call.return_data[0]):
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).token0() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                if ext_call.return_data[12 len 20] != stor3:
                                                    if Mask(112, 0, ext_call.return_data[0]):
                                                        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            else:
                                                                require Mask(112, 0, ext_call.return_data[32])
                                                                return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        else:
                                                            require Mask(112, 0, ext_call.return_data[32])
                                                            return (0 / Mask(112, 0, ext_call.return_data[32]))
                                                else:
                                                    if Mask(112, 0, ext_call.return_data[32]):
                                                        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                            revert with 0, 'SafeMath: multiplication overflow'
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            else:
                                                                require Mask(112, 0, ext_call.return_data[0])
                                                                return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        else:
                                                            require Mask(112, 0, ext_call.return_data[0])
                                                            return (0 / Mask(112, 0, ext_call.return_data[0]))
                                        else:
                                            if Mask(112, 0, ext_call.return_data[0]) > ext_call.return_data[18 len 14]:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).token0() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    if ext_call.return_data[12 len 20] != stor3:
                                                        if Mask(112, 0, ext_call.return_data[0]):
                                                            if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require Mask(112, 0, ext_call.return_data[32])
                                                                    return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            else:
                                                                require Mask(112, 0, ext_call.return_data[32])
                                                                return (0 / Mask(112, 0, ext_call.return_data[32]))
                                                    else:
                                                        if Mask(112, 0, ext_call.return_data[32]):
                                                            if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                                revert with 0, 'SafeMath: multiplication overflow'
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require Mask(112, 0, ext_call.return_data[0])
                                                                    return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            else:
                                                                require Mask(112, 0, ext_call.return_data[0])
                                                                return (0 / Mask(112, 0, ext_call.return_data[0]))
                                            else:
                                                if Mask(112, 0, ext_call.return_data[32]) <= ext_call.return_data[50 len 14]:
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != stor3:
                                                            if Mask(112, 0, ext_call.return_data[0]):
                                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    else:
                                                                        require Mask(112, 0, ext_call.return_data[32])
                                                                        return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require Mask(112, 0, ext_call.return_data[32])
                                                                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[32]):
                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    else:
                                                                        require Mask(112, 0, ext_call.return_data[0])
                                                                        return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require Mask(112, 0, ext_call.return_data[0])
                                                                    return (0 / Mask(112, 0, ext_call.return_data[0]))
                                                else:
                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                    staticcall address(ext_call.return_data[0]).token0() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                        if ext_call.return_data[12 len 20] != stor3:
                                                            if Mask(112, 0, ext_call.return_data[0]):
                                                                if 10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 10^18:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    else:
                                                                        require Mask(112, 0, ext_call.return_data[32])
                                                                        return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[32]) <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require Mask(112, 0, ext_call.return_data[32])
                                                                    return (0 / Mask(112, 0, ext_call.return_data[32]))
                                                        else:
                                                            if Mask(112, 0, ext_call.return_data[32]):
                                                                if 10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 10^18:
                                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                                else:
                                                                    if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    else:
                                                                        require Mask(112, 0, ext_call.return_data[0])
                                                                        return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
                                                            else:
                                                                if Mask(112, 0, ext_call.return_data[0]) <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require Mask(112, 0, ext_call.return_data[0])
                                                                    return (0 / Mask(112, 0, ext_call.return_data[0]))
                    else:
                        return 0
}



}
