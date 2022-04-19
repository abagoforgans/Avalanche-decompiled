contract main {




// =====================  Runtime code  =====================


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
            mem[_209] = 10^10 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160]
            require idx < mem[(32 * arg2.length) + (2 * ceil32(return_data.size)) + 128]
            if not _168:
                mem[_209 + 32] = 0
            else:
                require _168
                if 10^18 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] * _168 / _168 != 10^18 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160]:
                    revert with 0, 'math-not-safe'
                if (10^18 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] * _168) + 5 * 10^17 < 10^18 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] * _168:
                    revert with 0, 'math-not-safe'
                mem[_209 + 32] = (10^18 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] * _168) + 5 * 10^17 / 10^18
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
        mem[_269] = 10^10 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160]
        require idx < mem[(32 * arg2.length) + (2 * ceil32(return_data.size)) + 128]
        if not _168:
            mem[_269 + 32] = 0
        else:
            require _168
            if 10^18 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] * _168 / _168 != 10^18 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160]:
                revert with 0, 'math-not-safe'
            if (10^18 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] * _168) + 5 * 10^17 < 10^18 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] * _168:
                revert with 0, 'math-not-safe'
            mem[_269 + 32] = (10^18 * mem[(32 * idx) + (32 * arg2.length) + (2 * ceil32(return_data.size)) + 160] * _168) + 5 * 10^17 / 10^18
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

