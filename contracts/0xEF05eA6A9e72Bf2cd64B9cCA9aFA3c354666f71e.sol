contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_9e439995(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).isSwapEnabled() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).hasDynamicFees() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).stableSwapFeeBasisPoints() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).swapFeeBasisPoints() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).stableTaxBasisPoints() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).taxBasisPoints() with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ('cd', 36).length <= test266151307()
    mem[(8 * ceil32(return_data.size)) + 96] = ('cd', 36).length
    if not ('cd', 36).length:
        require ('cd', 36).length <= test266151307()
        mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128] = ('cd', 36).length
        if not ('cd', 36).length:
            require ('cd', 36).length <= test266151307()
            mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160] = ('cd', 36).length
            if not ('cd', 36).length:
                require ('cd', 36).length <= test266151307()
                mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192] = ('cd', 36).length
                if not ('cd', 36).length:
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224] = 5
                    mem[64] = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 416
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] = 96
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    idx = 5
                    while idx - 1:
                        mem[s + 32] = 96
                        s = s + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).tokenBalances(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1400 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1400] == mem[_1400]
                        require idx < mem[(8 * ceil32(return_data.size)) + 96]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128] = mem[_1400]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMinPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1576 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1576] == mem[_1576]
                        require idx < mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160] = mem[_1576]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMaxPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1768 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1768] == mem[_1768]
                        require idx < mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192] = mem[_1768]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).stableTokens(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1848 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1848] == bool(mem[_1848])
                        require idx < mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224] = bool(mem[_1848])
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).usdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1928 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1928] == mem[_1928]
                        require 0 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] + 32] = mem[_1928]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).poolAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2040 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2040] == mem[_2040]
                        require 1 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288] + 32] = mem[_2040]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).bufferAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2248 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2248] == mem[_2248]
                        require 2 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320] + 32] = mem[_2248]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).reservedAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2456 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2456] == mem[_2456]
                        require 3 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352] + 32] = mem[_2456]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).maxUsdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2568 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2568] == mem[_2568]
                        require 4 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384] + 32] = mem[_2568]
                        idx = idx + 1
                        continue 
                    _1352 = mem[64]
                    mem[mem[64]] = bool(ext_call.return_data[0])
                    mem[mem[64] + 32] = bool(ext_call.return_data[0])
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    mem[mem[64] + 128] = ext_call.return_data[0]
                    mem[mem[64] + 160] = ext_call.return_data[0]
                    mem[mem[64] + 192] = 352
                    _1432 = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 352] = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 384 len 32 * _1432] = mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1432]
                    mem[mem[64] + 224] = (32 * _1432) + 384
                    _2088 = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1432) + 384] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1432) + 416 len 32 * _2088] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160 len 32 * _2088]
                    mem[mem[64] + 256] = (32 * _1432) + (32 * _2088) + 416
                    _2664 = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1432) + (32 * _2088) + 416] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1432) + (32 * _2088) + 448 len 32 * _2664] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192 len 32 * _2664]
                    mem[mem[64] + 288] = (32 * _1432) + (32 * _2088) + (32 * _2664) + 448
                    _2824 = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    mem[mem[64] + (32 * _1432) + (32 * _2088) + (32 * _2664) + 448] = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224
                    t = mem[64] + (32 * _1432) + (32 * _2088) + (32 * _2664) + 480
                    while idx < _2824:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1352 + 320] = (32 * _1432) + (32 * _2088) + (32 * _2664) + (32 * _2824) + 480
                    _2952 = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    mem[_1352 + (32 * _1432) + (32 * _2088) + (32 * _2664) + (32 * _2824) + 480] = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    t = _1352 + (32 * _1432) + (32 * _2088) + (32 * _2664) + (32 * _2824) + (32 * _2952) + 512
                    u = _1352 + (32 * _1432) + (32 * _2088) + (32 * _2664) + (32 * _2824) + 512
                    while idx < _2952:
                        mem[u] = t + -_1352 + -(32 * _1432) + -(32 * _2088) + -(32 * _2664) + -(32 * _2824) - 512
                        _3032 = mem[s]
                        _3064 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        w = _3032 + 32
                        x = t + 32
                        while v < _3064:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _3064) + 32
                        u = u + 32
                        continue 
                else:
                    mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224] = 5
                    mem[64] = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 416
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] = 96
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    idx = 5
                    while idx - 1:
                        mem[s + 32] = 96
                        s = s + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).tokenBalances(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1401 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1401] == mem[_1401]
                        require idx < mem[(8 * ceil32(return_data.size)) + 96]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128] = mem[_1401]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMinPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1577 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1577] == mem[_1577]
                        require idx < mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160] = mem[_1577]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMaxPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1769 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1769] == mem[_1769]
                        require idx < mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192] = mem[_1769]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).stableTokens(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1849 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1849] == bool(mem[_1849])
                        require idx < mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224] = bool(mem[_1849])
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).usdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1929 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1929] == mem[_1929]
                        require 0 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] + 32] = mem[_1929]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).poolAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2041 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2041] == mem[_2041]
                        require 1 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288] + 32] = mem[_2041]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).bufferAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2249 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2249] == mem[_2249]
                        require 2 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320] + 32] = mem[_2249]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).reservedAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2457 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2457] == mem[_2457]
                        require 3 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352] + 32] = mem[_2457]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).maxUsdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2569 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2569] == mem[_2569]
                        require 4 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384] + 32] = mem[_2569]
                        idx = idx + 1
                        continue 
                    _1353 = mem[64]
                    mem[mem[64]] = bool(ext_call.return_data[0])
                    mem[mem[64] + 32] = bool(ext_call.return_data[0])
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    mem[mem[64] + 128] = ext_call.return_data[0]
                    mem[mem[64] + 160] = ext_call.return_data[0]
                    mem[mem[64] + 192] = 352
                    _1433 = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 352] = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 384 len 32 * _1433] = mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1433]
                    mem[mem[64] + 224] = (32 * _1433) + 384
                    _2089 = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1433) + 384] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1433) + 416 len 32 * _2089] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160 len 32 * _2089]
                    mem[mem[64] + 256] = (32 * _1433) + (32 * _2089) + 416
                    _2665 = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1433) + (32 * _2089) + 416] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1433) + (32 * _2089) + 448 len 32 * _2665] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192 len 32 * _2665]
                    mem[mem[64] + 288] = (32 * _1433) + (32 * _2089) + (32 * _2665) + 448
                    _2825 = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    mem[mem[64] + (32 * _1433) + (32 * _2089) + (32 * _2665) + 448] = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224
                    t = mem[64] + (32 * _1433) + (32 * _2089) + (32 * _2665) + 480
                    while idx < _2825:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1353 + 320] = (32 * _1433) + (32 * _2089) + (32 * _2665) + (32 * _2825) + 480
                    _2953 = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    mem[_1353 + (32 * _1433) + (32 * _2089) + (32 * _2665) + (32 * _2825) + 480] = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    t = _1353 + (32 * _1433) + (32 * _2089) + (32 * _2665) + (32 * _2825) + (32 * _2953) + 512
                    u = _1353 + (32 * _1433) + (32 * _2089) + (32 * _2665) + (32 * _2825) + 512
                    while idx < _2953:
                        mem[u] = t + -_1353 + -(32 * _1433) + -(32 * _2089) + -(32 * _2665) + -(32 * _2825) - 512
                        _3033 = mem[s]
                        _3065 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        w = _3033 + 32
                        x = t + 32
                        while v < _3065:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _3065) + 32
                        u = u + 32
                        continue 
            else:
                mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                require ('cd', 36).length <= test266151307()
                mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192] = ('cd', 36).length
                if not ('cd', 36).length:
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224] = 5
                    mem[64] = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 416
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] = 96
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    idx = 5
                    while idx - 1:
                        mem[s + 32] = 96
                        s = s + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).tokenBalances(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1402 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1402] == mem[_1402]
                        require idx < mem[(8 * ceil32(return_data.size)) + 96]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128] = mem[_1402]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMinPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1578 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1578] == mem[_1578]
                        require idx < mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160] = mem[_1578]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMaxPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1770 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1770] == mem[_1770]
                        require idx < mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192] = mem[_1770]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).stableTokens(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1850 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1850] == bool(mem[_1850])
                        require idx < mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224] = bool(mem[_1850])
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).usdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1930 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1930] == mem[_1930]
                        require 0 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] + 32] = mem[_1930]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).poolAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2042 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2042] == mem[_2042]
                        require 1 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288] + 32] = mem[_2042]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).bufferAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2250 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2250] == mem[_2250]
                        require 2 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320] + 32] = mem[_2250]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).reservedAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2458 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2458] == mem[_2458]
                        require 3 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352] + 32] = mem[_2458]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).maxUsdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2570 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2570] == mem[_2570]
                        require 4 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384] + 32] = mem[_2570]
                        idx = idx + 1
                        continue 
                    _1354 = mem[64]
                    mem[mem[64]] = bool(ext_call.return_data[0])
                    mem[mem[64] + 32] = bool(ext_call.return_data[0])
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    mem[mem[64] + 128] = ext_call.return_data[0]
                    mem[mem[64] + 160] = ext_call.return_data[0]
                    mem[mem[64] + 192] = 352
                    _1434 = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 352] = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 384 len 32 * _1434] = mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1434]
                    mem[mem[64] + 224] = (32 * _1434) + 384
                    _2090 = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1434) + 384] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1434) + 416 len 32 * _2090] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160 len 32 * _2090]
                    mem[mem[64] + 256] = (32 * _1434) + (32 * _2090) + 416
                    _2666 = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1434) + (32 * _2090) + 416] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1434) + (32 * _2090) + 448 len 32 * _2666] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192 len 32 * _2666]
                    mem[mem[64] + 288] = (32 * _1434) + (32 * _2090) + (32 * _2666) + 448
                    _2826 = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    mem[mem[64] + (32 * _1434) + (32 * _2090) + (32 * _2666) + 448] = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224
                    t = mem[64] + (32 * _1434) + (32 * _2090) + (32 * _2666) + 480
                    while idx < _2826:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1354 + 320] = (32 * _1434) + (32 * _2090) + (32 * _2666) + (32 * _2826) + 480
                    _2954 = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    mem[_1354 + (32 * _1434) + (32 * _2090) + (32 * _2666) + (32 * _2826) + 480] = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    t = _1354 + (32 * _1434) + (32 * _2090) + (32 * _2666) + (32 * _2826) + (32 * _2954) + 512
                    u = _1354 + (32 * _1434) + (32 * _2090) + (32 * _2666) + (32 * _2826) + 512
                    while idx < _2954:
                        mem[u] = t + -_1354 + -(32 * _1434) + -(32 * _2090) + -(32 * _2666) + -(32 * _2826) - 512
                        _3034 = mem[s]
                        _3066 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        w = _3034 + 32
                        x = t + 32
                        while v < _3066:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _3066) + 32
                        u = u + 32
                        continue 
                else:
                    mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224] = 5
                    mem[64] = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 416
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] = 96
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    idx = 5
                    while idx - 1:
                        mem[s + 32] = 96
                        s = s + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).tokenBalances(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1403 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1403] == mem[_1403]
                        require idx < mem[(8 * ceil32(return_data.size)) + 96]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128] = mem[_1403]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMinPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1579 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1579] == mem[_1579]
                        require idx < mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160] = mem[_1579]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMaxPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1771 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1771] == mem[_1771]
                        require idx < mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192] = mem[_1771]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).stableTokens(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1851 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1851] == bool(mem[_1851])
                        require idx < mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224] = bool(mem[_1851])
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).usdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1931 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1931] == mem[_1931]
                        require 0 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] + 32] = mem[_1931]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).poolAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2043 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2043] == mem[_2043]
                        require 1 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288] + 32] = mem[_2043]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).bufferAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2251 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2251] == mem[_2251]
                        require 2 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320] + 32] = mem[_2251]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).reservedAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2459 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2459] == mem[_2459]
                        require 3 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352] + 32] = mem[_2459]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).maxUsdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2571 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2571] == mem[_2571]
                        require 4 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384] + 32] = mem[_2571]
                        idx = idx + 1
                        continue 
                    _1355 = mem[64]
                    mem[mem[64]] = bool(ext_call.return_data[0])
                    mem[mem[64] + 32] = bool(ext_call.return_data[0])
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    mem[mem[64] + 128] = ext_call.return_data[0]
                    mem[mem[64] + 160] = ext_call.return_data[0]
                    mem[mem[64] + 192] = 352
                    _1435 = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 352] = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 384 len 32 * _1435] = mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1435]
                    mem[mem[64] + 224] = (32 * _1435) + 384
                    _2091 = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1435) + 384] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1435) + 416 len 32 * _2091] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160 len 32 * _2091]
                    mem[mem[64] + 256] = (32 * _1435) + (32 * _2091) + 416
                    _2667 = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1435) + (32 * _2091) + 416] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1435) + (32 * _2091) + 448 len 32 * _2667] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192 len 32 * _2667]
                    mem[mem[64] + 288] = (32 * _1435) + (32 * _2091) + (32 * _2667) + 448
                    _2827 = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    mem[mem[64] + (32 * _1435) + (32 * _2091) + (32 * _2667) + 448] = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224
                    t = mem[64] + (32 * _1435) + (32 * _2091) + (32 * _2667) + 480
                    while idx < _2827:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1355 + 320] = (32 * _1435) + (32 * _2091) + (32 * _2667) + (32 * _2827) + 480
                    _2955 = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    mem[_1355 + (32 * _1435) + (32 * _2091) + (32 * _2667) + (32 * _2827) + 480] = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    t = _1355 + (32 * _1435) + (32 * _2091) + (32 * _2667) + (32 * _2827) + (32 * _2955) + 512
                    u = _1355 + (32 * _1435) + (32 * _2091) + (32 * _2667) + (32 * _2827) + 512
                    while idx < _2955:
                        mem[u] = t + -_1355 + -(32 * _1435) + -(32 * _2091) + -(32 * _2667) + -(32 * _2827) - 512
                        _3035 = mem[s]
                        _3067 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        w = _3035 + 32
                        x = t + 32
                        while v < _3067:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _3067) + 32
                        u = u + 32
                        continue 
        else:
            mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            require ('cd', 36).length <= test266151307()
            mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160] = ('cd', 36).length
            if not ('cd', 36).length:
                require ('cd', 36).length <= test266151307()
                mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192] = ('cd', 36).length
                if not ('cd', 36).length:
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224] = 5
                    mem[64] = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 416
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] = 96
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    idx = 5
                    while idx - 1:
                        mem[s + 32] = 96
                        s = s + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).tokenBalances(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1404 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1404] == mem[_1404]
                        require idx < mem[(8 * ceil32(return_data.size)) + 96]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128] = mem[_1404]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMinPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1580 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1580] == mem[_1580]
                        require idx < mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160] = mem[_1580]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMaxPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1772 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1772] == mem[_1772]
                        require idx < mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192] = mem[_1772]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).stableTokens(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1852 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1852] == bool(mem[_1852])
                        require idx < mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224] = bool(mem[_1852])
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).usdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1932 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1932] == mem[_1932]
                        require 0 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] + 32] = mem[_1932]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).poolAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2044 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2044] == mem[_2044]
                        require 1 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288] + 32] = mem[_2044]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).bufferAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2252 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2252] == mem[_2252]
                        require 2 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320] + 32] = mem[_2252]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).reservedAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2460 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2460] == mem[_2460]
                        require 3 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352] + 32] = mem[_2460]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).maxUsdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2572 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2572] == mem[_2572]
                        require 4 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384] + 32] = mem[_2572]
                        idx = idx + 1
                        continue 
                    _1356 = mem[64]
                    mem[mem[64]] = bool(ext_call.return_data[0])
                    mem[mem[64] + 32] = bool(ext_call.return_data[0])
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    mem[mem[64] + 128] = ext_call.return_data[0]
                    mem[mem[64] + 160] = ext_call.return_data[0]
                    mem[mem[64] + 192] = 352
                    _1436 = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 352] = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 384 len 32 * _1436] = mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1436]
                    mem[mem[64] + 224] = (32 * _1436) + 384
                    _2092 = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1436) + 384] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1436) + 416 len 32 * _2092] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160 len 32 * _2092]
                    mem[mem[64] + 256] = (32 * _1436) + (32 * _2092) + 416
                    _2668 = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1436) + (32 * _2092) + 416] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1436) + (32 * _2092) + 448 len 32 * _2668] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192 len 32 * _2668]
                    mem[mem[64] + 288] = (32 * _1436) + (32 * _2092) + (32 * _2668) + 448
                    _2828 = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    mem[mem[64] + (32 * _1436) + (32 * _2092) + (32 * _2668) + 448] = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224
                    t = mem[64] + (32 * _1436) + (32 * _2092) + (32 * _2668) + 480
                    while idx < _2828:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1356 + 320] = (32 * _1436) + (32 * _2092) + (32 * _2668) + (32 * _2828) + 480
                    _2956 = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    mem[_1356 + (32 * _1436) + (32 * _2092) + (32 * _2668) + (32 * _2828) + 480] = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    t = _1356 + (32 * _1436) + (32 * _2092) + (32 * _2668) + (32 * _2828) + (32 * _2956) + 512
                    u = _1356 + (32 * _1436) + (32 * _2092) + (32 * _2668) + (32 * _2828) + 512
                    while idx < _2956:
                        mem[u] = t + -_1356 + -(32 * _1436) + -(32 * _2092) + -(32 * _2668) + -(32 * _2828) - 512
                        _3036 = mem[s]
                        _3068 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        w = _3036 + 32
                        x = t + 32
                        while v < _3068:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _3068) + 32
                        u = u + 32
                        continue 
                else:
                    mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224] = 5
                    mem[64] = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 416
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] = 96
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    idx = 5
                    while idx - 1:
                        mem[s + 32] = 96
                        s = s + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).tokenBalances(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1405 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1405] == mem[_1405]
                        require idx < mem[(8 * ceil32(return_data.size)) + 96]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128] = mem[_1405]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMinPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1581 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1581] == mem[_1581]
                        require idx < mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160] = mem[_1581]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMaxPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1773 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1773] == mem[_1773]
                        require idx < mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192] = mem[_1773]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).stableTokens(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1853 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1853] == bool(mem[_1853])
                        require idx < mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224] = bool(mem[_1853])
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).usdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1933 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1933] == mem[_1933]
                        require 0 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] + 32] = mem[_1933]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).poolAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2045 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2045] == mem[_2045]
                        require 1 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288] + 32] = mem[_2045]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).bufferAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2253 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2253] == mem[_2253]
                        require 2 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320] + 32] = mem[_2253]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).reservedAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2461 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2461] == mem[_2461]
                        require 3 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352] + 32] = mem[_2461]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).maxUsdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2573 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2573] == mem[_2573]
                        require 4 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384] + 32] = mem[_2573]
                        idx = idx + 1
                        continue 
                    _1357 = mem[64]
                    mem[mem[64]] = bool(ext_call.return_data[0])
                    mem[mem[64] + 32] = bool(ext_call.return_data[0])
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    mem[mem[64] + 128] = ext_call.return_data[0]
                    mem[mem[64] + 160] = ext_call.return_data[0]
                    mem[mem[64] + 192] = 352
                    _1437 = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 352] = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 384 len 32 * _1437] = mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1437]
                    mem[mem[64] + 224] = (32 * _1437) + 384
                    _2093 = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1437) + 384] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1437) + 416 len 32 * _2093] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160 len 32 * _2093]
                    mem[mem[64] + 256] = (32 * _1437) + (32 * _2093) + 416
                    _2669 = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1437) + (32 * _2093) + 416] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1437) + (32 * _2093) + 448 len 32 * _2669] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192 len 32 * _2669]
                    mem[mem[64] + 288] = (32 * _1437) + (32 * _2093) + (32 * _2669) + 448
                    _2829 = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    mem[mem[64] + (32 * _1437) + (32 * _2093) + (32 * _2669) + 448] = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224
                    t = mem[64] + (32 * _1437) + (32 * _2093) + (32 * _2669) + 480
                    while idx < _2829:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1357 + 320] = (32 * _1437) + (32 * _2093) + (32 * _2669) + (32 * _2829) + 480
                    _2957 = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    mem[_1357 + (32 * _1437) + (32 * _2093) + (32 * _2669) + (32 * _2829) + 480] = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    t = _1357 + (32 * _1437) + (32 * _2093) + (32 * _2669) + (32 * _2829) + (32 * _2957) + 512
                    u = _1357 + (32 * _1437) + (32 * _2093) + (32 * _2669) + (32 * _2829) + 512
                    while idx < _2957:
                        mem[u] = t + -_1357 + -(32 * _1437) + -(32 * _2093) + -(32 * _2669) + -(32 * _2829) - 512
                        _3037 = mem[s]
                        _3069 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        w = _3037 + 32
                        x = t + 32
                        while v < _3069:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _3069) + 32
                        u = u + 32
                        continue 
            else:
                mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                require ('cd', 36).length <= test266151307()
                mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192] = ('cd', 36).length
                if not ('cd', 36).length:
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224] = 5
                    mem[64] = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 416
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] = 96
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    idx = 5
                    while idx - 1:
                        mem[s + 32] = 96
                        s = s + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).tokenBalances(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1406 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1406] == mem[_1406]
                        require idx < mem[(8 * ceil32(return_data.size)) + 96]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128] = mem[_1406]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMinPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1582 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1582] == mem[_1582]
                        require idx < mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160] = mem[_1582]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMaxPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1774 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1774] == mem[_1774]
                        require idx < mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192] = mem[_1774]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).stableTokens(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1854 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1854] == bool(mem[_1854])
                        require idx < mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224] = bool(mem[_1854])
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).usdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1934 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1934] == mem[_1934]
                        require 0 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] + 32] = mem[_1934]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).poolAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2046 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2046] == mem[_2046]
                        require 1 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288] + 32] = mem[_2046]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).bufferAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2254 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2254] == mem[_2254]
                        require 2 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320] + 32] = mem[_2254]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).reservedAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2462 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2462] == mem[_2462]
                        require 3 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352] + 32] = mem[_2462]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).maxUsdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2574 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2574] == mem[_2574]
                        require 4 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384] + 32] = mem[_2574]
                        idx = idx + 1
                        continue 
                    _1358 = mem[64]
                    mem[mem[64]] = bool(ext_call.return_data[0])
                    mem[mem[64] + 32] = bool(ext_call.return_data[0])
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    mem[mem[64] + 128] = ext_call.return_data[0]
                    mem[mem[64] + 160] = ext_call.return_data[0]
                    mem[mem[64] + 192] = 352
                    _1438 = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 352] = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 384 len 32 * _1438] = mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1438]
                    mem[mem[64] + 224] = (32 * _1438) + 384
                    _2094 = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1438) + 384] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1438) + 416 len 32 * _2094] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160 len 32 * _2094]
                    mem[mem[64] + 256] = (32 * _1438) + (32 * _2094) + 416
                    _2670 = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1438) + (32 * _2094) + 416] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1438) + (32 * _2094) + 448 len 32 * _2670] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192 len 32 * _2670]
                    mem[mem[64] + 288] = (32 * _1438) + (32 * _2094) + (32 * _2670) + 448
                    _2830 = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    mem[mem[64] + (32 * _1438) + (32 * _2094) + (32 * _2670) + 448] = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224
                    t = mem[64] + (32 * _1438) + (32 * _2094) + (32 * _2670) + 480
                    while idx < _2830:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1358 + 320] = (32 * _1438) + (32 * _2094) + (32 * _2670) + (32 * _2830) + 480
                    _2958 = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    mem[_1358 + (32 * _1438) + (32 * _2094) + (32 * _2670) + (32 * _2830) + 480] = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    t = _1358 + (32 * _1438) + (32 * _2094) + (32 * _2670) + (32 * _2830) + (32 * _2958) + 512
                    u = _1358 + (32 * _1438) + (32 * _2094) + (32 * _2670) + (32 * _2830) + 512
                    while idx < _2958:
                        mem[u] = t + -_1358 + -(32 * _1438) + -(32 * _2094) + -(32 * _2670) + -(32 * _2830) - 512
                        _3038 = mem[s]
                        _3070 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        w = _3038 + 32
                        x = t + 32
                        while v < _3070:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _3070) + 32
                        u = u + 32
                        continue 
                else:
                    mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224] = 5
                    mem[64] = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 416
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] = 96
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    idx = 5
                    while idx - 1:
                        mem[s + 32] = 96
                        s = s + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).tokenBalances(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1407 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1407] == mem[_1407]
                        require idx < mem[(8 * ceil32(return_data.size)) + 96]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128] = mem[_1407]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMinPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1583 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1583] == mem[_1583]
                        require idx < mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160] = mem[_1583]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMaxPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1775 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1775] == mem[_1775]
                        require idx < mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192] = mem[_1775]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).stableTokens(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1855 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1855] == bool(mem[_1855])
                        require idx < mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224] = bool(mem[_1855])
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).usdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1935 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1935] == mem[_1935]
                        require 0 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] + 32] = mem[_1935]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).poolAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2047 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2047] == mem[_2047]
                        require 1 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288] + 32] = mem[_2047]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).bufferAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2255 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2255] == mem[_2255]
                        require 2 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320] + 32] = mem[_2255]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).reservedAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2463 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2463] == mem[_2463]
                        require 3 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352] + 32] = mem[_2463]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).maxUsdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2575 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2575] == mem[_2575]
                        require 4 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384] + 32] = mem[_2575]
                        idx = idx + 1
                        continue 
                    _1359 = mem[64]
                    mem[mem[64]] = bool(ext_call.return_data[0])
                    mem[mem[64] + 32] = bool(ext_call.return_data[0])
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    mem[mem[64] + 128] = ext_call.return_data[0]
                    mem[mem[64] + 160] = ext_call.return_data[0]
                    mem[mem[64] + 192] = 352
                    _1439 = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 352] = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 384 len 32 * _1439] = mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1439]
                    mem[mem[64] + 224] = (32 * _1439) + 384
                    _2095 = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1439) + 384] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1439) + 416 len 32 * _2095] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160 len 32 * _2095]
                    mem[mem[64] + 256] = (32 * _1439) + (32 * _2095) + 416
                    _2671 = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1439) + (32 * _2095) + 416] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1439) + (32 * _2095) + 448 len 32 * _2671] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192 len 32 * _2671]
                    mem[mem[64] + 288] = (32 * _1439) + (32 * _2095) + (32 * _2671) + 448
                    _2831 = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    mem[mem[64] + (32 * _1439) + (32 * _2095) + (32 * _2671) + 448] = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224
                    t = mem[64] + (32 * _1439) + (32 * _2095) + (32 * _2671) + 480
                    while idx < _2831:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1359 + 320] = (32 * _1439) + (32 * _2095) + (32 * _2671) + (32 * _2831) + 480
                    _2959 = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    mem[_1359 + (32 * _1439) + (32 * _2095) + (32 * _2671) + (32 * _2831) + 480] = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    t = _1359 + (32 * _1439) + (32 * _2095) + (32 * _2671) + (32 * _2831) + (32 * _2959) + 512
                    u = _1359 + (32 * _1439) + (32 * _2095) + (32 * _2671) + (32 * _2831) + 512
                    while idx < _2959:
                        mem[u] = t + -_1359 + -(32 * _1439) + -(32 * _2095) + -(32 * _2671) + -(32 * _2831) - 512
                        _3039 = mem[s]
                        _3071 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        w = _3039 + 32
                        x = t + 32
                        while v < _3071:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _3071) + 32
                        u = u + 32
                        continue 
    else:
        mem[(8 * ceil32(return_data.size)) + 128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        require ('cd', 36).length <= test266151307()
        mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128] = ('cd', 36).length
        if not ('cd', 36).length:
            require ('cd', 36).length <= test266151307()
            mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160] = ('cd', 36).length
            if not ('cd', 36).length:
                require ('cd', 36).length <= test266151307()
                mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192] = ('cd', 36).length
                if not ('cd', 36).length:
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224] = 5
                    mem[64] = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 416
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] = 96
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    idx = 5
                    while idx - 1:
                        mem[s + 32] = 96
                        s = s + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).tokenBalances(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1408 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1408] == mem[_1408]
                        require idx < mem[(8 * ceil32(return_data.size)) + 96]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128] = mem[_1408]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMinPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1584 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1584] == mem[_1584]
                        require idx < mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160] = mem[_1584]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMaxPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1776 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1776] == mem[_1776]
                        require idx < mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192] = mem[_1776]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).stableTokens(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1856 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1856] == bool(mem[_1856])
                        require idx < mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224] = bool(mem[_1856])
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).usdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1936 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1936] == mem[_1936]
                        require 0 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] + 32] = mem[_1936]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).poolAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2048 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2048] == mem[_2048]
                        require 1 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288] + 32] = mem[_2048]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).bufferAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2256 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2256] == mem[_2256]
                        require 2 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320] + 32] = mem[_2256]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).reservedAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2464 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2464] == mem[_2464]
                        require 3 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352] + 32] = mem[_2464]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).maxUsdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2576 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2576] == mem[_2576]
                        require 4 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384] + 32] = mem[_2576]
                        idx = idx + 1
                        continue 
                    _1360 = mem[64]
                    mem[mem[64]] = bool(ext_call.return_data[0])
                    mem[mem[64] + 32] = bool(ext_call.return_data[0])
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    mem[mem[64] + 128] = ext_call.return_data[0]
                    mem[mem[64] + 160] = ext_call.return_data[0]
                    mem[mem[64] + 192] = 352
                    _1440 = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 352] = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 384 len 32 * _1440] = mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1440]
                    mem[mem[64] + 224] = (32 * _1440) + 384
                    _2096 = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1440) + 384] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1440) + 416 len 32 * _2096] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160 len 32 * _2096]
                    mem[mem[64] + 256] = (32 * _1440) + (32 * _2096) + 416
                    _2672 = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1440) + (32 * _2096) + 416] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1440) + (32 * _2096) + 448 len 32 * _2672] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192 len 32 * _2672]
                    mem[mem[64] + 288] = (32 * _1440) + (32 * _2096) + (32 * _2672) + 448
                    _2832 = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    mem[mem[64] + (32 * _1440) + (32 * _2096) + (32 * _2672) + 448] = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224
                    t = mem[64] + (32 * _1440) + (32 * _2096) + (32 * _2672) + 480
                    while idx < _2832:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1360 + 320] = (32 * _1440) + (32 * _2096) + (32 * _2672) + (32 * _2832) + 480
                    _2960 = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    mem[_1360 + (32 * _1440) + (32 * _2096) + (32 * _2672) + (32 * _2832) + 480] = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    t = _1360 + (32 * _1440) + (32 * _2096) + (32 * _2672) + (32 * _2832) + (32 * _2960) + 512
                    u = _1360 + (32 * _1440) + (32 * _2096) + (32 * _2672) + (32 * _2832) + 512
                    while idx < _2960:
                        mem[u] = t + -_1360 + -(32 * _1440) + -(32 * _2096) + -(32 * _2672) + -(32 * _2832) - 512
                        _3040 = mem[s]
                        _3072 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        w = _3040 + 32
                        x = t + 32
                        while v < _3072:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _3072) + 32
                        u = u + 32
                        continue 
                else:
                    mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224] = 5
                    mem[64] = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 416
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] = 96
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    idx = 5
                    while idx - 1:
                        mem[s + 32] = 96
                        s = s + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).tokenBalances(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1409 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1409] == mem[_1409]
                        require idx < mem[(8 * ceil32(return_data.size)) + 96]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128] = mem[_1409]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMinPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1585 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1585] == mem[_1585]
                        require idx < mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160] = mem[_1585]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMaxPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1777 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1777] == mem[_1777]
                        require idx < mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192] = mem[_1777]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).stableTokens(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1857 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1857] == bool(mem[_1857])
                        require idx < mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224] = bool(mem[_1857])
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).usdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1937 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1937] == mem[_1937]
                        require 0 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] + 32] = mem[_1937]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).poolAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2049 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2049] == mem[_2049]
                        require 1 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288] + 32] = mem[_2049]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).bufferAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2257 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2257] == mem[_2257]
                        require 2 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320] + 32] = mem[_2257]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).reservedAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2465 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2465] == mem[_2465]
                        require 3 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352] + 32] = mem[_2465]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).maxUsdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2577 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2577] == mem[_2577]
                        require 4 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384] + 32] = mem[_2577]
                        idx = idx + 1
                        continue 
                    _1361 = mem[64]
                    mem[mem[64]] = bool(ext_call.return_data[0])
                    mem[mem[64] + 32] = bool(ext_call.return_data[0])
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    mem[mem[64] + 128] = ext_call.return_data[0]
                    mem[mem[64] + 160] = ext_call.return_data[0]
                    mem[mem[64] + 192] = 352
                    _1441 = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 352] = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 384 len 32 * _1441] = mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1441]
                    mem[mem[64] + 224] = (32 * _1441) + 384
                    _2097 = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1441) + 384] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1441) + 416 len 32 * _2097] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160 len 32 * _2097]
                    mem[mem[64] + 256] = (32 * _1441) + (32 * _2097) + 416
                    _2673 = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1441) + (32 * _2097) + 416] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1441) + (32 * _2097) + 448 len 32 * _2673] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192 len 32 * _2673]
                    mem[mem[64] + 288] = (32 * _1441) + (32 * _2097) + (32 * _2673) + 448
                    _2833 = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    mem[mem[64] + (32 * _1441) + (32 * _2097) + (32 * _2673) + 448] = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224
                    t = mem[64] + (32 * _1441) + (32 * _2097) + (32 * _2673) + 480
                    while idx < _2833:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1361 + 320] = (32 * _1441) + (32 * _2097) + (32 * _2673) + (32 * _2833) + 480
                    _2961 = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    mem[_1361 + (32 * _1441) + (32 * _2097) + (32 * _2673) + (32 * _2833) + 480] = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    t = _1361 + (32 * _1441) + (32 * _2097) + (32 * _2673) + (32 * _2833) + (32 * _2961) + 512
                    u = _1361 + (32 * _1441) + (32 * _2097) + (32 * _2673) + (32 * _2833) + 512
                    while idx < _2961:
                        mem[u] = t + -_1361 + -(32 * _1441) + -(32 * _2097) + -(32 * _2673) + -(32 * _2833) - 512
                        _3041 = mem[s]
                        _3073 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        w = _3041 + 32
                        x = t + 32
                        while v < _3073:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _3073) + 32
                        u = u + 32
                        continue 
            else:
                mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                require ('cd', 36).length <= test266151307()
                mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192] = ('cd', 36).length
                if not ('cd', 36).length:
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224] = 5
                    mem[64] = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 416
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] = 96
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    idx = 5
                    while idx - 1:
                        mem[s + 32] = 96
                        s = s + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).tokenBalances(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1410 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1410] == mem[_1410]
                        require idx < mem[(8 * ceil32(return_data.size)) + 96]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128] = mem[_1410]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMinPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1586 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1586] == mem[_1586]
                        require idx < mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160] = mem[_1586]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMaxPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1778 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1778] == mem[_1778]
                        require idx < mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192] = mem[_1778]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).stableTokens(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1858 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1858] == bool(mem[_1858])
                        require idx < mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224] = bool(mem[_1858])
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).usdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1938 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1938] == mem[_1938]
                        require 0 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] + 32] = mem[_1938]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).poolAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2050 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2050] == mem[_2050]
                        require 1 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288] + 32] = mem[_2050]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).bufferAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2258 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2258] == mem[_2258]
                        require 2 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320] + 32] = mem[_2258]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).reservedAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2466 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2466] == mem[_2466]
                        require 3 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352] + 32] = mem[_2466]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).maxUsdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2578 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2578] == mem[_2578]
                        require 4 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384] + 32] = mem[_2578]
                        idx = idx + 1
                        continue 
                    _1362 = mem[64]
                    mem[mem[64]] = bool(ext_call.return_data[0])
                    mem[mem[64] + 32] = bool(ext_call.return_data[0])
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    mem[mem[64] + 128] = ext_call.return_data[0]
                    mem[mem[64] + 160] = ext_call.return_data[0]
                    mem[mem[64] + 192] = 352
                    _1442 = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 352] = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 384 len 32 * _1442] = mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1442]
                    mem[mem[64] + 224] = (32 * _1442) + 384
                    _2098 = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1442) + 384] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1442) + 416 len 32 * _2098] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160 len 32 * _2098]
                    mem[mem[64] + 256] = (32 * _1442) + (32 * _2098) + 416
                    _2674 = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1442) + (32 * _2098) + 416] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1442) + (32 * _2098) + 448 len 32 * _2674] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192 len 32 * _2674]
                    mem[mem[64] + 288] = (32 * _1442) + (32 * _2098) + (32 * _2674) + 448
                    _2834 = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    mem[mem[64] + (32 * _1442) + (32 * _2098) + (32 * _2674) + 448] = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224
                    t = mem[64] + (32 * _1442) + (32 * _2098) + (32 * _2674) + 480
                    while idx < _2834:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1362 + 320] = (32 * _1442) + (32 * _2098) + (32 * _2674) + (32 * _2834) + 480
                    _2962 = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    mem[_1362 + (32 * _1442) + (32 * _2098) + (32 * _2674) + (32 * _2834) + 480] = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    t = _1362 + (32 * _1442) + (32 * _2098) + (32 * _2674) + (32 * _2834) + (32 * _2962) + 512
                    u = _1362 + (32 * _1442) + (32 * _2098) + (32 * _2674) + (32 * _2834) + 512
                    while idx < _2962:
                        mem[u] = t + -_1362 + -(32 * _1442) + -(32 * _2098) + -(32 * _2674) + -(32 * _2834) - 512
                        _3042 = mem[s]
                        _3074 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        w = _3042 + 32
                        x = t + 32
                        while v < _3074:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _3074) + 32
                        u = u + 32
                        continue 
                else:
                    mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224] = 5
                    mem[64] = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 416
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] = 96
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    idx = 5
                    while idx - 1:
                        mem[s + 32] = 96
                        s = s + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).tokenBalances(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1411 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1411] == mem[_1411]
                        require idx < mem[(8 * ceil32(return_data.size)) + 96]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128] = mem[_1411]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMinPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1587 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1587] == mem[_1587]
                        require idx < mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160] = mem[_1587]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMaxPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1779 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1779] == mem[_1779]
                        require idx < mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192] = mem[_1779]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).stableTokens(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1859 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1859] == bool(mem[_1859])
                        require idx < mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224] = bool(mem[_1859])
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).usdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1939 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1939] == mem[_1939]
                        require 0 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] + 32] = mem[_1939]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).poolAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2051 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2051] == mem[_2051]
                        require 1 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288] + 32] = mem[_2051]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).bufferAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2259 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2259] == mem[_2259]
                        require 2 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320] + 32] = mem[_2259]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).reservedAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2467 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2467] == mem[_2467]
                        require 3 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352] + 32] = mem[_2467]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).maxUsdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2579 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2579] == mem[_2579]
                        require 4 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384] + 32] = mem[_2579]
                        idx = idx + 1
                        continue 
                    _1363 = mem[64]
                    mem[mem[64]] = bool(ext_call.return_data[0])
                    mem[mem[64] + 32] = bool(ext_call.return_data[0])
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    mem[mem[64] + 128] = ext_call.return_data[0]
                    mem[mem[64] + 160] = ext_call.return_data[0]
                    mem[mem[64] + 192] = 352
                    _1443 = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 352] = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 384 len 32 * _1443] = mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1443]
                    mem[mem[64] + 224] = (32 * _1443) + 384
                    _2099 = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1443) + 384] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1443) + 416 len 32 * _2099] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160 len 32 * _2099]
                    mem[mem[64] + 256] = (32 * _1443) + (32 * _2099) + 416
                    _2675 = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1443) + (32 * _2099) + 416] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1443) + (32 * _2099) + 448 len 32 * _2675] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192 len 32 * _2675]
                    mem[mem[64] + 288] = (32 * _1443) + (32 * _2099) + (32 * _2675) + 448
                    _2835 = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    mem[mem[64] + (32 * _1443) + (32 * _2099) + (32 * _2675) + 448] = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224
                    t = mem[64] + (32 * _1443) + (32 * _2099) + (32 * _2675) + 480
                    while idx < _2835:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1363 + 320] = (32 * _1443) + (32 * _2099) + (32 * _2675) + (32 * _2835) + 480
                    _2963 = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    mem[_1363 + (32 * _1443) + (32 * _2099) + (32 * _2675) + (32 * _2835) + 480] = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    t = _1363 + (32 * _1443) + (32 * _2099) + (32 * _2675) + (32 * _2835) + (32 * _2963) + 512
                    u = _1363 + (32 * _1443) + (32 * _2099) + (32 * _2675) + (32 * _2835) + 512
                    while idx < _2963:
                        mem[u] = t + -_1363 + -(32 * _1443) + -(32 * _2099) + -(32 * _2675) + -(32 * _2835) - 512
                        _3043 = mem[s]
                        _3075 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        w = _3043 + 32
                        x = t + 32
                        while v < _3075:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _3075) + 32
                        u = u + 32
                        continue 
        else:
            mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            require ('cd', 36).length <= test266151307()
            mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160] = ('cd', 36).length
            if not ('cd', 36).length:
                require ('cd', 36).length <= test266151307()
                mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192] = ('cd', 36).length
                if not ('cd', 36).length:
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224] = 5
                    mem[64] = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 416
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] = 96
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    idx = 5
                    while idx - 1:
                        mem[s + 32] = 96
                        s = s + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).tokenBalances(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1412 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1412] == mem[_1412]
                        require idx < mem[(8 * ceil32(return_data.size)) + 96]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128] = mem[_1412]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMinPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1588 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1588] == mem[_1588]
                        require idx < mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160] = mem[_1588]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMaxPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1780 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1780] == mem[_1780]
                        require idx < mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192] = mem[_1780]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).stableTokens(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1860 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1860] == bool(mem[_1860])
                        require idx < mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224] = bool(mem[_1860])
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).usdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1940 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1940] == mem[_1940]
                        require 0 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] + 32] = mem[_1940]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).poolAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2052 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2052] == mem[_2052]
                        require 1 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288] + 32] = mem[_2052]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).bufferAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2260 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2260] == mem[_2260]
                        require 2 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320] + 32] = mem[_2260]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).reservedAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2468 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2468] == mem[_2468]
                        require 3 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352] + 32] = mem[_2468]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).maxUsdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2580 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2580] == mem[_2580]
                        require 4 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384] + 32] = mem[_2580]
                        idx = idx + 1
                        continue 
                    _1364 = mem[64]
                    mem[mem[64]] = bool(ext_call.return_data[0])
                    mem[mem[64] + 32] = bool(ext_call.return_data[0])
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    mem[mem[64] + 128] = ext_call.return_data[0]
                    mem[mem[64] + 160] = ext_call.return_data[0]
                    mem[mem[64] + 192] = 352
                    _1444 = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 352] = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 384 len 32 * _1444] = mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1444]
                    mem[mem[64] + 224] = (32 * _1444) + 384
                    _2100 = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1444) + 384] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1444) + 416 len 32 * _2100] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160 len 32 * _2100]
                    mem[mem[64] + 256] = (32 * _1444) + (32 * _2100) + 416
                    _2676 = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1444) + (32 * _2100) + 416] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1444) + (32 * _2100) + 448 len 32 * _2676] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192 len 32 * _2676]
                    mem[mem[64] + 288] = (32 * _1444) + (32 * _2100) + (32 * _2676) + 448
                    _2836 = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    mem[mem[64] + (32 * _1444) + (32 * _2100) + (32 * _2676) + 448] = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224
                    t = mem[64] + (32 * _1444) + (32 * _2100) + (32 * _2676) + 480
                    while idx < _2836:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1364 + 320] = (32 * _1444) + (32 * _2100) + (32 * _2676) + (32 * _2836) + 480
                    _2964 = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    mem[_1364 + (32 * _1444) + (32 * _2100) + (32 * _2676) + (32 * _2836) + 480] = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    t = _1364 + (32 * _1444) + (32 * _2100) + (32 * _2676) + (32 * _2836) + (32 * _2964) + 512
                    u = _1364 + (32 * _1444) + (32 * _2100) + (32 * _2676) + (32 * _2836) + 512
                    while idx < _2964:
                        mem[u] = t + -_1364 + -(32 * _1444) + -(32 * _2100) + -(32 * _2676) + -(32 * _2836) - 512
                        _3044 = mem[s]
                        _3076 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        w = _3044 + 32
                        x = t + 32
                        while v < _3076:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _3076) + 32
                        u = u + 32
                        continue 
                else:
                    mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224] = 5
                    mem[64] = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 416
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] = 96
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    idx = 5
                    while idx - 1:
                        mem[s + 32] = 96
                        s = s + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).tokenBalances(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1413 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1413] == mem[_1413]
                        require idx < mem[(8 * ceil32(return_data.size)) + 96]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128] = mem[_1413]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMinPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1589 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1589] == mem[_1589]
                        require idx < mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160] = mem[_1589]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMaxPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1781 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1781] == mem[_1781]
                        require idx < mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192] = mem[_1781]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).stableTokens(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1861 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1861] == bool(mem[_1861])
                        require idx < mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224] = bool(mem[_1861])
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).usdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1941 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1941] == mem[_1941]
                        require 0 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] + 32] = mem[_1941]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).poolAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2053 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2053] == mem[_2053]
                        require 1 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288] + 32] = mem[_2053]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).bufferAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2261 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2261] == mem[_2261]
                        require 2 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320] + 32] = mem[_2261]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).reservedAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2469 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2469] == mem[_2469]
                        require 3 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352] + 32] = mem[_2469]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).maxUsdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2581 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2581] == mem[_2581]
                        require 4 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384] + 32] = mem[_2581]
                        idx = idx + 1
                        continue 
                    _1365 = mem[64]
                    mem[mem[64]] = bool(ext_call.return_data[0])
                    mem[mem[64] + 32] = bool(ext_call.return_data[0])
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    mem[mem[64] + 128] = ext_call.return_data[0]
                    mem[mem[64] + 160] = ext_call.return_data[0]
                    mem[mem[64] + 192] = 352
                    _1445 = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 352] = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 384 len 32 * _1445] = mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1445]
                    mem[mem[64] + 224] = (32 * _1445) + 384
                    _2101 = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1445) + 384] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1445) + 416 len 32 * _2101] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160 len 32 * _2101]
                    mem[mem[64] + 256] = (32 * _1445) + (32 * _2101) + 416
                    _2677 = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1445) + (32 * _2101) + 416] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1445) + (32 * _2101) + 448 len 32 * _2677] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192 len 32 * _2677]
                    mem[mem[64] + 288] = (32 * _1445) + (32 * _2101) + (32 * _2677) + 448
                    _2837 = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    mem[mem[64] + (32 * _1445) + (32 * _2101) + (32 * _2677) + 448] = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224
                    t = mem[64] + (32 * _1445) + (32 * _2101) + (32 * _2677) + 480
                    while idx < _2837:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1365 + 320] = (32 * _1445) + (32 * _2101) + (32 * _2677) + (32 * _2837) + 480
                    _2965 = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    mem[_1365 + (32 * _1445) + (32 * _2101) + (32 * _2677) + (32 * _2837) + 480] = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    t = _1365 + (32 * _1445) + (32 * _2101) + (32 * _2677) + (32 * _2837) + (32 * _2965) + 512
                    u = _1365 + (32 * _1445) + (32 * _2101) + (32 * _2677) + (32 * _2837) + 512
                    while idx < _2965:
                        mem[u] = t + -_1365 + -(32 * _1445) + -(32 * _2101) + -(32 * _2677) + -(32 * _2837) - 512
                        _3045 = mem[s]
                        _3077 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        w = _3045 + 32
                        x = t + 32
                        while v < _3077:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _3077) + 32
                        u = u + 32
                        continue 
            else:
                mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                require ('cd', 36).length <= test266151307()
                mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192] = ('cd', 36).length
                if not ('cd', 36).length:
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224] = 5
                    mem[64] = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 416
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] = 96
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    idx = 5
                    while idx - 1:
                        mem[s + 32] = 96
                        s = s + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).tokenBalances(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1414 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1414] == mem[_1414]
                        require idx < mem[(8 * ceil32(return_data.size)) + 96]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128] = mem[_1414]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMinPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1590 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1590] == mem[_1590]
                        require idx < mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160] = mem[_1590]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMaxPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1782 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1782] == mem[_1782]
                        require idx < mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192] = mem[_1782]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).stableTokens(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1862 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1862] == bool(mem[_1862])
                        require idx < mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224] = bool(mem[_1862])
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).usdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1942 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1942] == mem[_1942]
                        require 0 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] + 32] = mem[_1942]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).poolAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2054 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2054] == mem[_2054]
                        require 1 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288] + 32] = mem[_2054]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).bufferAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2262 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2262] == mem[_2262]
                        require 2 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320] + 32] = mem[_2262]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).reservedAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2470 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2470] == mem[_2470]
                        require 3 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352] + 32] = mem[_2470]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).maxUsdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2582 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2582] == mem[_2582]
                        require 4 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384] + 32] = mem[_2582]
                        idx = idx + 1
                        continue 
                    _1366 = mem[64]
                    mem[mem[64]] = bool(ext_call.return_data[0])
                    mem[mem[64] + 32] = bool(ext_call.return_data[0])
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    mem[mem[64] + 128] = ext_call.return_data[0]
                    mem[mem[64] + 160] = ext_call.return_data[0]
                    mem[mem[64] + 192] = 352
                    _1446 = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 352] = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 384 len 32 * _1446] = mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1446]
                    mem[mem[64] + 224] = (32 * _1446) + 384
                    _2102 = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1446) + 384] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1446) + 416 len 32 * _2102] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160 len 32 * _2102]
                    mem[mem[64] + 256] = (32 * _1446) + (32 * _2102) + 416
                    _2678 = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1446) + (32 * _2102) + 416] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1446) + (32 * _2102) + 448 len 32 * _2678] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192 len 32 * _2678]
                    mem[mem[64] + 288] = (32 * _1446) + (32 * _2102) + (32 * _2678) + 448
                    _2838 = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    mem[mem[64] + (32 * _1446) + (32 * _2102) + (32 * _2678) + 448] = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224
                    t = mem[64] + (32 * _1446) + (32 * _2102) + (32 * _2678) + 480
                    while idx < _2838:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1366 + 320] = (32 * _1446) + (32 * _2102) + (32 * _2678) + (32 * _2838) + 480
                    _2966 = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    mem[_1366 + (32 * _1446) + (32 * _2102) + (32 * _2678) + (32 * _2838) + 480] = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    t = _1366 + (32 * _1446) + (32 * _2102) + (32 * _2678) + (32 * _2838) + (32 * _2966) + 512
                    u = _1366 + (32 * _1446) + (32 * _2102) + (32 * _2678) + (32 * _2838) + 512
                    while idx < _2966:
                        mem[u] = t + -_1366 + -(32 * _1446) + -(32 * _2102) + -(32 * _2678) + -(32 * _2838) - 512
                        _3046 = mem[s]
                        _3078 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        w = _3046 + 32
                        x = t + 32
                        while v < _3078:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _3078) + 32
                        u = u + 32
                        continue 
                else:
                    mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224] = 5
                    mem[64] = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 416
                    mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] = 96
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    idx = 5
                    while idx - 1:
                        mem[s + 32] = 96
                        s = s + 32
                        idx = idx - 1
                        continue 
                    idx = 0
                    while idx < ('cd', 36).length:
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).tokenBalances(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1415 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1415] == mem[_1415]
                        require idx < mem[(8 * ceil32(return_data.size)) + 96]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + 128] = mem[_1415]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMinPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1591 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1591] == mem[_1591]
                        require idx < mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160] = mem[_1591]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).getMaxPrice(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1783 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1783] == mem[_1783]
                        require idx < mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192] = mem[_1783]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).stableTokens(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1863 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1863] == bool(mem[_1863])
                        require idx < mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                        mem[(32 * idx) + (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224] = bool(mem[_1863])
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).usdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1943 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1943] == mem[_1943]
                        require 0 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256] + 32] = mem[_1943]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).poolAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2055 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2055] == mem[_2055]
                        require 1 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 288] + 32] = mem[_2055]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).bufferAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2263 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2263] == mem[_2263]
                        require 2 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 320] + 32] = mem[_2263]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).reservedAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2471 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2471] == mem[_2471]
                        require 3 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 352] + 32] = mem[_2471]
                        require idx < ('cd', 36).length
                        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).maxUsdgAmounts(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((32 * idx) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2583 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2583] == mem[_2583]
                        require 4 < mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                        require idx < mem[mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384]]
                        mem[(32 * idx) + mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 384] + 32] = mem[_2583]
                        idx = idx + 1
                        continue 
                    _1367 = mem[64]
                    mem[mem[64]] = bool(ext_call.return_data[0])
                    mem[mem[64] + 32] = bool(ext_call.return_data[0])
                    mem[mem[64] + 64] = ext_call.return_data[0]
                    mem[mem[64] + 96] = ext_call.return_data[0]
                    mem[mem[64] + 128] = ext_call.return_data[0]
                    mem[mem[64] + 160] = ext_call.return_data[0]
                    mem[mem[64] + 192] = 352
                    _1447 = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 352] = mem[(8 * ceil32(return_data.size)) + 96]
                    mem[mem[64] + 384 len 32 * _1447] = mem[(8 * ceil32(return_data.size)) + 128 len 32 * _1447]
                    mem[mem[64] + 224] = (32 * _1447) + 384
                    _2103 = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1447) + 384] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 128]
                    mem[mem[64] + (32 * _1447) + 416 len 32 * _2103] = mem[(8 * ceil32(return_data.size)) + (32 * ('cd', 36).length) + 160 len 32 * _2103]
                    mem[mem[64] + 256] = (32 * _1447) + (32 * _2103) + 416
                    _2679 = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1447) + (32 * _2103) + 416] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 160]
                    mem[mem[64] + (32 * _1447) + (32 * _2103) + 448 len 32 * _2679] = mem[(8 * ceil32(return_data.size)) + (64 * ('cd', 36).length) + 192 len 32 * _2679]
                    mem[mem[64] + 288] = (32 * _1447) + (32 * _2103) + (32 * _2679) + 448
                    _2839 = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    mem[mem[64] + (32 * _1447) + (32 * _2103) + (32 * _2679) + 448] = mem[(8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 192]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (98 * ('cd', 36).length) + 224
                    t = mem[64] + (32 * _1447) + (32 * _2103) + (32 * _2679) + 480
                    while idx < _2839:
                        mem[t] = bool(mem[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1367 + 320] = (32 * _1447) + (32 * _2103) + (32 * _2679) + (32 * _2839) + 480
                    _2967 = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    mem[_1367 + (32 * _1447) + (32 * _2103) + (32 * _2679) + (32 * _2839) + 480] = mem[(8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 224]
                    idx = 0
                    s = (8 * ceil32(return_data.size)) + (131 * ('cd', 36).length) + 256
                    t = _1367 + (32 * _1447) + (32 * _2103) + (32 * _2679) + (32 * _2839) + (32 * _2967) + 512
                    u = _1367 + (32 * _1447) + (32 * _2103) + (32 * _2679) + (32 * _2839) + 512
                    while idx < _2967:
                        mem[u] = t + -_1367 + -(32 * _1447) + -(32 * _2103) + -(32 * _2679) + -(32 * _2839) - 512
                        _3047 = mem[s]
                        _3079 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        w = _3047 + 32
                        x = t + 32
                        while v < _3079:
                            mem[x] = mem[w]
                            v = v + 1
                            w = w + 32
                            x = x + 32
                            continue 
                        idx = idx + 1
                        s = s + 32
                        t = t + (32 * _3079) + 32
                        u = u + 32
                        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
