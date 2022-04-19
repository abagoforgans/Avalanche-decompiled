contract main {




// =====================  Runtime code  =====================


#
#  - getPosition(address arg1, address[] arg2)
#
const name = 'AaveV2-Resolver-v1', 0


function _fallback() payable {
    revert
}

function getTokensPrices(address arg1, address[] arg2) payable {
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
    require ext_code.size(arg1)
    staticcall arg1.getPriceOracle() with:
            gas gas_remaining wei
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(32 * arg2.length) + ceil32(return_data.size) + 128] = 0x9d23d9f200000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + ceil32(return_data.size) + 132] = 32
    mem[(32 * arg2.length) + ceil32(return_data.size) + 164] = arg2.length
    idx = 0
    s = 128
    t = (32 * arg2.length) + ceil32(return_data.size) + 196
    while idx < arg2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getAssetsPrices(address[] rg1) with:
            gas gas_remaining wei
           args mem[(32 * arg2.length) + ceil32(return_data.size) + 132 len (96 * arg2.length) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg2.length) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _113 = mem[(32 * arg2.length) + ceil32(return_data.size) + 128 len 4], 0
    require mem[(32 * arg2.length) + ceil32(return_data.size) + 128 len 4], 0 <= test266151307()
    require (32 * arg2.length) + ceil32(return_data.size) + mem[(32 * arg2.length) + ceil32(return_data.size) + 128 len 4], 0 + 159 < (32 * arg2.length) + ceil32(return_data.size) + return_data.size + 128
    _114 = mem[(32 * arg2.length) + ceil32(return_data.size) + mem[(32 * arg2.length) + ceil32(return_data.size) + 128 len 4], 0 + 128]
    require mem[(32 * arg2.length) + ceil32(return_data.size) + mem[(32 * arg2.length) + ceil32(return_data.size) + 128 len 4], 0 + 128] <= test266151307()
    require (32 * arg2.length) + (2 * ceil32(return_data.size)) + (32 * mem[(32 * arg2.length) + ceil32(return_data.size) + mem[(32 * arg2.length) + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 160 <= test266151307() and (32 * mem[(32 * arg2.length) + ceil32(return_data.size) + mem[(32 * arg2.length) + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 32 >= 0
    mem[64] = (32 * arg2.length) + (2 * ceil32(return_data.size)) + (32 * mem[(32 * arg2.length) + ceil32(return_data.size) + mem[(32 * arg2.length) + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 160
    mem[(32 * arg2.length) + (2 * ceil32(return_data.size)) + 128] = _114
    require _113 + (32 * _114) + 32 <= return_data.size
    idx = 0
    s = (32 * arg2.length) + ceil32(return_data.size) + _113 + 160
    t = (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160
    while idx < _114:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0x976b3d034e162d8bd72d6b9c989d545b839003b0)
    staticcall 0x976b3d034e162d8bd72d6b9c989d545b839003b0.0x50d25bcd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _161 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _162 = mem[_161]
    require mem[_161] == mem[_161]
    require _114 <= test266151307()
    _164 = mem[64]
    mem[mem[64]] = _114
    mem[64] = mem[64] + (32 * _114) + 32
    if not _114:
        idx = 0
        while idx < _114:
            _201 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[(32 * arg2.length) + (2 * ceil32(return_data.size)) + 128]
            if 10^18 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] / 10^18 != mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160]:
                revert with 0, 'math-not-safe'
            if (10^18 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160]) + (_162 / 2) < 10^18 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160]:
                revert with 0, 'math-not-safe'
            require _162
            mem[_201] = (10^18 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160]) + (_162 / 2) / _162
            require idx < mem[(32 * arg2.length) + (2 * ceil32(return_data.size)) + 128]
            mem[_201 + 32] = 10^10 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160]
            require idx < mem[_164]
            mem[(32 * idx) + _164 + 32] = _201
            idx = idx + 1
            continue 
        _204 = mem[64]
        mem[mem[64]] = 64
        _206 = mem[_164]
        mem[mem[64] + 64] = mem[_164]
        idx = 0
        s = _164 + 32
        t = mem[64] + 96
        while idx < _206:
            _236 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_236 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        mem[_204 + 32] = _162
        return memory
          from mem[64]
           len _204 + (64 * _206) + -mem[64] + 96
    mem[64] = _164 + (32 * _114) + 96
    mem[_164 + (32 * _114) + 32] = 0
    mem[_164 + (32 * _114) + 64] = 0
    mem[var96001] = _164 + (32 * _114) + 32
    s = var96001
    idx = var96002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[_164 + (32 * _114) + 32] = 0
        mem[_164 + (32 * _114) + 64] = 0
        mem[s + 32] = _164 + (32 * _114) + 32
        s = s + 32
        idx = idx - 1
        continue 
    _257 = mem[(32 * arg2.length) + (2 * ceil32(return_data.size)) + 128]
    idx = 0
    while idx < _257:
        _258 = mem[64]
        mem[64] = mem[64] + 64
        require idx < mem[(32 * arg2.length) + (2 * ceil32(return_data.size)) + 128]
        if 10^18 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] / 10^18 != mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160]:
            revert with 0, 'math-not-safe'
        if (10^18 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160]) + (_162 / 2) < 10^18 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160]:
            revert with 0, 'math-not-safe'
        require _162
        mem[_258] = (10^18 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160]) + (_162 / 2) / _162
        require idx < mem[(32 * arg2.length) + (2 * ceil32(return_data.size)) + 128]
        mem[_258 + 32] = 10^10 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160]
        require idx < mem[_164]
        mem[(32 * idx) + _164 + 32] = _258
        _257 = mem[(32 * arg2.length) + (2 * ceil32(return_data.size)) + 128]
        idx = idx + 1
        continue 
    _260 = mem[64]
    mem[mem[64]] = 64
    _262 = mem[_164]
    mem[mem[64] + 64] = mem[_164]
    idx = 0
    s = _164 + 32
    t = mem[64] + 96
    while idx < _262:
        _274 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_274 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    mem[_260 + 32] = _162
    return memory
      from mem[64]
       len _260 + (64 * _262) + -mem[64] + 96
}



}
