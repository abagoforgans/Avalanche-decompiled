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
    _117 = mem[(32 * arg2.length) + ceil32(return_data.size) + 128 len 4], 0
    require mem[(32 * arg2.length) + ceil32(return_data.size) + 128 len 4], 0 <= test266151307()
    require (32 * arg2.length) + ceil32(return_data.size) + mem[(32 * arg2.length) + ceil32(return_data.size) + 128 len 4], 0 + 159 < (32 * arg2.length) + ceil32(return_data.size) + return_data.size + 128
    _118 = mem[(32 * arg2.length) + ceil32(return_data.size) + mem[(32 * arg2.length) + ceil32(return_data.size) + 128 len 4], 0 + 128]
    require mem[(32 * arg2.length) + ceil32(return_data.size) + mem[(32 * arg2.length) + ceil32(return_data.size) + 128 len 4], 0 + 128] <= test266151307()
    require (32 * arg2.length) + (2 * ceil32(return_data.size)) + (32 * mem[(32 * arg2.length) + ceil32(return_data.size) + mem[(32 * arg2.length) + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 160 <= test266151307() and (32 * mem[(32 * arg2.length) + ceil32(return_data.size) + mem[(32 * arg2.length) + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 32 >= 0
    mem[64] = (32 * arg2.length) + (2 * ceil32(return_data.size)) + (32 * mem[(32 * arg2.length) + ceil32(return_data.size) + mem[(32 * arg2.length) + ceil32(return_data.size) + 128 len 4], 0 + 128]) + 160
    mem[(32 * arg2.length) + (2 * ceil32(return_data.size)) + 128] = _118
    require _117 + (32 * _118) + 32 <= return_data.size
    idx = 0
    s = (32 * arg2.length) + ceil32(return_data.size) + _117 + 160
    t = (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160
    while idx < _118:
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
    _167 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _168 = mem[_167]
    require mem[_167] == mem[_167]
    require _118 <= test266151307()
    _170 = mem[64]
    mem[mem[64]] = _118
    mem[64] = mem[64] + (32 * _118) + 32
    if not _118:
        idx = 0
        while idx < _118:
            _209 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[(32 * arg2.length) + (2 * ceil32(return_data.size)) + 128]
            mem[_209] = mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160]
            require idx < mem[(32 * arg2.length) + (2 * ceil32(return_data.size)) + 128]
            if not 10^10 * _168:
                mem[_209 + 32] = 0
            else:
                require 10^10 * _168
                if 10^10 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] * _168 / 10^10 * _168 != mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160]:
                    revert with 0, 'math-not-safe'
                if (10^10 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] * _168) + 5 * 10^17 < 10^10 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] * _168:
                    revert with 0, 'math-not-safe'
                mem[_209 + 32] = (10^10 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] * _168) + 5 * 10^17 / 10^18
            require idx < mem[_170]
            mem[(32 * idx) + _170 + 32] = _209
            idx = idx + 1
            continue 
        _212 = mem[64]
        mem[mem[64]] = 64
        _216 = mem[_170]
        mem[mem[64] + 64] = mem[_170]
        idx = 0
        s = _170 + 32
        t = mem[64] + 96
        while idx < _216:
            _246 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_246 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        mem[_212 + 32] = _168
        return memory
          from mem[64]
           len _212 + (64 * _216) + -mem[64] + 96
    mem[64] = _170 + (32 * _118) + 96
    mem[_170 + (32 * _118) + 32] = 0
    mem[_170 + (32 * _118) + 64] = 0
    mem[var96001] = _170 + (32 * _118) + 32
    s = var96001
    idx = var96002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[_170 + (32 * _118) + 32] = 0
        mem[_170 + (32 * _118) + 64] = 0
        mem[s + 32] = _170 + (32 * _118) + 32
        s = s + 32
        idx = idx - 1
        continue 
    _268 = mem[(32 * arg2.length) + (2 * ceil32(return_data.size)) + 128]
    idx = 0
    while idx < _268:
        _269 = mem[64]
        mem[64] = mem[64] + 64
        require idx < mem[(32 * arg2.length) + (2 * ceil32(return_data.size)) + 128]
        mem[_269] = mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160]
        require idx < mem[(32 * arg2.length) + (2 * ceil32(return_data.size)) + 128]
        if not 10^10 * _168:
            mem[_269 + 32] = 0
        else:
            require 10^10 * _168
            if 10^10 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] * _168 / 10^10 * _168 != mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160]:
                revert with 0, 'math-not-safe'
            if (10^10 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] * _168) + 5 * 10^17 < 10^10 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] * _168:
                revert with 0, 'math-not-safe'
            mem[_269 + 32] = (10^10 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] * _168) + 5 * 10^17 / 10^18
        require idx < mem[_170]
        mem[(32 * idx) + _170 + 32] = _269
        _268 = mem[(32 * arg2.length) + (2 * ceil32(return_data.size)) + 128]
        idx = idx + 1
        continue 
    _271 = mem[64]
    mem[mem[64]] = 64
    _275 = mem[_170]
    mem[mem[64] + 64] = mem[_170]
    idx = 0
    s = _170 + 32
    t = mem[64] + 96
    while idx < _275:
        _286 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_286 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    mem[_271 + 32] = _168
    return memory
      from mem[64]
       len _271 + (64 * _275) + -mem[64] + 96
}



}
