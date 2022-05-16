contract main {




// =====================  Runtime code  =====================


#
#  - sub_8cb23728(?)
#
function _fallback() payable {
    revert
}

function sub_f5817aea(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(address(arg1))
    staticcall address(arg1).checkMembership(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg3), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg2))
    staticcall address(arg2).getAccountSnapshot(address arg1) with:
            gas gas_remaining wei
           args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if not ext_call.return_data[96]:
        require ext_code.size(address(arg1))
        staticcall address(arg1).oracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).markets(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == bool(ext_call.return_data[64])
        if not ext_call.return_data[64]:
            return address(arg2), ext_call.return_data[32], 0, 0, 0, ext_call.return_data[64], 0, 0, bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            return address(arg2), ext_call.return_data[32], 0, 0, 0, ext_call.return_data[64], 0, 0, bool(ext_call.return_data[0])
        require ext_call.return_data[64]
        if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
            revert with 0, 'multiplication overflow', 0
        return address(arg2), 
               ext_call.return_data[32],
               0,
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[64] * ext_call.return_data[0] / 10^18,
               0,
               bool(ext_call.return_data[0])
    if not ext_call.return_data[32]:
        require ext_code.size(address(arg1))
        staticcall address(arg1).oracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(address(arg1))
        staticcall address(arg1).markets(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == bool(ext_call.return_data[64])
        if not ext_call.return_data[64]:
            return address(arg2), ext_call.return_data[32], 0, 0, 0, ext_call.return_data[64], 0, 0, bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            return address(arg2), ext_call.return_data[32], 0, 0, 0, ext_call.return_data[64], 0, 0, bool(ext_call.return_data[0])
        require ext_call.return_data[64]
        if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
            revert with 0, 'multiplication overflow', 0
        return address(arg2), 
               ext_call.return_data[32],
               0,
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[64] * ext_call.return_data[0] / 10^18,
               0,
               bool(ext_call.return_data[0])
    require ext_call.return_data[96]
    if ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[96] != ext_call.return_data[32]:
        revert with 0, 'multiplication overflow', 0
    require ext_code.size(address(arg1))
    staticcall address(arg1).oracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(address(arg1))
    staticcall address(arg1).markets(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == bool(ext_call.return_data[64])
    if not ext_call.return_data[96] * ext_call.return_data[32] / 10^18:
        if not ext_call.return_data[64]:
            return address(arg2), 
                   ext_call.return_data[32],
                   ext_call.return_data[96] * ext_call.return_data[32] / 10^18,
                   0,
                   0,
                   ext_call.return_data[64],
                   0,
                   0,
                   bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            return address(arg2), 
                   ext_call.return_data[32],
                   ext_call.return_data[96] * ext_call.return_data[32] / 10^18,
                   0,
                   0,
                   ext_call.return_data[64],
                   0,
                   0,
                   bool(ext_call.return_data[0])
        require ext_call.return_data[64]
        if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
            revert with 0, 'multiplication overflow', 0
        return address(arg2), 
               ext_call.return_data[32],
               ext_call.return_data[96] * ext_call.return_data[32] / 10^18,
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[64] * ext_call.return_data[0] / 10^18,
               0,
               bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if not ext_call.return_data[64]:
            return address(arg2), 
                   ext_call.return_data[32],
                   ext_call.return_data[96] * ext_call.return_data[32] / 10^18,
                   0,
                   0,
                   ext_call.return_data[64],
                   0,
                   0,
                   bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            return address(arg2), 
                   ext_call.return_data[32],
                   ext_call.return_data[96] * ext_call.return_data[32] / 10^18,
                   0,
                   0,
                   ext_call.return_data[64],
                   0,
                   0,
                   bool(ext_call.return_data[0])
        require ext_call.return_data[64]
        if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
            revert with 0, 'multiplication overflow', 0
        return address(arg2), 
               ext_call.return_data[32],
               ext_call.return_data[96] * ext_call.return_data[32] / 10^18,
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[64] * ext_call.return_data[0] / 10^18,
               0,
               bool(ext_call.return_data[0])
    require ext_call.return_data[96] * ext_call.return_data[32] / 10^18
    if ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / ext_call.return_data[96] * ext_call.return_data[32] / 10^18 != ext_call.return_data[0]:
        revert with 0, 'multiplication overflow', 0
    if not ext_call.return_data[32]:
        if not ext_call.return_data[64]:
            return address(arg2), 
                   ext_call.return_data[32],
                   ext_call.return_data[96] * ext_call.return_data[32] / 10^18,
                   ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / 10^18,
                   0,
                   ext_call.return_data[64],
                   0,
                   0,
                   bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            return address(arg2), 
                   ext_call.return_data[32],
                   ext_call.return_data[96] * ext_call.return_data[32] / 10^18,
                   ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / 10^18,
                   0,
                   ext_call.return_data[64],
                   0,
                   0,
                   bool(ext_call.return_data[0])
        require ext_call.return_data[64]
        if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
            revert with 0, 'multiplication overflow', 0
        return address(arg2), 
               ext_call.return_data[32],
               ext_call.return_data[96] * ext_call.return_data[32] / 10^18,
               ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / 10^18,
               0,
               ext_call.return_data[64],
               ext_call.return_data[64] * ext_call.return_data[0] / 10^18,
               0,
               bool(ext_call.return_data[0])
    if not ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / 10^18:
        if not ext_call.return_data[64]:
            return address(arg2), 
                   ext_call.return_data[32],
                   ext_call.return_data[96] * ext_call.return_data[32] / 10^18,
                   ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / 10^18,
                   0,
                   ext_call.return_data[64],
                   0,
                   0,
                   bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            return address(arg2), 
                   ext_call.return_data[32],
                   ext_call.return_data[96] * ext_call.return_data[32] / 10^18,
                   ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / 10^18,
                   0,
                   ext_call.return_data[64],
                   0,
                   0,
                   bool(ext_call.return_data[0])
        require ext_call.return_data[64]
        if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
            revert with 0, 'multiplication overflow', 0
        return address(arg2), 
               ext_call.return_data[32],
               ext_call.return_data[96] * ext_call.return_data[32] / 10^18,
               ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / 10^18,
               0,
               ext_call.return_data[64],
               ext_call.return_data[64] * ext_call.return_data[0] / 10^18,
               0,
               bool(ext_call.return_data[0])
    require ext_call.return_data[32]
    if ext_call.return_data[32] * ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / 10^18 / ext_call.return_data[32] != ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / 10^18:
        revert with 0, 'multiplication overflow', 0
    if not ext_call.return_data[64]:
        return address(arg2), 
               ext_call.return_data[32],
               ext_call.return_data[96] * ext_call.return_data[32] / 10^18,
               ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / 10^18,
               ext_call.return_data[32] * ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / 10^18 / 10^18,
               ext_call.return_data[64],
               0,
               0,
               bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        return address(arg2), 
               ext_call.return_data[32],
               ext_call.return_data[96] * ext_call.return_data[32] / 10^18,
               ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / 10^18,
               ext_call.return_data[32] * ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / 10^18 / 10^18,
               ext_call.return_data[64],
               0,
               0,
               bool(ext_call.return_data[0])
    require ext_call.return_data[64]
    if ext_call.return_data[64] * ext_call.return_data[0] / ext_call.return_data[64] != ext_call.return_data[0]:
        revert with 0, 'multiplication overflow', 0
    return address(arg2), 
           ext_call.return_data[32],
           ext_call.return_data[96] * ext_call.return_data[32] / 10^18,
           ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / 10^18,
           ext_call.return_data[32] * ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / 10^18 / 10^18,
           ext_call.return_data[64],
           ext_call.return_data[64] * ext_call.return_data[0] / 10^18,
           0,
           bool(ext_call.return_data[0])
}

function getAccountLimits(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 96
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    require ext_code.size(arg1)
    staticcall arg1.getAccountLiquidity(address arg1) with:
            gas gas_remaining wei
           args arg2
    mem[480 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    mem[352] = ext_call.return_data[64]
    mem[320] = ext_call.return_data[32]
    if ext_call.return_data[0]:
        revert with 0, 'Can't get account liquidity'
    mem[ceil32(return_data.size) + 480] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 484] = arg2
    require ext_code.size(arg1)
    staticcall arg1.getAssetsIn(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 480
    require return_data.size >= 32
    _14 = mem[ceil32(return_data.size) + 480 len 4], address(arg2) << 64
    require mem[ceil32(return_data.size) + 480 len 4], address(arg2) << 64 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 480 len 4], address(arg2) << 64 + 511 < ceil32(return_data.size) + return_data.size + 480
    _15 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 480 len 4], address(arg2) << 64 + 480]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 480 len 4], address(arg2) << 64 + 480] <= test266151307()
    require (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 480 len 4], address(arg2) << 64 + 480]) + 512 <= test266151307() and (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 480 len 4], address(arg2) << 64 + 480]) + 32 >= 0
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 480 len 4], address(arg2) << 64 + 480]) + 512
    mem[(2 * ceil32(return_data.size)) + 480] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 480 len 4], address(arg2) << 64 + 480]
    require _14 + (32 * _15) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _14 + 512
    t = (2 * ceil32(return_data.size)) + 512
    while idx < _15:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[288] = (2 * ceil32(return_data.size)) + 480
    _281 = mem[(2 * ceil32(return_data.size)) + 480]
    _282 = mem[64]
    mem[mem[64]] = mem[(2 * ceil32(return_data.size)) + 480]
    mem[64] = mem[64] + (32 * _281) + 32
    if not _281:
        idx = 0
        while idx < _281:
            require idx < mem[(2 * ceil32(return_data.size)) + 480]
            _1668 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 512]
            _1672 = mem[64]
            mem[64] = mem[64] + 288
            mem[_1672] = 0
            mem[_1672 + 32] = 0
            mem[_1672 + 64] = 0
            mem[_1672 + 96] = 0
            mem[_1672 + 128] = 0
            mem[_1672 + 160] = 0
            mem[_1672 + 192] = 0
            mem[_1672 + 224] = 0
            mem[_1672 + 256] = 0
            _1681 = mem[64]
            mem[64] = mem[64] + 288
            mem[_1681 + 32] = 0
            mem[_1681 + 64] = 0
            mem[_1681 + 96] = 0
            mem[_1681 + 128] = 0
            mem[_1681 + 160] = 0
            mem[_1681 + 192] = 0
            mem[_1681 + 224] = 0
            mem[_1681 + 256] = 0
            mem[_1681] = address(_1668)
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = address(_1668)
            require ext_code.size(arg1)
            staticcall arg1.checkMembership(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), address(_1668)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1763 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1763] == bool(mem[_1763])
            mem[_1681 + 256] = bool(mem[_1763])
            require ext_code.size(address(_1668))
            staticcall address(_1668).getAccountSnapshot(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1839 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_1839] == mem[_1839]
            _1857 = mem[_1839 + 32]
            require mem[_1839 + 32] == mem[_1839 + 32]
            require mem[_1839 + 64] == mem[_1839 + 64]
            _1869 = mem[_1839 + 96]
            require mem[_1839 + 96] == mem[_1839 + 96]
            mem[_1681 + 160] = mem[_1839 + 64]
            mem[_1681 + 32] = _1857
            _1871 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1871] = 0
            _1872 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1872] = _1869
            _1874 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1874] = 0
            _1878 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1878] = 0
            _1879 = mem[64]
            mem[64] = mem[64] + 32
            _1882 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1882] = 23
            mem[_1882 + 32] = 'multiplication overflow'
            if not _1869:
                mem[_1879] = 0
                mem[_1681 + 64] = 0 / 10^18
                require ext_code.size(arg1)
                staticcall arg1.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1898 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1908 = mem[_1898]
                require mem[_1898] == mem[_1898 + 12 len 20]
                mem[mem[64] + 4] = address(_1668)
                require ext_code.size(address(_1908))
                staticcall address(_1908).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_1668)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1935 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1939 = mem[_1935]
                require mem[_1935] == mem[_1935]
                require ext_code.size(arg1)
                staticcall arg1.markets(address arg1) with:
                        gas gas_remaining wei
                       args address(_1668)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1959 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1959] == bool(mem[_1959])
                _1974 = mem[_1959 + 32]
                require mem[_1959 + 32] == mem[_1959 + 32]
                require mem[_1959 + 64] == bool(mem[_1959 + 64])
                _1987 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1987] = 0
                _1988 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1988] = 0
                _1993 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1993] = 0
                _2002 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2002] = 0
                _2006 = mem[64]
                mem[64] = mem[64] + 32
                _2011 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2011] = 23
                mem[_2011 + 32] = 'multiplication overflow'
                mem[_2006] = 0
                mem[_1681 + 96] = 0 / 10^18
                _2048 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2048] = 0
                _2053 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2053] = _1974
                _2069 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2069] = 0
                _2099 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2099] = 0
                _2110 = mem[64]
                mem[64] = mem[64] + 32
                _2124 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2124] = 23
                mem[_2124 + 32] = 'multiplication overflow'
                mem[_2110] = 0
                mem[_1681 + 128] = 0 / 10^18
                if not _1974:
                    _2313 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2313] = 0
                    _2328 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2328] = mem[_1681 + 160]
                    _2368 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2368] = 0
                    _2459 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2459] = 0
                    _2490 = mem[64]
                    mem[64] = mem[64] + 32
                    _2491 = mem[_2328]
                    _2533 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2533] = 23
                    mem[_2533 + 32] = 'multiplication overflow'
                    if not _2491:
                        mem[_2490] = 0
                        mem[_1681 + 192] = 0 / 10^18
                        require idx < mem[_282]
                        mem[(32 * idx) + _282 + 32] = _1681
                        idx = idx + 1
                        continue 
                    if not _1939:
                        mem[_2490] = 0
                        mem[_1681 + 192] = 0 / 10^18
                        require idx < mem[_282]
                        mem[(32 * idx) + _282 + 32] = _1681
                        idx = idx + 1
                        continue 
                    require _2491
                    if _2491 * _1939 / _2491 == _1939:
                        mem[_2490] = _2491 * _1939
                        mem[_1681 + 192] = _2491 * _1939 / 10^18
                        require idx < mem[_282]
                        mem[(32 * idx) + _282 + 32] = _1681
                        idx = idx + 1
                        continue 
                    _2793 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 23
                    idx = 0
                    while idx < 23:
                        mem[_2793 + idx + 68] = mem[_2533 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2793 + 91] = 0
                    revert with memory
                      from mem[64]
                       len _2793 + -mem[64] + 100
                _2330 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2330] = 0
                _2347 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2347] = mem[_1681 + 160]
                _2394 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2394] = 0
                _2492 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2492] = 0
                _2534 = mem[64]
                mem[64] = mem[64] + 32
                _2535 = mem[_2347]
                _2576 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2576] = 23
                mem[_2576 + 32] = 'multiplication overflow'
                if not _2535:
                    mem[_2534] = 0
                    mem[_1681 + 192] = 0 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _1681
                    idx = idx + 1
                    continue 
                if not _1939:
                    mem[_2534] = 0
                    mem[_1681 + 192] = 0 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _1681
                    idx = idx + 1
                    continue 
                require _2535
                if _2535 * _1939 / _2535 == _1939:
                    mem[_2534] = _2535 * _1939
                    mem[_1681 + 192] = _2535 * _1939 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _1681
                    idx = idx + 1
                    continue 
                _2832 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                s = 0
                while s < 23:
                    mem[_2832 + s + 68] = mem[_2576 + s + 32]
                    s = s + 32
                    continue 
                mem[_2832 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2832 + -mem[64] + 100
            if not _1857:
                mem[_1879] = 0
                mem[_1681 + 64] = 0 / 10^18
                require ext_code.size(arg1)
                staticcall arg1.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1903 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1912 = mem[_1903]
                require mem[_1903] == mem[_1903 + 12 len 20]
                mem[mem[64] + 4] = address(_1668)
                require ext_code.size(address(_1912))
                staticcall address(_1912).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_1668)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1937 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1942 = mem[_1937]
                require mem[_1937] == mem[_1937]
                require ext_code.size(arg1)
                staticcall arg1.markets(address arg1) with:
                        gas gas_remaining wei
                       args address(_1668)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1961 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1961] == bool(mem[_1961])
                _1976 = mem[_1961 + 32]
                require mem[_1961 + 32] == mem[_1961 + 32]
                require mem[_1961 + 64] == bool(mem[_1961 + 64])
                _1990 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1990] = 0
                _1991 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1991] = 0
                _1997 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1997] = 0
                _2008 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2008] = 0
                _2012 = mem[64]
                mem[64] = mem[64] + 32
                _2018 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2018] = 23
                mem[_2018 + 32] = 'multiplication overflow'
                mem[_2012] = 0
                mem[_1681 + 96] = 0 / 10^18
                _2056 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2056] = 0
                _2064 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2064] = _1976
                _2083 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2083] = 0
                _2116 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2116] = 0
                _2127 = mem[64]
                mem[64] = mem[64] + 32
                _2144 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2144] = 23
                mem[_2144 + 32] = 'multiplication overflow'
                mem[_2127] = 0
                mem[_1681 + 128] = 0 / 10^18
                if not _1976:
                    _2334 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2334] = 0
                    _2355 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2355] = mem[_1681 + 160]
                    _2405 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2405] = 0
                    _2507 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2507] = 0
                    _2544 = mem[64]
                    mem[64] = mem[64] + 32
                    _2545 = mem[_2355]
                    _2587 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2587] = 23
                    mem[_2587 + 32] = 'multiplication overflow'
                    if not _2545:
                        mem[_2544] = 0
                        mem[_1681 + 192] = 0 / 10^18
                        require idx < mem[_282]
                        mem[(32 * idx) + _282 + 32] = _1681
                        idx = idx + 1
                        continue 
                    if not _1942:
                        mem[_2544] = 0
                        mem[_1681 + 192] = 0 / 10^18
                        require idx < mem[_282]
                        mem[(32 * idx) + _282 + 32] = _1681
                        idx = idx + 1
                        continue 
                    require _2545
                    if _2545 * _1942 / _2545 == _1942:
                        mem[_2544] = _2545 * _1942
                        mem[_1681 + 192] = _2545 * _1942 / 10^18
                        require idx < mem[_282]
                        mem[(32 * idx) + _282 + 32] = _1681
                        idx = idx + 1
                        continue 
                    _2838 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 23
                    s = 0
                    while s < 23:
                        mem[_2838 + s + 68] = mem[_2587 + s + 32]
                        s = s + 32
                        continue 
                    mem[_2838 + 91] = 0
                    revert with memory
                      from mem[64]
                       len _2838 + -mem[64] + 100
                _2357 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2357] = 0
                _2378 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2378] = mem[_1681 + 160]
                _2439 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2439] = 0
                _2546 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2546] = 0
                _2588 = mem[64]
                mem[64] = mem[64] + 32
                _2589 = mem[_2378]
                _2636 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2636] = 23
                mem[_2636 + 32] = 'multiplication overflow'
                if not _2589:
                    mem[_2588] = 0
                    mem[_1681 + 192] = 0 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _1681
                    idx = idx + 1
                    continue 
                if not _1942:
                    mem[_2588] = 0
                    mem[_1681 + 192] = 0 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _1681
                    idx = idx + 1
                    continue 
                require _2589
                if _2589 * _1942 / _2589 == _1942:
                    mem[_2588] = _2589 * _1942
                    mem[_1681 + 192] = _2589 * _1942 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _1681
                    idx = idx + 1
                    continue 
                _2870 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_2870 + idx + 68] = mem[_2636 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2870 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2870 + -mem[64] + 100
            require _1869
            if _1869 * _1857 / _1869 != _1857:
                _1887 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_1887 + idx + 68] = mem[_1882 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1887 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1887 + -mem[64] + 100
            mem[_1879] = _1869 * _1857
            mem[_1681 + 64] = _1869 * _1857 / 10^18
            require ext_code.size(arg1)
            staticcall arg1.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1909 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1917 = mem[_1909]
            require mem[_1909] == mem[_1909 + 12 len 20]
            mem[mem[64] + 4] = address(_1668)
            require ext_code.size(address(_1917))
            staticcall address(_1917).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_1668)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1940 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1946 = mem[_1940]
            require mem[_1940] == mem[_1940]
            require ext_code.size(arg1)
            staticcall arg1.markets(address arg1) with:
                    gas gas_remaining wei
                   args address(_1668)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1964 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1964] == bool(mem[_1964])
            _1977 = mem[_1964 + 32]
            require mem[_1964 + 32] == mem[_1964 + 32]
            require mem[_1964 + 64] == bool(mem[_1964 + 64])
            _1994 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1994] = 0
            _1995 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1995] = _1869 * _1857 / 10^18
            _2003 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2003] = 0
            _2017 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2017] = 0
            _2019 = mem[64]
            mem[64] = mem[64] + 32
            _2023 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2023] = 23
            mem[_2023 + 32] = 'multiplication overflow'
            if not _1869 * _1857 / 10^18:
                mem[_2019] = 0
                mem[_1681 + 96] = 0 / 10^18
                _2072 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2072] = 0
                _2080 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2080] = _1977
                _2101 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2101] = 0
                _2142 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2142] = 0
                _2155 = mem[64]
                mem[64] = mem[64] + 32
                _2168 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2168] = 23
                mem[_2168 + 32] = 'multiplication overflow'
                mem[_2155] = 0
                mem[_1681 + 128] = 0 / 10^18
                if not _1977:
                    _2374 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2374] = 0
                    _2401 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2401] = mem[_1681 + 160]
                    _2464 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2464] = 0
                    _2582 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2582] = 0
                    _2626 = mem[64]
                    mem[64] = mem[64] + 32
                    _2627 = mem[_2401]
                    _2671 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2671] = 23
                    mem[_2671 + 32] = 'multiplication overflow'
                    if not _2627:
                        mem[_2626] = 0
                        mem[_1681 + 192] = 0 / 10^18
                        require idx < mem[_282]
                        mem[(32 * idx) + _282 + 32] = _1681
                        idx = idx + 1
                        continue 
                    if not _1946:
                        mem[_2626] = 0
                        mem[_1681 + 192] = 0 / 10^18
                        require idx < mem[_282]
                        mem[(32 * idx) + _282 + 32] = _1681
                        idx = idx + 1
                        continue 
                    require _2627
                    if _2627 * _1946 / _2627 == _1946:
                        mem[_2626] = _2627 * _1946
                        mem[_1681 + 192] = _2627 * _1946 / 10^18
                        require idx < mem[_282]
                        mem[(32 * idx) + _282 + 32] = _1681
                        idx = idx + 1
                        continue 
                    _2902 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 23
                    idx = 0
                    while idx < 23:
                        mem[_2902 + idx + 68] = mem[_2671 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2902 + 91] = 0
                    revert with memory
                      from mem[64]
                       len _2902 + -mem[64] + 100
                _2403 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2403] = 0
                _2431 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2431] = mem[_1681 + 160]
                _2500 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2500] = 0
                _2628 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2628] = 0
                _2672 = mem[64]
                mem[64] = mem[64] + 32
                _2673 = mem[_2431]
                _2718 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2718] = 23
                mem[_2718 + 32] = 'multiplication overflow'
                if not _2673:
                    mem[_2672] = 0
                    mem[_1681 + 192] = 0 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _1681
                    idx = idx + 1
                    continue 
                if not _1946:
                    mem[_2672] = 0
                    mem[_1681 + 192] = 0 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _1681
                    idx = idx + 1
                    continue 
                require _2673
                if _2673 * _1946 / _2673 == _1946:
                    mem[_2672] = _2673 * _1946
                    mem[_1681 + 192] = _2673 * _1946 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _1681
                    idx = idx + 1
                    continue 
                _2934 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_2934 + idx + 68] = mem[_2718 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2934 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2934 + -mem[64] + 100
            if not _1946:
                mem[_2019] = 0
                mem[_1681 + 96] = 0 / 10^18
                _2082 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2082] = 0
                _2090 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2090] = _1977
                _2115 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2115] = 0
                _2157 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2157] = 0
                _2169 = mem[64]
                mem[64] = mem[64] + 32
                _2187 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2187] = 23
                mem[_2187 + 32] = 'multiplication overflow'
                mem[_2169] = 0
                mem[_1681 + 128] = 0 / 10^18
                if not _1977:
                    _2404 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2404] = 0
                    _2434 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2434] = mem[_1681 + 160]
                    _2504 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2504] = 0
                    _2632 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2632] = 0
                    _2674 = mem[64]
                    mem[64] = mem[64] + 32
                    _2675 = mem[_2434]
                    _2721 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2721] = 23
                    mem[_2721 + 32] = 'multiplication overflow'
                    if not _2675:
                        mem[_2674] = 0
                        mem[_1681 + 192] = 0 / 10^18
                        require idx < mem[_282]
                        mem[(32 * idx) + _282 + 32] = _1681
                        idx = idx + 1
                        continue 
                    if not _1946:
                        mem[_2674] = 0
                        mem[_1681 + 192] = 0 / 10^18
                        require idx < mem[_282]
                        mem[(32 * idx) + _282 + 32] = _1681
                        idx = idx + 1
                        continue 
                    require _2675
                    if _2675 * _1946 / _2675 == _1946:
                        mem[_2674] = _2675 * _1946
                        mem[_1681 + 192] = _2675 * _1946 / 10^18
                        require idx < mem[_282]
                        mem[(32 * idx) + _282 + 32] = _1681
                        idx = idx + 1
                        continue 
                    _2935 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 23
                    idx = 0
                    while idx < 23:
                        mem[_2935 + idx + 68] = mem[_2721 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2935 + 91] = 0
                    revert with memory
                      from mem[64]
                       len _2935 + -mem[64] + 100
                _2436 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2436] = 0
                _2468 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2468] = mem[_1681 + 160]
                _2543 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2543] = 0
                _2676 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2676] = 0
                _2722 = mem[64]
                mem[64] = mem[64] + 32
                _2723 = mem[_2468]
                _2765 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2765] = 23
                mem[_2765 + 32] = 'multiplication overflow'
                if not _2723:
                    mem[_2722] = 0
                    mem[_1681 + 192] = 0 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _1681
                    idx = idx + 1
                    continue 
                if not _1946:
                    mem[_2722] = 0
                    mem[_1681 + 192] = 0 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _1681
                    idx = idx + 1
                    continue 
                require _2723
                if _2723 * _1946 / _2723 == _1946:
                    mem[_2722] = _2723 * _1946
                    mem[_1681 + 192] = _2723 * _1946 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _1681
                    idx = idx + 1
                    continue 
                _2966 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_2966 + idx + 68] = mem[_2765 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2966 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2966 + -mem[64] + 100
            require _1869 * _1857 / 10^18
            if _1869 * _1857 / 10^18 * _1946 / _1869 * _1857 / 10^18 != _1946:
                _2040 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_2040 + idx + 68] = mem[_2023 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2040 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2040 + -mem[64] + 100
            mem[_2019] = _1869 * _1857 / 10^18 * _1946
            mem[_1681 + 96] = _1869 * _1857 / 10^18 * _1946 / 10^18
            _2102 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2102] = 0
            _2113 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2113] = _1977
            _2143 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2143] = 0
            _2185 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2185] = 0
            _2206 = mem[64]
            mem[64] = mem[64] + 32
            _2223 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2223] = 23
            mem[_2223 + 32] = 'multiplication overflow'
            if not _1977:
                mem[_2206] = 0
                mem[_1681 + 128] = 0 / 10^18
                _2467 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2467] = 0
                _2501 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2501] = mem[_1681 + 160]
                _2584 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2584] = 0
                _2719 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2719] = 0
                _2760 = mem[64]
                mem[64] = mem[64] + 32
                _2761 = mem[_2501]
                _2796 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2796] = 23
                mem[_2796 + 32] = 'multiplication overflow'
                if not _2761:
                    mem[_2760] = 0
                    mem[_1681 + 192] = 0 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _1681
                    idx = idx + 1
                    continue 
                if not _1946:
                    mem[_2760] = 0
                    mem[_1681 + 192] = 0 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _1681
                    idx = idx + 1
                    continue 
                require _2761
                if _2761 * _1946 / _2761 == _1946:
                    mem[_2760] = _2761 * _1946
                    mem[_1681 + 192] = _2761 * _1946 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _1681
                    idx = idx + 1
                    continue 
                _3001 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_3001 + idx + 68] = mem[_2796 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3001 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3001 + -mem[64] + 100
            if not _1869 * _1857 / 10^18 * _1946 / 10^18:
                mem[_2206] = 0
                mem[_1681 + 128] = 0 / 10^18
                _2503 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2503] = 0
                _2539 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2539] = mem[_1681 + 160]
                _2631 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2631] = 0
                _2762 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2762] = 0
                _2797 = mem[64]
                mem[64] = mem[64] + 32
                _2798 = mem[_2539]
                _2836 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2836] = 23
                mem[_2836 + 32] = 'multiplication overflow'
                if not _2798:
                    mem[_2797] = 0
                    mem[_1681 + 192] = 0 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _1681
                    idx = idx + 1
                    continue 
                if not _1946:
                    mem[_2797] = 0
                    mem[_1681 + 192] = 0 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _1681
                    idx = idx + 1
                    continue 
                require _2798
                if _2798 * _1946 / _2798 == _1946:
                    mem[_2797] = _2798 * _1946
                    mem[_1681 + 192] = _2798 * _1946 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _1681
                    idx = idx + 1
                    continue 
                _3028 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_3028 + idx + 68] = mem[_2836 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3028 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3028 + -mem[64] + 100
            require _1977
            if _1977 * _1869 * _1857 / 10^18 * _1946 / 10^18 / _1977 != _1869 * _1857 / 10^18 * _1946 / 10^18:
                _2319 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_2319 + idx + 68] = mem[_2223 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2319 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2319 + -mem[64] + 100
            mem[_2206] = _1977 * _1869 * _1857 / 10^18 * _1946 / 10^18
            mem[_1681 + 128] = _1977 * _1869 * _1857 / 10^18 * _1946 / 10^18 / 10^18
            _2585 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2585] = 0
            _2629 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2629] = mem[_1681 + 160]
            _2720 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2720] = 0
            _2834 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2834] = 0
            _2867 = mem[64]
            mem[64] = mem[64] + 32
            _2868 = mem[_2629]
            _2903 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2903] = 23
            mem[_2903 + 32] = 'multiplication overflow'
            if not _2868:
                mem[_2867] = 0
                mem[_1681 + 192] = 0 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _1681
                idx = idx + 1
                continue 
            if not _1946:
                mem[_2867] = 0
                mem[_1681 + 192] = 0 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _1681
                idx = idx + 1
                continue 
            require _2868
            if _2868 * _1946 / _2868 == _1946:
                mem[_2867] = _2868 * _1946
                mem[_1681 + 192] = _2868 * _1946 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _1681
                idx = idx + 1
                continue 
            _3108 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3108 + idx + 68] = mem[_2903 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3108 + 91] = 0
            revert with memory
              from mem[64]
               len _3108 + -mem[64] + 100
        _2166 = mem[_282]
        idx = 0
        while idx < _2166:
            _2182 = mem[384]
            require idx < mem[_282]
            _2205 = mem[mem[(32 * idx) + _282 + 32] + 128]
            _2221 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2221] = 17
            mem[_2221 + 32] = 'addition overflow'
            if _2182 + _2205 < _2182:
                _2246 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 17
                idx = 0
                while idx < 17:
                    mem[_2246 + idx + 68] = mem[_2221 + idx + 32]
                    _2166 = mem[_282]
                    idx = idx + 32
                    continue 
                mem[_2246 + 85] = 0
                revert with memory
                  from mem[64]
                   len _2246 + -mem[64] + 100
            mem[384] = _2182 + _2205
            _2265 = mem[416]
            require idx < mem[_282]
            _2290 = mem[mem[(32 * idx) + _282 + 32] + 192]
            _2312 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2312] = 17
            mem[_2312 + 32] = 'addition overflow'
            if _2265 + _2290 >= _2265:
                mem[416] = _2265 + _2290
                _2166 = mem[_282]
                idx = idx + 1
                continue 
            _2346 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 17
            idx = 0
            while idx < 17:
                mem[_2346 + idx + 68] = mem[_2312 + idx + 32]
                _2166 = mem[_282]
                idx = idx + 32
                continue 
            mem[_2346 + 85] = 0
            revert with memory
              from mem[64]
               len _2346 + -mem[64] + 100
        _2203 = mem[64]
        mem[64] = mem[64] + 32
        mem[_2203] = 0
        _2218 = mem[64]
        mem[64] = mem[64] + 32
        mem[_2218] = mem[416]
        if not mem[384]:
            mem[448] = 0
            mem[mem[64]] = 32
            _2287 = mem[288]
            mem[mem[64] + 32] = 192
            _2326 = mem[_2287]
            mem[mem[64] + 224] = mem[_2287]
            idx = 0
            s = _2287 + 32
            t = mem[64] + 256
            while idx < _2326:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = mem[320]
            mem[mem[64] + 96] = mem[352]
            mem[mem[64] + 128] = mem[384]
            mem[mem[64] + 160] = mem[416]
            mem[mem[64] + 192] = mem[448]
            return 32, 192, mem[mem[64] + 64 len (32 * _2326) + 192]
        if mem[416] <= 0:
            mem[448] = 100
            mem[mem[64]] = 32
            _2327 = mem[288]
            mem[mem[64] + 32] = 192
            _2367 = mem[_2327]
            mem[mem[64] + 224] = mem[_2327]
            idx = 0
            s = _2327 + 32
            t = mem[64] + 256
            while idx < _2367:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = mem[320]
            mem[mem[64] + 96] = mem[352]
            mem[mem[64] + 128] = mem[384]
            mem[mem[64] + 160] = mem[416]
            mem[mem[64] + 192] = mem[448]
            return 32, 192, mem[mem[64] + 64 len (32 * _2367) + 192]
        _2245 = mem[384]
        _2264 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2264] = 23
        mem[_2264 + 32] = 'multiplication overflow'
        if not _2245:
            _2390 = mem[_2218]
            _2423 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2423] = 14
            mem[_2423 + 32] = 'divide by zero'
            if _2390 <= 0:
                revert with 0, 'divide by zero', 0
            require _2390
            mem[448] = 0 / _2390
            mem[mem[64]] = 32
            _2863 = mem[288]
            mem[mem[64] + 32] = 192
            _2925 = mem[_2863]
            mem[mem[64] + 224] = mem[_2863]
            idx = 0
            s = _2863 + 32
            t = mem[64] + 256
            while idx < _2925:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = mem[320]
            mem[mem[64] + 96] = mem[352]
            mem[mem[64] + 128] = mem[384]
            mem[mem[64] + 160] = mem[416]
            mem[mem[64] + 192] = mem[448]
            return 32, 192, mem[mem[64] + 64 len (32 * _2925) + 192]
        require _2245
        if 10^18 * _2245 / _2245 != 10^18:
            revert with 0, 'multiplication overflow', 0
        _2488 = mem[_2218]
        _2532 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2532] = 14
        mem[_2532 + 32] = 'divide by zero'
        if _2488 <= 0:
            revert with 0, 'divide by zero', 0
        require _2488
        mem[448] = 10^18 * _2245 / _2488
        _2894 = mem[64]
        mem[mem[64]] = 32
        _2956 = mem[288]
        mem[mem[64] + 32] = 192
        _3017 = mem[_2956]
        mem[mem[64] + 224] = mem[_2956]
        idx = 0
        s = _2956 + 32
        t = mem[64] + 256
        while idx < _3017:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_2894 + 64] = mem[320]
        mem[_2894 + 96] = mem[352]
        mem[_2894 + 128] = mem[384]
        mem[_2894 + 160] = mem[416]
        mem[_2894 + 192] = mem[448]
        return memory
          from mem[64]
           len _2894 + (32 * _3017) + -mem[64] + 256
    mem[64] = _282 + (32 * _281) + 320
    mem[_282 + (32 * _281) + 32] = 0
    mem[_282 + (32 * _281) + 64] = 0
    mem[_282 + (32 * _281) + 96] = 0
    mem[_282 + (32 * _281) + 128] = 0
    mem[_282 + (32 * _281) + 160] = 0
    mem[_282 + (32 * _281) + 192] = 0
    mem[_282 + (32 * _281) + 224] = 0
    mem[_282 + (32 * _281) + 256] = 0
    mem[_282 + (32 * _281) + 288] = 0
    mem[var97001] = _282 + (32 * _281) + 32
    s = var97001
    idx = var97002
    while idx - 1:
        mem[64] = mem[64] + 288
        mem[_282 + (32 * _281) + 32] = 0
        mem[_282 + (32 * _281) + 64] = 0
        mem[_282 + (32 * _281) + 96] = 0
        mem[_282 + (32 * _281) + 128] = 0
        mem[_282 + (32 * _281) + 160] = 0
        mem[_282 + (32 * _281) + 192] = 0
        mem[_282 + (32 * _281) + 224] = 0
        mem[_282 + (32 * _281) + 256] = 0
        mem[_282 + (32 * _281) + 288] = 0
        mem[s + 32] = _282 + (32 * _281) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < _281:
        require idx < mem[(2 * ceil32(return_data.size)) + 480]
        _3636 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 512]
        _3640 = mem[64]
        mem[64] = mem[64] + 288
        mem[_3640] = 0
        mem[_3640 + 32] = 0
        mem[_3640 + 64] = 0
        mem[_3640 + 96] = 0
        mem[_3640 + 128] = 0
        mem[_3640 + 160] = 0
        mem[_3640 + 192] = 0
        mem[_3640 + 224] = 0
        mem[_3640 + 256] = 0
        _3652 = mem[64]
        mem[64] = mem[64] + 288
        mem[_3652 + 32] = 0
        mem[_3652 + 64] = 0
        mem[_3652 + 96] = 0
        mem[_3652 + 128] = 0
        mem[_3652 + 160] = 0
        mem[_3652 + 192] = 0
        mem[_3652 + 224] = 0
        mem[_3652 + 256] = 0
        mem[_3652] = address(_3636)
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = address(_3636)
        require ext_code.size(arg1)
        staticcall arg1.checkMembership(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), address(_3636)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3791 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3791] == bool(mem[_3791])
        mem[_3652 + 256] = bool(mem[_3791])
        require ext_code.size(address(_3636))
        staticcall address(_3636).getAccountSnapshot(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3826 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_3826] == mem[_3826]
        _3833 = mem[_3826 + 32]
        require mem[_3826 + 32] == mem[_3826 + 32]
        require mem[_3826 + 64] == mem[_3826 + 64]
        _3838 = mem[_3826 + 96]
        require mem[_3826 + 96] == mem[_3826 + 96]
        mem[_3652 + 160] = mem[_3826 + 64]
        mem[_3652 + 32] = _3833
        _3839 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3839] = 0
        _3840 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3840] = _3838
        _3842 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3842] = 0
        _3843 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3843] = 0
        _3844 = mem[64]
        mem[64] = mem[64] + 32
        _3846 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3846] = 23
        mem[_3846 + 32] = 'multiplication overflow'
        if not _3838:
            mem[_3844] = 0
            mem[_3652 + 64] = 0 / 10^18
            require ext_code.size(arg1)
            staticcall arg1.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3856 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3861 = mem[_3856]
            require mem[_3856] == mem[_3856 + 12 len 20]
            mem[mem[64] + 4] = address(_3636)
            require ext_code.size(address(_3861))
            staticcall address(_3861).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_3636)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3872 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3875 = mem[_3872]
            require mem[_3872] == mem[_3872]
            require ext_code.size(arg1)
            staticcall arg1.markets(address arg1) with:
                    gas gas_remaining wei
                   args address(_3636)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3884 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_3884] == bool(mem[_3884])
            _3891 = mem[_3884 + 32]
            require mem[_3884 + 32] == mem[_3884 + 32]
            require mem[_3884 + 64] == bool(mem[_3884 + 64])
            _3897 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3897] = 0
            _3898 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3898] = 0
            _3903 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3903] = 0
            _3908 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3908] = 0
            _3910 = mem[64]
            mem[64] = mem[64] + 32
            _3913 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3913] = 23
            mem[_3913 + 32] = 'multiplication overflow'
            mem[_3910] = 0
            mem[_3652 + 96] = 0 / 10^18
            _3932 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3932] = 0
            _3936 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3936] = _3891
            _3946 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3946] = 0
            _3966 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3966] = 0
            _3971 = mem[64]
            mem[64] = mem[64] + 32
            _3979 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3979] = 23
            mem[_3979 + 32] = 'multiplication overflow'
            mem[_3971] = 0
            mem[_3652 + 128] = 0 / 10^18
            if not _3891:
                _4072 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4072] = 0
                _4084 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4084] = mem[_3652 + 160]
                _4108 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4108] = 0
                _4168 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4168] = 0
                _4187 = mem[64]
                mem[64] = mem[64] + 32
                _4188 = mem[_4084]
                _4211 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4211] = 23
                mem[_4211 + 32] = 'multiplication overflow'
                if not _4188:
                    mem[_4187] = 0
                    mem[_3652 + 192] = 0 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _3652
                    idx = idx + 1
                    continue 
                if not _3875:
                    mem[_4187] = 0
                    mem[_3652 + 192] = 0 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _3652
                    idx = idx + 1
                    continue 
                require _4188
                if _4188 * _3875 / _4188 == _3875:
                    mem[_4187] = _4188 * _3875
                    mem[_3652 + 192] = _4188 * _3875 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _3652
                    idx = idx + 1
                    continue 
                _4343 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_4343 + idx + 68] = mem[_4211 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4343 + 91] = 0
                revert with memory
                  from mem[64]
                   len _4343 + -mem[64] + 100
            _4086 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4086] = 0
            _4095 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4095] = mem[_3652 + 160]
            _4128 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4128] = 0
            _4189 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4189] = 0
            _4212 = mem[64]
            mem[64] = mem[64] + 32
            _4213 = mem[_4095]
            _4233 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4233] = 23
            mem[_4233 + 32] = 'multiplication overflow'
            if not _4213:
                mem[_4212] = 0
                mem[_3652 + 192] = 0 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _3652
                idx = idx + 1
                continue 
            if not _3875:
                mem[_4212] = 0
                mem[_3652 + 192] = 0 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _3652
                idx = idx + 1
                continue 
            require _4213
            if _4213 * _3875 / _4213 == _3875:
                mem[_4212] = _4213 * _3875
                mem[_3652 + 192] = _4213 * _3875 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _3652
                idx = idx + 1
                continue 
            _4356 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            s = 0
            while s < 23:
                mem[_4356 + s + 68] = mem[_4233 + s + 32]
                s = s + 32
                continue 
            mem[_4356 + 91] = 0
            revert with memory
              from mem[64]
               len _4356 + -mem[64] + 100
        if not _3833:
            mem[_3844] = 0
            mem[_3652 + 64] = 0 / 10^18
            require ext_code.size(arg1)
            staticcall arg1.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3859 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3863 = mem[_3859]
            require mem[_3859] == mem[_3859 + 12 len 20]
            mem[mem[64] + 4] = address(_3636)
            require ext_code.size(address(_3863))
            staticcall address(_3863).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_3636)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3874 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3877 = mem[_3874]
            require mem[_3874] == mem[_3874]
            require ext_code.size(arg1)
            staticcall arg1.markets(address arg1) with:
                    gas gas_remaining wei
                   args address(_3636)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3886 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_3886] == bool(mem[_3886])
            _3892 = mem[_3886 + 32]
            require mem[_3886 + 32] == mem[_3886 + 32]
            require mem[_3886 + 64] == bool(mem[_3886 + 64])
            _3900 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3900] = 0
            _3901 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3901] = 0
            _3907 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3907] = 0
            _3912 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3912] = 0
            _3914 = mem[64]
            mem[64] = mem[64] + 32
            _3917 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3917] = 23
            mem[_3917 + 32] = 'multiplication overflow'
            mem[_3914] = 0
            mem[_3652 + 96] = 0 / 10^18
            _3939 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3939] = 0
            _3943 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3943] = _3892
            _3958 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3958] = 0
            _3977 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3977] = 0
            _3982 = mem[64]
            mem[64] = mem[64] + 32
            _3990 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3990] = 23
            mem[_3990 + 32] = 'multiplication overflow'
            mem[_3982] = 0
            mem[_3652 + 128] = 0 / 10^18
            if not _3892:
                _4090 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4090] = 0
                _4103 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4103] = mem[_3652 + 160]
                _4139 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4139] = 0
                _4204 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4204] = 0
                _4222 = mem[64]
                mem[64] = mem[64] + 32
                _4223 = mem[_4103]
                _4244 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4244] = 23
                mem[_4244 + 32] = 'multiplication overflow'
                if not _4223:
                    mem[_4222] = 0
                    mem[_3652 + 192] = 0 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _3652
                    idx = idx + 1
                    continue 
                if not _3877:
                    mem[_4222] = 0
                    mem[_3652 + 192] = 0 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _3652
                    idx = idx + 1
                    continue 
                require _4223
                if _4223 * _3877 / _4223 == _3877:
                    mem[_4222] = _4223 * _3877
                    mem[_3652 + 192] = _4223 * _3877 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _3652
                    idx = idx + 1
                    continue 
                _4362 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                s = 0
                while s < 23:
                    mem[_4362 + s + 68] = mem[_4244 + s + 32]
                    s = s + 32
                    continue 
                mem[_4362 + 91] = 0
                revert with memory
                  from mem[64]
                   len _4362 + -mem[64] + 100
            _4105 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4105] = 0
            _4118 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4118] = mem[_3652 + 160]
            _4161 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4161] = 0
            _4224 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4224] = 0
            _4245 = mem[64]
            mem[64] = mem[64] + 32
            _4246 = mem[_4118]
            _4272 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4272] = 23
            mem[_4272 + 32] = 'multiplication overflow'
            if not _4246:
                mem[_4245] = 0
                mem[_3652 + 192] = 0 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _3652
                idx = idx + 1
                continue 
            if not _3877:
                mem[_4245] = 0
                mem[_3652 + 192] = 0 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _3652
                idx = idx + 1
                continue 
            require _4246
            if _4246 * _3877 / _4246 == _3877:
                mem[_4245] = _4246 * _3877
                mem[_3652 + 192] = _4246 * _3877 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _3652
                idx = idx + 1
                continue 
            _4371 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_4371 + idx + 68] = mem[_4272 + idx + 32]
                idx = idx + 32
                continue 
            mem[_4371 + 91] = 0
            revert with memory
              from mem[64]
               len _4371 + -mem[64] + 100
        require _3838
        if _3838 * _3833 / _3838 != _3833:
            _3847 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3847 + idx + 68] = mem[_3846 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3847 + 91] = 0
            revert with memory
              from mem[64]
               len _3847 + -mem[64] + 100
        mem[_3844] = _3838 * _3833
        mem[_3652 + 64] = _3838 * _3833 / 10^18
        require ext_code.size(arg1)
        staticcall arg1.oracle() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3862 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3864 = mem[_3862]
        require mem[_3862] == mem[_3862 + 12 len 20]
        mem[mem[64] + 4] = address(_3636)
        require ext_code.size(address(_3864))
        staticcall address(_3864).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(_3636)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3876 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3878 = mem[_3876]
        require mem[_3876] == mem[_3876]
        require ext_code.size(arg1)
        staticcall arg1.markets(address arg1) with:
                gas gas_remaining wei
               args address(_3636)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3888 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_3888] == bool(mem[_3888])
        _3893 = mem[_3888 + 32]
        require mem[_3888 + 32] == mem[_3888 + 32]
        require mem[_3888 + 64] == bool(mem[_3888 + 64])
        _3904 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3904] = 0
        _3905 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3905] = _3838 * _3833 / 10^18
        _3909 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3909] = 0
        _3916 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3916] = 0
        _3918 = mem[64]
        mem[64] = mem[64] + 32
        _3920 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3920] = 23
        mem[_3920 + 32] = 'multiplication overflow'
        if not _3838 * _3833 / 10^18:
            mem[_3918] = 0
            mem[_3652 + 96] = 0 / 10^18
            _3949 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3949] = 0
            _3955 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3955] = _3893
            _3968 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3968] = 0
            _3988 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3988] = 0
            _3996 = mem[64]
            mem[64] = mem[64] + 32
            _4004 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4004] = 23
            mem[_4004 + 32] = 'multiplication overflow'
            mem[_3996] = 0
            mem[_3652 + 128] = 0 / 10^18
            if not _3893:
                _4114 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4114] = 0
                _4135 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4135] = mem[_3652 + 160]
                _4173 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4173] = 0
                _4239 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4239] = 0
                _4262 = mem[64]
                mem[64] = mem[64] + 32
                _4263 = mem[_4135]
                _4288 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4288] = 23
                mem[_4288 + 32] = 'multiplication overflow'
                if not _4263:
                    mem[_4262] = 0
                    mem[_3652 + 192] = 0 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _3652
                    idx = idx + 1
                    continue 
                if not _3878:
                    mem[_4262] = 0
                    mem[_3652 + 192] = 0 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _3652
                    idx = idx + 1
                    continue 
                require _4263
                if _4263 * _3878 / _4263 == _3878:
                    mem[_4262] = _4263 * _3878
                    mem[_3652 + 192] = _4263 * _3878 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _3652
                    idx = idx + 1
                    continue 
                _4382 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_4382 + idx + 68] = mem[_4288 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4382 + 91] = 0
                revert with memory
                  from mem[64]
                   len _4382 + -mem[64] + 100
            _4137 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4137] = 0
            _4153 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4153] = mem[_3652 + 160]
            _4197 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4197] = 0
            _4264 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4264] = 0
            _4289 = mem[64]
            mem[64] = mem[64] + 32
            _4290 = mem[_4153]
            _4310 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4310] = 23
            mem[_4310 + 32] = 'multiplication overflow'
            if not _4290:
                mem[_4289] = 0
                mem[_3652 + 192] = 0 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _3652
                idx = idx + 1
                continue 
            if not _3878:
                mem[_4289] = 0
                mem[_3652 + 192] = 0 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _3652
                idx = idx + 1
                continue 
            require _4290
            if _4290 * _3878 / _4290 == _3878:
                mem[_4289] = _4290 * _3878
                mem[_3652 + 192] = _4290 * _3878 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _3652
                idx = idx + 1
                continue 
            _4395 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_4395 + idx + 68] = mem[_4310 + idx + 32]
                idx = idx + 32
                continue 
            mem[_4395 + 91] = 0
            revert with memory
              from mem[64]
               len _4395 + -mem[64] + 100
        if not _3878:
            mem[_3918] = 0
            mem[_3652 + 96] = 0 / 10^18
            _3957 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3957] = 0
            _3961 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3961] = _3893
            _3976 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3976] = 0
            _3998 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3998] = 0
            _4005 = mem[64]
            mem[64] = mem[64] + 32
            _4014 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4014] = 23
            mem[_4014 + 32] = 'multiplication overflow'
            mem[_4005] = 0
            mem[_3652 + 128] = 0 / 10^18
            if not _3893:
                _4138 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4138] = 0
                _4156 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4156] = mem[_3652 + 160]
                _4201 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4201] = 0
                _4268 = mem[64]
                mem[64] = mem[64] + 32
                mem[_4268] = 0
                _4291 = mem[64]
                mem[64] = mem[64] + 32
                _4292 = mem[_4156]
                _4313 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4313] = 23
                mem[_4313 + 32] = 'multiplication overflow'
                if not _4292:
                    mem[_4291] = 0
                    mem[_3652 + 192] = 0 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _3652
                    idx = idx + 1
                    continue 
                if not _3878:
                    mem[_4291] = 0
                    mem[_3652 + 192] = 0 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _3652
                    idx = idx + 1
                    continue 
                require _4292
                if _4292 * _3878 / _4292 == _3878:
                    mem[_4291] = _4292 * _3878
                    mem[_3652 + 192] = _4292 * _3878 / 10^18
                    require idx < mem[_282]
                    mem[(32 * idx) + _282 + 32] = _3652
                    idx = idx + 1
                    continue 
                _4396 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_4396 + idx + 68] = mem[_4313 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4396 + 91] = 0
                revert with memory
                  from mem[64]
                   len _4396 + -mem[64] + 100
            _4158 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4158] = 0
            _4177 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4177] = mem[_3652 + 160]
            _4221 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4221] = 0
            _4293 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4293] = 0
            _4314 = mem[64]
            mem[64] = mem[64] + 32
            _4315 = mem[_4177]
            _4337 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4337] = 23
            mem[_4337 + 32] = 'multiplication overflow'
            if not _4315:
                mem[_4314] = 0
                mem[_3652 + 192] = 0 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _3652
                idx = idx + 1
                continue 
            if not _3878:
                mem[_4314] = 0
                mem[_3652 + 192] = 0 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _3652
                idx = idx + 1
                continue 
            require _4315
            if _4315 * _3878 / _4315 == _3878:
                mem[_4314] = _4315 * _3878
                mem[_3652 + 192] = _4315 * _3878 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _3652
                idx = idx + 1
                continue 
            _4413 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_4413 + idx + 68] = mem[_4337 + idx + 32]
                idx = idx + 32
                continue 
            mem[_4413 + 91] = 0
            revert with memory
              from mem[64]
               len _4413 + -mem[64] + 100
        require _3838 * _3833 / 10^18
        if _3838 * _3833 / 10^18 * _3878 / _3838 * _3833 / 10^18 != _3878:
            _3926 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3926 + idx + 68] = mem[_3920 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3926 + 91] = 0
            revert with memory
              from mem[64]
               len _3926 + -mem[64] + 100
        mem[_3918] = _3838 * _3833 / 10^18 * _3878
        mem[_3652 + 96] = _3838 * _3833 / 10^18 * _3878 / 10^18
        _3969 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3969] = 0
        _3974 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3974] = _3893
        _3989 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3989] = 0
        _4012 = mem[64]
        mem[64] = mem[64] + 32
        mem[_4012] = 0
        _4021 = mem[64]
        mem[64] = mem[64] + 32
        _4028 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4028] = 23
        mem[_4028 + 32] = 'multiplication overflow'
        if not _3893:
            mem[_4021] = 0
            mem[_3652 + 128] = 0 / 10^18
            _4176 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4176] = 0
            _4198 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4198] = mem[_3652 + 160]
            _4241 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4241] = 0
            _4311 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4311] = 0
            _4332 = mem[64]
            mem[64] = mem[64] + 32
            _4333 = mem[_4198]
            _4346 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4346] = 23
            mem[_4346 + 32] = 'multiplication overflow'
            if not _4333:
                mem[_4332] = 0
                mem[_3652 + 192] = 0 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _3652
                idx = idx + 1
                continue 
            if not _3878:
                mem[_4332] = 0
                mem[_3652 + 192] = 0 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _3652
                idx = idx + 1
                continue 
            require _4333
            if _4333 * _3878 / _4333 == _3878:
                mem[_4332] = _4333 * _3878
                mem[_3652 + 192] = _4333 * _3878 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _3652
                idx = idx + 1
                continue 
            _4436 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_4436 + idx + 68] = mem[_4346 + idx + 32]
                idx = idx + 32
                continue 
            mem[_4436 + 91] = 0
            revert with memory
              from mem[64]
               len _4436 + -mem[64] + 100
        if not _3838 * _3833 / 10^18 * _3878 / 10^18:
            mem[_4021] = 0
            mem[_3652 + 128] = 0 / 10^18
            _4200 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4200] = 0
            _4217 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4217] = mem[_3652 + 160]
            _4267 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4267] = 0
            _4334 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4334] = 0
            _4347 = mem[64]
            mem[64] = mem[64] + 32
            _4348 = mem[_4217]
            _4360 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4360] = 23
            mem[_4360 + 32] = 'multiplication overflow'
            if not _4348:
                mem[_4347] = 0
                mem[_3652 + 192] = 0 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _3652
                idx = idx + 1
                continue 
            if not _3878:
                mem[_4347] = 0
                mem[_3652 + 192] = 0 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _3652
                idx = idx + 1
                continue 
            require _4348
            if _4348 * _3878 / _4348 == _3878:
                mem[_4347] = _4348 * _3878
                mem[_3652 + 192] = _4348 * _3878 / 10^18
                require idx < mem[_282]
                mem[(32 * idx) + _282 + 32] = _3652
                idx = idx + 1
                continue 
            _4455 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_4455 + idx + 68] = mem[_4360 + idx + 32]
                idx = idx + 32
                continue 
            mem[_4455 + 91] = 0
            revert with memory
              from mem[64]
               len _4455 + -mem[64] + 100
        require _3893
        if _3893 * _3838 * _3833 / 10^18 * _3878 / 10^18 / _3893 != _3838 * _3833 / 10^18 * _3878 / 10^18:
            _4078 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_4078 + idx + 68] = mem[_4028 + idx + 32]
                idx = idx + 32
                continue 
            mem[_4078 + 91] = 0
            revert with memory
              from mem[64]
               len _4078 + -mem[64] + 100
        mem[_4021] = _3893 * _3838 * _3833 / 10^18 * _3878 / 10^18
        mem[_3652 + 128] = _3893 * _3838 * _3833 / 10^18 * _3878 / 10^18 / 10^18
        _4242 = mem[64]
        mem[64] = mem[64] + 32
        mem[_4242] = 0
        _4265 = mem[64]
        mem[64] = mem[64] + 32
        mem[_4265] = mem[_3652 + 160]
        _4312 = mem[64]
        mem[64] = mem[64] + 32
        mem[_4312] = 0
        _4358 = mem[64]
        mem[64] = mem[64] + 32
        mem[_4358] = 0
        _4368 = mem[64]
        mem[64] = mem[64] + 32
        _4369 = mem[_4265]
        _4383 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4383] = 23
        mem[_4383 + 32] = 'multiplication overflow'
        if not _4369:
            mem[_4368] = 0
            mem[_3652 + 192] = 0 / 10^18
            require idx < mem[_282]
            mem[(32 * idx) + _282 + 32] = _3652
            idx = idx + 1
            continue 
        if not _3878:
            mem[_4368] = 0
            mem[_3652 + 192] = 0 / 10^18
            require idx < mem[_282]
            mem[(32 * idx) + _282 + 32] = _3652
            idx = idx + 1
            continue 
        require _4369
        if _4369 * _3878 / _4369 == _3878:
            mem[_4368] = _4369 * _3878
            mem[_3652 + 192] = _4369 * _3878 / 10^18
            require idx < mem[_282]
            mem[(32 * idx) + _282 + 32] = _3652
            idx = idx + 1
            continue 
        _4507 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 23
        idx = 0
        while idx < 23:
            mem[_4507 + idx + 68] = mem[_4383 + idx + 32]
            idx = idx + 32
            continue 
        mem[_4507 + 91] = 0
        revert with memory
          from mem[64]
           len _4507 + -mem[64] + 100
    _4002 = mem[_282]
    idx = 0
    while idx < _4002:
        _4009 = mem[384]
        require idx < mem[_282]
        _4020 = mem[mem[(32 * idx) + _282 + 32] + 128]
        _4026 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4026] = 17
        mem[_4026 + 32] = 'addition overflow'
        if _4009 + _4020 < _4009:
            _4033 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 17
            idx = 0
            while idx < 17:
                mem[_4033 + idx + 68] = mem[_4026 + idx + 32]
                _4002 = mem[_282]
                idx = idx + 32
                continue 
            mem[_4033 + 85] = 0
            revert with memory
              from mem[64]
               len _4033 + -mem[64] + 100
        mem[384] = _4009 + _4020
        _4044 = mem[416]
        require idx < mem[_282]
        _4060 = mem[mem[(32 * idx) + _282 + 32] + 192]
        _4071 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4071] = 17
        mem[_4071 + 32] = 'addition overflow'
        if _4044 + _4060 >= _4044:
            mem[416] = _4044 + _4060
            _4002 = mem[_282]
            idx = idx + 1
            continue 
        _4094 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 17
        idx = 0
        while idx < 17:
            mem[_4094 + idx + 68] = mem[_4071 + idx + 32]
            _4002 = mem[_282]
            idx = idx + 32
            continue 
        mem[_4094 + 85] = 0
        revert with memory
          from mem[64]
           len _4094 + -mem[64] + 100
    _4018 = mem[64]
    mem[64] = mem[64] + 32
    mem[_4018] = 0
    _4023 = mem[64]
    mem[64] = mem[64] + 32
    mem[_4023] = mem[416]
    if not mem[384]:
        mem[448] = 0
        mem[mem[64]] = 32
        _4057 = mem[288]
        mem[mem[64] + 32] = 192
        _4082 = mem[_4057]
        mem[mem[64] + 224] = mem[_4057]
        idx = 0
        s = _4057 + 32
        t = mem[64] + 256
        while idx < _4082:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 64] = mem[320]
        mem[mem[64] + 96] = mem[352]
        mem[mem[64] + 128] = mem[384]
        mem[mem[64] + 160] = mem[416]
        mem[mem[64] + 192] = mem[448]
        return 32, 192, mem[mem[64] + 64 len (32 * _4082) + 192]
    if mem[416] <= 0:
        mem[448] = 100
        mem[mem[64]] = 32
        _4083 = mem[288]
        mem[mem[64] + 32] = 192
        _4107 = mem[_4083]
        mem[mem[64] + 224] = mem[_4083]
        idx = 0
        s = _4083 + 32
        t = mem[64] + 256
        while idx < _4107:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 64] = mem[320]
        mem[mem[64] + 96] = mem[352]
        mem[mem[64] + 128] = mem[384]
        mem[mem[64] + 160] = mem[416]
        mem[mem[64] + 192] = mem[448]
        return 32, 192, mem[mem[64] + 64 len (32 * _4107) + 192]
    _4032 = mem[384]
    _4043 = mem[64]
    mem[64] = mem[64] + 64
    mem[_4043] = 23
    mem[_4043 + 32] = 'multiplication overflow'
    if not _4032:
        _4124 = mem[_4023]
        _4145 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4145] = 14
        mem[_4145 + 32] = 'divide by zero'
        if _4124 <= 0:
            revert with 0, 'divide by zero', 0
        require _4124
        mem[448] = 0 / _4124
        mem[mem[64]] = 32
        _4364 = mem[288]
        mem[mem[64] + 32] = 192
        _4386 = mem[_4364]
        mem[mem[64] + 224] = mem[_4364]
        idx = 0
        s = _4364 + 32
        t = mem[64] + 256
        while idx < _4386:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 64] = mem[320]
        mem[mem[64] + 96] = mem[352]
        mem[mem[64] + 128] = mem[384]
        mem[mem[64] + 160] = mem[416]
        mem[mem[64] + 192] = mem[448]
        return 32, 192, mem[mem[64] + 64 len (32 * _4386) + 192]
    require _4032
    if 10^18 * _4032 / _4032 != 10^18:
        var129001 = 32
        revert with 0, 'multiplication overflow', 0
    _4185 = mem[_4023]
    _4210 = mem[64]
    mem[64] = mem[64] + 64
    mem[_4210] = 14
    mem[_4210 + 32] = 'divide by zero'
    if _4185 <= 0:
        revert with 0, 'divide by zero', 0
    require _4185
    mem[448] = 10^18 * _4032 / _4185
    mem[mem[64]] = 32
    _4403 = mem[288]
    mem[mem[64] + 32] = 192
    _4444 = mem[_4403]
    mem[mem[64] + 224] = mem[_4403]
    idx = 0
    s = _4403 + 32
    t = mem[64] + 256
    while idx < _4444:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 64] = mem[320]
    mem[mem[64] + 96] = mem[352]
    mem[mem[64] + 128] = mem[384]
    mem[mem[64] + 160] = mem[416]
    mem[mem[64] + 192] = mem[448]
    return 32, 192, mem[mem[64] + 64 len (32 * _4444) + 192]
}



}
