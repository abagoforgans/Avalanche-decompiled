contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_299ec27c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = address(arg1)
    mem[416] = address(arg2)
    mem[448] = address(arg3)
    mem[672] = 0
    mem[704] = 0
    mem[736] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[608] = 0
    mem[640] = 0
    mem[768] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[772] = address(arg1)
    require ext_code.size(address(arg2))
    staticcall address(arg2).getAssetsIn(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[768 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 768
    require return_data.size >= 32
    _9 = mem[768 len 4], address(arg1) << 64
    require mem[768 len 4], address(arg1) << 64 <= test266151307()
    require mem[768 len 4], address(arg1) << 64 + 799 < return_data.size + 768
    _10 = mem[mem[768 len 4], address(arg1) << 64 + 768]
    if mem[mem[768 len 4], address(arg1) << 64 + 768] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[768 len 4], address(arg1) << 64 + 768]) + 769 > test266151307() or ceil32(32 * mem[mem[768 len 4], address(arg1) << 64 + 768]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[768 len 4], address(arg1) << 64 + 768]) + 769
    mem[ceil32(return_data.size) + 768] = mem[mem[768 len 4], address(arg1) << 64 + 768]
    require return_data.size >= _9 + (32 * _10) + 32
    s = _9 + 800
    t = ceil32(return_data.size) + 800
    idx = 0
    while idx < _10:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _60 = mem[64]
    mem[64] = mem[64] + 96
    mem[_60] = 0
    mem[_60 + 32] = 0
    mem[_60 + 64] = 0
    idx = 0
    while idx < _10:
        if idx >= mem[ceil32(return_data.size) + 768]:
            revert with 0, 50
        _111 = mem[(32 * idx) + ceil32(return_data.size) + 800]
        _112 = mem[384]
        mem[mem[64] + 4] = mem[396 len 20]
        require ext_code.size(address(_111))
        call address(_111).balanceOfUnderlying(address arg1) with:
             gas gas_remaining wei
            args address(_112)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _117 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _121 = mem[_117]
        _123 = mem[448]
        mem[mem[64] + 4] = address(_111)
        require ext_code.size(address(_123))
        staticcall address(_123).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(_111)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _136 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _137 = mem[_136]
        if mem[_136] and _121 > -1 / mem[_136]:
            revert with 0, 17
        _138 = mem[384]
        mem[mem[64] + 4] = mem[396 len 20]
        require ext_code.size(address(_111))
        call address(_111).borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args address(_138)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _141 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _142 = mem[_141]
        _143 = mem[448]
        mem[mem[64] + 4] = address(_111)
        require ext_code.size(address(_143))
        staticcall address(_143).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(_111)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _146 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _147 = mem[_146]
        if mem[_146] and _142 > -1 / mem[_146]:
            revert with 0, 17
        if _137 * _121 / 10^18 <= mem[544]:
            if mem[_146] * _142 / 10^18 > mem[640]:
                mem[576] = address(_111)
                mem[608] = _142
                mem[640] = _147 * _142 / 10^18
        else:
            mem[480] = address(_111)
            mem[512] = _121
            mem[544] = _137 * _121 / 10^18
            if _147 * _142 / 10^18 > mem[640]:
                mem[576] = address(_111)
                mem[608] = _142
                mem[640] = _147 * _142 / 10^18
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(mem[428 len 20])
    staticcall mem[428 len 20].getAccountLiquidity(address arg1) with:
            gas gas_remaining wei
           args address(mem[384])
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _116 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    _118 = mem[_116]
    _119 = mem[_116 + 32]
    mem[736] = mem[_116 + 64]
    mem[704] = _119
    mem[672] = _118
    mem[mem[64]] = mem[492 len 20]
    mem[mem[64] + 32] = mem[512]
    mem[mem[64] + 64] = mem[544]
    mem[mem[64] + 96] = mem[588 len 20]
    mem[mem[64] + 128] = mem[608]
    mem[mem[64] + 160] = mem[640]
    mem[mem[64] + 192] = _118
    mem[mem[64] + 224] = _119
    mem[mem[64] + 256] = mem[736]
    return mem[mem[64] len 192], _118, _119, mem[mem[64] + 256]
}



}