function getPosition(address arg1, address[] arg2) payable {
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
    mem[(32 * arg2.length) + 128] = 0
    mem[(32 * arg2.length) + 160] = 0
    mem[(32 * arg2.length) + 192] = 0
    mem[(32 * arg2.length) + 224] = 0
    mem[(32 * arg2.length) + 256] = 0
    mem[(32 * arg2.length) + 288] = 0
    mem[(32 * arg2.length) + 320] = 0
    mem[(32 * arg2.length) + 352] = 0
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 384] = arg2.length
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < arg2.length
            if mem[(32 * idx) + 140 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                mem[(32 * idx) + (32 * arg2.length) + 416] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            else:
                require idx < arg2.length
                mem[(32 * idx) + (32 * arg2.length) + 416] = mem[(32 * idx) + 140 len 20]
            idx = idx + 1
            continue 
        require arg2.length <= test266151307()
        if not arg2.length:
            require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
            staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getPriceOracle() with:
                    gas gas_remaining wei
            mem[(98 * arg2.length) + 448] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(98 * arg2.length) + ceil32(return_data.size) + 448] = 0x9d23d9f200000000000000000000000000000000000000000000000000000000
            mem[(98 * arg2.length) + ceil32(return_data.size) + 452] = 32
            mem[(98 * arg2.length) + ceil32(return_data.size) + 484] = arg2.length
            idx = 0
            s = (32 * arg2.length) + 416
            t = (98 * arg2.length) + ceil32(return_data.size) + 516
            while idx < arg2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getAssetsPrices(address[] rg1) with:
                    gas gas_remaining wei
                   args Array(len=arg2.length, data=mem[(98 * arg2.length) + ceil32(return_data.size) + 516 len 32 * arg2.length])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(98 * arg2.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (98 * arg2.length) + (2 * ceil32(return_data.size)) + 448
            require return_data.size >= 32
            _2360 = mem[(98 * arg2.length) + ceil32(return_data.size) + 448 len 4], 0
            require mem[(98 * arg2.length) + ceil32(return_data.size) + 448 len 4], 0 <= test266151307()
            require (98 * arg2.length) + ceil32(return_data.size) + mem[(98 * arg2.length) + ceil32(return_data.size) + 448 len 4], 0 + 479 < (98 * arg2.length) + ceil32(return_data.size) + return_data.size + 448
            _2368 = mem[(98 * arg2.length) + ceil32(return_data.size) + mem[(98 * arg2.length) + ceil32(return_data.size) + 448 len 4], 0 + 448]
            require mem[(98 * arg2.length) + ceil32(return_data.size) + mem[(98 * arg2.length) + ceil32(return_data.size) + 448 len 4], 0 + 448] <= test266151307()
            require (98 * arg2.length) + (2 * ceil32(return_data.size)) + (32 * mem[(98 * arg2.length) + ceil32(return_data.size) + mem[(98 * arg2.length) + ceil32(return_data.size) + 448 len 4], 0 + 448]) + 480 <= test266151307() and (32 * mem[(98 * arg2.length) + ceil32(return_data.size) + mem[(98 * arg2.length) + ceil32(return_data.size) + 448 len 4], 0 + 448]) + 32 >= 0
            mem[64] = (98 * arg2.length) + (2 * ceil32(return_data.size)) + (32 * mem[(98 * arg2.length) + ceil32(return_data.size) + mem[(98 * arg2.length) + ceil32(return_data.size) + 448 len 4], 0 + 448]) + 480
            mem[(98 * arg2.length) + (2 * ceil32(return_data.size)) + 448] = _2368
            require _2360 + (32 * _2368) + 32 <= return_data.size
            idx = 0
            s = (98 * arg2.length) + ceil32(return_data.size) + _2360 + 480
            t = (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480
            while idx < _2368:
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
            _3388 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3392 = mem[_3388]
            require mem[_3388] == mem[_3388]
            require _2368 <= test266151307()
            _3398 = mem[64]
            mem[mem[64]] = _2368
            mem[64] = mem[64] + (32 * _2368) + 32
            if not _2368:
                idx = 0
                while idx < _2368:
                    _4454 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < mem[(98 * arg2.length) + (2 * ceil32(return_data.size)) + 448]
                    mem[_4454] = 10^10 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480]
                    require idx < mem[(98 * arg2.length) + (2 * ceil32(return_data.size)) + 448]
                    if not _3392:
                        mem[_4454 + 32] = 0
                    else:
                        require _3392
                        if 10^18 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480] * _3392 / _3392 != 10^18 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480]:
                            revert with 0, 'math-not-safe'
                        if (10^18 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480] * _3392) + 5 * 10^17 < 10^18 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480] * _3392:
                            revert with 0, 'math-not-safe'
                        mem[_4454 + 32] = (10^18 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480] * _3392) + 5 * 10^17 / 10^18
                    require idx < mem[_3398]
                    mem[(32 * idx) + _3398 + 32] = _4454
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < arg2.length:
                    require idx < mem[(32 * arg2.length) + 384]
                    _7982 = mem[(32 * idx) + (32 * arg2.length) + 416]
                    require idx < mem[_3398]
                    _7993 = mem[mem[(32 * idx) + _3398 + 32]]
                    require idx < mem[_3398]
                    _8002 = mem[mem[(32 * idx) + _3398 + 32] + 32]
                    _8026 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_8026] = 0
                    mem[_8026 + 32] = 0
                    mem[_8026 + 64] = 0
                    mem[_8026 + 96] = 0
                    mem[_8026 + 128] = 0
                    mem[_8026 + 160] = 0
                    mem[_8026 + 192] = 0
                    mem[_8026 + 224] = 0
                    mem[_8026 + 256] = 0
                    mem[_8026 + 288] = 0
                    _8036 = mem[64]
                    mem[64] = mem[64] + 544
                    mem[_8036] = 0
                    mem[_8036 + 32] = 0
                    mem[_8036 + 64] = 0
                    mem[_8036 + 96] = 0
                    mem[_8036 + 128] = 0
                    mem[_8036 + 160] = 0
                    mem[_8036 + 192] = 0
                    mem[_8036 + 224] = 0
                    mem[_8036 + 256] = 0
                    mem[_8036 + 288] = 0
                    mem[_8036 + 320] = 0
                    mem[_8036 + 352] = 0
                    mem[_8036 + 384] = 0
                    mem[_8036 + 416] = 0
                    mem[_8036 + 448] = 0
                    mem[_8036 + 480] = 0
                    mem[_8036 + 512] = 0
                    mem[_8026 + 320] = _8036
                    _8062 = mem[64]
                    mem[64] = mem[64] + 544
                    mem[_8062] = 0
                    mem[_8062 + 32] = 0
                    mem[_8062 + 64] = 0
                    mem[_8062 + 96] = 0
                    mem[_8062 + 128] = 0
                    mem[_8062 + 160] = 0
                    mem[_8062 + 192] = 0
                    mem[_8062 + 224] = 0
                    mem[_8062 + 256] = 0
                    mem[_8062 + 288] = 0
                    mem[_8062 + 320] = 0
                    mem[_8062 + 352] = 0
                    mem[_8062 + 384] = 0
                    mem[_8062 + 416] = 0
                    mem[_8062 + 448] = 0
                    mem[_8062 + 480] = 0
                    mem[_8062 + 512] = 0
                    _8096 = mem[64]
                    mem[64] = mem[64] + 544
                    mem[_8096] = 0
                    mem[_8096 + 32] = 0
                    mem[_8096 + 64] = 0
                    mem[_8096 + 96] = 0
                    mem[_8096 + 128] = 0
                    mem[_8096 + 160] = 0
                    mem[_8096 + 192] = 0
                    mem[_8096 + 224] = 0
                    mem[_8096 + 256] = 0
                    mem[_8096 + 288] = 0
                    mem[_8096 + 320] = 0
                    mem[_8096 + 352] = 0
                    mem[_8096 + 384] = 0
                    mem[_8096 + 416] = 0
                    mem[_8096 + 448] = 0
                    mem[_8096 + 480] = 0
                    mem[_8096 + 512] = 0
                    require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                    staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveConfigurationData(address rg1) with:
                            gas gas_remaining wei
                           args address(_7982)
                    mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8163 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 320
                    require mem[_8163] == mem[_8163]
                    _8216 = mem[_8163 + 32]
                    require mem[_8163 + 32] == mem[_8163 + 32]
                    _8244 = mem[_8163 + 64]
                    require mem[_8163 + 64] == mem[_8163 + 64]
                    require mem[_8163 + 96] == mem[_8163 + 96]
                    _8304 = mem[_8163 + 128]
                    require mem[_8163 + 128] == mem[_8163 + 128]
                    _8326 = mem[_8163 + 160]
                    require mem[_8163 + 160] == bool(mem[_8163 + 160])
                    _8356 = mem[_8163 + 192]
                    require mem[_8163 + 192] == bool(mem[_8163 + 192])
                    _8388 = mem[_8163 + 224]
                    require mem[_8163 + 224] == bool(mem[_8163 + 224])
                    _8447 = mem[_8163 + 256]
                    require mem[_8163 + 256] == bool(mem[_8163 + 256])
                    require mem[_8163 + 288] == bool(mem[_8163 + 288])
                    mem[_8096 + 224] = bool(mem[_8163 + 288])
                    mem[_8096 + 192] = bool(_8447)
                    mem[_8096 + 160] = bool(_8388)
                    mem[_8096 + 128] = bool(_8356)
                    mem[_8096 + 96] = bool(_8326)
                    mem[_8096 + 64] = _8304
                    mem[_8096 + 32] = _8244
                    mem[_8096] = _8216
                    require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                    staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                            gas gas_remaining wei
                           args address(_7982)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8620 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _8639 = mem[_8620]
                    require mem[_8620] == mem[_8620 + 12 len 20]
                    _8697 = mem[_8620 + 32]
                    require mem[_8620 + 32] == mem[_8620 + 44 len 20]
                    require mem[_8620 + 64] == mem[_8620 + 76 len 20]
                    mem[_8096 + 512] = mem[_8620 + 76 len 20]
                    mem[_8096 + 480] = address(_8697)
                    mem[_8096 + 448] = address(_8639)
                    _8856 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_8856] = 0
                    mem[_8856 + 32] = 0
                    mem[_8856 + 64] = 0
                    require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
                    staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.assets(address rg1) with:
                            gas gas_remaining wei
                           args address(_8639)
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8970 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _9006 = mem[64]
                    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                    mem[64] = mem[64] + 96
                    require mem[_8970] == mem[_8970 + 16 len 16]
                    mem[_9006] = mem[_8970]
                    require mem[_8970 + 32] == mem[_8970 + 48 len 16]
                    mem[_9006 + 32] = mem[_8970 + 32]
                    require mem[_8970 + 64] == mem[_8970 + 64]
                    mem[_9006 + 64] = mem[_8970 + 64]
                    mem[_8096 + 384] = mem[_9006 + 16 len 16]
                    require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
                    staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.assets(address rg1) with:
                            gas gas_remaining wei
                           args address(mem[_8096 + 512])
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9205 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _9228 = mem[64]
                    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                    mem[64] = mem[64] + 96
                    require mem[_9205] == mem[_9205 + 16 len 16]
                    mem[_9228] = mem[_9205]
                    require mem[_9205 + 32] == mem[_9205 + 48 len 16]
                    mem[_9228 + 32] = mem[_9205 + 32]
                    require mem[_9205 + 64] == mem[_9205 + 64]
                    mem[_9228 + 64] = mem[_9205 + 64]
                    mem[_8096 + 416] = mem[_9228 + 16 len 16]
                    require ext_code.size(address(_8639))
                    staticcall address(_8639).0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9448 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_9448] == mem[_9448]
                    mem[_8096 + 256] = mem[_9448]
                    require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                    staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(_7982), arg1
                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9614 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    _9640 = mem[_9614]
                    require mem[_9614] == mem[_9614]
                    _9698 = mem[_9614 + 32]
                    require mem[_9614 + 32] == mem[_9614 + 32]
                    _9750 = mem[_9614 + 64]
                    require mem[_9614 + 64] == mem[_9614 + 64]
                    require mem[_9614 + 96] == mem[_9614 + 96]
                    require mem[_9614 + 128] == mem[_9614 + 128]
                    _9892 = mem[_9614 + 160]
                    require mem[_9614 + 160] == mem[_9614 + 160]
                    require mem[_9614 + 192] == mem[_9614 + 192]
                    require mem[_9614 + 224] == mem[_9614 + 251 len 5]
                    require mem[_9614 + 256] == bool(mem[_9614 + 256])
                    mem[_8026 + 288] = bool(mem[_9614 + 256])
                    mem[_8026 + 224] = _9892
                    mem[_8026 + 128] = _9750
                    mem[_8026 + 96] = _9698
                    mem[_8026 + 64] = _9640
                    require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                    staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveData(address rg1) with:
                            gas gas_remaining wei
                           args address(_7982)
                    mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10088 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 320
                    _10114 = mem[_10088]
                    require mem[_10088] == mem[_10088]
                    _10154 = mem[_10088 + 32]
                    require mem[_10088 + 32] == mem[_10088 + 32]
                    _10188 = mem[_10088 + 64]
                    require mem[_10088 + 64] == mem[_10088 + 64]
                    _10232 = mem[_10088 + 96]
                    require mem[_10088 + 96] == mem[_10088 + 96]
                    _10258 = mem[_10088 + 128]
                    require mem[_10088 + 128] == mem[_10088 + 128]
                    require mem[_10088 + 160] == mem[_10088 + 160]
                    require mem[_10088 + 192] == mem[_10088 + 192]
                    require mem[_10088 + 224] == mem[_10088 + 224]
                    require mem[_10088 + 256] == mem[_10088 + 256]
                    require mem[_10088 + 288] == mem[_10088 + 315 len 5]
                    mem[_8026 + 192] = mem[_10088 + 160]
                    mem[_8026 + 256] = _10258
                    mem[_8026 + 160] = _10232
                    mem[_8096 + 352] = _10188
                    mem[_8096 + 320] = _10154
                    mem[_8096 + 288] = _10114
                    mem[_8026] = _7993
                    mem[_8026 + 32] = _8002
                    mem[_8026 + 320] = _8096
                    require idx < mem[(64 * arg2.length) + 416]
                    mem[(32 * idx) + (64 * arg2.length) + 448] = _8026
                    idx = idx + 1
                    continue 
                require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
                staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getLendingPool() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _7972 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _8000 = mem[_7972]
                require mem[_7972] == mem[_7972 + 12 len 20]
                _8112 = mem[64]
                mem[64] = mem[64] + 256
                mem[_8112] = 0
                mem[_8112 + 32] = 0
                mem[_8112 + 64] = 0
                mem[_8112 + 96] = 0
                mem[_8112 + 128] = 0
                mem[_8112 + 160] = 0
                mem[_8112 + 192] = 0
                mem[_8112 + 224] = 0
                require ext_code.size(address(_8000))
                staticcall address(_8000).0xbf92857c with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64] len 192] = ext_call.return_data[0 len 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8182 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 192
                _8192 = mem[_8182]
                require mem[_8182] == mem[_8182]
                _8226 = mem[_8182 + 32]
                require mem[_8182 + 32] == mem[_8182 + 32]
                _8252 = mem[_8182 + 64]
                require mem[_8182 + 64] == mem[_8182 + 64]
                _8276 = mem[_8182 + 96]
                require mem[_8182 + 96] == mem[_8182 + 96]
                _8310 = mem[_8182 + 128]
                require mem[_8182 + 128] == mem[_8182 + 128]
                _8340 = mem[_8182 + 160]
                require mem[_8182 + 160] == mem[_8182 + 160]
                _8370 = mem[(32 * arg2.length) + 384]
                require 2 * mem[(32 * arg2.length) + 384] <= test266151307()
                _8376 = mem[64]
                mem[mem[64]] = 2 * mem[(32 * arg2.length) + 384]
                mem[64] = mem[64] + (64 * _8370) + 32
                if not uint255(_8370):
                    _9234 = mem[(32 * arg2.length) + 384]
                    idx = 0
                    while idx < _9234:
                        require idx < mem[(32 * arg2.length) + 384]
                        require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                        staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                                gas gas_remaining wei
                               args address(mem[(32 * idx) + (32 * arg2.length) + 416])
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _9340 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _9374 = mem[_9340]
                        require mem[_9340] == mem[_9340 + 12 len 20]
                        require mem[_9340 + 32] == mem[_9340 + 44 len 20]
                        require mem[_9340 + 64] == mem[_9340 + 76 len 20]
                        require 2 * idx < mem[_8376]
                        require (2 * idx) + 1 < mem[_8376]
                        mem[(32 * (2 * idx) + 1) + _8376 + 32] = mem[_9340 + 76 len 20]
                        mem[(64 * idx) + _8376 + 32] = address(_9374)
                        _9234 = mem[(32 * arg2.length) + 384]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 64
                    _9294 = mem[_8376]
                    mem[mem[64] + 68] = mem[_8376]
                    idx = 0
                    s = _8376 + 32
                    t = mem[64] + 100
                    while idx < _9294:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 36] = arg1
                    require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
                    staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] rg1, address rg2) with:
                            gas gas_remaining wei
                           args 64, address(arg1), mem[mem[64] + 68 len (32 * _9294) + 32]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _10440 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _10456 = mem[_10440]
                    require mem[_10440] == mem[_10440]
                    _10490 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_10490] = _8192
                    mem[_10490 + 32] = _8226
                    mem[_10490 + 64] = _8252
                    mem[_10490 + 96] = _8276
                    mem[_10490 + 128] = _8310
                    mem[_10490 + 160] = _8340
                    mem[_10490 + 192] = _3392
                    mem[_10490 + 224] = _10456
                    _10498 = mem[64]
                    mem[mem[64]] = 288
                    _10512 = mem[(64 * arg2.length) + 416]
                    mem[mem[64] + 288] = mem[(64 * arg2.length) + 416]
                    idx = 0
                    s = (64 * arg2.length) + 448
                    t = mem[64] + 320
                    while idx < _10512:
                        _11386 = mem[s]
                        mem[t] = mem[mem[s]]
                        mem[t + 32] = mem[_11386 + 32]
                        mem[t + 64] = mem[_11386 + 64]
                        mem[t + 96] = mem[_11386 + 96]
                        mem[t + 128] = mem[_11386 + 128]
                        mem[t + 160] = mem[_11386 + 160]
                        mem[t + 192] = mem[_11386 + 192]
                        mem[t + 224] = mem[_11386 + 224]
                        mem[t + 256] = mem[_11386 + 256]
                        mem[t + 288] = bool(mem[_11386 + 288])
                        _11706 = mem[_11386 + 320]
                        mem[t + 320] = mem[mem[_11386 + 320]]
                        mem[t + 352] = mem[_11706 + 32]
                        mem[t + 384] = mem[_11706 + 64]
                        mem[t + 416] = bool(mem[_11706 + 96])
                        mem[t + 448] = bool(mem[_11706 + 128])
                        mem[t + 480] = bool(mem[_11706 + 160])
                        mem[t + 512] = bool(mem[_11706 + 192])
                        mem[t + 544] = bool(mem[_11706 + 224])
                        mem[t + 576] = mem[_11706 + 256]
                        mem[t + 608] = mem[_11706 + 288]
                        mem[t + 640] = mem[_11706 + 320]
                        mem[t + 672] = mem[_11706 + 352]
                        mem[t + 704] = mem[_11706 + 384]
                        mem[t + 736] = mem[_11706 + 416]
                        mem[t + 768] = mem[_11706 + 460 len 20]
                        mem[t + 800] = mem[_11706 + 492 len 20]
                        mem[t + 832] = mem[_11706 + 524 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 864
                        continue 
                    mem[_10498 + 32] = mem[_10490]
                    mem[_10498 + 64] = mem[_10490 + 32]
                    mem[_10498 + 96] = mem[_10490 + 64]
                    mem[_10498 + 128] = mem[_10490 + 96]
                    mem[_10498 + 160] = mem[_10490 + 128]
                    mem[_10498 + 192] = mem[_10490 + 160]
                    mem[_10498 + 224] = mem[_10490 + 192]
                    mem[_10498 + 256] = mem[_10490 + 224]
                    return memory
                      from mem[64]
                       len _10498 + (864 * _10512) + -mem[64] + 320
                mem[_8376 + 32 len 64 * _8370] = call.data[calldata.size len 64 * _8370]
                _9235 = mem[(32 * arg2.length) + 384]
                idx = 0
                while idx < _9235:
                    require idx < mem[(32 * arg2.length) + 384]
                    require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                    staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                            gas gas_remaining wei
                           args address(mem[(32 * idx) + (32 * arg2.length) + 416])
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9341 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _9375 = mem[_9341]
                    require mem[_9341] == mem[_9341 + 12 len 20]
                    require mem[_9341 + 32] == mem[_9341 + 44 len 20]
                    require mem[_9341 + 64] == mem[_9341 + 76 len 20]
                    require 2 * idx < mem[_8376]
                    require (2 * idx) + 1 < mem[_8376]
                    mem[(32 * (2 * idx) + 1) + _8376 + 32] = mem[_9341 + 76 len 20]
                    mem[(64 * idx) + _8376 + 32] = address(_9375)
                    _9235 = mem[(32 * arg2.length) + 384]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _9295 = mem[_8376]
                mem[mem[64] + 68] = mem[_8376]
                idx = 0
                s = _8376 + 32
                t = mem[64] + 100
                while idx < _9295:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 36] = arg1
                require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
                staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] rg1, address rg2) with:
                        gas gas_remaining wei
                       args 64, address(arg1), mem[mem[64] + 68 len (32 * _9295) + 32]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10441 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10457 = mem[_10441]
                require mem[_10441] == mem[_10441]
                _10491 = mem[64]
                mem[64] = mem[64] + 256
                mem[_10491] = _8192
                mem[_10491 + 32] = _8226
                mem[_10491 + 64] = _8252
                mem[_10491 + 96] = _8276
                mem[_10491 + 128] = _8310
                mem[_10491 + 160] = _8340
                mem[_10491 + 192] = _3392
                mem[_10491 + 224] = _10457
                _10499 = mem[64]
                mem[mem[64]] = 288
                _10513 = mem[(64 * arg2.length) + 416]
                mem[mem[64] + 288] = mem[(64 * arg2.length) + 416]
                idx = 0
                s = (64 * arg2.length) + 448
                t = mem[64] + 320
                while idx < _10513:
                    _11387 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_11387 + 32]
                    mem[t + 64] = mem[_11387 + 64]
                    mem[t + 96] = mem[_11387 + 96]
                    mem[t + 128] = mem[_11387 + 128]
                    mem[t + 160] = mem[_11387 + 160]
                    mem[t + 192] = mem[_11387 + 192]
                    mem[t + 224] = mem[_11387 + 224]
                    mem[t + 256] = mem[_11387 + 256]
                    mem[t + 288] = bool(mem[_11387 + 288])
                    _11707 = mem[_11387 + 320]
                    mem[t + 320] = mem[mem[_11387 + 320]]
                    mem[t + 352] = mem[_11707 + 32]
                    mem[t + 384] = mem[_11707 + 64]
                    mem[t + 416] = bool(mem[_11707 + 96])
                    mem[t + 448] = bool(mem[_11707 + 128])
                    mem[t + 480] = bool(mem[_11707 + 160])
                    mem[t + 512] = bool(mem[_11707 + 192])
                    mem[t + 544] = bool(mem[_11707 + 224])
                    mem[t + 576] = mem[_11707 + 256]
                    mem[t + 608] = mem[_11707 + 288]
                    mem[t + 640] = mem[_11707 + 320]
                    mem[t + 672] = mem[_11707 + 352]
                    mem[t + 704] = mem[_11707 + 384]
                    mem[t + 736] = mem[_11707 + 416]
                    mem[t + 768] = mem[_11707 + 460 len 20]
                    mem[t + 800] = mem[_11707 + 492 len 20]
                    mem[t + 832] = mem[_11707 + 524 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 864
                    continue 
                mem[_10499 + 32] = mem[_10491]
                mem[_10499 + 64] = mem[_10491 + 32]
                mem[_10499 + 96] = mem[_10491 + 64]
                mem[_10499 + 128] = mem[_10491 + 96]
                mem[_10499 + 160] = mem[_10491 + 128]
                mem[_10499 + 192] = mem[_10491 + 160]
                mem[_10499 + 224] = mem[_10491 + 192]
                mem[_10499 + 256] = mem[_10491 + 224]
                return memory
                  from mem[64]
                   len _10499 + (864 * _10513) + -mem[64] + 320
            mem[64] = _3398 + (32 * _2368) + 96
            mem[_3398 + (32 * _2368) + 32] = 0
            mem[_3398 + (32 * _2368) + 64] = 0
            mem[var106001] = _3398 + (32 * _2368) + 32
            s = var106001
            idx = var106002
            while idx - 1:
                mem[64] = mem[64] + 64
                mem[_3398 + (32 * _2368) + 32] = 0
                mem[_3398 + (32 * _2368) + 64] = 0
                mem[s + 32] = _3398 + (32 * _2368) + 32
                s = s + 32
                idx = idx - 1
                continue 
            _6788 = mem[(98 * arg2.length) + (2 * ceil32(return_data.size)) + 448]
            idx = 0
            while idx < _6788:
                _6792 = mem[64]
                mem[64] = mem[64] + 64
                require idx < mem[(98 * arg2.length) + (2 * ceil32(return_data.size)) + 448]
                mem[_6792] = 10^10 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480]
                require idx < mem[(98 * arg2.length) + (2 * ceil32(return_data.size)) + 448]
                if not _3392:
                    mem[_6792 + 32] = 0
                else:
                    require _3392
                    if 10^18 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480] * _3392 / _3392 != 10^18 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480]:
                        revert with 0, 'math-not-safe'
                    if (10^18 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480] * _3392) + 5 * 10^17 < 10^18 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480] * _3392:
                        revert with 0, 'math-not-safe'
                    mem[_6792 + 32] = (10^18 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480] * _3392) + 5 * 10^17 / 10^18
                require idx < mem[_3398]
                mem[(32 * idx) + _3398 + 32] = _6792
                _6788 = mem[(98 * arg2.length) + (2 * ceil32(return_data.size)) + 448]
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg2.length:
                require idx < mem[(32 * arg2.length) + 384]
                _10384 = mem[(32 * idx) + (32 * arg2.length) + 416]
                require idx < mem[_3398]
                _10393 = mem[mem[(32 * idx) + _3398 + 32]]
                require idx < mem[_3398]
                _10402 = mem[mem[(32 * idx) + _3398 + 32] + 32]
                _10414 = mem[64]
                mem[64] = mem[64] + 352
                mem[_10414] = 0
                mem[_10414 + 32] = 0
                mem[_10414 + 64] = 0
                mem[_10414 + 96] = 0
                mem[_10414 + 128] = 0
                mem[_10414 + 160] = 0
                mem[_10414 + 192] = 0
                mem[_10414 + 224] = 0
                mem[_10414 + 256] = 0
                mem[_10414 + 288] = 0
                _10424 = mem[64]
                mem[64] = mem[64] + 544
                mem[_10424] = 0
                mem[_10424 + 32] = 0
                mem[_10424 + 64] = 0
                mem[_10424 + 96] = 0
                mem[_10424 + 128] = 0
                mem[_10424 + 160] = 0
                mem[_10424 + 192] = 0
                mem[_10424 + 224] = 0
                mem[_10424 + 256] = 0
                mem[_10424 + 288] = 0
                mem[_10424 + 320] = 0
                mem[_10424 + 352] = 0
                mem[_10424 + 384] = 0
                mem[_10424 + 416] = 0
                mem[_10424 + 448] = 0
                mem[_10424 + 480] = 0
                mem[_10424 + 512] = 0
                mem[_10414 + 320] = _10424
                _10450 = mem[64]
                mem[64] = mem[64] + 544
                mem[_10450] = 0
                mem[_10450 + 32] = 0
                mem[_10450 + 64] = 0
                mem[_10450 + 96] = 0
                mem[_10450 + 128] = 0
                mem[_10450 + 160] = 0
                mem[_10450 + 192] = 0
                mem[_10450 + 224] = 0
                mem[_10450 + 256] = 0
                mem[_10450 + 288] = 0
                mem[_10450 + 320] = 0
                mem[_10450 + 352] = 0
                mem[_10450 + 384] = 0
                mem[_10450 + 416] = 0
                mem[_10450 + 448] = 0
                mem[_10450 + 480] = 0
                mem[_10450 + 512] = 0
                _10466 = mem[64]
                mem[64] = mem[64] + 544
                mem[_10466] = 0
                mem[_10466 + 32] = 0
                mem[_10466 + 64] = 0
                mem[_10466 + 96] = 0
                mem[_10466 + 128] = 0
                mem[_10466 + 160] = 0
                mem[_10466 + 192] = 0
                mem[_10466 + 224] = 0
                mem[_10466 + 256] = 0
                mem[_10466 + 288] = 0
                mem[_10466 + 320] = 0
                mem[_10466 + 352] = 0
                mem[_10466 + 384] = 0
                mem[_10466 + 416] = 0
                mem[_10466 + 448] = 0
                mem[_10466 + 480] = 0
                mem[_10466 + 512] = 0
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveConfigurationData(address rg1) with:
                        gas gas_remaining wei
                       args address(_10384)
                mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10509 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 320
                require mem[_10509] == mem[_10509]
                _10550 = mem[_10509 + 32]
                require mem[_10509 + 32] == mem[_10509 + 32]
                _10586 = mem[_10509 + 64]
                require mem[_10509 + 64] == mem[_10509 + 64]
                require mem[_10509 + 96] == mem[_10509 + 96]
                _10666 = mem[_10509 + 128]
                require mem[_10509 + 128] == mem[_10509 + 128]
                _10694 = mem[_10509 + 160]
                require mem[_10509 + 160] == bool(mem[_10509 + 160])
                _10730 = mem[_10509 + 192]
                require mem[_10509 + 192] == bool(mem[_10509 + 192])
                _10764 = mem[_10509 + 224]
                require mem[_10509 + 224] == bool(mem[_10509 + 224])
                _10813 = mem[_10509 + 256]
                require mem[_10509 + 256] == bool(mem[_10509 + 256])
                require mem[_10509 + 288] == bool(mem[_10509 + 288])
                mem[_10466 + 224] = bool(mem[_10509 + 288])
                mem[_10466 + 192] = bool(_10813)
                mem[_10466 + 160] = bool(_10764)
                mem[_10466 + 128] = bool(_10730)
                mem[_10466 + 96] = bool(_10694)
                mem[_10466 + 64] = _10666
                mem[_10466 + 32] = _10586
                mem[_10466] = _10550
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                        gas gas_remaining wei
                       args address(_10384)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10952 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _10965 = mem[_10952]
                require mem[_10952] == mem[_10952 + 12 len 20]
                _11017 = mem[_10952 + 32]
                require mem[_10952 + 32] == mem[_10952 + 44 len 20]
                require mem[_10952 + 64] == mem[_10952 + 76 len 20]
                mem[_10466 + 512] = mem[_10952 + 76 len 20]
                mem[_10466 + 480] = address(_11017)
                mem[_10466 + 448] = address(_10965)
                _11144 = mem[64]
                mem[64] = mem[64] + 96
                mem[_11144] = 0
                mem[_11144 + 32] = 0
                mem[_11144 + 64] = 0
                require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
                staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.assets(address rg1) with:
                        gas gas_remaining wei
                       args address(_10965)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11216 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _11238 = mem[64]
                require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                mem[64] = mem[64] + 96
                require mem[_11216] == mem[_11216 + 16 len 16]
                mem[_11238] = mem[_11216]
                require mem[_11216 + 32] == mem[_11216 + 48 len 16]
                mem[_11238 + 32] = mem[_11216 + 32]
                require mem[_11216 + 64] == mem[_11216 + 64]
                mem[_11238 + 64] = mem[_11216 + 64]
                mem[_10466 + 384] = mem[_11238 + 16 len 16]
                require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
                staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.assets(address rg1) with:
                        gas gas_remaining wei
                       args address(mem[_10466 + 512])
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11359 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _11374 = mem[64]
                require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                mem[64] = mem[64] + 96
                require mem[_11359] == mem[_11359 + 16 len 16]
                mem[_11374] = mem[_11359]
                require mem[_11359 + 32] == mem[_11359 + 48 len 16]
                mem[_11374 + 32] = mem[_11359 + 32]
                require mem[_11359 + 64] == mem[_11359 + 64]
                mem[_11374 + 64] = mem[_11359 + 64]
                mem[_10466 + 416] = mem[_11374 + 16 len 16]
                require ext_code.size(address(_10965))
                staticcall address(_10965).0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11596 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_11596] == mem[_11596]
                mem[_10466 + 256] = mem[_11596]
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(_10384), arg1
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11764 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                _11784 = mem[_11764]
                require mem[_11764] == mem[_11764]
                _11834 = mem[_11764 + 32]
                require mem[_11764 + 32] == mem[_11764 + 32]
                _11882 = mem[_11764 + 64]
                require mem[_11764 + 64] == mem[_11764 + 64]
                require mem[_11764 + 96] == mem[_11764 + 96]
                require mem[_11764 + 128] == mem[_11764 + 128]
                _12022 = mem[_11764 + 160]
                require mem[_11764 + 160] == mem[_11764 + 160]
                require mem[_11764 + 192] == mem[_11764 + 192]
                require mem[_11764 + 224] == mem[_11764 + 251 len 5]
                require mem[_11764 + 256] == bool(mem[_11764 + 256])
                mem[_10414 + 288] = bool(mem[_11764 + 256])
                mem[_10414 + 224] = _12022
                mem[_10414 + 128] = _11882
                mem[_10414 + 96] = _11834
                mem[_10414 + 64] = _11784
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveData(address rg1) with:
                        gas gas_remaining wei
                       args address(_10384)
                mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12210 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 320
                _12228 = mem[_12210]
                require mem[_12210] == mem[_12210]
                _12266 = mem[_12210 + 32]
                require mem[_12210 + 32] == mem[_12210 + 32]
                _12302 = mem[_12210 + 64]
                require mem[_12210 + 64] == mem[_12210 + 64]
                _12334 = mem[_12210 + 96]
                require mem[_12210 + 96] == mem[_12210 + 96]
                _12362 = mem[_12210 + 128]
                require mem[_12210 + 128] == mem[_12210 + 128]
                require mem[_12210 + 160] == mem[_12210 + 160]
                require mem[_12210 + 192] == mem[_12210 + 192]
                require mem[_12210 + 224] == mem[_12210 + 224]
                require mem[_12210 + 256] == mem[_12210 + 256]
                require mem[_12210 + 288] == mem[_12210 + 315 len 5]
                mem[_10414 + 192] = mem[_12210 + 160]
                mem[_10414 + 256] = _12362
                mem[_10414 + 160] = _12334
                mem[_10466 + 352] = _12302
                mem[_10466 + 320] = _12266
                mem[_10466 + 288] = _12228
                mem[_10414] = _10393
                mem[_10414 + 32] = _10402
                mem[_10414 + 320] = _10466
                require idx < mem[(64 * arg2.length) + 416]
                mem[(32 * idx) + (64 * arg2.length) + 448] = _10414
                idx = idx + 1
                continue 
            require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
            staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getLendingPool() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10378 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10400 = mem[_10378]
            require mem[_10378] == mem[_10378 + 12 len 20]
            _10476 = mem[64]
            mem[64] = mem[64] + 256
            mem[_10476] = 0
            mem[_10476 + 32] = 0
            mem[_10476 + 64] = 0
            mem[_10476 + 96] = 0
            mem[_10476 + 128] = 0
            mem[_10476 + 160] = 0
            mem[_10476 + 192] = 0
            mem[_10476 + 224] = 0
            require ext_code.size(address(_10400))
            staticcall address(_10400).0xbf92857c with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10522 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _10530 = mem[_10522]
            require mem[_10522] == mem[_10522]
            _10564 = mem[_10522 + 32]
            require mem[_10522 + 32] == mem[_10522 + 32]
            _10604 = mem[_10522 + 64]
            require mem[_10522 + 64] == mem[_10522 + 64]
            _10632 = mem[_10522 + 96]
            require mem[_10522 + 96] == mem[_10522 + 96]
            _10668 = mem[_10522 + 128]
            require mem[_10522 + 128] == mem[_10522 + 128]
            _10708 = mem[_10522 + 160]
            require mem[_10522 + 160] == mem[_10522 + 160]
            _10740 = mem[(32 * arg2.length) + 384]
            require 2 * mem[(32 * arg2.length) + 384] <= test266151307()
            _10744 = mem[64]
            mem[mem[64]] = 2 * mem[(32 * arg2.length) + 384]
            mem[64] = mem[64] + (64 * _10740) + 32
            if not uint255(_10740):
                _11378 = mem[(32 * arg2.length) + 384]
                idx = 0
                while idx < _11378:
                    require idx < mem[(32 * arg2.length) + 384]
                    require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                    staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                            gas gas_remaining wei
                           args address(mem[(32 * idx) + (32 * arg2.length) + 416])
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11500 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _11522 = mem[_11500]
                    require mem[_11500] == mem[_11500 + 12 len 20]
                    require mem[_11500 + 32] == mem[_11500 + 44 len 20]
                    require mem[_11500 + 64] == mem[_11500 + 76 len 20]
                    require 2 * idx < mem[_10744]
                    require (2 * idx) + 1 < mem[_10744]
                    mem[(32 * (2 * idx) + 1) + _10744 + 32] = mem[_11500 + 76 len 20]
                    mem[(64 * idx) + _10744 + 32] = address(_11522)
                    _11378 = mem[(32 * arg2.length) + 384]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _11454 = mem[_10744]
                mem[mem[64] + 68] = mem[_10744]
                idx = 0
                s = _10744 + 32
                t = mem[64] + 100
                while idx < _11454:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 36] = arg1
                require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
                staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] rg1, address rg2) with:
                        gas gas_remaining wei
                       args 64, address(arg1), mem[mem[64] + 68 len (32 * _11454) + 32]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12504 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _12520 = mem[_12504]
                require mem[_12504] == mem[_12504]
                _12538 = mem[64]
                mem[64] = mem[64] + 256
                mem[_12538] = _10530
                mem[_12538 + 32] = _10564
                mem[_12538 + 64] = _10604
                mem[_12538 + 96] = _10632
                mem[_12538 + 128] = _10668
                mem[_12538 + 160] = _10708
                mem[_12538 + 192] = _3392
                mem[_12538 + 224] = _12520
                _12558 = mem[64]
                mem[mem[64]] = 288
                _12576 = mem[(64 * arg2.length) + 416]
                mem[mem[64] + 288] = mem[(64 * arg2.length) + 416]
                idx = 0
                s = (64 * arg2.length) + 448
                t = mem[64] + 320
                while idx < _12576:
                    _13116 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_13116 + 32]
                    mem[t + 64] = mem[_13116 + 64]
                    mem[t + 96] = mem[_13116 + 96]
                    mem[t + 128] = mem[_13116 + 128]
                    mem[t + 160] = mem[_13116 + 160]
                    mem[t + 192] = mem[_13116 + 192]
                    mem[t + 224] = mem[_13116 + 224]
                    mem[t + 256] = mem[_13116 + 256]
                    mem[t + 288] = bool(mem[_13116 + 288])
                    _13300 = mem[_13116 + 320]
                    mem[t + 320] = mem[mem[_13116 + 320]]
                    mem[t + 352] = mem[_13300 + 32]
                    mem[t + 384] = mem[_13300 + 64]
                    mem[t + 416] = bool(mem[_13300 + 96])
                    mem[t + 448] = bool(mem[_13300 + 128])
                    mem[t + 480] = bool(mem[_13300 + 160])
                    mem[t + 512] = bool(mem[_13300 + 192])
                    mem[t + 544] = bool(mem[_13300 + 224])
                    mem[t + 576] = mem[_13300 + 256]
                    mem[t + 608] = mem[_13300 + 288]
                    mem[t + 640] = mem[_13300 + 320]
                    mem[t + 672] = mem[_13300 + 352]
                    mem[t + 704] = mem[_13300 + 384]
                    mem[t + 736] = mem[_13300 + 416]
                    mem[t + 768] = mem[_13300 + 460 len 20]
                    mem[t + 800] = mem[_13300 + 492 len 20]
                    mem[t + 832] = mem[_13300 + 524 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 864
                    continue 
                mem[_12558 + 32] = mem[_12538]
                mem[_12558 + 64] = mem[_12538 + 32]
                mem[_12558 + 96] = mem[_12538 + 64]
                mem[_12558 + 128] = mem[_12538 + 96]
                mem[_12558 + 160] = mem[_12538 + 128]
                mem[_12558 + 192] = mem[_12538 + 160]
                mem[_12558 + 224] = mem[_12538 + 192]
                mem[_12558 + 256] = mem[_12538 + 224]
                return memory
                  from mem[64]
                   len _12558 + (864 * _12576) + -mem[64] + 320
            mem[_10744 + 32 len 64 * _10740] = call.data[calldata.size len 64 * _10740]
            _11379 = mem[(32 * arg2.length) + 384]
            idx = 0
            while idx < _11379:
                require idx < mem[(32 * arg2.length) + 384]
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (32 * arg2.length) + 416])
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11501 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _11523 = mem[_11501]
                require mem[_11501] == mem[_11501 + 12 len 20]
                require mem[_11501 + 32] == mem[_11501 + 44 len 20]
                require mem[_11501 + 64] == mem[_11501 + 76 len 20]
                require 2 * idx < mem[_10744]
                require (2 * idx) + 1 < mem[_10744]
                mem[(32 * (2 * idx) + 1) + _10744 + 32] = mem[_11501 + 76 len 20]
                mem[(64 * idx) + _10744 + 32] = address(_11523)
                _11379 = mem[(32 * arg2.length) + 384]
                idx = idx + 1
                continue 
            mem[mem[64]] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            _11455 = mem[_10744]
            mem[mem[64] + 68] = mem[_10744]
            idx = 0
            s = _10744 + 32
            t = mem[64] + 100
            while idx < _11455:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 36] = arg1
            require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
            staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] rg1, address rg2) with:
                    gas gas_remaining wei
                   args 64, address(arg1), mem[mem[64] + 68 len (32 * _11455) + 32]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12505 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _12521 = mem[_12505]
            require mem[_12505] == mem[_12505]
            _12539 = mem[64]
            mem[64] = mem[64] + 256
            mem[_12539] = _10530
            mem[_12539 + 32] = _10564
            mem[_12539 + 64] = _10604
            mem[_12539 + 96] = _10632
            mem[_12539 + 128] = _10668
            mem[_12539 + 160] = _10708
            mem[_12539 + 192] = _3392
            mem[_12539 + 224] = _12521
            _12559 = mem[64]
            mem[mem[64]] = 288
            _12577 = mem[(64 * arg2.length) + 416]
            mem[mem[64] + 288] = mem[(64 * arg2.length) + 416]
            idx = 0
            s = (64 * arg2.length) + 448
            t = mem[64] + 320
            while idx < _12577:
                _13117 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_13117 + 32]
                mem[t + 64] = mem[_13117 + 64]
                mem[t + 96] = mem[_13117 + 96]
                mem[t + 128] = mem[_13117 + 128]
                mem[t + 160] = mem[_13117 + 160]
                mem[t + 192] = mem[_13117 + 192]
                mem[t + 224] = mem[_13117 + 224]
                mem[t + 256] = mem[_13117 + 256]
                mem[t + 288] = bool(mem[_13117 + 288])
                _13301 = mem[_13117 + 320]
                mem[t + 320] = mem[mem[_13117 + 320]]
                mem[t + 352] = mem[_13301 + 32]
                mem[t + 384] = mem[_13301 + 64]
                mem[t + 416] = bool(mem[_13301 + 96])
                mem[t + 448] = bool(mem[_13301 + 128])
                mem[t + 480] = bool(mem[_13301 + 160])
                mem[t + 512] = bool(mem[_13301 + 192])
                mem[t + 544] = bool(mem[_13301 + 224])
                mem[t + 576] = mem[_13301 + 256]
                mem[t + 608] = mem[_13301 + 288]
                mem[t + 640] = mem[_13301 + 320]
                mem[t + 672] = mem[_13301 + 352]
                mem[t + 704] = mem[_13301 + 384]
                mem[t + 736] = mem[_13301 + 416]
                mem[t + 768] = mem[_13301 + 460 len 20]
                mem[t + 800] = mem[_13301 + 492 len 20]
                mem[t + 832] = mem[_13301 + 524 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 864
                continue 
            mem[_12559 + 32] = mem[_12539]
            mem[_12559 + 64] = mem[_12539 + 32]
            mem[_12559 + 96] = mem[_12539 + 64]
            mem[_12559 + 128] = mem[_12539 + 96]
            mem[_12559 + 160] = mem[_12539 + 128]
            mem[_12559 + 192] = mem[_12539 + 160]
            mem[_12559 + 224] = mem[_12539 + 192]
            mem[_12559 + 256] = mem[_12539 + 224]
            return memory
              from mem[64]
               len _12559 + (864 * _12577) + -mem[64] + 320
        mem[(98 * arg2.length) + 448] = 0
        mem[(98 * arg2.length) + 480] = 0
        mem[(98 * arg2.length) + 512] = 0
        mem[(98 * arg2.length) + 544] = 0
        mem[(98 * arg2.length) + 576] = 0
        mem[(98 * arg2.length) + 608] = 0
        mem[(98 * arg2.length) + 640] = 0
        mem[(98 * arg2.length) + 672] = 0
        mem[(98 * arg2.length) + 704] = 0
        mem[(98 * arg2.length) + 736] = 0
        mem[64] = (98 * arg2.length) + 1344
        mem[(98 * arg2.length) + 800] = 0
        mem[(98 * arg2.length) + 832] = 0
        mem[(98 * arg2.length) + 864] = 0
        mem[(98 * arg2.length) + 896] = 0
        mem[(98 * arg2.length) + 928] = 0
        mem[(98 * arg2.length) + 960] = 0
        mem[(98 * arg2.length) + 992] = 0
        mem[(98 * arg2.length) + 1024] = 0
        mem[(98 * arg2.length) + 1056] = 0
        mem[(98 * arg2.length) + 1088] = 0
        mem[(98 * arg2.length) + 1120] = 0
        mem[(98 * arg2.length) + 1152] = 0
        mem[(98 * arg2.length) + 1184] = 0
        mem[(98 * arg2.length) + 1216] = 0
        mem[(98 * arg2.length) + 1248] = 0
        mem[(98 * arg2.length) + 1280] = 0
        mem[(98 * arg2.length) + 1312] = 0
        mem[(98 * arg2.length) + 768] = (98 * arg2.length) + 800
        mem[var47002] = (98 * arg2.length) + 448
        s = (98 * arg2.length) + 768
        s = (98 * arg2.length) + 448
        s = var47002
        idx = var47003
        while idx - 1:
            _4468 = mem[64]
            mem[64] = mem[64] + 352
            mem[_4468] = 0
            mem[_4468 + 32] = 0
            mem[_4468 + 64] = 0
            mem[_4468 + 96] = 0
            mem[_4468 + 128] = 0
            mem[_4468 + 160] = 0
            mem[_4468 + 192] = 0
            mem[_4468 + 224] = 0
            mem[_4468 + 256] = 0
            mem[_4468 + 288] = 0
            mem[64] = mem[64] + 544
            mem[(98 * arg2.length) + 800] = 0
            mem[(98 * arg2.length) + 832] = 0
            mem[(98 * arg2.length) + 864] = 0
            mem[(98 * arg2.length) + 896] = 0
            mem[(98 * arg2.length) + 928] = 0
            mem[(98 * arg2.length) + 960] = 0
            mem[(98 * arg2.length) + 992] = 0
            mem[(98 * arg2.length) + 1024] = 0
            mem[(98 * arg2.length) + 1056] = 0
            mem[(98 * arg2.length) + 1088] = 0
            mem[(98 * arg2.length) + 1120] = 0
            mem[(98 * arg2.length) + 1152] = 0
            mem[(98 * arg2.length) + 1184] = 0
            mem[(98 * arg2.length) + 1216] = 0
            mem[(98 * arg2.length) + 1248] = 0
            mem[(98 * arg2.length) + 1280] = 0
            mem[(98 * arg2.length) + 1312] = 0
            mem[_4468 + 320] = (98 * arg2.length) + 800
            mem[s + 32] = _4468
            s = _4468 + 320
            s = _4468
            s = s + 32
            idx = idx - 1
            continue 
        require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
        staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getPriceOracle() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4490 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4516 = mem[_4490]
        require mem[_4490] == mem[_4490 + 12 len 20]
        mem[mem[64]] = 0x9d23d9f200000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _4580 = mem[(32 * arg2.length) + 384]
        mem[mem[64] + 36] = mem[(32 * arg2.length) + 384]
        idx = 0
        s = (32 * arg2.length) + 416
        t = mem[64] + 68
        while idx < _4580:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(_4516))
        staticcall address(_4516).getAssetsPrices(address[] rg1) with:
                gas gas_remaining wei
               args 32, mem[mem[64] + 36 len (32 * _4580) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _5610 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _5623 = mem[_5610]
        require mem[_5610] <= test266151307()
        require _5610 + mem[_5610] + 31 < _5610 + return_data.size
        _5634 = mem[_5610 + mem[_5610]]
        require mem[_5610 + mem[_5610]] <= test266151307()
        require _5610 + ceil32(return_data.size) + (32 * mem[_5610 + mem[_5610]]) + 32 <= test266151307() and (32 * mem[_5610 + mem[_5610]]) + 32 >= 0
        mem[64] = _5610 + ceil32(return_data.size) + (32 * mem[_5610 + mem[_5610]]) + 32
        mem[_5610 + ceil32(return_data.size)] = _5634
        require _5623 + (32 * _5634) + 32 <= return_data.size
        idx = 0
        s = _5610 + _5623 + 32
        t = _5610 + ceil32(return_data.size) + 32
        while idx < _5634:
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
        _6822 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _6844 = mem[_6822]
        require mem[_6822] == mem[_6822]
        require _5634 <= test266151307()
        _6871 = mem[64]
        mem[mem[64]] = _5634
        mem[64] = mem[64] + (32 * _5634) + 32
        if not _5634:
            idx = 0
            while idx < _5634:
                _7949 = mem[64]
                mem[64] = mem[64] + 64
                require idx < mem[_5610 + ceil32(return_data.size)]
                mem[_7949] = 10^10 * mem[(32 * idx) + _5610 + ceil32(return_data.size) + 32]
                require idx < mem[_5610 + ceil32(return_data.size)]
                if not _6844:
                    mem[_7949 + 32] = 0
                else:
                    require _6844
                    if 10^18 * mem[(32 * idx) + _5610 + ceil32(return_data.size) + 32] * _6844 / _6844 != 10^18 * mem[(32 * idx) + _5610 + ceil32(return_data.size) + 32]:
                        revert with 0, 'math-not-safe'
                    if (10^18 * mem[(32 * idx) + _5610 + ceil32(return_data.size) + 32] * _6844) + 5 * 10^17 < 10^18 * mem[(32 * idx) + _5610 + ceil32(return_data.size) + 32] * _6844:
                        revert with 0, 'math-not-safe'
                    mem[_7949 + 32] = (10^18 * mem[(32 * idx) + _5610 + ceil32(return_data.size) + 32] * _6844) + 5 * 10^17 / 10^18
                require idx < mem[_6871]
                mem[(32 * idx) + _6871 + 32] = _7949
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg2.length:
                require idx < mem[(32 * arg2.length) + 384]
                _11442 = mem[(32 * idx) + (32 * arg2.length) + 416]
                require idx < mem[_6871]
                _11449 = mem[mem[(32 * idx) + _6871 + 32]]
                require idx < mem[_6871]
                _11458 = mem[mem[(32 * idx) + _6871 + 32] + 32]
                _11477 = mem[64]
                mem[64] = mem[64] + 352
                mem[_11477] = 0
                mem[_11477 + 32] = 0
                mem[_11477 + 64] = 0
                mem[_11477 + 96] = 0
                mem[_11477 + 128] = 0
                mem[_11477 + 160] = 0
                mem[_11477 + 192] = 0
                mem[_11477 + 224] = 0
                mem[_11477 + 256] = 0
                mem[_11477 + 288] = 0
                _11480 = mem[64]
                mem[64] = mem[64] + 544
                mem[_11480] = 0
                mem[_11480 + 32] = 0
                mem[_11480 + 64] = 0
                mem[_11480 + 96] = 0
                mem[_11480 + 128] = 0
                mem[_11480 + 160] = 0
                mem[_11480 + 192] = 0
                mem[_11480 + 224] = 0
                mem[_11480 + 256] = 0
                mem[_11480 + 288] = 0
                mem[_11480 + 320] = 0
                mem[_11480 + 352] = 0
                mem[_11480 + 384] = 0
                mem[_11480 + 416] = 0
                mem[_11480 + 448] = 0
                mem[_11480 + 480] = 0
                mem[_11480 + 512] = 0
                mem[_11477 + 320] = _11480
                _11502 = mem[64]
                mem[64] = mem[64] + 544
                mem[_11502] = 0
                mem[_11502 + 32] = 0
                mem[_11502 + 64] = 0
                mem[_11502 + 96] = 0
                mem[_11502 + 128] = 0
                mem[_11502 + 160] = 0
                mem[_11502 + 192] = 0
                mem[_11502 + 224] = 0
                mem[_11502 + 256] = 0
                mem[_11502 + 288] = 0
                mem[_11502 + 320] = 0
                mem[_11502 + 352] = 0
                mem[_11502 + 384] = 0
                mem[_11502 + 416] = 0
                mem[_11502 + 448] = 0
                mem[_11502 + 480] = 0
                mem[_11502 + 512] = 0
                _11525 = mem[64]
                mem[64] = mem[64] + 544
                mem[_11525] = 0
                mem[_11525 + 32] = 0
                mem[_11525 + 64] = 0
                mem[_11525 + 96] = 0
                mem[_11525 + 128] = 0
                mem[_11525 + 160] = 0
                mem[_11525 + 192] = 0
                mem[_11525 + 224] = 0
                mem[_11525 + 256] = 0
                mem[_11525 + 288] = 0
                mem[_11525 + 320] = 0
                mem[_11525 + 352] = 0
                mem[_11525 + 384] = 0
                mem[_11525 + 416] = 0
                mem[_11525 + 448] = 0
                mem[_11525 + 480] = 0
                mem[_11525 + 512] = 0
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveConfigurationData(address rg1) with:
                        gas gas_remaining wei
                       args address(_11442)
                mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11601 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 320
                require mem[_11601] == mem[_11601]
                _11669 = mem[_11601 + 32]
                require mem[_11601 + 32] == mem[_11601 + 32]
                _11710 = mem[_11601 + 64]
                require mem[_11601 + 64] == mem[_11601 + 64]
                require mem[_11601 + 96] == mem[_11601 + 96]
                _11808 = mem[_11601 + 128]
                require mem[_11601 + 128] == mem[_11601 + 128]
                _11842 = mem[_11601 + 160]
                require mem[_11601 + 160] == bool(mem[_11601 + 160])
                _11884 = mem[_11601 + 192]
                require mem[_11601 + 192] == bool(mem[_11601 + 192])
                _11934 = mem[_11601 + 224]
                require mem[_11601 + 224] == bool(mem[_11601 + 224])
                _11993 = mem[_11601 + 256]
                require mem[_11601 + 256] == bool(mem[_11601 + 256])
                require mem[_11601 + 288] == bool(mem[_11601 + 288])
                mem[_11525 + 224] = bool(mem[_11601 + 288])
                mem[_11525 + 192] = bool(_11993)
                mem[_11525 + 160] = bool(_11934)
                mem[_11525 + 128] = bool(_11884)
                mem[_11525 + 96] = bool(_11842)
                mem[_11525 + 64] = _11808
                mem[_11525 + 32] = _11710
                mem[_11525] = _11669
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                        gas gas_remaining wei
                       args address(_11442)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12120 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _12133 = mem[_12120]
                require mem[_12120] == mem[_12120 + 12 len 20]
                _12175 = mem[_12120 + 32]
                require mem[_12120 + 32] == mem[_12120 + 44 len 20]
                require mem[_12120 + 64] == mem[_12120 + 76 len 20]
                mem[_11525 + 512] = mem[_12120 + 76 len 20]
                mem[_11525 + 480] = address(_12175)
                mem[_11525 + 448] = address(_12133)
                _12274 = mem[64]
                mem[64] = mem[64] + 96
                mem[_12274] = 0
                mem[_12274 + 32] = 0
                mem[_12274 + 64] = 0
                require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
                staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.assets(address rg1) with:
                        gas gas_remaining wei
                       args address(_12133)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12340 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _12360 = mem[64]
                require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                mem[64] = mem[64] + 96
                require mem[_12340] == mem[_12340 + 16 len 16]
                mem[_12360] = mem[_12340]
                require mem[_12340 + 32] == mem[_12340 + 48 len 16]
                mem[_12360 + 32] = mem[_12340 + 32]
                require mem[_12340 + 64] == mem[_12340 + 64]
                mem[_12360 + 64] = mem[_12340 + 64]
                mem[_11525 + 384] = mem[_12360 + 16 len 16]
                require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
                staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.assets(address rg1) with:
                        gas gas_remaining wei
                       args address(mem[_11525 + 512])
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12439 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _12450 = mem[64]
                require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                mem[64] = mem[64] + 96
                require mem[_12439] == mem[_12439 + 16 len 16]
                mem[_12450] = mem[_12439]
                require mem[_12439 + 32] == mem[_12439 + 48 len 16]
                mem[_12450 + 32] = mem[_12439 + 32]
                require mem[_12439 + 64] == mem[_12439 + 64]
                mem[_12450 + 64] = mem[_12439 + 64]
                mem[_11525 + 416] = mem[_12450 + 16 len 16]
                require ext_code.size(address(_12133))
                staticcall address(_12133).0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12570 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_12570] == mem[_12570]
                mem[_11525 + 256] = mem[_12570]
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(_11442), arg1
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12706 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                _12724 = mem[_12706]
                require mem[_12706] == mem[_12706]
                _12774 = mem[_12706 + 32]
                require mem[_12706 + 32] == mem[_12706 + 32]
                _12816 = mem[_12706 + 64]
                require mem[_12706 + 64] == mem[_12706 + 64]
                require mem[_12706 + 96] == mem[_12706 + 96]
                require mem[_12706 + 128] == mem[_12706 + 128]
                _12914 = mem[_12706 + 160]
                require mem[_12706 + 160] == mem[_12706 + 160]
                require mem[_12706 + 192] == mem[_12706 + 192]
                require mem[_12706 + 224] == mem[_12706 + 251 len 5]
                require mem[_12706 + 256] == bool(mem[_12706 + 256])
                mem[_11477 + 288] = bool(mem[_12706 + 256])
                mem[_11477 + 224] = _12914
                mem[_11477 + 128] = _12816
                mem[_11477 + 96] = _12774
                mem[_11477 + 64] = _12724
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveData(address rg1) with:
                        gas gas_remaining wei
                       args address(_11442)
                mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _13034 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 320
                _13048 = mem[_13034]
                require mem[_13034] == mem[_13034]
                _13066 = mem[_13034 + 32]
                require mem[_13034 + 32] == mem[_13034 + 32]
                _13084 = mem[_13034 + 64]
                require mem[_13034 + 64] == mem[_13034 + 64]
                _13098 = mem[_13034 + 96]
                require mem[_13034 + 96] == mem[_13034 + 96]
                _13104 = mem[_13034 + 128]
                require mem[_13034 + 128] == mem[_13034 + 128]
                require mem[_13034 + 160] == mem[_13034 + 160]
                require mem[_13034 + 192] == mem[_13034 + 192]
                require mem[_13034 + 224] == mem[_13034 + 224]
                require mem[_13034 + 256] == mem[_13034 + 256]
                require mem[_13034 + 288] == mem[_13034 + 315 len 5]
                mem[_11477 + 192] = mem[_13034 + 160]
                mem[_11477 + 256] = _13104
                mem[_11477 + 160] = _13098
                mem[_11525 + 352] = _13084
                mem[_11525 + 320] = _13066
                mem[_11525 + 288] = _13048
                mem[_11477] = _11449
                mem[_11477 + 32] = _11458
                mem[_11477 + 320] = _11525
                require idx < mem[(64 * arg2.length) + 416]
                mem[(32 * idx) + (64 * arg2.length) + 448] = _11477
                idx = idx + 1
                continue 
            require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
            staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getLendingPool() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11428 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _11456 = mem[_11428]
            require mem[_11428] == mem[_11428 + 12 len 20]
            _11540 = mem[64]
            mem[64] = mem[64] + 256
            mem[_11540] = 0
            mem[_11540 + 32] = 0
            mem[_11540 + 64] = 0
            mem[_11540 + 96] = 0
            mem[_11540 + 128] = 0
            mem[_11540 + 160] = 0
            mem[_11540 + 192] = 0
            mem[_11540 + 224] = 0
            require ext_code.size(address(_11456))
            staticcall address(_11456).0xbf92857c with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11627 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _11638 = mem[_11627]
            require mem[_11627] == mem[_11627]
            _11682 = mem[_11627 + 32]
            require mem[_11627 + 32] == mem[_11627 + 32]
            _11724 = mem[_11627 + 64]
            require mem[_11627 + 64] == mem[_11627 + 64]
            _11765 = mem[_11627 + 96]
            require mem[_11627 + 96] == mem[_11627 + 96]
            _11812 = mem[_11627 + 128]
            require mem[_11627 + 128] == mem[_11627 + 128]
            _11860 = mem[_11627 + 160]
            require mem[_11627 + 160] == mem[_11627 + 160]
            _11908 = mem[(32 * arg2.length) + 384]
            require 2 * mem[(32 * arg2.length) + 384] <= test266151307()
            _11910 = mem[64]
            mem[mem[64]] = 2 * mem[(32 * arg2.length) + 384]
            mem[64] = mem[64] + (64 * _11908) + 32
            if not uint255(_11908):
                _12452 = mem[(32 * arg2.length) + 384]
                idx = 0
                while idx < _12452:
                    require idx < mem[(32 * arg2.length) + 384]
                    require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                    staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                            gas gas_remaining wei
                           args address(mem[(32 * idx) + (32 * arg2.length) + 416])
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _12512 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _12528 = mem[_12512]
                    require mem[_12512] == mem[_12512 + 12 len 20]
                    require mem[_12512 + 32] == mem[_12512 + 44 len 20]
                    require mem[_12512 + 64] == mem[_12512 + 76 len 20]
                    require 2 * idx < mem[_11910]
                    require (2 * idx) + 1 < mem[_11910]
                    mem[(32 * (2 * idx) + 1) + _11910 + 32] = mem[_12512 + 76 len 20]
                    mem[(64 * idx) + _11910 + 32] = address(_12528)
                    _12452 = mem[(32 * arg2.length) + 384]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _12486 = mem[_11910]
                mem[mem[64] + 68] = mem[_11910]
                idx = 0
                s = _11910 + 32
                t = mem[64] + 100
                while idx < _12486:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 36] = arg1
                require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
                staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] rg1, address rg2) with:
                        gas gas_remaining wei
                       args 64, address(arg1), mem[mem[64] + 68 len (32 * _12486) + 32]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _13178 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _13188 = mem[_13178]
                require mem[_13178] == mem[_13178]
                _13216 = mem[64]
                mem[64] = mem[64] + 256
                mem[_13216] = _11638
                mem[_13216 + 32] = _11682
                mem[_13216 + 64] = _11724
                mem[_13216 + 96] = _11765
                mem[_13216 + 128] = _11812
                mem[_13216 + 160] = _11860
                mem[_13216 + 192] = _6844
                mem[_13216 + 224] = _13188
                _13228 = mem[64]
                mem[mem[64]] = 288
                _13242 = mem[(64 * arg2.length) + 416]
                mem[mem[64] + 288] = mem[(64 * arg2.length) + 416]
                idx = 0
                s = (64 * arg2.length) + 448
                t = mem[64] + 320
                while idx < _13242:
                    _13774 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_13774 + 32]
                    mem[t + 64] = mem[_13774 + 64]
                    mem[t + 96] = mem[_13774 + 96]
                    mem[t + 128] = mem[_13774 + 128]
                    mem[t + 160] = mem[_13774 + 160]
                    mem[t + 192] = mem[_13774 + 192]
                    mem[t + 224] = mem[_13774 + 224]
                    mem[t + 256] = mem[_13774 + 256]
                    mem[t + 288] = bool(mem[_13774 + 288])
                    _13946 = mem[_13774 + 320]
                    mem[t + 320] = mem[mem[_13774 + 320]]
                    mem[t + 352] = mem[_13946 + 32]
                    mem[t + 384] = mem[_13946 + 64]
                    mem[t + 416] = bool(mem[_13946 + 96])
                    mem[t + 448] = bool(mem[_13946 + 128])
                    mem[t + 480] = bool(mem[_13946 + 160])
                    mem[t + 512] = bool(mem[_13946 + 192])
                    mem[t + 544] = bool(mem[_13946 + 224])
                    mem[t + 576] = mem[_13946 + 256]
                    mem[t + 608] = mem[_13946 + 288]
                    mem[t + 640] = mem[_13946 + 320]
                    mem[t + 672] = mem[_13946 + 352]
                    mem[t + 704] = mem[_13946 + 384]
                    mem[t + 736] = mem[_13946 + 416]
                    mem[t + 768] = mem[_13946 + 460 len 20]
                    mem[t + 800] = mem[_13946 + 492 len 20]
                    mem[t + 832] = mem[_13946 + 524 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 864
                    continue 
                mem[_13228 + 32] = mem[_13216]
                mem[_13228 + 64] = mem[_13216 + 32]
                mem[_13228 + 96] = mem[_13216 + 64]
                mem[_13228 + 128] = mem[_13216 + 96]
                mem[_13228 + 160] = mem[_13216 + 128]
                mem[_13228 + 192] = mem[_13216 + 160]
                mem[_13228 + 224] = mem[_13216 + 192]
                mem[_13228 + 256] = mem[_13216 + 224]
                return memory
                  from mem[64]
                   len _13228 + (864 * _13242) + -mem[64] + 320
            mem[_11910 + 32 len 64 * _11908] = call.data[calldata.size len 64 * _11908]
            _12453 = mem[(32 * arg2.length) + 384]
            idx = 0
            while idx < _12453:
                require idx < mem[(32 * arg2.length) + 384]
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (32 * arg2.length) + 416])
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12513 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _12529 = mem[_12513]
                require mem[_12513] == mem[_12513 + 12 len 20]
                require mem[_12513 + 32] == mem[_12513 + 44 len 20]
                require mem[_12513 + 64] == mem[_12513 + 76 len 20]
                require 2 * idx < mem[_11910]
                require (2 * idx) + 1 < mem[_11910]
                mem[(32 * (2 * idx) + 1) + _11910 + 32] = mem[_12513 + 76 len 20]
                mem[(64 * idx) + _11910 + 32] = address(_12529)
                _12453 = mem[(32 * arg2.length) + 384]
                idx = idx + 1
                continue 
            mem[mem[64]] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            _12487 = mem[_11910]
            mem[mem[64] + 68] = mem[_11910]
            idx = 0
            s = _11910 + 32
            t = mem[64] + 100
            while idx < _12487:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 36] = arg1
            require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
            staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] rg1, address rg2) with:
                    gas gas_remaining wei
                   args 64, address(arg1), mem[mem[64] + 68 len (32 * _12487) + 32]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13179 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _13189 = mem[_13179]
            require mem[_13179] == mem[_13179]
            _13217 = mem[64]
            mem[64] = mem[64] + 256
            mem[_13217] = _11638
            mem[_13217 + 32] = _11682
            mem[_13217 + 64] = _11724
            mem[_13217 + 96] = _11765
            mem[_13217 + 128] = _11812
            mem[_13217 + 160] = _11860
            mem[_13217 + 192] = _6844
            mem[_13217 + 224] = _13189
            _13229 = mem[64]
            mem[mem[64]] = 288
            _13243 = mem[(64 * arg2.length) + 416]
            mem[mem[64] + 288] = mem[(64 * arg2.length) + 416]
            idx = 0
            s = (64 * arg2.length) + 448
            t = mem[64] + 320
            while idx < _13243:
                _13775 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_13775 + 32]
                mem[t + 64] = mem[_13775 + 64]
                mem[t + 96] = mem[_13775 + 96]
                mem[t + 128] = mem[_13775 + 128]
                mem[t + 160] = mem[_13775 + 160]
                mem[t + 192] = mem[_13775 + 192]
                mem[t + 224] = mem[_13775 + 224]
                mem[t + 256] = mem[_13775 + 256]
                mem[t + 288] = bool(mem[_13775 + 288])
                _13947 = mem[_13775 + 320]
                mem[t + 320] = mem[mem[_13775 + 320]]
                mem[t + 352] = mem[_13947 + 32]
                mem[t + 384] = mem[_13947 + 64]
                mem[t + 416] = bool(mem[_13947 + 96])
                mem[t + 448] = bool(mem[_13947 + 128])
                mem[t + 480] = bool(mem[_13947 + 160])
                mem[t + 512] = bool(mem[_13947 + 192])
                mem[t + 544] = bool(mem[_13947 + 224])
                mem[t + 576] = mem[_13947 + 256]
                mem[t + 608] = mem[_13947 + 288]
                mem[t + 640] = mem[_13947 + 320]
                mem[t + 672] = mem[_13947 + 352]
                mem[t + 704] = mem[_13947 + 384]
                mem[t + 736] = mem[_13947 + 416]
                mem[t + 768] = mem[_13947 + 460 len 20]
                mem[t + 800] = mem[_13947 + 492 len 20]
                mem[t + 832] = mem[_13947 + 524 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 864
                continue 
            mem[_13229 + 32] = mem[_13217]
            mem[_13229 + 64] = mem[_13217 + 32]
            mem[_13229 + 96] = mem[_13217 + 64]
            mem[_13229 + 128] = mem[_13217 + 96]
            mem[_13229 + 160] = mem[_13217 + 128]
            mem[_13229 + 192] = mem[_13217 + 160]
            mem[_13229 + 224] = mem[_13217 + 192]
            mem[_13229 + 256] = mem[_13217 + 224]
            return memory
              from mem[64]
               len _13229 + (864 * _13243) + -mem[64] + 320
        mem[64] = _6871 + (32 * _5634) + 96
        mem[_6871 + (32 * _5634) + 32] = 0
        mem[_6871 + (32 * _5634) + 64] = 0
        mem[var116001] = _6871 + (32 * _5634) + 32
        s = var116001
        idx = var116002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_6871 + (32 * _5634) + 32] = 0
            mem[_6871 + (32 * _5634) + 64] = 0
            mem[s + 32] = _6871 + (32 * _5634) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _10354 = mem[_5610 + ceil32(return_data.size)]
        idx = 0
        while idx < _10354:
            _10362 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[_5610 + ceil32(return_data.size)]
            mem[_10362] = 10^10 * mem[(32 * idx) + _5610 + ceil32(return_data.size) + 32]
            require idx < mem[_5610 + ceil32(return_data.size)]
            if not _6844:
                mem[_10362 + 32] = 0
            else:
                require _6844
                if 10^18 * mem[(32 * idx) + _5610 + ceil32(return_data.size) + 32] * _6844 / _6844 != 10^18 * mem[(32 * idx) + _5610 + ceil32(return_data.size) + 32]:
                    revert with 0, 'math-not-safe'
                if (10^18 * mem[(32 * idx) + _5610 + ceil32(return_data.size) + 32] * _6844) + 5 * 10^17 < 10^18 * mem[(32 * idx) + _5610 + ceil32(return_data.size) + 32] * _6844:
                    revert with 0, 'math-not-safe'
                mem[_10362 + 32] = (10^18 * mem[(32 * idx) + _5610 + ceil32(return_data.size) + 32] * _6844) + 5 * 10^17 / 10^18
            require idx < mem[_6871]
            mem[(32 * idx) + _6871 + 32] = _10362
            _10354 = mem[_5610 + ceil32(return_data.size)]
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg2.length:
            require idx < mem[(32 * arg2.length) + 384]
            _13142 = mem[(32 * idx) + (32 * arg2.length) + 416]
            require idx < mem[_6871]
            _13147 = mem[mem[(32 * idx) + _6871 + 32]]
            require idx < mem[_6871]
            _13154 = mem[mem[(32 * idx) + _6871 + 32] + 32]
            _13166 = mem[64]
            mem[64] = mem[64] + 352
            mem[_13166] = 0
            mem[_13166 + 32] = 0
            mem[_13166 + 64] = 0
            mem[_13166 + 96] = 0
            mem[_13166 + 128] = 0
            mem[_13166 + 160] = 0
            mem[_13166 + 192] = 0
            mem[_13166 + 224] = 0
            mem[_13166 + 256] = 0
            mem[_13166 + 288] = 0
            _13170 = mem[64]
            mem[64] = mem[64] + 544
            mem[_13170] = 0
            mem[_13170 + 32] = 0
            mem[_13170 + 64] = 0
            mem[_13170 + 96] = 0
            mem[_13170 + 128] = 0
            mem[_13170 + 160] = 0
            mem[_13170 + 192] = 0
            mem[_13170 + 224] = 0
            mem[_13170 + 256] = 0
            mem[_13170 + 288] = 0
            mem[_13170 + 320] = 0
            mem[_13170 + 352] = 0
            mem[_13170 + 384] = 0
            mem[_13170 + 416] = 0
            mem[_13170 + 448] = 0
            mem[_13170 + 480] = 0
            mem[_13170 + 512] = 0
            mem[_13166 + 320] = _13170
            _13186 = mem[64]
            mem[64] = mem[64] + 544
            mem[_13186] = 0
            mem[_13186 + 32] = 0
            mem[_13186 + 64] = 0
            mem[_13186 + 96] = 0
            mem[_13186 + 128] = 0
            mem[_13186 + 160] = 0
            mem[_13186 + 192] = 0
            mem[_13186 + 224] = 0
            mem[_13186 + 256] = 0
            mem[_13186 + 288] = 0
            mem[_13186 + 320] = 0
            mem[_13186 + 352] = 0
            mem[_13186 + 384] = 0
            mem[_13186 + 416] = 0
            mem[_13186 + 448] = 0
            mem[_13186 + 480] = 0
            mem[_13186 + 512] = 0
            _13196 = mem[64]
            mem[64] = mem[64] + 544
            mem[_13196] = 0
            mem[_13196 + 32] = 0
            mem[_13196 + 64] = 0
            mem[_13196 + 96] = 0
            mem[_13196 + 128] = 0
            mem[_13196 + 160] = 0
            mem[_13196 + 192] = 0
            mem[_13196 + 224] = 0
            mem[_13196 + 256] = 0
            mem[_13196 + 288] = 0
            mem[_13196 + 320] = 0
            mem[_13196 + 352] = 0
            mem[_13196 + 384] = 0
            mem[_13196 + 416] = 0
            mem[_13196 + 448] = 0
            mem[_13196 + 480] = 0
            mem[_13196 + 512] = 0
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveConfigurationData(address rg1) with:
                    gas gas_remaining wei
                   args address(_13142)
            mem[mem[64] len 320] = ext_call.return_data[0 len 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13235 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 320
            require mem[_13235] == mem[_13235]
            _13276 = mem[_13235 + 32]
            require mem[_13235 + 32] == mem[_13235 + 32]
            _13302 = mem[_13235 + 64]
            require mem[_13235 + 64] == mem[_13235 + 64]
            require mem[_13235 + 96] == mem[_13235 + 96]
            _13360 = mem[_13235 + 128]
            require mem[_13235 + 128] == mem[_13235 + 128]
            _13382 = mem[_13235 + 160]
            require mem[_13235 + 160] == bool(mem[_13235 + 160])
            _13404 = mem[_13235 + 192]
            require mem[_13235 + 192] == bool(mem[_13235 + 192])
            _13430 = mem[_13235 + 224]
            require mem[_13235 + 224] == bool(mem[_13235 + 224])
            _13467 = mem[_13235 + 256]
            require mem[_13235 + 256] == bool(mem[_13235 + 256])
            require mem[_13235 + 288] == bool(mem[_13235 + 288])
            mem[_13196 + 224] = bool(mem[_13235 + 288])
            mem[_13196 + 192] = bool(_13467)
            mem[_13196 + 160] = bool(_13430)
            mem[_13196 + 128] = bool(_13404)
            mem[_13196 + 96] = bool(_13382)
            mem[_13196 + 64] = _13360
            mem[_13196 + 32] = _13302
            mem[_13196] = _13276
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                    gas gas_remaining wei
                   args address(_13142)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13554 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _13561 = mem[_13554]
            require mem[_13554] == mem[_13554 + 12 len 20]
            _13591 = mem[_13554 + 32]
            require mem[_13554 + 32] == mem[_13554 + 44 len 20]
            require mem[_13554 + 64] == mem[_13554 + 76 len 20]
            mem[_13196 + 512] = mem[_13554 + 76 len 20]
            mem[_13196 + 480] = address(_13591)
            mem[_13196 + 448] = address(_13561)
            _13654 = mem[64]
            mem[64] = mem[64] + 96
            mem[_13654] = 0
            mem[_13654 + 32] = 0
            mem[_13654 + 64] = 0
            require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
            staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.assets(address rg1) with:
                    gas gas_remaining wei
                   args address(_13561)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13692 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _13702 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require mem[_13692] == mem[_13692 + 16 len 16]
            mem[_13702] = mem[_13692]
            require mem[_13692 + 32] == mem[_13692 + 48 len 16]
            mem[_13702 + 32] = mem[_13692 + 32]
            require mem[_13692 + 64] == mem[_13692 + 64]
            mem[_13702 + 64] = mem[_13692 + 64]
            mem[_13196 + 384] = mem[_13702 + 16 len 16]
            require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
            staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.assets(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[_13196 + 512])
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13761 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _13768 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require mem[_13761] == mem[_13761 + 16 len 16]
            mem[_13768] = mem[_13761]
            require mem[_13761 + 32] == mem[_13761 + 48 len 16]
            mem[_13768 + 32] = mem[_13761 + 32]
            require mem[_13761 + 64] == mem[_13761 + 64]
            mem[_13768 + 64] = mem[_13761 + 64]
            mem[_13196 + 416] = mem[_13768 + 16 len 16]
            require ext_code.size(address(_13561))
            staticcall address(_13561).0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13888 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_13888] == mem[_13888]
            mem[_13196 + 256] = mem[_13888]
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(_13142), arg1
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13982 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _13990 = mem[_13982]
            require mem[_13982] == mem[_13982]
            _14016 = mem[_13982 + 32]
            require mem[_13982 + 32] == mem[_13982 + 32]
            _14042 = mem[_13982 + 64]
            require mem[_13982 + 64] == mem[_13982 + 64]
            require mem[_13982 + 96] == mem[_13982 + 96]
            require mem[_13982 + 128] == mem[_13982 + 128]
            _14104 = mem[_13982 + 160]
            require mem[_13982 + 160] == mem[_13982 + 160]
            require mem[_13982 + 192] == mem[_13982 + 192]
            require mem[_13982 + 224] == mem[_13982 + 251 len 5]
            require mem[_13982 + 256] == bool(mem[_13982 + 256])
            mem[_13166 + 288] = bool(mem[_13982 + 256])
            mem[_13166 + 224] = _14104
            mem[_13166 + 128] = _14042
            mem[_13166 + 96] = _14016
            mem[_13166 + 64] = _13990
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveData(address rg1) with:
                    gas gas_remaining wei
                   args address(_13142)
            mem[mem[64] len 320] = ext_call.return_data[0 len 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14172 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 320
            _14178 = mem[_14172]
            require mem[_14172] == mem[_14172]
            _14188 = mem[_14172 + 32]
            require mem[_14172 + 32] == mem[_14172 + 32]
            _14196 = mem[_14172 + 64]
            require mem[_14172 + 64] == mem[_14172 + 64]
            _14204 = mem[_14172 + 96]
            require mem[_14172 + 96] == mem[_14172 + 96]
            _14210 = mem[_14172 + 128]
            require mem[_14172 + 128] == mem[_14172 + 128]
            require mem[_14172 + 160] == mem[_14172 + 160]
            require mem[_14172 + 192] == mem[_14172 + 192]
            require mem[_14172 + 224] == mem[_14172 + 224]
            require mem[_14172 + 256] == mem[_14172 + 256]
            require mem[_14172 + 288] == mem[_14172 + 315 len 5]
            mem[_13166 + 192] = mem[_14172 + 160]
            mem[_13166 + 256] = _14210
            mem[_13166 + 160] = _14204
            mem[_13196 + 352] = _14196
            mem[_13196 + 320] = _14188
            mem[_13196 + 288] = _14178
            mem[_13166] = _13147
            mem[_13166 + 32] = _13154
            mem[_13166 + 320] = _13196
            require idx < mem[(64 * arg2.length) + 416]
            mem[(32 * idx) + (64 * arg2.length) + 448] = _13166
            idx = idx + 1
            continue 
        require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
        staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getLendingPool() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13134 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _13152 = mem[_13134]
        require mem[_13134] == mem[_13134 + 12 len 20]
        _13204 = mem[64]
        mem[64] = mem[64] + 256
        mem[_13204] = 0
        mem[_13204 + 32] = 0
        mem[_13204 + 64] = 0
        mem[_13204 + 96] = 0
        mem[_13204 + 128] = 0
        mem[_13204 + 160] = 0
        mem[_13204 + 192] = 0
        mem[_13204 + 224] = 0
        require ext_code.size(address(_13152))
        staticcall address(_13152).0xbf92857c with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13250 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _13258 = mem[_13250]
        require mem[_13250] == mem[_13250]
        _13286 = mem[_13250 + 32]
        require mem[_13250 + 32] == mem[_13250 + 32]
        _13318 = mem[_13250 + 64]
        require mem[_13250 + 64] == mem[_13250 + 64]
        _13340 = mem[_13250 + 96]
        require mem[_13250 + 96] == mem[_13250 + 96]
        _13362 = mem[_13250 + 128]
        require mem[_13250 + 128] == mem[_13250 + 128]
        _13390 = mem[_13250 + 160]
        require mem[_13250 + 160] == mem[_13250 + 160]
        _13414 = mem[(32 * arg2.length) + 384]
        require 2 * mem[(32 * arg2.length) + 384] <= test266151307()
        _13416 = mem[64]
        mem[mem[64]] = 2 * mem[(32 * arg2.length) + 384]
        mem[64] = mem[64] + (64 * _13414) + 32
        if not uint255(_13414):
            _13770 = mem[(32 * arg2.length) + 384]
            idx = 0
            while idx < _13770:
                require idx < mem[(32 * arg2.length) + 384]
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (32 * arg2.length) + 416])
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _13830 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _13842 = mem[_13830]
                require mem[_13830] == mem[_13830 + 12 len 20]
                require mem[_13830 + 32] == mem[_13830 + 44 len 20]
                require mem[_13830 + 64] == mem[_13830 + 76 len 20]
                require 2 * idx < mem[_13416]
                require (2 * idx) + 1 < mem[_13416]
                mem[(32 * (2 * idx) + 1) + _13416 + 32] = mem[_13830 + 76 len 20]
                mem[(64 * idx) + _13416 + 32] = address(_13842)
                _13770 = mem[(32 * arg2.length) + 384]
                idx = idx + 1
                continue 
            mem[mem[64]] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            _13804 = mem[_13416]
            mem[mem[64] + 68] = mem[_13416]
            idx = 0
            s = _13416 + 32
            t = mem[64] + 100
            while idx < _13804:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 36] = arg1
            require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
            staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] rg1, address rg2) with:
                    gas gas_remaining wei
                   args 64, address(arg1), mem[mem[64] + 68 len (32 * _13804) + 32]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14232 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _14236 = mem[_14232]
            require mem[_14232] == mem[_14232]
            _14240 = mem[64]
            mem[64] = mem[64] + 256
            mem[_14240] = _13258
            mem[_14240 + 32] = _13286
            mem[_14240 + 64] = _13318
            mem[_14240 + 96] = _13340
            mem[_14240 + 128] = _13362
            mem[_14240 + 160] = _13390
            mem[_14240 + 192] = _6844
            mem[_14240 + 224] = _14236
            _14244 = mem[64]
            mem[mem[64]] = 288
            _14248 = mem[(64 * arg2.length) + 416]
            mem[mem[64] + 288] = mem[(64 * arg2.length) + 416]
            idx = 0
            s = (64 * arg2.length) + 448
            t = mem[64] + 320
            while idx < _14248:
                _14404 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_14404 + 32]
                mem[t + 64] = mem[_14404 + 64]
                mem[t + 96] = mem[_14404 + 96]
                mem[t + 128] = mem[_14404 + 128]
                mem[t + 160] = mem[_14404 + 160]
                mem[t + 192] = mem[_14404 + 192]
                mem[t + 224] = mem[_14404 + 224]
                mem[t + 256] = mem[_14404 + 256]
                mem[t + 288] = bool(mem[_14404 + 288])
                _14484 = mem[_14404 + 320]
                mem[t + 320] = mem[mem[_14404 + 320]]
                mem[t + 352] = mem[_14484 + 32]
                mem[t + 384] = mem[_14484 + 64]
                mem[t + 416] = bool(mem[_14484 + 96])
                mem[t + 448] = bool(mem[_14484 + 128])
                mem[t + 480] = bool(mem[_14484 + 160])
                mem[t + 512] = bool(mem[_14484 + 192])
                mem[t + 544] = bool(mem[_14484 + 224])
                mem[t + 576] = mem[_14484 + 256]
                mem[t + 608] = mem[_14484 + 288]
                mem[t + 640] = mem[_14484 + 320]
                mem[t + 672] = mem[_14484 + 352]
                mem[t + 704] = mem[_14484 + 384]
                mem[t + 736] = mem[_14484 + 416]
                mem[t + 768] = mem[_14484 + 460 len 20]
                mem[t + 800] = mem[_14484 + 492 len 20]
                mem[t + 832] = mem[_14484 + 524 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 864
                continue 
            mem[_14244 + 32] = mem[_14240]
            mem[_14244 + 64] = mem[_14240 + 32]
            mem[_14244 + 96] = mem[_14240 + 64]
            mem[_14244 + 128] = mem[_14240 + 96]
            mem[_14244 + 160] = mem[_14240 + 128]
            mem[_14244 + 192] = mem[_14240 + 160]
            mem[_14244 + 224] = mem[_14240 + 192]
            mem[_14244 + 256] = mem[_14240 + 224]
            return memory
              from mem[64]
               len _14244 + (864 * _14248) + -mem[64] + 320
        mem[_13416 + 32 len 64 * _13414] = call.data[calldata.size len 64 * _13414]
        _13771 = mem[(32 * arg2.length) + 384]
        idx = 0
        while idx < _13771:
            require idx < mem[(32 * arg2.length) + 384]
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + (32 * arg2.length) + 416])
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13831 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _13843 = mem[_13831]
            require mem[_13831] == mem[_13831 + 12 len 20]
            require mem[_13831 + 32] == mem[_13831 + 44 len 20]
            require mem[_13831 + 64] == mem[_13831 + 76 len 20]
            require 2 * idx < mem[_13416]
            require (2 * idx) + 1 < mem[_13416]
            mem[(32 * (2 * idx) + 1) + _13416 + 32] = mem[_13831 + 76 len 20]
            mem[(64 * idx) + _13416 + 32] = address(_13843)
            _13771 = mem[(32 * arg2.length) + 384]
            idx = idx + 1
            continue 
        mem[mem[64]] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        _13805 = mem[_13416]
        mem[mem[64] + 68] = mem[_13416]
        idx = 0
        s = _13416 + 32
        t = mem[64] + 100
        while idx < _13805:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = arg1
        require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
        staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] rg1, address rg2) with:
                gas gas_remaining wei
               args 64, address(arg1), mem[mem[64] + 68 len (32 * _13805) + 32]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14233 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _14237 = mem[_14233]
        require mem[_14233] == mem[_14233]
        _14241 = mem[64]
        mem[64] = mem[64] + 256
        mem[_14241] = _13258
        mem[_14241 + 32] = _13286
        mem[_14241 + 64] = _13318
        mem[_14241 + 96] = _13340
        mem[_14241 + 128] = _13362
        mem[_14241 + 160] = _13390
        mem[_14241 + 192] = _6844
        mem[_14241 + 224] = _14237
        _14245 = mem[64]
        mem[mem[64]] = 288
        _14249 = mem[(64 * arg2.length) + 416]
        mem[mem[64] + 288] = mem[(64 * arg2.length) + 416]
        idx = 0
        s = (64 * arg2.length) + 448
        t = mem[64] + 320
        while idx < _14249:
            _14405 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_14405 + 32]
            mem[t + 64] = mem[_14405 + 64]
            mem[t + 96] = mem[_14405 + 96]
            mem[t + 128] = mem[_14405 + 128]
            mem[t + 160] = mem[_14405 + 160]
            mem[t + 192] = mem[_14405 + 192]
            mem[t + 224] = mem[_14405 + 224]
            mem[t + 256] = mem[_14405 + 256]
            mem[t + 288] = bool(mem[_14405 + 288])
            _14485 = mem[_14405 + 320]
            mem[t + 320] = mem[mem[_14405 + 320]]
            mem[t + 352] = mem[_14485 + 32]
            mem[t + 384] = mem[_14485 + 64]
            mem[t + 416] = bool(mem[_14485 + 96])
            mem[t + 448] = bool(mem[_14485 + 128])
            mem[t + 480] = bool(mem[_14485 + 160])
            mem[t + 512] = bool(mem[_14485 + 192])
            mem[t + 544] = bool(mem[_14485 + 224])
            mem[t + 576] = mem[_14485 + 256]
            mem[t + 608] = mem[_14485 + 288]
            mem[t + 640] = mem[_14485 + 320]
            mem[t + 672] = mem[_14485 + 352]
            mem[t + 704] = mem[_14485 + 384]
            mem[t + 736] = mem[_14485 + 416]
            mem[t + 768] = mem[_14485 + 460 len 20]
            mem[t + 800] = mem[_14485 + 492 len 20]
            mem[t + 832] = mem[_14485 + 524 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 864
            continue 
        mem[_14245 + 32] = mem[_14241]
        mem[_14245 + 64] = mem[_14241 + 32]
        mem[_14245 + 96] = mem[_14241 + 64]
        mem[_14245 + 128] = mem[_14241 + 96]
        mem[_14245 + 160] = mem[_14241 + 128]
        mem[_14245 + 192] = mem[_14241 + 160]
        mem[_14245 + 224] = mem[_14241 + 192]
        mem[_14245 + 256] = mem[_14241 + 224]
        return memory
          from mem[64]
           len _14245 + (864 * _14249) + -mem[64] + 320
    mem[(32 * arg2.length) + 416 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        if mem[(32 * idx) + 140 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
            mem[(32 * idx) + (32 * arg2.length) + 416] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        else:
            require idx < arg2.length
            mem[(32 * idx) + (32 * arg2.length) + 416] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
    require arg2.length <= test266151307()
    if not arg2.length:
        require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
        staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getPriceOracle() with:
                gas gas_remaining wei
        mem[(98 * arg2.length) + 448] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(98 * arg2.length) + ceil32(return_data.size) + 448] = 0x9d23d9f200000000000000000000000000000000000000000000000000000000
        mem[(98 * arg2.length) + ceil32(return_data.size) + 452] = 32
        mem[(98 * arg2.length) + ceil32(return_data.size) + 484] = arg2.length
        idx = 0
        s = (32 * arg2.length) + 416
        t = (98 * arg2.length) + ceil32(return_data.size) + 516
        while idx < arg2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getAssetsPrices(address[] rg1) with:
                gas gas_remaining wei
               args Array(len=arg2.length, data=mem[(98 * arg2.length) + ceil32(return_data.size) + 516 len 32 * arg2.length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(98 * arg2.length) + ceil32(return_data.size) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (98 * arg2.length) + (2 * ceil32(return_data.size)) + 448
        require return_data.size >= 32
        _2363 = mem[(98 * arg2.length) + ceil32(return_data.size) + 448 len 4], 0
        require mem[(98 * arg2.length) + ceil32(return_data.size) + 448 len 4], 0 <= test266151307()
        require (98 * arg2.length) + ceil32(return_data.size) + mem[(98 * arg2.length) + ceil32(return_data.size) + 448 len 4], 0 + 479 < (98 * arg2.length) + ceil32(return_data.size) + return_data.size + 448
        _2369 = mem[(98 * arg2.length) + ceil32(return_data.size) + mem[(98 * arg2.length) + ceil32(return_data.size) + 448 len 4], 0 + 448]
        require mem[(98 * arg2.length) + ceil32(return_data.size) + mem[(98 * arg2.length) + ceil32(return_data.size) + 448 len 4], 0 + 448] <= test266151307()
        require (98 * arg2.length) + (2 * ceil32(return_data.size)) + (32 * mem[(98 * arg2.length) + ceil32(return_data.size) + mem[(98 * arg2.length) + ceil32(return_data.size) + 448 len 4], 0 + 448]) + 480 <= test266151307() and (32 * mem[(98 * arg2.length) + ceil32(return_data.size) + mem[(98 * arg2.length) + ceil32(return_data.size) + 448 len 4], 0 + 448]) + 32 >= 0
        mem[64] = (98 * arg2.length) + (2 * ceil32(return_data.size)) + (32 * mem[(98 * arg2.length) + ceil32(return_data.size) + mem[(98 * arg2.length) + ceil32(return_data.size) + 448 len 4], 0 + 448]) + 480
        mem[(98 * arg2.length) + (2 * ceil32(return_data.size)) + 448] = _2369
        require _2363 + (32 * _2369) + 32 <= return_data.size
        idx = 0
        s = (98 * arg2.length) + ceil32(return_data.size) + _2363 + 480
        t = (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480
        while idx < _2369:
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
        _3389 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3393 = mem[_3389]
        require mem[_3389] == mem[_3389]
        require _2369 <= test266151307()
        _3399 = mem[64]
        mem[mem[64]] = _2369
        mem[64] = mem[64] + (32 * _2369) + 32
        if not _2369:
            idx = 0
            while idx < _2369:
                _4457 = mem[64]
                mem[64] = mem[64] + 64
                require idx < mem[(98 * arg2.length) + (2 * ceil32(return_data.size)) + 448]
                mem[_4457] = 10^10 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480]
                require idx < mem[(98 * arg2.length) + (2 * ceil32(return_data.size)) + 448]
                if not _3393:
                    mem[_4457 + 32] = 0
                else:
                    require _3393
                    if 10^18 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480] * _3393 / _3393 != 10^18 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480]:
                        revert with 0, 'math-not-safe'
                    if (10^18 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480] * _3393) + 5 * 10^17 < 10^18 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480] * _3393:
                        revert with 0, 'math-not-safe'
                    mem[_4457 + 32] = (10^18 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480] * _3393) + 5 * 10^17 / 10^18
                require idx < mem[_3399]
                mem[(32 * idx) + _3399 + 32] = _4457
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg2.length:
                require idx < mem[(32 * arg2.length) + 384]
                _7987 = mem[(32 * idx) + (32 * arg2.length) + 416]
                require idx < mem[_3399]
                _7997 = mem[mem[(32 * idx) + _3399 + 32]]
                require idx < mem[_3399]
                _8011 = mem[mem[(32 * idx) + _3399 + 32] + 32]
                _8031 = mem[64]
                mem[64] = mem[64] + 352
                mem[_8031] = 0
                mem[_8031 + 32] = 0
                mem[_8031 + 64] = 0
                mem[_8031 + 96] = 0
                mem[_8031 + 128] = 0
                mem[_8031 + 160] = 0
                mem[_8031 + 192] = 0
                mem[_8031 + 224] = 0
                mem[_8031 + 256] = 0
                mem[_8031 + 288] = 0
                _8043 = mem[64]
                mem[64] = mem[64] + 544
                mem[_8043] = 0
                mem[_8043 + 32] = 0
                mem[_8043 + 64] = 0
                mem[_8043 + 96] = 0
                mem[_8043 + 128] = 0
                mem[_8043 + 160] = 0
                mem[_8043 + 192] = 0
                mem[_8043 + 224] = 0
                mem[_8043 + 256] = 0
                mem[_8043 + 288] = 0
                mem[_8043 + 320] = 0
                mem[_8043 + 352] = 0
                mem[_8043 + 384] = 0
                mem[_8043 + 416] = 0
                mem[_8043 + 448] = 0
                mem[_8043 + 480] = 0
                mem[_8043 + 512] = 0
                mem[_8031 + 320] = _8043
                _8068 = mem[64]
                mem[64] = mem[64] + 544
                mem[_8068] = 0
                mem[_8068 + 32] = 0
                mem[_8068 + 64] = 0
                mem[_8068 + 96] = 0
                mem[_8068 + 128] = 0
                mem[_8068 + 160] = 0
                mem[_8068 + 192] = 0
                mem[_8068 + 224] = 0
                mem[_8068 + 256] = 0
                mem[_8068 + 288] = 0
                mem[_8068 + 320] = 0
                mem[_8068 + 352] = 0
                mem[_8068 + 384] = 0
                mem[_8068 + 416] = 0
                mem[_8068 + 448] = 0
                mem[_8068 + 480] = 0
                mem[_8068 + 512] = 0
                _8101 = mem[64]
                mem[64] = mem[64] + 544
                mem[_8101] = 0
                mem[_8101 + 32] = 0
                mem[_8101 + 64] = 0
                mem[_8101 + 96] = 0
                mem[_8101 + 128] = 0
                mem[_8101 + 160] = 0
                mem[_8101 + 192] = 0
                mem[_8101 + 224] = 0
                mem[_8101 + 256] = 0
                mem[_8101 + 288] = 0
                mem[_8101 + 320] = 0
                mem[_8101 + 352] = 0
                mem[_8101 + 384] = 0
                mem[_8101 + 416] = 0
                mem[_8101 + 448] = 0
                mem[_8101 + 480] = 0
                mem[_8101 + 512] = 0
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveConfigurationData(address rg1) with:
                        gas gas_remaining wei
                       args address(_7987)
                mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8172 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 320
                require mem[_8172] == mem[_8172]
                _8220 = mem[_8172 + 32]
                require mem[_8172 + 32] == mem[_8172 + 32]
                _8247 = mem[_8172 + 64]
                require mem[_8172 + 64] == mem[_8172 + 64]
                require mem[_8172 + 96] == mem[_8172 + 96]
                _8305 = mem[_8172 + 128]
                require mem[_8172 + 128] == mem[_8172 + 128]
                _8331 = mem[_8172 + 160]
                require mem[_8172 + 160] == bool(mem[_8172 + 160])
                _8357 = mem[_8172 + 192]
                require mem[_8172 + 192] == bool(mem[_8172 + 192])
                _8390 = mem[_8172 + 224]
                require mem[_8172 + 224] == bool(mem[_8172 + 224])
                _8452 = mem[_8172 + 256]
                require mem[_8172 + 256] == bool(mem[_8172 + 256])
                require mem[_8172 + 288] == bool(mem[_8172 + 288])
                mem[_8101 + 224] = bool(mem[_8172 + 288])
                mem[_8101 + 192] = bool(_8452)
                mem[_8101 + 160] = bool(_8390)
                mem[_8101 + 128] = bool(_8357)
                mem[_8101 + 96] = bool(_8331)
                mem[_8101 + 64] = _8305
                mem[_8101 + 32] = _8247
                mem[_8101] = _8220
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                        gas gas_remaining wei
                       args address(_7987)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8625 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _8643 = mem[_8625]
                require mem[_8625] == mem[_8625 + 12 len 20]
                _8705 = mem[_8625 + 32]
                require mem[_8625 + 32] == mem[_8625 + 44 len 20]
                require mem[_8625 + 64] == mem[_8625 + 76 len 20]
                mem[_8101 + 512] = mem[_8625 + 76 len 20]
                mem[_8101 + 480] = address(_8705)
                mem[_8101 + 448] = address(_8643)
                _8861 = mem[64]
                mem[64] = mem[64] + 96
                mem[_8861] = 0
                mem[_8861 + 32] = 0
                mem[_8861 + 64] = 0
                require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
                staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.assets(address rg1) with:
                        gas gas_remaining wei
                       args address(_8643)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _8971 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _9009 = mem[64]
                require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                mem[64] = mem[64] + 96
                require mem[_8971] == mem[_8971 + 16 len 16]
                mem[_9009] = mem[_8971]
                require mem[_8971 + 32] == mem[_8971 + 48 len 16]
                mem[_9009 + 32] = mem[_8971 + 32]
                require mem[_8971 + 64] == mem[_8971 + 64]
                mem[_9009 + 64] = mem[_8971 + 64]
                mem[_8101 + 384] = mem[_9009 + 16 len 16]
                require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
                staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.assets(address rg1) with:
                        gas gas_remaining wei
                       args address(mem[_8101 + 512])
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9208 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _9229 = mem[64]
                require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                mem[64] = mem[64] + 96
                require mem[_9208] == mem[_9208 + 16 len 16]
                mem[_9229] = mem[_9208]
                require mem[_9208 + 32] == mem[_9208 + 48 len 16]
                mem[_9229 + 32] = mem[_9208 + 32]
                require mem[_9208 + 64] == mem[_9208 + 64]
                mem[_9229 + 64] = mem[_9208 + 64]
                mem[_8101 + 416] = mem[_9229 + 16 len 16]
                require ext_code.size(address(_8643))
                staticcall address(_8643).0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9450 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_9450] == mem[_9450]
                mem[_8101 + 256] = mem[_9450]
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(_7987), arg1
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9628 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                _9642 = mem[_9628]
                require mem[_9628] == mem[_9628]
                _9699 = mem[_9628 + 32]
                require mem[_9628 + 32] == mem[_9628 + 32]
                _9751 = mem[_9628 + 64]
                require mem[_9628 + 64] == mem[_9628 + 64]
                require mem[_9628 + 96] == mem[_9628 + 96]
                require mem[_9628 + 128] == mem[_9628 + 128]
                _9894 = mem[_9628 + 160]
                require mem[_9628 + 160] == mem[_9628 + 160]
                require mem[_9628 + 192] == mem[_9628 + 192]
                require mem[_9628 + 224] == mem[_9628 + 251 len 5]
                require mem[_9628 + 256] == bool(mem[_9628 + 256])
                mem[_8031 + 288] = bool(mem[_9628 + 256])
                mem[_8031 + 224] = _9894
                mem[_8031 + 128] = _9751
                mem[_8031 + 96] = _9699
                mem[_8031 + 64] = _9642
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveData(address rg1) with:
                        gas gas_remaining wei
                       args address(_7987)
                mem[mem[64] len 320] = ext_call.return_data[0 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10091 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 320
                _10116 = mem[_10091]
                require mem[_10091] == mem[_10091]
                _10157 = mem[_10091 + 32]
                require mem[_10091 + 32] == mem[_10091 + 32]
                _10195 = mem[_10091 + 64]
                require mem[_10091 + 64] == mem[_10091 + 64]
                _10233 = mem[_10091 + 96]
                require mem[_10091 + 96] == mem[_10091 + 96]
                _10261 = mem[_10091 + 128]
                require mem[_10091 + 128] == mem[_10091 + 128]
                require mem[_10091 + 160] == mem[_10091 + 160]
                require mem[_10091 + 192] == mem[_10091 + 192]
                require mem[_10091 + 224] == mem[_10091 + 224]
                require mem[_10091 + 256] == mem[_10091 + 256]
                require mem[_10091 + 288] == mem[_10091 + 315 len 5]
                mem[_8031 + 192] = mem[_10091 + 160]
                mem[_8031 + 256] = _10261
                mem[_8031 + 160] = _10233
                mem[_8101 + 352] = _10195
                mem[_8101 + 320] = _10157
                mem[_8101 + 288] = _10116
                mem[_8031] = _7997
                mem[_8031 + 32] = _8011
                mem[_8031 + 320] = _8101
                require idx < mem[(64 * arg2.length) + 416]
                mem[(32 * idx) + (64 * arg2.length) + 448] = _8031
                idx = idx + 1
                continue 
            require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
            staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getLendingPool() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7977 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _8009 = mem[_7977]
            require mem[_7977] == mem[_7977 + 12 len 20]
            _8114 = mem[64]
            mem[64] = mem[64] + 256
            mem[_8114] = 0
            mem[_8114 + 32] = 0
            mem[_8114 + 64] = 0
            mem[_8114 + 96] = 0
            mem[_8114 + 128] = 0
            mem[_8114 + 160] = 0
            mem[_8114 + 192] = 0
            mem[_8114 + 224] = 0
            require ext_code.size(address(_8009))
            staticcall address(_8009).0xbf92857c with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _8184 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _8195 = mem[_8184]
            require mem[_8184] == mem[_8184]
            _8227 = mem[_8184 + 32]
            require mem[_8184 + 32] == mem[_8184 + 32]
            _8253 = mem[_8184 + 64]
            require mem[_8184 + 64] == mem[_8184 + 64]
            _8281 = mem[_8184 + 96]
            require mem[_8184 + 96] == mem[_8184 + 96]
            _8311 = mem[_8184 + 128]
            require mem[_8184 + 128] == mem[_8184 + 128]
            _8341 = mem[_8184 + 160]
            require mem[_8184 + 160] == mem[_8184 + 160]
            _8373 = mem[(32 * arg2.length) + 384]
            require 2 * mem[(32 * arg2.length) + 384] <= test266151307()
            _8377 = mem[64]
            mem[mem[64]] = 2 * mem[(32 * arg2.length) + 384]
            mem[64] = mem[64] + (64 * _8373) + 32
            if not uint255(_8373):
                _9239 = mem[(32 * arg2.length) + 384]
                idx = 0
                while idx < _9239:
                    require idx < mem[(32 * arg2.length) + 384]
                    require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                    staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                            gas gas_remaining wei
                           args address(mem[(32 * idx) + (32 * arg2.length) + 416])
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9347 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _9380 = mem[_9347]
                    require mem[_9347] == mem[_9347 + 12 len 20]
                    require mem[_9347 + 32] == mem[_9347 + 44 len 20]
                    require mem[_9347 + 64] == mem[_9347 + 76 len 20]
                    require 2 * idx < mem[_8377]
                    require (2 * idx) + 1 < mem[_8377]
                    mem[(32 * (2 * idx) + 1) + _8377 + 32] = mem[_9347 + 76 len 20]
                    mem[(64 * idx) + _8377 + 32] = address(_9380)
                    _9239 = mem[(32 * arg2.length) + 384]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 64
                _9300 = mem[_8377]
                mem[mem[64] + 68] = mem[_8377]
                idx = 0
                s = _8377 + 32
                t = mem[64] + 100
                while idx < _9300:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 36] = arg1
                require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
                staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] rg1, address rg2) with:
                        gas gas_remaining wei
                       args 64, address(arg1), mem[mem[64] + 68 len (32 * _9300) + 32]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _10445 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _10461 = mem[_10445]
                require mem[_10445] == mem[_10445]
                _10494 = mem[64]
                mem[64] = mem[64] + 256
                mem[_10494] = _8195
                mem[_10494 + 32] = _8227
                mem[_10494 + 64] = _8253
                mem[_10494 + 96] = _8281
                mem[_10494 + 128] = _8311
                mem[_10494 + 160] = _8341
                mem[_10494 + 192] = _3393
                mem[_10494 + 224] = _10461
                _10503 = mem[64]
                mem[mem[64]] = 288
                _10517 = mem[(64 * arg2.length) + 416]
                mem[mem[64] + 288] = mem[(64 * arg2.length) + 416]
                idx = 0
                s = (64 * arg2.length) + 448
                t = mem[64] + 320
                while idx < _10517:
                    _11396 = mem[s]
                    mem[t] = mem[mem[s]]
                    mem[t + 32] = mem[_11396 + 32]
                    mem[t + 64] = mem[_11396 + 64]
                    mem[t + 96] = mem[_11396 + 96]
                    mem[t + 128] = mem[_11396 + 128]
                    mem[t + 160] = mem[_11396 + 160]
                    mem[t + 192] = mem[_11396 + 192]
                    mem[t + 224] = mem[_11396 + 224]
                    mem[t + 256] = mem[_11396 + 256]
                    mem[t + 288] = bool(mem[_11396 + 288])
                    _11713 = mem[_11396 + 320]
                    mem[t + 320] = mem[mem[_11396 + 320]]
                    mem[t + 352] = mem[_11713 + 32]
                    mem[t + 384] = mem[_11713 + 64]
                    mem[t + 416] = bool(mem[_11713 + 96])
                    mem[t + 448] = bool(mem[_11713 + 128])
                    mem[t + 480] = bool(mem[_11713 + 160])
                    mem[t + 512] = bool(mem[_11713 + 192])
                    mem[t + 544] = bool(mem[_11713 + 224])
                    mem[t + 576] = mem[_11713 + 256]
                    mem[t + 608] = mem[_11713 + 288]
                    mem[t + 640] = mem[_11713 + 320]
                    mem[t + 672] = mem[_11713 + 352]
                    mem[t + 704] = mem[_11713 + 384]
                    mem[t + 736] = mem[_11713 + 416]
                    mem[t + 768] = mem[_11713 + 460 len 20]
                    mem[t + 800] = mem[_11713 + 492 len 20]
                    mem[t + 832] = mem[_11713 + 524 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 864
                    continue 
                mem[_10503 + 32] = mem[_10494]
                mem[_10503 + 64] = mem[_10494 + 32]
                mem[_10503 + 96] = mem[_10494 + 64]
                mem[_10503 + 128] = mem[_10494 + 96]
                mem[_10503 + 160] = mem[_10494 + 128]
                mem[_10503 + 192] = mem[_10494 + 160]
                mem[_10503 + 224] = mem[_10494 + 192]
                mem[_10503 + 256] = mem[_10494 + 224]
                return memory
                  from mem[64]
                   len _10503 + (864 * _10517) + -mem[64] + 320
            mem[_8377 + 32 len 64 * _8373] = call.data[calldata.size len 64 * _8373]
            _9240 = mem[(32 * arg2.length) + 384]
            idx = 0
            while idx < _9240:
                require idx < mem[(32 * arg2.length) + 384]
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (32 * arg2.length) + 416])
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _9348 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _9381 = mem[_9348]
                require mem[_9348] == mem[_9348 + 12 len 20]
                require mem[_9348 + 32] == mem[_9348 + 44 len 20]
                require mem[_9348 + 64] == mem[_9348 + 76 len 20]
                require 2 * idx < mem[_8377]
                require (2 * idx) + 1 < mem[_8377]
                mem[(32 * (2 * idx) + 1) + _8377 + 32] = mem[_9348 + 76 len 20]
                mem[(64 * idx) + _8377 + 32] = address(_9381)
                _9240 = mem[(32 * arg2.length) + 384]
                idx = idx + 1
                continue 
            mem[mem[64]] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            _9301 = mem[_8377]
            mem[mem[64] + 68] = mem[_8377]
            idx = 0
            s = _8377 + 32
            t = mem[64] + 100
            while idx < _9301:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 36] = arg1
            require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
            staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] rg1, address rg2) with:
                    gas gas_remaining wei
                   args 64, address(arg1), mem[mem[64] + 68 len (32 * _9301) + 32]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10446 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _10462 = mem[_10446]
            require mem[_10446] == mem[_10446]
            _10495 = mem[64]
            mem[64] = mem[64] + 256
            mem[_10495] = _8195
            mem[_10495 + 32] = _8227
            mem[_10495 + 64] = _8253
            mem[_10495 + 96] = _8281
            mem[_10495 + 128] = _8311
            mem[_10495 + 160] = _8341
            mem[_10495 + 192] = _3393
            mem[_10495 + 224] = _10462
            _10504 = mem[64]
            mem[mem[64]] = 288
            _10518 = mem[(64 * arg2.length) + 416]
            mem[mem[64] + 288] = mem[(64 * arg2.length) + 416]
            idx = 0
            s = (64 * arg2.length) + 448
            t = mem[64] + 320
            while idx < _10518:
                _11397 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_11397 + 32]
                mem[t + 64] = mem[_11397 + 64]
                mem[t + 96] = mem[_11397 + 96]
                mem[t + 128] = mem[_11397 + 128]
                mem[t + 160] = mem[_11397 + 160]
                mem[t + 192] = mem[_11397 + 192]
                mem[t + 224] = mem[_11397 + 224]
                mem[t + 256] = mem[_11397 + 256]
                mem[t + 288] = bool(mem[_11397 + 288])
                _11714 = mem[_11397 + 320]
                mem[t + 320] = mem[mem[_11397 + 320]]
                mem[t + 352] = mem[_11714 + 32]
                mem[t + 384] = mem[_11714 + 64]
                mem[t + 416] = bool(mem[_11714 + 96])
                mem[t + 448] = bool(mem[_11714 + 128])
                mem[t + 480] = bool(mem[_11714 + 160])
                mem[t + 512] = bool(mem[_11714 + 192])
                mem[t + 544] = bool(mem[_11714 + 224])
                mem[t + 576] = mem[_11714 + 256]
                mem[t + 608] = mem[_11714 + 288]
                mem[t + 640] = mem[_11714 + 320]
                mem[t + 672] = mem[_11714 + 352]
                mem[t + 704] = mem[_11714 + 384]
                mem[t + 736] = mem[_11714 + 416]
                mem[t + 768] = mem[_11714 + 460 len 20]
                mem[t + 800] = mem[_11714 + 492 len 20]
                mem[t + 832] = mem[_11714 + 524 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 864
                continue 
            mem[_10504 + 32] = mem[_10495]
            mem[_10504 + 64] = mem[_10495 + 32]
            mem[_10504 + 96] = mem[_10495 + 64]
            mem[_10504 + 128] = mem[_10495 + 96]
            mem[_10504 + 160] = mem[_10495 + 128]
            mem[_10504 + 192] = mem[_10495 + 160]
            mem[_10504 + 224] = mem[_10495 + 192]
            mem[_10504 + 256] = mem[_10495 + 224]
            return memory
              from mem[64]
               len _10504 + (864 * _10518) + -mem[64] + 320
        mem[64] = _3399 + (32 * _2369) + 96
        mem[_3399 + (32 * _2369) + 32] = 0
        mem[_3399 + (32 * _2369) + 64] = 0
        mem[var107001] = _3399 + (32 * _2369) + 32
        s = var107001
        idx = var107002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_3399 + (32 * _2369) + 32] = 0
            mem[_3399 + (32 * _2369) + 64] = 0
            mem[s + 32] = _3399 + (32 * _2369) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _6789 = mem[(98 * arg2.length) + (2 * ceil32(return_data.size)) + 448]
        idx = 0
        while idx < _6789:
            _6796 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[(98 * arg2.length) + (2 * ceil32(return_data.size)) + 448]
            mem[_6796] = 10^10 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480]
            require idx < mem[(98 * arg2.length) + (2 * ceil32(return_data.size)) + 448]
            if not _3393:
                mem[_6796 + 32] = 0
            else:
                require _3393
                if 10^18 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480] * _3393 / _3393 != 10^18 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480]:
                    revert with 0, 'math-not-safe'
                if (10^18 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480] * _3393) + 5 * 10^17 < 10^18 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480] * _3393:
                    revert with 0, 'math-not-safe'
                mem[_6796 + 32] = (10^18 * mem[(32 * idx) + (98 * arg2.length) + (2 * ceil32(return_data.size)) + 480] * _3393) + 5 * 10^17 / 10^18
            require idx < mem[_3399]
            mem[(32 * idx) + _3399 + 32] = _6796
            _6789 = mem[(98 * arg2.length) + (2 * ceil32(return_data.size)) + 448]
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg2.length:
            require idx < mem[(32 * arg2.length) + 384]
            _10388 = mem[(32 * idx) + (32 * arg2.length) + 416]
            require idx < mem[_3399]
            _10397 = mem[mem[(32 * idx) + _3399 + 32]]
            require idx < mem[_3399]
            _10407 = mem[mem[(32 * idx) + _3399 + 32] + 32]
            _10418 = mem[64]
            mem[64] = mem[64] + 352
            mem[_10418] = 0
            mem[_10418 + 32] = 0
            mem[_10418 + 64] = 0
            mem[_10418 + 96] = 0
            mem[_10418 + 128] = 0
            mem[_10418 + 160] = 0
            mem[_10418 + 192] = 0
            mem[_10418 + 224] = 0
            mem[_10418 + 256] = 0
            mem[_10418 + 288] = 0
            _10433 = mem[64]
            mem[64] = mem[64] + 544
            mem[_10433] = 0
            mem[_10433 + 32] = 0
            mem[_10433 + 64] = 0
            mem[_10433 + 96] = 0
            mem[_10433 + 128] = 0
            mem[_10433 + 160] = 0
            mem[_10433 + 192] = 0
            mem[_10433 + 224] = 0
            mem[_10433 + 256] = 0
            mem[_10433 + 288] = 0
            mem[_10433 + 320] = 0
            mem[_10433 + 352] = 0
            mem[_10433 + 384] = 0
            mem[_10433 + 416] = 0
            mem[_10433 + 448] = 0
            mem[_10433 + 480] = 0
            mem[_10433 + 512] = 0
            mem[_10418 + 320] = _10433
            _10452 = mem[64]
            mem[64] = mem[64] + 544
            mem[_10452] = 0
            mem[_10452 + 32] = 0
            mem[_10452 + 64] = 0
            mem[_10452 + 96] = 0
            mem[_10452 + 128] = 0
            mem[_10452 + 160] = 0
            mem[_10452 + 192] = 0
            mem[_10452 + 224] = 0
            mem[_10452 + 256] = 0
            mem[_10452 + 288] = 0
            mem[_10452 + 320] = 0
            mem[_10452 + 352] = 0
            mem[_10452 + 384] = 0
            mem[_10452 + 416] = 0
            mem[_10452 + 448] = 0
            mem[_10452 + 480] = 0
            mem[_10452 + 512] = 0
            _10469 = mem[64]
            mem[64] = mem[64] + 544
            mem[_10469] = 0
            mem[_10469 + 32] = 0
            mem[_10469 + 64] = 0
            mem[_10469 + 96] = 0
            mem[_10469 + 128] = 0
            mem[_10469 + 160] = 0
            mem[_10469 + 192] = 0
            mem[_10469 + 224] = 0
            mem[_10469 + 256] = 0
            mem[_10469 + 288] = 0
            mem[_10469 + 320] = 0
            mem[_10469 + 352] = 0
            mem[_10469 + 384] = 0
            mem[_10469 + 416] = 0
            mem[_10469 + 448] = 0
            mem[_10469 + 480] = 0
            mem[_10469 + 512] = 0
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveConfigurationData(address rg1) with:
                    gas gas_remaining wei
                   args address(_10388)
            mem[mem[64] len 320] = ext_call.return_data[0 len 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10511 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 320
            require mem[_10511] == mem[_10511]
            _10559 = mem[_10511 + 32]
            require mem[_10511 + 32] == mem[_10511 + 32]
            _10587 = mem[_10511 + 64]
            require mem[_10511 + 64] == mem[_10511 + 64]
            require mem[_10511 + 96] == mem[_10511 + 96]
            _10667 = mem[_10511 + 128]
            require mem[_10511 + 128] == mem[_10511 + 128]
            _10703 = mem[_10511 + 160]
            require mem[_10511 + 160] == bool(mem[_10511 + 160])
            _10731 = mem[_10511 + 192]
            require mem[_10511 + 192] == bool(mem[_10511 + 192])
            _10766 = mem[_10511 + 224]
            require mem[_10511 + 224] == bool(mem[_10511 + 224])
            _10822 = mem[_10511 + 256]
            require mem[_10511 + 256] == bool(mem[_10511 + 256])
            require mem[_10511 + 288] == bool(mem[_10511 + 288])
            mem[_10469 + 224] = bool(mem[_10511 + 288])
            mem[_10469 + 192] = bool(_10822)
            mem[_10469 + 160] = bool(_10766)
            mem[_10469 + 128] = bool(_10731)
            mem[_10469 + 96] = bool(_10703)
            mem[_10469 + 64] = _10667
            mem[_10469 + 32] = _10587
            mem[_10469] = _10559
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                    gas gas_remaining wei
                   args address(_10388)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _10958 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _10968 = mem[_10958]
            require mem[_10958] == mem[_10958 + 12 len 20]
            _11024 = mem[_10958 + 32]
            require mem[_10958 + 32] == mem[_10958 + 44 len 20]
            require mem[_10958 + 64] == mem[_10958 + 76 len 20]
            mem[_10469 + 512] = mem[_10958 + 76 len 20]
            mem[_10469 + 480] = address(_11024)
            mem[_10469 + 448] = address(_10968)
            _11147 = mem[64]
            mem[64] = mem[64] + 96
            mem[_11147] = 0
            mem[_11147 + 32] = 0
            mem[_11147 + 64] = 0
            require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
            staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.assets(address rg1) with:
                    gas gas_remaining wei
                   args address(_10968)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11217 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _11241 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require mem[_11217] == mem[_11217 + 16 len 16]
            mem[_11241] = mem[_11217]
            require mem[_11217 + 32] == mem[_11217 + 48 len 16]
            mem[_11241 + 32] = mem[_11217 + 32]
            require mem[_11217 + 64] == mem[_11217 + 64]
            mem[_11241 + 64] = mem[_11217 + 64]
            mem[_10469 + 384] = mem[_11241 + 16 len 16]
            require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
            staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.assets(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[_10469 + 512])
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11361 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _11375 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require mem[_11361] == mem[_11361 + 16 len 16]
            mem[_11375] = mem[_11361]
            require mem[_11361 + 32] == mem[_11361 + 48 len 16]
            mem[_11375 + 32] = mem[_11361 + 32]
            require mem[_11361 + 64] == mem[_11361 + 64]
            mem[_11375 + 64] = mem[_11361 + 64]
            mem[_10469 + 416] = mem[_11375 + 16 len 16]
            require ext_code.size(address(_10968))
            staticcall address(_10968).0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11597 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_11597] == mem[_11597]
            mem[_10469 + 256] = mem[_11597]
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(_10388), arg1
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11776 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _11786 = mem[_11776]
            require mem[_11776] == mem[_11776]
            _11835 = mem[_11776 + 32]
            require mem[_11776 + 32] == mem[_11776 + 32]
            _11883 = mem[_11776 + 64]
            require mem[_11776 + 64] == mem[_11776 + 64]
            require mem[_11776 + 96] == mem[_11776 + 96]
            require mem[_11776 + 128] == mem[_11776 + 128]
            _12024 = mem[_11776 + 160]
            require mem[_11776 + 160] == mem[_11776 + 160]
            require mem[_11776 + 192] == mem[_11776 + 192]
            require mem[_11776 + 224] == mem[_11776 + 251 len 5]
            require mem[_11776 + 256] == bool(mem[_11776 + 256])
            mem[_10418 + 288] = bool(mem[_11776 + 256])
            mem[_10418 + 224] = _12024
            mem[_10418 + 128] = _11883
            mem[_10418 + 96] = _11835
            mem[_10418 + 64] = _11786
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveData(address rg1) with:
                    gas gas_remaining wei
                   args address(_10388)
            mem[mem[64] len 320] = ext_call.return_data[0 len 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12213 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 320
            _12232 = mem[_12213]
            require mem[_12213] == mem[_12213]
            _12267 = mem[_12213 + 32]
            require mem[_12213 + 32] == mem[_12213 + 32]
            _12307 = mem[_12213 + 64]
            require mem[_12213 + 64] == mem[_12213 + 64]
            _12337 = mem[_12213 + 96]
            require mem[_12213 + 96] == mem[_12213 + 96]
            _12364 = mem[_12213 + 128]
            require mem[_12213 + 128] == mem[_12213 + 128]
            require mem[_12213 + 160] == mem[_12213 + 160]
            require mem[_12213 + 192] == mem[_12213 + 192]
            require mem[_12213 + 224] == mem[_12213 + 224]
            require mem[_12213 + 256] == mem[_12213 + 256]
            require mem[_12213 + 288] == mem[_12213 + 315 len 5]
            mem[_10418 + 192] = mem[_12213 + 160]
            mem[_10418 + 256] = _12364
            mem[_10418 + 160] = _12337
            mem[_10469 + 352] = _12307
            mem[_10469 + 320] = _12267
            mem[_10469 + 288] = _12232
            mem[_10418] = _10397
            mem[_10418 + 32] = _10407
            mem[_10418 + 320] = _10469
            require idx < mem[(64 * arg2.length) + 416]
            mem[(32 * idx) + (64 * arg2.length) + 448] = _10418
            idx = idx + 1
            continue 
        require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
        staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getLendingPool() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10381 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _10405 = mem[_10381]
        require mem[_10381] == mem[_10381 + 12 len 20]
        _10477 = mem[64]
        mem[64] = mem[64] + 256
        mem[_10477] = 0
        mem[_10477 + 32] = 0
        mem[_10477 + 64] = 0
        mem[_10477 + 96] = 0
        mem[_10477 + 128] = 0
        mem[_10477 + 160] = 0
        mem[_10477 + 192] = 0
        mem[_10477 + 224] = 0
        require ext_code.size(address(_10405))
        staticcall address(_10405).0xbf92857c with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _10523 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _10532 = mem[_10523]
        require mem[_10523] == mem[_10523]
        _10565 = mem[_10523 + 32]
        require mem[_10523 + 32] == mem[_10523 + 32]
        _10605 = mem[_10523 + 64]
        require mem[_10523 + 64] == mem[_10523 + 64]
        _10641 = mem[_10523 + 96]
        require mem[_10523 + 96] == mem[_10523 + 96]
        _10669 = mem[_10523 + 128]
        require mem[_10523 + 128] == mem[_10523 + 128]
        _10709 = mem[_10523 + 160]
        require mem[_10523 + 160] == mem[_10523 + 160]
        _10742 = mem[(32 * arg2.length) + 384]
        require 2 * mem[(32 * arg2.length) + 384] <= test266151307()
        _10745 = mem[64]
        mem[mem[64]] = 2 * mem[(32 * arg2.length) + 384]
        mem[64] = mem[64] + (64 * _10742) + 32
        if not uint255(_10742):
            _11382 = mem[(32 * arg2.length) + 384]
            idx = 0
            while idx < _11382:
                require idx < mem[(32 * arg2.length) + 384]
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (32 * arg2.length) + 416])
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11505 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _11532 = mem[_11505]
                require mem[_11505] == mem[_11505 + 12 len 20]
                require mem[_11505 + 32] == mem[_11505 + 44 len 20]
                require mem[_11505 + 64] == mem[_11505 + 76 len 20]
                require 2 * idx < mem[_10745]
                require (2 * idx) + 1 < mem[_10745]
                mem[(32 * (2 * idx) + 1) + _10745 + 32] = mem[_11505 + 76 len 20]
                mem[(64 * idx) + _10745 + 32] = address(_11532)
                _11382 = mem[(32 * arg2.length) + 384]
                idx = idx + 1
                continue 
            mem[mem[64]] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            _11461 = mem[_10745]
            mem[mem[64] + 68] = mem[_10745]
            idx = 0
            s = _10745 + 32
            t = mem[64] + 100
            while idx < _11461:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 36] = arg1
            require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
            staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] rg1, address rg2) with:
                    gas gas_remaining wei
                   args 64, address(arg1), mem[mem[64] + 68 len (32 * _11461) + 32]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12508 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _12524 = mem[_12508]
            require mem[_12508] == mem[_12508]
            _12542 = mem[64]
            mem[64] = mem[64] + 256
            mem[_12542] = _10532
            mem[_12542 + 32] = _10565
            mem[_12542 + 64] = _10605
            mem[_12542 + 96] = _10641
            mem[_12542 + 128] = _10669
            mem[_12542 + 160] = _10709
            mem[_12542 + 192] = _3393
            mem[_12542 + 224] = _12524
            _12564 = mem[64]
            mem[mem[64]] = 288
            _12580 = mem[(64 * arg2.length) + 416]
            mem[mem[64] + 288] = mem[(64 * arg2.length) + 416]
            idx = 0
            s = (64 * arg2.length) + 448
            t = mem[64] + 320
            while idx < _12580:
                _13122 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_13122 + 32]
                mem[t + 64] = mem[_13122 + 64]
                mem[t + 96] = mem[_13122 + 96]
                mem[t + 128] = mem[_13122 + 128]
                mem[t + 160] = mem[_13122 + 160]
                mem[t + 192] = mem[_13122 + 192]
                mem[t + 224] = mem[_13122 + 224]
                mem[t + 256] = mem[_13122 + 256]
                mem[t + 288] = bool(mem[_13122 + 288])
                _13303 = mem[_13122 + 320]
                mem[t + 320] = mem[mem[_13122 + 320]]
                mem[t + 352] = mem[_13303 + 32]
                mem[t + 384] = mem[_13303 + 64]
                mem[t + 416] = bool(mem[_13303 + 96])
                mem[t + 448] = bool(mem[_13303 + 128])
                mem[t + 480] = bool(mem[_13303 + 160])
                mem[t + 512] = bool(mem[_13303 + 192])
                mem[t + 544] = bool(mem[_13303 + 224])
                mem[t + 576] = mem[_13303 + 256]
                mem[t + 608] = mem[_13303 + 288]
                mem[t + 640] = mem[_13303 + 320]
                mem[t + 672] = mem[_13303 + 352]
                mem[t + 704] = mem[_13303 + 384]
                mem[t + 736] = mem[_13303 + 416]
                mem[t + 768] = mem[_13303 + 460 len 20]
                mem[t + 800] = mem[_13303 + 492 len 20]
                mem[t + 832] = mem[_13303 + 524 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 864
                continue 
            mem[_12564 + 32] = mem[_12542]
            mem[_12564 + 64] = mem[_12542 + 32]
            mem[_12564 + 96] = mem[_12542 + 64]
            mem[_12564 + 128] = mem[_12542 + 96]
            mem[_12564 + 160] = mem[_12542 + 128]
            mem[_12564 + 192] = mem[_12542 + 160]
            mem[_12564 + 224] = mem[_12542 + 192]
            mem[_12564 + 256] = mem[_12542 + 224]
            return memory
              from mem[64]
               len _12564 + (864 * _12580) + -mem[64] + 320
        mem[_10745 + 32 len 64 * _10742] = call.data[calldata.size len 64 * _10742]
        _11383 = mem[(32 * arg2.length) + 384]
        idx = 0
        while idx < _11383:
            require idx < mem[(32 * arg2.length) + 384]
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + (32 * arg2.length) + 416])
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11506 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _11533 = mem[_11506]
            require mem[_11506] == mem[_11506 + 12 len 20]
            require mem[_11506 + 32] == mem[_11506 + 44 len 20]
            require mem[_11506 + 64] == mem[_11506 + 76 len 20]
            require 2 * idx < mem[_10745]
            require (2 * idx) + 1 < mem[_10745]
            mem[(32 * (2 * idx) + 1) + _10745 + 32] = mem[_11506 + 76 len 20]
            mem[(64 * idx) + _10745 + 32] = address(_11533)
            _11383 = mem[(32 * arg2.length) + 384]
            idx = idx + 1
            continue 
        mem[mem[64]] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        _11462 = mem[_10745]
        mem[mem[64] + 68] = mem[_10745]
        idx = 0
        s = _10745 + 32
        t = mem[64] + 100
        while idx < _11462:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = arg1
        require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
        staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] rg1, address rg2) with:
                gas gas_remaining wei
               args 64, address(arg1), mem[mem[64] + 68 len (32 * _11462) + 32]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _12509 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _12525 = mem[_12509]
        require mem[_12509] == mem[_12509]
        _12543 = mem[64]
        mem[64] = mem[64] + 256
        mem[_12543] = _10532
        mem[_12543 + 32] = _10565
        mem[_12543 + 64] = _10605
        mem[_12543 + 96] = _10641
        mem[_12543 + 128] = _10669
        mem[_12543 + 160] = _10709
        mem[_12543 + 192] = _3393
        mem[_12543 + 224] = _12525
        _12565 = mem[64]
        mem[mem[64]] = 288
        _12581 = mem[(64 * arg2.length) + 416]
        mem[mem[64] + 288] = mem[(64 * arg2.length) + 416]
        idx = 0
        s = (64 * arg2.length) + 448
        t = mem[64] + 320
        while idx < _12581:
            _13123 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_13123 + 32]
            mem[t + 64] = mem[_13123 + 64]
            mem[t + 96] = mem[_13123 + 96]
            mem[t + 128] = mem[_13123 + 128]
            mem[t + 160] = mem[_13123 + 160]
            mem[t + 192] = mem[_13123 + 192]
            mem[t + 224] = mem[_13123 + 224]
            mem[t + 256] = mem[_13123 + 256]
            mem[t + 288] = bool(mem[_13123 + 288])
            _13304 = mem[_13123 + 320]
            mem[t + 320] = mem[mem[_13123 + 320]]
            mem[t + 352] = mem[_13304 + 32]
            mem[t + 384] = mem[_13304 + 64]
            mem[t + 416] = bool(mem[_13304 + 96])
            mem[t + 448] = bool(mem[_13304 + 128])
            mem[t + 480] = bool(mem[_13304 + 160])
            mem[t + 512] = bool(mem[_13304 + 192])
            mem[t + 544] = bool(mem[_13304 + 224])
            mem[t + 576] = mem[_13304 + 256]
            mem[t + 608] = mem[_13304 + 288]
            mem[t + 640] = mem[_13304 + 320]
            mem[t + 672] = mem[_13304 + 352]
            mem[t + 704] = mem[_13304 + 384]
            mem[t + 736] = mem[_13304 + 416]
            mem[t + 768] = mem[_13304 + 460 len 20]
            mem[t + 800] = mem[_13304 + 492 len 20]
            mem[t + 832] = mem[_13304 + 524 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 864
            continue 
        mem[_12565 + 32] = mem[_12543]
        mem[_12565 + 64] = mem[_12543 + 32]
        mem[_12565 + 96] = mem[_12543 + 64]
        mem[_12565 + 128] = mem[_12543 + 96]
        mem[_12565 + 160] = mem[_12543 + 128]
        mem[_12565 + 192] = mem[_12543 + 160]
        mem[_12565 + 224] = mem[_12543 + 192]
        mem[_12565 + 256] = mem[_12543 + 224]
        return memory
          from mem[64]
           len _12565 + (864 * _12581) + -mem[64] + 320
    mem[(98 * arg2.length) + 448] = 0
    mem[(98 * arg2.length) + 480] = 0
    mem[(98 * arg2.length) + 512] = 0
    mem[(98 * arg2.length) + 544] = 0
    mem[(98 * arg2.length) + 576] = 0
    mem[(98 * arg2.length) + 608] = 0
    mem[(98 * arg2.length) + 640] = 0
    mem[(98 * arg2.length) + 672] = 0
    mem[(98 * arg2.length) + 704] = 0
    mem[(98 * arg2.length) + 736] = 0
    mem[64] = (98 * arg2.length) + 1344
    mem[(98 * arg2.length) + 800] = 0
    mem[(98 * arg2.length) + 832] = 0
    mem[(98 * arg2.length) + 864] = 0
    mem[(98 * arg2.length) + 896] = 0
    mem[(98 * arg2.length) + 928] = 0
    mem[(98 * arg2.length) + 960] = 0
    mem[(98 * arg2.length) + 992] = 0
    mem[(98 * arg2.length) + 1024] = 0
    mem[(98 * arg2.length) + 1056] = 0
    mem[(98 * arg2.length) + 1088] = 0
    mem[(98 * arg2.length) + 1120] = 0
    mem[(98 * arg2.length) + 1152] = 0
    mem[(98 * arg2.length) + 1184] = 0
    mem[(98 * arg2.length) + 1216] = 0
    mem[(98 * arg2.length) + 1248] = 0
    mem[(98 * arg2.length) + 1280] = 0
    mem[(98 * arg2.length) + 1312] = 0
    mem[(98 * arg2.length) + 768] = (98 * arg2.length) + 800
    mem[var48002] = (98 * arg2.length) + 448
    s = (98 * arg2.length) + 768
    s = (98 * arg2.length) + 448
    s = var48002
    idx = var48003
    while idx - 1:
        _4471 = mem[64]
        mem[64] = mem[64] + 352
        mem[_4471] = 0
        mem[_4471 + 32] = 0
        mem[_4471 + 64] = 0
        mem[_4471 + 96] = 0
        mem[_4471 + 128] = 0
        mem[_4471 + 160] = 0
        mem[_4471 + 192] = 0
        mem[_4471 + 224] = 0
        mem[_4471 + 256] = 0
        mem[_4471 + 288] = 0
        mem[64] = mem[64] + 544
        mem[(98 * arg2.length) + 800] = 0
        mem[(98 * arg2.length) + 832] = 0
        mem[(98 * arg2.length) + 864] = 0
        mem[(98 * arg2.length) + 896] = 0
        mem[(98 * arg2.length) + 928] = 0
        mem[(98 * arg2.length) + 960] = 0
        mem[(98 * arg2.length) + 992] = 0
        mem[(98 * arg2.length) + 1024] = 0
        mem[(98 * arg2.length) + 1056] = 0
        mem[(98 * arg2.length) + 1088] = 0
        mem[(98 * arg2.length) + 1120] = 0
        mem[(98 * arg2.length) + 1152] = 0
        mem[(98 * arg2.length) + 1184] = 0
        mem[(98 * arg2.length) + 1216] = 0
        mem[(98 * arg2.length) + 1248] = 0
        mem[(98 * arg2.length) + 1280] = 0
        mem[(98 * arg2.length) + 1312] = 0
        mem[_4471 + 320] = (98 * arg2.length) + 800
        mem[s + 32] = _4471
        s = _4471 + 320
        s = _4471
        s = s + 32
        idx = idx - 1
        continue 
    require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
    staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getPriceOracle() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _4495 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _4517 = mem[_4495]
    require mem[_4495] == mem[_4495 + 12 len 20]
    mem[mem[64]] = 0x9d23d9f200000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _4581 = mem[(32 * arg2.length) + 384]
    mem[mem[64] + 36] = mem[(32 * arg2.length) + 384]
    idx = 0
    s = (32 * arg2.length) + 416
    t = mem[64] + 68
    while idx < _4581:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(_4517))
    staticcall address(_4517).getAssetsPrices(address[] rg1) with:
            gas gas_remaining wei
           args 32, mem[mem[64] + 36 len (32 * _4581) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _5613 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _5625 = mem[_5613]
    require mem[_5613] <= test266151307()
    require _5613 + mem[_5613] + 31 < _5613 + return_data.size
    _5639 = mem[_5613 + mem[_5613]]
    require mem[_5613 + mem[_5613]] <= test266151307()
    require _5613 + ceil32(return_data.size) + (32 * mem[_5613 + mem[_5613]]) + 32 <= test266151307() and (32 * mem[_5613 + mem[_5613]]) + 32 >= 0
    mem[64] = _5613 + ceil32(return_data.size) + (32 * mem[_5613 + mem[_5613]]) + 32
    mem[_5613 + ceil32(return_data.size)] = _5639
    require _5625 + (32 * _5639) + 32 <= return_data.size
    idx = 0
    s = _5613 + _5625 + 32
    t = _5613 + ceil32(return_data.size) + 32
    while idx < _5639:
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
    _6825 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _6845 = mem[_6825]
    require mem[_6825] == mem[_6825]
    require _5639 <= test266151307()
    _6873 = mem[64]
    mem[mem[64]] = _5639
    mem[64] = mem[64] + (32 * _5639) + 32
    if not _5639:
        idx = 0
        while idx < _5639:
            _7957 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[_5613 + ceil32(return_data.size)]
            mem[_7957] = 10^10 * mem[(32 * idx) + _5613 + ceil32(return_data.size) + 32]
            require idx < mem[_5613 + ceil32(return_data.size)]
            if not _6845:
                mem[_7957 + 32] = 0
            else:
                require _6845
                if 10^18 * mem[(32 * idx) + _5613 + ceil32(return_data.size) + 32] * _6845 / _6845 != 10^18 * mem[(32 * idx) + _5613 + ceil32(return_data.size) + 32]:
                    revert with 0, 'math-not-safe'
                if (10^18 * mem[(32 * idx) + _5613 + ceil32(return_data.size) + 32] * _6845) + 5 * 10^17 < 10^18 * mem[(32 * idx) + _5613 + ceil32(return_data.size) + 32] * _6845:
                    revert with 0, 'math-not-safe'
                mem[_7957 + 32] = (10^18 * mem[(32 * idx) + _5613 + ceil32(return_data.size) + 32] * _6845) + 5 * 10^17 / 10^18
            require idx < mem[_6873]
            mem[(32 * idx) + _6873 + 32] = _7957
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg2.length:
            require idx < mem[(32 * arg2.length) + 384]
            _11445 = mem[(32 * idx) + (32 * arg2.length) + 416]
            require idx < mem[_6873]
            _11452 = mem[mem[(32 * idx) + _6873 + 32]]
            require idx < mem[_6873]
            _11465 = mem[mem[(32 * idx) + _6873 + 32] + 32]
            _11479 = mem[64]
            mem[64] = mem[64] + 352
            mem[_11479] = 0
            mem[_11479 + 32] = 0
            mem[_11479 + 64] = 0
            mem[_11479 + 96] = 0
            mem[_11479 + 128] = 0
            mem[_11479 + 160] = 0
            mem[_11479 + 192] = 0
            mem[_11479 + 224] = 0
            mem[_11479 + 256] = 0
            mem[_11479 + 288] = 0
            _11481 = mem[64]
            mem[64] = mem[64] + 544
            mem[_11481] = 0
            mem[_11481 + 32] = 0
            mem[_11481 + 64] = 0
            mem[_11481 + 96] = 0
            mem[_11481 + 128] = 0
            mem[_11481 + 160] = 0
            mem[_11481 + 192] = 0
            mem[_11481 + 224] = 0
            mem[_11481 + 256] = 0
            mem[_11481 + 288] = 0
            mem[_11481 + 320] = 0
            mem[_11481 + 352] = 0
            mem[_11481 + 384] = 0
            mem[_11481 + 416] = 0
            mem[_11481 + 448] = 0
            mem[_11481 + 480] = 0
            mem[_11481 + 512] = 0
            mem[_11479 + 320] = _11481
            _11507 = mem[64]
            mem[64] = mem[64] + 544
            mem[_11507] = 0
            mem[_11507 + 32] = 0
            mem[_11507 + 64] = 0
            mem[_11507 + 96] = 0
            mem[_11507 + 128] = 0
            mem[_11507 + 160] = 0
            mem[_11507 + 192] = 0
            mem[_11507 + 224] = 0
            mem[_11507 + 256] = 0
            mem[_11507 + 288] = 0
            mem[_11507 + 320] = 0
            mem[_11507 + 352] = 0
            mem[_11507 + 384] = 0
            mem[_11507 + 416] = 0
            mem[_11507 + 448] = 0
            mem[_11507 + 480] = 0
            mem[_11507 + 512] = 0
            _11535 = mem[64]
            mem[64] = mem[64] + 544
            mem[_11535] = 0
            mem[_11535 + 32] = 0
            mem[_11535 + 64] = 0
            mem[_11535 + 96] = 0
            mem[_11535 + 128] = 0
            mem[_11535 + 160] = 0
            mem[_11535 + 192] = 0
            mem[_11535 + 224] = 0
            mem[_11535 + 256] = 0
            mem[_11535 + 288] = 0
            mem[_11535 + 320] = 0
            mem[_11535 + 352] = 0
            mem[_11535 + 384] = 0
            mem[_11535 + 416] = 0
            mem[_11535 + 448] = 0
            mem[_11535 + 480] = 0
            mem[_11535 + 512] = 0
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveConfigurationData(address rg1) with:
                    gas gas_remaining wei
                   args address(_11445)
            mem[mem[64] len 320] = ext_call.return_data[0 len 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _11611 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 320
            require mem[_11611] == mem[_11611]
            _11675 = mem[_11611 + 32]
            require mem[_11611 + 32] == mem[_11611 + 32]
            _11717 = mem[_11611 + 64]
            require mem[_11611 + 64] == mem[_11611 + 64]
            require mem[_11611 + 96] == mem[_11611 + 96]
            _11809 = mem[_11611 + 128]
            require mem[_11611 + 128] == mem[_11611 + 128]
            _11853 = mem[_11611 + 160]
            require mem[_11611 + 160] == bool(mem[_11611 + 160])
            _11885 = mem[_11611 + 192]
            require mem[_11611 + 192] == bool(mem[_11611 + 192])
            _11935 = mem[_11611 + 224]
            require mem[_11611 + 224] == bool(mem[_11611 + 224])
            _11995 = mem[_11611 + 256]
            require mem[_11611 + 256] == bool(mem[_11611 + 256])
            require mem[_11611 + 288] == bool(mem[_11611 + 288])
            mem[_11535 + 224] = bool(mem[_11611 + 288])
            mem[_11535 + 192] = bool(_11995)
            mem[_11535 + 160] = bool(_11935)
            mem[_11535 + 128] = bool(_11885)
            mem[_11535 + 96] = bool(_11853)
            mem[_11535 + 64] = _11809
            mem[_11535 + 32] = _11717
            mem[_11535] = _11675
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                    gas gas_remaining wei
                   args address(_11445)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12125 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _12137 = mem[_12125]
            require mem[_12125] == mem[_12125 + 12 len 20]
            _12182 = mem[_12125 + 32]
            require mem[_12125 + 32] == mem[_12125 + 44 len 20]
            require mem[_12125 + 64] == mem[_12125 + 76 len 20]
            mem[_11535 + 512] = mem[_12125 + 76 len 20]
            mem[_11535 + 480] = address(_12182)
            mem[_11535 + 448] = address(_12137)
            _12277 = mem[64]
            mem[64] = mem[64] + 96
            mem[_12277] = 0
            mem[_12277 + 32] = 0
            mem[_12277 + 64] = 0
            require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
            staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.assets(address rg1) with:
                    gas gas_remaining wei
                   args address(_12137)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12341 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _12361 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require mem[_12341] == mem[_12341 + 16 len 16]
            mem[_12361] = mem[_12341]
            require mem[_12341 + 32] == mem[_12341 + 48 len 16]
            mem[_12361 + 32] = mem[_12341 + 32]
            require mem[_12341 + 64] == mem[_12341 + 64]
            mem[_12361 + 64] = mem[_12341 + 64]
            mem[_11535 + 384] = mem[_12361 + 16 len 16]
            require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
            staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.assets(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[_11535 + 512])
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12441 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _12451 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require mem[_12441] == mem[_12441 + 16 len 16]
            mem[_12451] = mem[_12441]
            require mem[_12441 + 32] == mem[_12441 + 48 len 16]
            mem[_12451 + 32] = mem[_12441 + 32]
            require mem[_12441 + 64] == mem[_12441 + 64]
            mem[_12451 + 64] = mem[_12441 + 64]
            mem[_11535 + 416] = mem[_12451 + 16 len 16]
            require ext_code.size(address(_12137))
            staticcall address(_12137).0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12571 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_12571] == mem[_12571]
            mem[_11535 + 256] = mem[_12571]
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(_11445), arg1
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12719 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _12725 = mem[_12719]
            require mem[_12719] == mem[_12719]
            _12775 = mem[_12719 + 32]
            require mem[_12719 + 32] == mem[_12719 + 32]
            _12817 = mem[_12719 + 64]
            require mem[_12719 + 64] == mem[_12719 + 64]
            require mem[_12719 + 96] == mem[_12719 + 96]
            require mem[_12719 + 128] == mem[_12719 + 128]
            _12915 = mem[_12719 + 160]
            require mem[_12719 + 160] == mem[_12719 + 160]
            require mem[_12719 + 192] == mem[_12719 + 192]
            require mem[_12719 + 224] == mem[_12719 + 251 len 5]
            require mem[_12719 + 256] == bool(mem[_12719 + 256])
            mem[_11479 + 288] = bool(mem[_12719 + 256])
            mem[_11479 + 224] = _12915
            mem[_11479 + 128] = _12817
            mem[_11479 + 96] = _12775
            mem[_11479 + 64] = _12725
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveData(address rg1) with:
                    gas gas_remaining wei
                   args address(_11445)
            mem[mem[64] len 320] = ext_call.return_data[0 len 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13035 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 320
            _13049 = mem[_13035]
            require mem[_13035] == mem[_13035]
            _13067 = mem[_13035 + 32]
            require mem[_13035 + 32] == mem[_13035 + 32]
            _13091 = mem[_13035 + 64]
            require mem[_13035 + 64] == mem[_13035 + 64]
            _13099 = mem[_13035 + 96]
            require mem[_13035 + 96] == mem[_13035 + 96]
            _13105 = mem[_13035 + 128]
            require mem[_13035 + 128] == mem[_13035 + 128]
            require mem[_13035 + 160] == mem[_13035 + 160]
            require mem[_13035 + 192] == mem[_13035 + 192]
            require mem[_13035 + 224] == mem[_13035 + 224]
            require mem[_13035 + 256] == mem[_13035 + 256]
            require mem[_13035 + 288] == mem[_13035 + 315 len 5]
            mem[_11479 + 192] = mem[_13035 + 160]
            mem[_11479 + 256] = _13105
            mem[_11479 + 160] = _13099
            mem[_11535 + 352] = _13091
            mem[_11535 + 320] = _13067
            mem[_11535 + 288] = _13049
            mem[_11479] = _11452
            mem[_11479 + 32] = _11465
            mem[_11479 + 320] = _11535
            require idx < mem[(64 * arg2.length) + 416]
            mem[(32 * idx) + (64 * arg2.length) + 448] = _11479
            idx = idx + 1
            continue 
        require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
        staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getLendingPool() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11438 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _11463 = mem[_11438]
        require mem[_11438] == mem[_11438 + 12 len 20]
        _11541 = mem[64]
        mem[64] = mem[64] + 256
        mem[_11541] = 0
        mem[_11541 + 32] = 0
        mem[_11541 + 64] = 0
        mem[_11541 + 96] = 0
        mem[_11541 + 128] = 0
        mem[_11541 + 160] = 0
        mem[_11541 + 192] = 0
        mem[_11541 + 224] = 0
        require ext_code.size(address(_11463))
        staticcall address(_11463).0xbf92857c with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _11630 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _11644 = mem[_11630]
        require mem[_11630] == mem[_11630]
        _11683 = mem[_11630 + 32]
        require mem[_11630 + 32] == mem[_11630 + 32]
        _11725 = mem[_11630 + 64]
        require mem[_11630 + 64] == mem[_11630 + 64]
        _11777 = mem[_11630 + 96]
        require mem[_11630 + 96] == mem[_11630 + 96]
        _11813 = mem[_11630 + 128]
        require mem[_11630 + 128] == mem[_11630 + 128]
        _11861 = mem[_11630 + 160]
        require mem[_11630 + 160] == mem[_11630 + 160]
        _11909 = mem[(32 * arg2.length) + 384]
        require 2 * mem[(32 * arg2.length) + 384] <= test266151307()
        _11911 = mem[64]
        mem[mem[64]] = 2 * mem[(32 * arg2.length) + 384]
        mem[64] = mem[64] + (64 * _11909) + 32
        if not uint255(_11909):
            _12454 = mem[(32 * arg2.length) + 384]
            idx = 0
            while idx < _12454:
                require idx < mem[(32 * arg2.length) + 384]
                require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
                staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                        gas gas_remaining wei
                       args address(mem[(32 * idx) + (32 * arg2.length) + 416])
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _12514 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _12531 = mem[_12514]
                require mem[_12514] == mem[_12514 + 12 len 20]
                require mem[_12514 + 32] == mem[_12514 + 44 len 20]
                require mem[_12514 + 64] == mem[_12514 + 76 len 20]
                require 2 * idx < mem[_11911]
                require (2 * idx) + 1 < mem[_11911]
                mem[(32 * (2 * idx) + 1) + _11911 + 32] = mem[_12514 + 76 len 20]
                mem[(64 * idx) + _11911 + 32] = address(_12531)
                _12454 = mem[(32 * arg2.length) + 384]
                idx = idx + 1
                continue 
            mem[mem[64]] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 64
            _12488 = mem[_11911]
            mem[mem[64] + 68] = mem[_11911]
            idx = 0
            s = _11911 + 32
            t = mem[64] + 100
            while idx < _12488:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 36] = arg1
            require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
            staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] rg1, address rg2) with:
                    gas gas_remaining wei
                   args 64, address(arg1), mem[mem[64] + 68 len (32 * _12488) + 32]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13184 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _13190 = mem[_13184]
            require mem[_13184] == mem[_13184]
            _13218 = mem[64]
            mem[64] = mem[64] + 256
            mem[_13218] = _11644
            mem[_13218 + 32] = _11683
            mem[_13218 + 64] = _11725
            mem[_13218 + 96] = _11777
            mem[_13218 + 128] = _11813
            mem[_13218 + 160] = _11861
            mem[_13218 + 192] = _6845
            mem[_13218 + 224] = _13190
            _13231 = mem[64]
            mem[mem[64]] = 288
            _13248 = mem[(64 * arg2.length) + 416]
            mem[mem[64] + 288] = mem[(64 * arg2.length) + 416]
            idx = 0
            s = (64 * arg2.length) + 448
            t = mem[64] + 320
            while idx < _13248:
                _13779 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_13779 + 32]
                mem[t + 64] = mem[_13779 + 64]
                mem[t + 96] = mem[_13779 + 96]
                mem[t + 128] = mem[_13779 + 128]
                mem[t + 160] = mem[_13779 + 160]
                mem[t + 192] = mem[_13779 + 192]
                mem[t + 224] = mem[_13779 + 224]
                mem[t + 256] = mem[_13779 + 256]
                mem[t + 288] = bool(mem[_13779 + 288])
                _13950 = mem[_13779 + 320]
                mem[t + 320] = mem[mem[_13779 + 320]]
                mem[t + 352] = mem[_13950 + 32]
                mem[t + 384] = mem[_13950 + 64]
                mem[t + 416] = bool(mem[_13950 + 96])
                mem[t + 448] = bool(mem[_13950 + 128])
                mem[t + 480] = bool(mem[_13950 + 160])
                mem[t + 512] = bool(mem[_13950 + 192])
                mem[t + 544] = bool(mem[_13950 + 224])
                mem[t + 576] = mem[_13950 + 256]
                mem[t + 608] = mem[_13950 + 288]
                mem[t + 640] = mem[_13950 + 320]
                mem[t + 672] = mem[_13950 + 352]
                mem[t + 704] = mem[_13950 + 384]
                mem[t + 736] = mem[_13950 + 416]
                mem[t + 768] = mem[_13950 + 460 len 20]
                mem[t + 800] = mem[_13950 + 492 len 20]
                mem[t + 832] = mem[_13950 + 524 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 864
                continue 
            mem[_13231 + 32] = mem[_13218]
            mem[_13231 + 64] = mem[_13218 + 32]
            mem[_13231 + 96] = mem[_13218 + 64]
            mem[_13231 + 128] = mem[_13218 + 96]
            mem[_13231 + 160] = mem[_13218 + 128]
            mem[_13231 + 192] = mem[_13218 + 160]
            mem[_13231 + 224] = mem[_13218 + 192]
            mem[_13231 + 256] = mem[_13218 + 224]
            return memory
              from mem[64]
               len _13231 + (864 * _13248) + -mem[64] + 320
        mem[_11911 + 32 len 64 * _11909] = call.data[calldata.size len 64 * _11909]
        _12455 = mem[(32 * arg2.length) + 384]
        idx = 0
        while idx < _12455:
            require idx < mem[(32 * arg2.length) + 384]
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + (32 * arg2.length) + 416])
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _12515 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _12532 = mem[_12515]
            require mem[_12515] == mem[_12515 + 12 len 20]
            require mem[_12515 + 32] == mem[_12515 + 44 len 20]
            require mem[_12515 + 64] == mem[_12515 + 76 len 20]
            require 2 * idx < mem[_11911]
            require (2 * idx) + 1 < mem[_11911]
            mem[(32 * (2 * idx) + 1) + _11911 + 32] = mem[_12515 + 76 len 20]
            mem[(64 * idx) + _11911 + 32] = address(_12532)
            _12455 = mem[(32 * arg2.length) + 384]
            idx = idx + 1
            continue 
        mem[mem[64]] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        _12489 = mem[_11911]
        mem[mem[64] + 68] = mem[_11911]
        idx = 0
        s = _11911 + 32
        t = mem[64] + 100
        while idx < _12489:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = arg1
        require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
        staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] rg1, address rg2) with:
                gas gas_remaining wei
               args 64, address(arg1), mem[mem[64] + 68 len (32 * _12489) + 32]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13185 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _13191 = mem[_13185]
        require mem[_13185] == mem[_13185]
        _13219 = mem[64]
        mem[64] = mem[64] + 256
        mem[_13219] = _11644
        mem[_13219 + 32] = _11683
        mem[_13219 + 64] = _11725
        mem[_13219 + 96] = _11777
        mem[_13219 + 128] = _11813
        mem[_13219 + 160] = _11861
        mem[_13219 + 192] = _6845
        mem[_13219 + 224] = _13191
        _13232 = mem[64]
        mem[mem[64]] = 288
        _13249 = mem[(64 * arg2.length) + 416]
        mem[mem[64] + 288] = mem[(64 * arg2.length) + 416]
        idx = 0
        s = (64 * arg2.length) + 448
        t = mem[64] + 320
        while idx < _13249:
            _13780 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_13780 + 32]
            mem[t + 64] = mem[_13780 + 64]
            mem[t + 96] = mem[_13780 + 96]
            mem[t + 128] = mem[_13780 + 128]
            mem[t + 160] = mem[_13780 + 160]
            mem[t + 192] = mem[_13780 + 192]
            mem[t + 224] = mem[_13780 + 224]
            mem[t + 256] = mem[_13780 + 256]
            mem[t + 288] = bool(mem[_13780 + 288])
            _13951 = mem[_13780 + 320]
            mem[t + 320] = mem[mem[_13780 + 320]]
            mem[t + 352] = mem[_13951 + 32]
            mem[t + 384] = mem[_13951 + 64]
            mem[t + 416] = bool(mem[_13951 + 96])
            mem[t + 448] = bool(mem[_13951 + 128])
            mem[t + 480] = bool(mem[_13951 + 160])
            mem[t + 512] = bool(mem[_13951 + 192])
            mem[t + 544] = bool(mem[_13951 + 224])
            mem[t + 576] = mem[_13951 + 256]
            mem[t + 608] = mem[_13951 + 288]
            mem[t + 640] = mem[_13951 + 320]
            mem[t + 672] = mem[_13951 + 352]
            mem[t + 704] = mem[_13951 + 384]
            mem[t + 736] = mem[_13951 + 416]
            mem[t + 768] = mem[_13951 + 460 len 20]
            mem[t + 800] = mem[_13951 + 492 len 20]
            mem[t + 832] = mem[_13951 + 524 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 864
            continue 
        mem[_13232 + 32] = mem[_13219]
        mem[_13232 + 64] = mem[_13219 + 32]
        mem[_13232 + 96] = mem[_13219 + 64]
        mem[_13232 + 128] = mem[_13219 + 96]
        mem[_13232 + 160] = mem[_13219 + 128]
        mem[_13232 + 192] = mem[_13219 + 160]
        mem[_13232 + 224] = mem[_13219 + 192]
        mem[_13232 + 256] = mem[_13219 + 224]
        return memory
          from mem[64]
           len _13232 + (864 * _13249) + -mem[64] + 320
    mem[64] = _6873 + (32 * _5639) + 96
    mem[_6873 + (32 * _5639) + 32] = 0
    mem[_6873 + (32 * _5639) + 64] = 0
    mem[var117001] = _6873 + (32 * _5639) + 32
    s = var117001
    idx = var117002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[_6873 + (32 * _5639) + 32] = 0
        mem[_6873 + (32 * _5639) + 64] = 0
        mem[s + 32] = _6873 + (32 * _5639) + 32
        s = s + 32
        idx = idx - 1
        continue 
    _10355 = mem[_5613 + ceil32(return_data.size)]
    idx = 0
    while idx < _10355:
        _10370 = mem[64]
        mem[64] = mem[64] + 64
        require idx < mem[_5613 + ceil32(return_data.size)]
        mem[_10370] = 10^10 * mem[(32 * idx) + _5613 + ceil32(return_data.size) + 32]
        require idx < mem[_5613 + ceil32(return_data.size)]
        if not _6845:
            mem[_10370 + 32] = 0
        else:
            require _6845
            if 10^18 * mem[(32 * idx) + _5613 + ceil32(return_data.size) + 32] * _6845 / _6845 != 10^18 * mem[(32 * idx) + _5613 + ceil32(return_data.size) + 32]:
                revert with 0, 'math-not-safe'
            if (10^18 * mem[(32 * idx) + _5613 + ceil32(return_data.size) + 32] * _6845) + 5 * 10^17 < 10^18 * mem[(32 * idx) + _5613 + ceil32(return_data.size) + 32] * _6845:
                revert with 0, 'math-not-safe'
            mem[_10370 + 32] = (10^18 * mem[(32 * idx) + _5613 + ceil32(return_data.size) + 32] * _6845) + 5 * 10^17 / 10^18
        require idx < mem[_6873]
        mem[(32 * idx) + _6873 + 32] = _10370
        _10355 = mem[_5613 + ceil32(return_data.size)]
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg2.length:
        require idx < mem[(32 * arg2.length) + 384]
        _13144 = mem[(32 * idx) + (32 * arg2.length) + 416]
        require idx < mem[_6873]
        _13150 = mem[mem[(32 * idx) + _6873 + 32]]
        require idx < mem[_6873]
        _13157 = mem[mem[(32 * idx) + _6873 + 32] + 32]
        _13167 = mem[64]
        mem[64] = mem[64] + 352
        mem[_13167] = 0
        mem[_13167 + 32] = 0
        mem[_13167 + 64] = 0
        mem[_13167 + 96] = 0
        mem[_13167 + 128] = 0
        mem[_13167 + 160] = 0
        mem[_13167 + 192] = 0
        mem[_13167 + 224] = 0
        mem[_13167 + 256] = 0
        mem[_13167 + 288] = 0
        _13173 = mem[64]
        mem[64] = mem[64] + 544
        mem[_13173] = 0
        mem[_13173 + 32] = 0
        mem[_13173 + 64] = 0
        mem[_13173 + 96] = 0
        mem[_13173 + 128] = 0
        mem[_13173 + 160] = 0
        mem[_13173 + 192] = 0
        mem[_13173 + 224] = 0
        mem[_13173 + 256] = 0
        mem[_13173 + 288] = 0
        mem[_13173 + 320] = 0
        mem[_13173 + 352] = 0
        mem[_13173 + 384] = 0
        mem[_13173 + 416] = 0
        mem[_13173 + 448] = 0
        mem[_13173 + 480] = 0
        mem[_13173 + 512] = 0
        mem[_13167 + 320] = _13173
        _13187 = mem[64]
        mem[64] = mem[64] + 544
        mem[_13187] = 0
        mem[_13187 + 32] = 0
        mem[_13187 + 64] = 0
        mem[_13187 + 96] = 0
        mem[_13187 + 128] = 0
        mem[_13187 + 160] = 0
        mem[_13187 + 192] = 0
        mem[_13187 + 224] = 0
        mem[_13187 + 256] = 0
        mem[_13187 + 288] = 0
        mem[_13187 + 320] = 0
        mem[_13187 + 352] = 0
        mem[_13187 + 384] = 0
        mem[_13187 + 416] = 0
        mem[_13187 + 448] = 0
        mem[_13187 + 480] = 0
        mem[_13187 + 512] = 0
        _13201 = mem[64]
        mem[64] = mem[64] + 544
        mem[_13201] = 0
        mem[_13201 + 32] = 0
        mem[_13201 + 64] = 0
        mem[_13201 + 96] = 0
        mem[_13201 + 128] = 0
        mem[_13201 + 160] = 0
        mem[_13201 + 192] = 0
        mem[_13201 + 224] = 0
        mem[_13201 + 256] = 0
        mem[_13201 + 288] = 0
        mem[_13201 + 320] = 0
        mem[_13201 + 352] = 0
        mem[_13201 + 384] = 0
        mem[_13201 + 416] = 0
        mem[_13201 + 448] = 0
        mem[_13201 + 480] = 0
        mem[_13201 + 512] = 0
        require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
        staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveConfigurationData(address rg1) with:
                gas gas_remaining wei
               args address(_13144)
        mem[mem[64] len 320] = ext_call.return_data[0 len 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13237 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 320
        require mem[_13237] == mem[_13237]
        _13281 = mem[_13237 + 32]
        require mem[_13237 + 32] == mem[_13237 + 32]
        _13305 = mem[_13237 + 64]
        require mem[_13237 + 64] == mem[_13237 + 64]
        require mem[_13237 + 96] == mem[_13237 + 96]
        _13361 = mem[_13237 + 128]
        require mem[_13237 + 128] == mem[_13237 + 128]
        _13389 = mem[_13237 + 160]
        require mem[_13237 + 160] == bool(mem[_13237 + 160])
        _13405 = mem[_13237 + 192]
        require mem[_13237 + 192] == bool(mem[_13237 + 192])
        _13431 = mem[_13237 + 224]
        require mem[_13237 + 224] == bool(mem[_13237 + 224])
        _13471 = mem[_13237 + 256]
        require mem[_13237 + 256] == bool(mem[_13237 + 256])
        require mem[_13237 + 288] == bool(mem[_13237 + 288])
        mem[_13201 + 224] = bool(mem[_13237 + 288])
        mem[_13201 + 192] = bool(_13471)
        mem[_13201 + 160] = bool(_13431)
        mem[_13201 + 128] = bool(_13405)
        mem[_13201 + 96] = bool(_13389)
        mem[_13201 + 64] = _13361
        mem[_13201 + 32] = _13305
        mem[_13201] = _13281
        require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
        staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                gas gas_remaining wei
               args address(_13144)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13557 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _13565 = mem[_13557]
        require mem[_13557] == mem[_13557 + 12 len 20]
        _13595 = mem[_13557 + 32]
        require mem[_13557 + 32] == mem[_13557 + 44 len 20]
        require mem[_13557 + 64] == mem[_13557 + 76 len 20]
        mem[_13201 + 512] = mem[_13557 + 76 len 20]
        mem[_13201 + 480] = address(_13595)
        mem[_13201 + 448] = address(_13565)
        _13657 = mem[64]
        mem[64] = mem[64] + 96
        mem[_13657] = 0
        mem[_13657 + 32] = 0
        mem[_13657 + 64] = 0
        require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
        staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.assets(address rg1) with:
                gas gas_remaining wei
               args address(_13565)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13693 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _13703 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        require mem[_13693] == mem[_13693 + 16 len 16]
        mem[_13703] = mem[_13693]
        require mem[_13693 + 32] == mem[_13693 + 48 len 16]
        mem[_13703 + 32] = mem[_13693 + 32]
        require mem[_13693 + 64] == mem[_13693 + 64]
        mem[_13703 + 64] = mem[_13693 + 64]
        mem[_13201 + 384] = mem[_13703 + 16 len 16]
        require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
        staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.assets(address rg1) with:
                gas gas_remaining wei
               args address(mem[_13201 + 512])
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13763 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _13769 = mem[64]
        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
        mem[64] = mem[64] + 96
        require mem[_13763] == mem[_13763 + 16 len 16]
        mem[_13769] = mem[_13763]
        require mem[_13763 + 32] == mem[_13763 + 48 len 16]
        mem[_13769 + 32] = mem[_13763 + 32]
        require mem[_13763 + 64] == mem[_13763 + 64]
        mem[_13769 + 64] = mem[_13763 + 64]
        mem[_13201 + 416] = mem[_13769 + 16 len 16]
        require ext_code.size(address(_13565))
        staticcall address(_13565).0x18160ddd with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13889 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_13889] == mem[_13889]
        mem[_13201 + 256] = mem[_13889]
        require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
        staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getUserReserveData(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(_13144), arg1
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13989 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        _13991 = mem[_13989]
        require mem[_13989] == mem[_13989]
        _14017 = mem[_13989 + 32]
        require mem[_13989 + 32] == mem[_13989 + 32]
        _14043 = mem[_13989 + 64]
        require mem[_13989 + 64] == mem[_13989 + 64]
        require mem[_13989 + 96] == mem[_13989 + 96]
        require mem[_13989 + 128] == mem[_13989 + 128]
        _14105 = mem[_13989 + 160]
        require mem[_13989 + 160] == mem[_13989 + 160]
        require mem[_13989 + 192] == mem[_13989 + 192]
        require mem[_13989 + 224] == mem[_13989 + 251 len 5]
        require mem[_13989 + 256] == bool(mem[_13989 + 256])
        mem[_13167 + 288] = bool(mem[_13989 + 256])
        mem[_13167 + 224] = _14105
        mem[_13167 + 128] = _14043
        mem[_13167 + 96] = _14017
        mem[_13167 + 64] = _13991
        require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
        staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveData(address rg1) with:
                gas gas_remaining wei
               args address(_13144)
        mem[mem[64] len 320] = ext_call.return_data[0 len 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14173 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 320
        _14179 = mem[_14173]
        require mem[_14173] == mem[_14173]
        _14189 = mem[_14173 + 32]
        require mem[_14173 + 32] == mem[_14173 + 32]
        _14199 = mem[_14173 + 64]
        require mem[_14173 + 64] == mem[_14173 + 64]
        _14205 = mem[_14173 + 96]
        require mem[_14173 + 96] == mem[_14173 + 96]
        _14211 = mem[_14173 + 128]
        require mem[_14173 + 128] == mem[_14173 + 128]
        require mem[_14173 + 160] == mem[_14173 + 160]
        require mem[_14173 + 192] == mem[_14173 + 192]
        require mem[_14173 + 224] == mem[_14173 + 224]
        require mem[_14173 + 256] == mem[_14173 + 256]
        require mem[_14173 + 288] == mem[_14173 + 315 len 5]
        mem[_13167 + 192] = mem[_14173 + 160]
        mem[_13167 + 256] = _14211
        mem[_13167 + 160] = _14205
        mem[_13201 + 352] = _14199
        mem[_13201 + 320] = _14189
        mem[_13201 + 288] = _14179
        mem[_13167] = _13150
        mem[_13167 + 32] = _13157
        mem[_13167 + 320] = _13201
        require idx < mem[(64 * arg2.length) + 416]
        mem[(32 * idx) + (64 * arg2.length) + 448] = _13167
        idx = idx + 1
        continue 
    require ext_code.size(0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f)
    staticcall 0xb6a86025f0fe1862b372cb0ca18ce3ede02a318f.getLendingPool() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _13140 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _13155 = mem[_13140]
    require mem[_13140] == mem[_13140 + 12 len 20]
    _13205 = mem[64]
    mem[64] = mem[64] + 256
    mem[_13205] = 0
    mem[_13205 + 32] = 0
    mem[_13205 + 64] = 0
    mem[_13205 + 96] = 0
    mem[_13205 + 128] = 0
    mem[_13205 + 160] = 0
    mem[_13205 + 192] = 0
    mem[_13205 + 224] = 0
    require ext_code.size(address(_13155))
    staticcall address(_13155).0xbf92857c with:
            gas gas_remaining wei
           args address(arg1)
    mem[mem[64] len 192] = ext_call.return_data[0 len 192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _13251 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 192
    _13263 = mem[_13251]
    require mem[_13251] == mem[_13251]
    _13287 = mem[_13251 + 32]
    require mem[_13251 + 32] == mem[_13251 + 32]
    _13319 = mem[_13251 + 64]
    require mem[_13251 + 64] == mem[_13251 + 64]
    _13347 = mem[_13251 + 96]
    require mem[_13251 + 96] == mem[_13251 + 96]
    _13363 = mem[_13251 + 128]
    require mem[_13251 + 128] == mem[_13251 + 128]
    _13391 = mem[_13251 + 160]
    require mem[_13251 + 160] == mem[_13251 + 160]
    _13415 = mem[(32 * arg2.length) + 384]
    require 2 * mem[(32 * arg2.length) + 384] <= test266151307()
    _13417 = mem[64]
    mem[mem[64]] = 2 * mem[(32 * arg2.length) + 384]
    mem[64] = mem[64] + (64 * _13415) + 32
    if not uint255(_13415):
        _13772 = mem[(32 * arg2.length) + 384]
        idx = 0
        while idx < _13772:
            require idx < mem[(32 * arg2.length) + 384]
            require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
            staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + (32 * arg2.length) + 416])
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _13832 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _13849 = mem[_13832]
            require mem[_13832] == mem[_13832 + 12 len 20]
            require mem[_13832 + 32] == mem[_13832 + 44 len 20]
            require mem[_13832 + 64] == mem[_13832 + 76 len 20]
            require 2 * idx < mem[_13417]
            require (2 * idx) + 1 < mem[_13417]
            mem[(32 * (2 * idx) + 1) + _13417 + 32] = mem[_13832 + 76 len 20]
            mem[(64 * idx) + _13417 + 32] = address(_13849)
            _13772 = mem[(32 * arg2.length) + 384]
            idx = idx + 1
            continue 
        mem[mem[64]] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 64
        _13806 = mem[_13417]
        mem[mem[64] + 68] = mem[_13417]
        idx = 0
        s = _13417 + 32
        t = mem[64] + 100
        while idx < _13806:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = arg1
        require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
        staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] rg1, address rg2) with:
                gas gas_remaining wei
               args 64, address(arg1), mem[mem[64] + 68 len (32 * _13806) + 32]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _14234 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _14238 = mem[_14234]
        require mem[_14234] == mem[_14234]
        _14242 = mem[64]
        mem[64] = mem[64] + 256
        mem[_14242] = _13263
        mem[_14242 + 32] = _13287
        mem[_14242 + 64] = _13319
        mem[_14242 + 96] = _13347
        mem[_14242 + 128] = _13363
        mem[_14242 + 160] = _13391
        mem[_14242 + 192] = _6845
        mem[_14242 + 224] = _14238
        _14246 = mem[64]
        mem[mem[64]] = 288
        _14250 = mem[(64 * arg2.length) + 416]
        mem[mem[64] + 288] = mem[(64 * arg2.length) + 416]
        idx = 0
        s = (64 * arg2.length) + 448
        t = mem[64] + 320
        while idx < _14250:
            _14406 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_14406 + 32]
            mem[t + 64] = mem[_14406 + 64]
            mem[t + 96] = mem[_14406 + 96]
            mem[t + 128] = mem[_14406 + 128]
            mem[t + 160] = mem[_14406 + 160]
            mem[t + 192] = mem[_14406 + 192]
            mem[t + 224] = mem[_14406 + 224]
            mem[t + 256] = mem[_14406 + 256]
            mem[t + 288] = bool(mem[_14406 + 288])
            _14486 = mem[_14406 + 320]
            mem[t + 320] = mem[mem[_14406 + 320]]
            mem[t + 352] = mem[_14486 + 32]
            mem[t + 384] = mem[_14486 + 64]
            mem[t + 416] = bool(mem[_14486 + 96])
            mem[t + 448] = bool(mem[_14486 + 128])
            mem[t + 480] = bool(mem[_14486 + 160])
            mem[t + 512] = bool(mem[_14486 + 192])
            mem[t + 544] = bool(mem[_14486 + 224])
            mem[t + 576] = mem[_14486 + 256]
            mem[t + 608] = mem[_14486 + 288]
            mem[t + 640] = mem[_14486 + 320]
            mem[t + 672] = mem[_14486 + 352]
            mem[t + 704] = mem[_14486 + 384]
            mem[t + 736] = mem[_14486 + 416]
            mem[t + 768] = mem[_14486 + 460 len 20]
            mem[t + 800] = mem[_14486 + 492 len 20]
            mem[t + 832] = mem[_14486 + 524 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 864
            continue 
        mem[_14246 + 32] = mem[_14242]
        mem[_14246 + 64] = mem[_14242 + 32]
        mem[_14246 + 96] = mem[_14242 + 64]
        mem[_14246 + 128] = mem[_14242 + 96]
        mem[_14246 + 160] = mem[_14242 + 128]
        mem[_14246 + 192] = mem[_14242 + 160]
        mem[_14246 + 224] = mem[_14242 + 192]
        mem[_14246 + 256] = mem[_14242 + 224]
        return memory
          from mem[64]
           len _14246 + (864 * _14250) + -mem[64] + 320
    mem[_13417 + 32 len 64 * _13415] = call.data[calldata.size len 64 * _13415]
    _13773 = mem[(32 * arg2.length) + 384]
    idx = 0
    while idx < _13773:
        require idx < mem[(32 * arg2.length) + 384]
        require ext_code.size(0x65285e9dfab318f57051ab2b139cccf232945451)
        staticcall 0x65285e9dfab318f57051ab2b139cccf232945451.getReserveTokensAddresses(address rg1) with:
                gas gas_remaining wei
               args address(mem[(32 * idx) + (32 * arg2.length) + 416])
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _13833 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _13850 = mem[_13833]
        require mem[_13833] == mem[_13833 + 12 len 20]
        require mem[_13833 + 32] == mem[_13833 + 44 len 20]
        require mem[_13833 + 64] == mem[_13833 + 76 len 20]
        require 2 * idx < mem[_13417]
        require (2 * idx) + 1 < mem[_13417]
        mem[(32 * (2 * idx) + 1) + _13417 + 32] = mem[_13833 + 76 len 20]
        mem[(64 * idx) + _13417 + 32] = address(_13850)
        _13773 = mem[(32 * arg2.length) + 384]
        idx = idx + 1
        continue 
    mem[mem[64]] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 64
    _13807 = mem[_13417]
    mem[mem[64] + 68] = mem[_13417]
    idx = 0
    s = _13417 + 32
    t = mem[64] + 100
    while idx < _13807:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 36] = arg1
    require ext_code.size(0x1d83fe6a10d2f2b7af17034343746188272cac9)
    staticcall 0x1d83fe6a10d2f2b7af17034343746188272cac9.getRewardsBalance(address[] rg1, address rg2) with:
            gas gas_remaining wei
           args 64, address(arg1), mem[mem[64] + 68 len (32 * _13807) + 32]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _14235 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _14239 = mem[_14235]
    require mem[_14235] == mem[_14235]
    _14243 = mem[64]
    mem[64] = mem[64] + 256
    mem[_14243] = _13263
    mem[_14243 + 32] = _13287
    mem[_14243 + 64] = _13319
    mem[_14243 + 96] = _13347
    mem[_14243 + 128] = _13363
    mem[_14243 + 160] = _13391
    mem[_14243 + 192] = _6845
    mem[_14243 + 224] = _14239
    _14247 = mem[64]
    mem[mem[64]] = 288
    _14251 = mem[(64 * arg2.length) + 416]
    mem[mem[64] + 288] = mem[(64 * arg2.length) + 416]
    idx = 0
    s = (64 * arg2.length) + 448
    t = mem[64] + 320
    while idx < _14251:
        _14407 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_14407 + 32]
        mem[t + 64] = mem[_14407 + 64]
        mem[t + 96] = mem[_14407 + 96]
        mem[t + 128] = mem[_14407 + 128]
        mem[t + 160] = mem[_14407 + 160]
        mem[t + 192] = mem[_14407 + 192]
        mem[t + 224] = mem[_14407 + 224]
        mem[t + 256] = mem[_14407 + 256]
        mem[t + 288] = bool(mem[_14407 + 288])
        _14487 = mem[_14407 + 320]
        mem[t + 320] = mem[mem[_14407 + 320]]
        mem[t + 352] = mem[_14487 + 32]
        mem[t + 384] = mem[_14487 + 64]
        mem[t + 416] = bool(mem[_14487 + 96])
        mem[t + 448] = bool(mem[_14487 + 128])
        mem[t + 480] = bool(mem[_14487 + 160])
        mem[t + 512] = bool(mem[_14487 + 192])
        mem[t + 544] = bool(mem[_14487 + 224])
        mem[t + 576] = mem[_14487 + 256]
        mem[t + 608] = mem[_14487 + 288]
        mem[t + 640] = mem[_14487 + 320]
        mem[t + 672] = mem[_14487 + 352]
        mem[t + 704] = mem[_14487 + 384]
        mem[t + 736] = mem[_14487 + 416]
        mem[t + 768] = mem[_14487 + 460 len 20]
        mem[t + 800] = mem[_14487 + 492 len 20]
        mem[t + 832] = mem[_14487 + 524 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 864
        continue 
    mem[_14247 + 32] = mem[_14243]
    mem[_14247 + 64] = mem[_14243 + 32]
    mem[_14247 + 96] = mem[_14243 + 64]
    mem[_14247 + 128] = mem[_14243 + 96]
    mem[_14247 + 160] = mem[_14243 + 128]
    mem[_14247 + 192] = mem[_14243 + 160]
    mem[_14247 + 224] = mem[_14243 + 192]
    mem[_14247 + 256] = mem[_14243 + 224]
    return memory
      from mem[64]
       len _14247 + (864 * _14251) + -mem[64] + 320
}



}
