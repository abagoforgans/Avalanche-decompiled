contract main {




// =====================  Runtime code  =====================


#
#  - getAccountLimits(address arg1, address arg2)
#
function _fallback() payable {
    revert
}

function sub_f5817aea(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    staticcall address(arg1).checkMembership(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg3), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
        staticcall address(arg1).oracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        staticcall address(arg1).markets(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[95 len 1]
        if not ext_call.return_data[64]:
            return address(arg2), 
                   ext_call.return_data[32],
                   0,
                   0,
                   0,
                   ext_call.return_data[64],
                   0,
                   0,
                   ext_call.return_data[0],
                   bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            return address(arg2), 
                   ext_call.return_data[32],
                   0,
                   0,
                   0,
                   ext_call.return_data[64],
                   0,
                   0,
                   ext_call.return_data[0],
                   bool(ext_call.return_data[0])
        if ext_call.return_data[64] and ext_call.return_data[0] > -1 / ext_call.return_data[64]:
            revert with 'NH{q', 17
        if not ext_call.return_data[64]:
            revert with 'NH{q', 18
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
               ext_call.return_data[0],
               bool(ext_call.return_data[0])
    if not ext_call.return_data[32]:
        staticcall address(arg1).oracle() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        staticcall address(arg1).markets(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[95 len 1]
        if not ext_call.return_data[64]:
            return address(arg2), 
                   ext_call.return_data[32],
                   0,
                   0,
                   0,
                   ext_call.return_data[64],
                   0,
                   0,
                   ext_call.return_data[0],
                   bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            return address(arg2), 
                   ext_call.return_data[32],
                   0,
                   0,
                   0,
                   ext_call.return_data[64],
                   0,
                   0,
                   ext_call.return_data[0],
                   bool(ext_call.return_data[0])
        if ext_call.return_data[64] and ext_call.return_data[0] > -1 / ext_call.return_data[64]:
            revert with 'NH{q', 17
        if not ext_call.return_data[64]:
            revert with 'NH{q', 18
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
               ext_call.return_data[0],
               bool(ext_call.return_data[0])
    if ext_call.return_data[96] and ext_call.return_data[32] > -1 / ext_call.return_data[96]:
        revert with 'NH{q', 17
    if not ext_call.return_data[96]:
        revert with 'NH{q', 18
    if ext_call.return_data[96] * ext_call.return_data[32] / ext_call.return_data[96] != ext_call.return_data[32]:
        revert with 0, 'multiplication overflow', 0
    staticcall address(arg1).oracle() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getUnderlyingPrice(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    staticcall address(arg1).markets(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
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
                   ext_call.return_data[0],
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
                   ext_call.return_data[0],
                   bool(ext_call.return_data[0])
        if ext_call.return_data[64] and ext_call.return_data[0] > -1 / ext_call.return_data[64]:
            revert with 'NH{q', 17
        if not ext_call.return_data[64]:
            revert with 'NH{q', 18
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
               ext_call.return_data[0],
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
                   ext_call.return_data[0],
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
                   ext_call.return_data[0],
                   bool(ext_call.return_data[0])
        if ext_call.return_data[64] and ext_call.return_data[0] > -1 / ext_call.return_data[64]:
            revert with 'NH{q', 17
        if not ext_call.return_data[64]:
            revert with 'NH{q', 18
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
               ext_call.return_data[0],
               bool(ext_call.return_data[0])
    if ext_call.return_data[96] * ext_call.return_data[32] / 10^18 and ext_call.return_data[0] > -1 / ext_call.return_data[96] * ext_call.return_data[32] / 10^18:
        revert with 'NH{q', 17
    if not ext_call.return_data[96] * ext_call.return_data[32] / 10^18:
        revert with 'NH{q', 18
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
                   ext_call.return_data[0],
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
                   ext_call.return_data[0],
                   bool(ext_call.return_data[0])
        if ext_call.return_data[64] and ext_call.return_data[0] > -1 / ext_call.return_data[64]:
            revert with 'NH{q', 17
        if not ext_call.return_data[64]:
            revert with 'NH{q', 18
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
               ext_call.return_data[0],
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
                   ext_call.return_data[0],
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
                   ext_call.return_data[0],
                   bool(ext_call.return_data[0])
        if ext_call.return_data[64] and ext_call.return_data[0] > -1 / ext_call.return_data[64]:
            revert with 'NH{q', 17
        if not ext_call.return_data[64]:
            revert with 'NH{q', 18
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
               ext_call.return_data[0],
               bool(ext_call.return_data[0])
    if ext_call.return_data[32] and ext_call.return_data[96] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] / 10^18 > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if not ext_call.return_data[32]:
        revert with 'NH{q', 18
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
               ext_call.return_data[0],
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
               ext_call.return_data[0],
               bool(ext_call.return_data[0])
    if ext_call.return_data[64] and ext_call.return_data[0] > -1 / ext_call.return_data[64]:
        revert with 'NH{q', 17
    if not ext_call.return_data[64]:
        revert with 'NH{q', 18
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
           ext_call.return_data[0],
           bool(ext_call.return_data[0])
}

function sub_e428d27d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[96] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg2)
    staticcall address(arg1).getAssetsIn(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg2) << 64
    require mem[96 len 4], address(arg2) << 64 <= test266151307()
    require mem[96 len 4], address(arg2) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg2) << 64 + 96]
    if mem[mem[96 len 4], address(arg2) << 64 + 96] > test266151307():
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg2) << 64 + 96]) + 97 > test266151307() or floor32(mem[mem[96 len 4], address(arg2) << 64 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], address(arg2) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = _4 + 128
    s = ceil32(return_data.size) + 128
    while idx < _4 + (32 * _5) + 128:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if _5 > test266151307():
        revert with 'NH{q', 65
    _136 = mem[64]
    mem[mem[64]] = _5
    mem[64] = mem[64] + (32 * _5) + 32
    if not _5:
        idx = 0
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _1068 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _1070 = mem[64]
            mem[64] = mem[64] + 320
            mem[_1070] = 0
            mem[_1070 + 32] = 0
            mem[_1070 + 64] = 0
            mem[_1070 + 96] = 0
            mem[_1070 + 128] = 0
            mem[_1070 + 160] = 0
            mem[_1070 + 192] = 0
            mem[_1070 + 224] = 0
            mem[_1070 + 256] = 0
            mem[_1070 + 288] = 0
            _1073 = mem[64]
            mem[64] = mem[64] + 320
            mem[_1073 + 32] = 0
            mem[_1073 + 64] = 0
            mem[_1073 + 96] = 0
            mem[_1073 + 128] = 0
            mem[_1073 + 160] = 0
            mem[_1073 + 192] = 0
            mem[_1073 + 224] = 0
            mem[_1073 + 256] = 0
            mem[_1073 + 288] = 0
            mem[_1073] = address(_1068)
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = address(_1068)
            staticcall address(arg1).checkMembership(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), address(_1068)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1093 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1093] == bool(mem[_1093])
            mem[_1073 + 288] = bool(mem[_1093])
            staticcall address(_1068).getAccountSnapshot(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1110 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_1110] == mem[_1110]
            _1119 = mem[_1110 + 32]
            require mem[_1110 + 32] == mem[_1110 + 32]
            require mem[_1110 + 64] == mem[_1110 + 64]
            _1123 = mem[_1110 + 96]
            require mem[_1110 + 96] == mem[_1110 + 96]
            mem[_1073 + 160] = mem[_1110 + 64]
            mem[_1073 + 32] = _1119
            _1125 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1125] = _1123
            _1127 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1127] = 0
            _1128 = mem[64]
            mem[64] = mem[64] + 32
            _1132 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1132] = 23
            mem[_1132 + 32] = 'multiplication overflow'
            if not _1123:
                mem[_1128] = 0
                mem[_1073 + 64] = 0 / 10^18
                staticcall address(arg1).oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1143 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1148 = mem[_1143]
                require mem[_1143] == mem[_1143 + 12 len 20]
                mem[mem[64] + 4] = address(_1068)
                staticcall address(_1148).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_1068)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1183 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1186 = mem[_1183]
                require mem[_1183] == mem[_1183]
                mem[_1073 + 256] = mem[_1183]
                staticcall address(arg1).markets(address arg1) with:
                        gas gas_remaining wei
                       args address(_1068)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1202 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1202] == bool(mem[_1202])
                _1218 = mem[_1202 + 32]
                require mem[_1202 + 32] == mem[_1202 + 32]
                require mem[_1202 + 64] == mem[_1202 + 95 len 1]
                _1233 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1233] = 0
                _1238 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1238] = 0
                _1239 = mem[64]
                mem[64] = mem[64] + 32
                _1244 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1244] = 23
                mem[_1244 + 32] = 'multiplication overflow'
                mem[_1239] = 0
                mem[_1073 + 96] = 0 / 10^18
                _1277 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1277] = _1218
                _1293 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1293] = 0
                _1298 = mem[64]
                mem[64] = mem[64] + 32
                _1306 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1306] = 23
                mem[_1306 + 32] = 'multiplication overflow'
                mem[_1298] = 0
                mem[_1073 + 128] = 0 / 10^18
                if not _1218:
                    _1421 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1421] = mem[_1073 + 160]
                    _1452 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1452] = 0
                    _1465 = mem[64]
                    mem[64] = mem[64] + 32
                    _1466 = mem[_1421]
                    _1476 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1476] = 23
                    mem[_1476 + 32] = 'multiplication overflow'
                    if not _1466:
                        mem[_1465] = 0
                        mem[_1073 + 192] = 0 / 10^18
                        if idx >= mem[_136]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _136 + 32] = _1073
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if not _1186:
                        mem[_1465] = 0
                        mem[_1073 + 192] = 0 / 10^18
                        if idx >= mem[_136]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _136 + 32] = _1073
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if _1466 and _1186 > -1 / _1466:
                        revert with 'NH{q', 17
                    if not _1466:
                        revert with 'NH{q', 18
                    if _1466 * _1186 / _1466 == _1186:
                        mem[_1465] = _1466 * _1186
                        mem[_1073 + 192] = _1466 * _1186 / 10^18
                        if idx >= mem[_136]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _136 + 32] = _1073
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _1781 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 23
                    idx = 0
                    while idx < 23:
                        mem[_1781 + idx + 68] = mem[_1476 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1781 + 91] = 0
                    revert with memory
                      from mem[64]
                       len _1781 + -mem[64] + 100
                _1429 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1429] = mem[_1073 + 160]
                _1467 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1467] = 0
                _1478 = mem[64]
                mem[64] = mem[64] + 32
                _1479 = mem[_1429]
                _1495 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1495] = 23
                mem[_1495 + 32] = 'multiplication overflow'
                if not _1479:
                    mem[_1478] = 0
                    mem[_1073 + 192] = 0 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _1073
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1186:
                    mem[_1478] = 0
                    mem[_1073 + 192] = 0 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _1073
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _1479 and _1186 > -1 / _1479:
                    revert with 'NH{q', 17
                if not _1479:
                    revert with 'NH{q', 18
                if _1479 * _1186 / _1479 == _1186:
                    mem[_1478] = _1479 * _1186
                    mem[_1073 + 192] = _1479 * _1186 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _1073
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1802 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_1802 + idx + 68] = mem[_1495 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1802 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1802 + -mem[64] + 100
            if not _1119:
                mem[_1128] = 0
                mem[_1073 + 64] = 0 / 10^18
                staticcall address(arg1).oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1147 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1152 = mem[_1147]
                require mem[_1147] == mem[_1147 + 12 len 20]
                mem[mem[64] + 4] = address(_1068)
                staticcall address(_1152).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_1068)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1185 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1189 = mem[_1185]
                require mem[_1185] == mem[_1185]
                mem[_1073 + 256] = mem[_1185]
                staticcall address(arg1).markets(address arg1) with:
                        gas gas_remaining wei
                       args address(_1068)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1206 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1206] == bool(mem[_1206])
                _1219 = mem[_1206 + 32]
                require mem[_1206 + 32] == mem[_1206 + 32]
                require mem[_1206 + 64] == mem[_1206 + 95 len 1]
                _1235 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1235] = 0
                _1241 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1241] = 0
                _1245 = mem[64]
                mem[64] = mem[64] + 32
                _1249 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1249] = 23
                mem[_1249 + 32] = 'multiplication overflow'
                mem[_1245] = 0
                mem[_1073 + 96] = 0 / 10^18
                _1281 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1281] = _1219
                _1301 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1301] = 0
                _1310 = mem[64]
                mem[64] = mem[64] + 32
                _1318 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1318] = 23
                mem[_1318 + 32] = 'multiplication overflow'
                mem[_1310] = 0
                mem[_1073 + 128] = 0 / 10^18
                if not _1219:
                    _1434 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1434] = mem[_1073 + 160]
                    _1469 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1469] = 0
                    _1484 = mem[64]
                    mem[64] = mem[64] + 32
                    _1485 = mem[_1434]
                    _1500 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1500] = 23
                    mem[_1500 + 32] = 'multiplication overflow'
                    if not _1485:
                        mem[_1484] = 0
                        mem[_1073 + 192] = 0 / 10^18
                        if idx >= mem[_136]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _136 + 32] = _1073
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if not _1189:
                        mem[_1484] = 0
                        mem[_1073 + 192] = 0 / 10^18
                        if idx >= mem[_136]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _136 + 32] = _1073
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if _1485 and _1189 > -1 / _1485:
                        revert with 'NH{q', 17
                    if not _1485:
                        revert with 'NH{q', 18
                    if _1485 * _1189 / _1485 == _1189:
                        mem[_1484] = _1485 * _1189
                        mem[_1073 + 192] = _1485 * _1189 / 10^18
                        if idx >= mem[_136]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _136 + 32] = _1073
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _1807 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 23
                    idx = 0
                    while idx < 23:
                        mem[_1807 + idx + 68] = mem[_1500 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1807 + 91] = 0
                    revert with memory
                      from mem[64]
                       len _1807 + -mem[64] + 100
                _1442 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1442] = mem[_1073 + 160]
                _1486 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1486] = 0
                _1502 = mem[64]
                mem[64] = mem[64] + 32
                _1503 = mem[_1442]
                _1518 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1518] = 23
                mem[_1518 + 32] = 'multiplication overflow'
                if not _1503:
                    mem[_1502] = 0
                    mem[_1073 + 192] = 0 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _1073
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1189:
                    mem[_1502] = 0
                    mem[_1073 + 192] = 0 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _1073
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _1503 and _1189 > -1 / _1503:
                    revert with 'NH{q', 17
                if not _1503:
                    revert with 'NH{q', 18
                if _1503 * _1189 / _1503 == _1189:
                    mem[_1502] = _1503 * _1189
                    mem[_1073 + 192] = _1503 * _1189 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _1073
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1833 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_1833 + idx + 68] = mem[_1518 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1833 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1833 + -mem[64] + 100
            if _1123 and _1119 > -1 / _1123:
                revert with 'NH{q', 17
            if not _1123:
                revert with 'NH{q', 18
            if _1123 * _1119 / _1123 != _1119:
                _1146 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_1146 + idx + 68] = mem[_1132 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1146 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1146 + -mem[64] + 100
            mem[_1128] = _1123 * _1119
            mem[_1073 + 64] = _1123 * _1119 / 10^18
            staticcall address(arg1).oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1169 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1173 = mem[_1169]
            require mem[_1169] == mem[_1169 + 12 len 20]
            mem[mem[64] + 4] = address(_1068)
            staticcall address(_1173).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_1068)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1200 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1203 = mem[_1200]
            require mem[_1200] == mem[_1200]
            mem[_1073 + 256] = mem[_1200]
            staticcall address(arg1).markets(address arg1) with:
                    gas gas_remaining wei
                   args address(_1068)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1224 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1224] == bool(mem[_1224])
            _1237 = mem[_1224 + 32]
            require mem[_1224 + 32] == mem[_1224 + 32]
            require mem[_1224 + 64] == mem[_1224 + 95 len 1]
            _1265 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1265] = _1123 * _1119 / 10^18
            _1270 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1270] = 0
            _1272 = mem[64]
            mem[64] = mem[64] + 32
            _1276 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1276] = 23
            mem[_1276 + 32] = 'multiplication overflow'
            if not _1123 * _1119 / 10^18:
                mem[_1272] = 0
                mem[_1073 + 96] = 0 / 10^18
                _1373 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1373] = _1237
                _1392 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1392] = 0
                _1399 = mem[64]
                mem[64] = mem[64] + 32
                _1409 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1409] = 23
                mem[_1409 + 32] = 'multiplication overflow'
                mem[_1399] = 0
                mem[_1073 + 128] = 0 / 10^18
                if not _1237:
                    _1624 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1624] = mem[_1073 + 160]
                    _1670 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1670] = 0
                    _1689 = mem[64]
                    mem[64] = mem[64] + 32
                    _1690 = mem[_1624]
                    _1714 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1714] = 23
                    mem[_1714 + 32] = 'multiplication overflow'
                    if not _1690:
                        mem[_1689] = 0
                        mem[_1073 + 192] = 0 / 10^18
                        if idx >= mem[_136]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _136 + 32] = _1073
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if not _1203:
                        mem[_1689] = 0
                        mem[_1073 + 192] = 0 / 10^18
                        if idx >= mem[_136]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _136 + 32] = _1073
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if _1690 and _1203 > -1 / _1690:
                        revert with 'NH{q', 17
                    if not _1690:
                        revert with 'NH{q', 18
                    if _1690 * _1203 / _1690 == _1203:
                        mem[_1689] = _1690 * _1203
                        mem[_1073 + 192] = _1690 * _1203 / 10^18
                        if idx >= mem[_136]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _136 + 32] = _1073
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _2077 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 23
                    idx = 0
                    while idx < 23:
                        mem[_2077 + idx + 68] = mem[_1714 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2077 + 91] = 0
                    revert with memory
                      from mem[64]
                       len _2077 + -mem[64] + 100
                _1638 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1638] = mem[_1073 + 160]
                _1691 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1691] = 0
                _1716 = mem[64]
                mem[64] = mem[64] + 32
                _1717 = mem[_1638]
                _1743 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1743] = 23
                mem[_1743 + 32] = 'multiplication overflow'
                if not _1717:
                    mem[_1716] = 0
                    mem[_1073 + 192] = 0 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _1073
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1203:
                    mem[_1716] = 0
                    mem[_1073 + 192] = 0 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _1073
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _1717 and _1203 > -1 / _1717:
                    revert with 'NH{q', 17
                if not _1717:
                    revert with 'NH{q', 18
                if _1717 * _1203 / _1717 == _1203:
                    mem[_1716] = _1717 * _1203
                    mem[_1073 + 192] = _1717 * _1203 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _1073
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2103 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_2103 + idx + 68] = mem[_1743 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2103 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2103 + -mem[64] + 100
            if not _1203:
                mem[_1272] = 0
                mem[_1073 + 96] = 0 / 10^18
                _1378 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1378] = _1237
                _1401 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1401] = 0
                _1411 = mem[64]
                mem[64] = mem[64] + 32
                _1423 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1423] = 23
                mem[_1423 + 32] = 'multiplication overflow'
                mem[_1411] = 0
                mem[_1073 + 128] = 0 / 10^18
                if not _1237:
                    _1640 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1640] = mem[_1073 + 160]
                    _1692 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1692] = 0
                    _1718 = mem[64]
                    mem[64] = mem[64] + 32
                    _1719 = mem[_1640]
                    _1744 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1744] = 23
                    mem[_1744 + 32] = 'multiplication overflow'
                    if not _1719:
                        mem[_1718] = 0
                        mem[_1073 + 192] = 0 / 10^18
                        if idx >= mem[_136]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _136 + 32] = _1073
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if not _1203:
                        mem[_1718] = 0
                        mem[_1073 + 192] = 0 / 10^18
                        if idx >= mem[_136]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _136 + 32] = _1073
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if _1719 and _1203 > -1 / _1719:
                        revert with 'NH{q', 17
                    if not _1719:
                        revert with 'NH{q', 18
                    if _1719 * _1203 / _1719 == _1203:
                        mem[_1718] = _1719 * _1203
                        mem[_1073 + 192] = _1719 * _1203 / 10^18
                        if idx >= mem[_136]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _136 + 32] = _1073
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _2105 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 23
                    idx = 0
                    while idx < 23:
                        mem[_2105 + idx + 68] = mem[_1744 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2105 + 91] = 0
                    revert with memory
                      from mem[64]
                       len _2105 + -mem[64] + 100
                _1654 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1654] = mem[_1073 + 160]
                _1720 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1720] = 0
                _1746 = mem[64]
                mem[64] = mem[64] + 32
                _1747 = mem[_1654]
                _1770 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1770] = 23
                mem[_1770 + 32] = 'multiplication overflow'
                if not _1747:
                    mem[_1746] = 0
                    mem[_1073 + 192] = 0 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _1073
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1203:
                    mem[_1746] = 0
                    mem[_1073 + 192] = 0 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _1073
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _1747 and _1203 > -1 / _1747:
                    revert with 'NH{q', 17
                if not _1747:
                    revert with 'NH{q', 18
                if _1747 * _1203 / _1747 == _1203:
                    mem[_1746] = _1747 * _1203
                    mem[_1073 + 192] = _1747 * _1203 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _1073
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2130 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_2130 + idx + 68] = mem[_1770 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2130 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2130 + -mem[64] + 100
            if _1123 * _1119 / 10^18 and _1203 > -1 / _1123 * _1119 / 10^18:
                revert with 'NH{q', 17
            if not _1123 * _1119 / 10^18:
                revert with 'NH{q', 18
            if _1123 * _1119 / 10^18 * _1203 / _1123 * _1119 / 10^18 != _1203:
                _1385 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_1385 + idx + 68] = mem[_1276 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1385 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1385 + -mem[64] + 100
            mem[_1272] = _1123 * _1119 / 10^18 * _1203
            mem[_1073 + 96] = _1123 * _1119 / 10^18 * _1203 / 10^18
            _1558 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1558] = _1237
            _1596 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1596] = 0
            _1604 = mem[64]
            mem[64] = mem[64] + 32
            _1612 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1612] = 23
            mem[_1612 + 32] = 'multiplication overflow'
            if not _1237:
                mem[_1604] = 0
                mem[_1073 + 128] = 0 / 10^18
                _1934 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1934] = mem[_1073 + 160]
                _1985 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1985] = 0
                _2006 = mem[64]
                mem[64] = mem[64] + 32
                _2007 = mem[_1934]
                _2024 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2024] = 23
                mem[_2024 + 32] = 'multiplication overflow'
                if not _2007:
                    mem[_2006] = 0
                    mem[_1073 + 192] = 0 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _1073
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1203:
                    mem[_2006] = 0
                    mem[_1073 + 192] = 0 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _1073
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _2007 and _1203 > -1 / _2007:
                    revert with 'NH{q', 17
                if not _2007:
                    revert with 'NH{q', 18
                if _2007 * _1203 / _2007 == _1203:
                    mem[_2006] = _2007 * _1203
                    mem[_1073 + 192] = _2007 * _1203 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _1073
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2338 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_2338 + idx + 68] = mem[_2024 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2338 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2338 + -mem[64] + 100
            if not _1123 * _1119 / 10^18 * _1203 / 10^18:
                mem[_1604] = 0
                mem[_1073 + 128] = 0 / 10^18
                _1948 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1948] = mem[_1073 + 160]
                _2008 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2008] = 0
                _2026 = mem[64]
                mem[64] = mem[64] + 32
                _2027 = mem[_1948]
                _2041 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2041] = 23
                mem[_2041 + 32] = 'multiplication overflow'
                if not _2027:
                    mem[_2026] = 0
                    mem[_1073 + 192] = 0 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _1073
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1203:
                    mem[_2026] = 0
                    mem[_1073 + 192] = 0 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _1073
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _2027 and _1203 > -1 / _2027:
                    revert with 'NH{q', 17
                if not _2027:
                    revert with 'NH{q', 18
                if _2027 * _1203 / _2027 == _1203:
                    mem[_2026] = _2027 * _1203
                    mem[_1073 + 192] = _2027 * _1203 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _1073
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2354 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_2354 + idx + 68] = mem[_2041 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2354 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2354 + -mem[64] + 100
            if _1237 and _1123 * _1119 / 10^18 * _1203 / 10^18 > -1 / _1237:
                revert with 'NH{q', 17
            if not _1237:
                revert with 'NH{q', 18
            if _1237 * _1123 * _1119 / 10^18 * _1203 / 10^18 / _1237 != _1123 * _1119 / 10^18 * _1203 / 10^18:
                _1965 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_1965 + idx + 68] = mem[_1612 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1965 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1965 + -mem[64] + 100
            mem[_1604] = _1237 * _1123 * _1119 / 10^18 * _1203 / 10^18
            mem[_1073 + 128] = _1237 * _1123 * _1119 / 10^18 * _1203 / 10^18 / 10^18
            _2246 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2246] = mem[_1073 + 160]
            _2286 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2286] = 0
            _2296 = mem[64]
            mem[64] = mem[64] + 32
            _2297 = mem[_2246]
            _2300 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2300] = 23
            mem[_2300 + 32] = 'multiplication overflow'
            if not _2297:
                mem[_2296] = 0
                mem[_1073 + 192] = 0 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _1073
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _1203:
                mem[_2296] = 0
                mem[_1073 + 192] = 0 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _1073
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _2297 and _1203 > -1 / _2297:
                revert with 'NH{q', 17
            if not _2297:
                revert with 'NH{q', 18
            if _2297 * _1203 / _2297 == _1203:
                mem[_2296] = _2297 * _1203
                mem[_1073 + 192] = _2297 * _1203 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _1073
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _2477 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_2477 + idx + 68] = mem[_2300 + idx + 32]
                idx = idx + 32
                continue 
            mem[_2477 + 91] = 0
            revert with memory
              from mem[64]
               len _2477 + -mem[64] + 100
        _1069 = mem[64]
        mem[mem[64]] = 32
        _1072 = mem[_136]
        mem[mem[64] + 32] = mem[_136]
        idx = 0
        s = _136 + 32
        t = mem[64] + 64
        while idx < _1072:
            _1284 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1284 + 32]
            mem[t + 64] = mem[_1284 + 64]
            mem[t + 96] = mem[_1284 + 96]
            mem[t + 128] = mem[_1284 + 128]
            mem[t + 160] = mem[_1284 + 160]
            mem[t + 192] = mem[_1284 + 192]
            mem[t + 224] = mem[_1284 + 224]
            mem[t + 256] = mem[_1284 + 256]
            mem[t + 288] = bool(mem[_1284 + 288])
            idx = idx + 1
            s = s + 32
            t = t + 320
            continue 
        return memory
          from mem[64]
           len _1069 + (320 * _1072) + -mem[64] + 64
    mem[64] = _136 + (32 * _5) + 352
    mem[_136 + (32 * _5) + 32] = 0
    mem[_136 + (32 * _5) + 64] = 0
    mem[_136 + (32 * _5) + 96] = 0
    mem[_136 + (32 * _5) + 128] = 0
    mem[_136 + (32 * _5) + 160] = 0
    mem[_136 + (32 * _5) + 192] = 0
    mem[_136 + (32 * _5) + 224] = 0
    mem[_136 + (32 * _5) + 256] = 0
    mem[_136 + (32 * _5) + 288] = 0
    mem[_136 + (32 * _5) + 320] = 0
    mem[var66001] = _136 + (32 * _5) + 32
    s = var66001
    idx = var66002
    while idx - 1:
        mem[64] = mem[64] + 320
        mem[_136 + (32 * _5) + 32] = 0
        mem[_136 + (32 * _5) + 64] = 0
        mem[_136 + (32 * _5) + 96] = 0
        mem[_136 + (32 * _5) + 128] = 0
        mem[_136 + (32 * _5) + 160] = 0
        mem[_136 + (32 * _5) + 192] = 0
        mem[_136 + (32 * _5) + 224] = 0
        mem[_136 + (32 * _5) + 256] = 0
        mem[_136 + (32 * _5) + 288] = 0
        mem[_136 + (32 * _5) + 320] = 0
        mem[s + 32] = _136 + (32 * _5) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _2561 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        _2563 = mem[64]
        mem[64] = mem[64] + 320
        mem[_2563] = 0
        mem[_2563 + 32] = 0
        mem[_2563 + 64] = 0
        mem[_2563 + 96] = 0
        mem[_2563 + 128] = 0
        mem[_2563 + 160] = 0
        mem[_2563 + 192] = 0
        mem[_2563 + 224] = 0
        mem[_2563 + 256] = 0
        mem[_2563 + 288] = 0
        _2565 = mem[64]
        mem[64] = mem[64] + 320
        mem[_2565 + 32] = 0
        mem[_2565 + 64] = 0
        mem[_2565 + 96] = 0
        mem[_2565 + 128] = 0
        mem[_2565 + 160] = 0
        mem[_2565 + 192] = 0
        mem[_2565 + 224] = 0
        mem[_2565 + 256] = 0
        mem[_2565 + 288] = 0
        mem[_2565] = address(_2561)
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = address(_2561)
        staticcall address(arg1).checkMembership(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), address(_2561)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2652 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2652] == bool(mem[_2652])
        mem[_2565 + 288] = bool(mem[_2652])
        staticcall address(_2561).getAccountSnapshot(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2661 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_2661] == mem[_2661]
        _2664 = mem[_2661 + 32]
        require mem[_2661 + 32] == mem[_2661 + 32]
        require mem[_2661 + 64] == mem[_2661 + 64]
        _2666 = mem[_2661 + 96]
        require mem[_2661 + 96] == mem[_2661 + 96]
        mem[_2565 + 160] = mem[_2661 + 64]
        mem[_2565 + 32] = _2664
        _2667 = mem[64]
        mem[64] = mem[64] + 32
        mem[_2667] = _2666
        _2669 = mem[64]
        mem[64] = mem[64] + 32
        mem[_2669] = 0
        _2670 = mem[64]
        mem[64] = mem[64] + 32
        _2672 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2672] = 23
        mem[_2672 + 32] = 'multiplication overflow'
        if not _2666:
            mem[_2670] = 0
            mem[_2565 + 64] = 0 / 10^18
            staticcall address(arg1).oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2677 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2682 = mem[_2677]
            require mem[_2677] == mem[_2677 + 12 len 20]
            mem[mem[64] + 4] = address(_2561)
            staticcall address(_2682).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_2561)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2697 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2700 = mem[_2697]
            require mem[_2697] == mem[_2697]
            mem[_2565 + 256] = mem[_2697]
            staticcall address(arg1).markets(address arg1) with:
                    gas gas_remaining wei
                   args address(_2561)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2707 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_2707] == bool(mem[_2707])
            _2714 = mem[_2707 + 32]
            require mem[_2707 + 32] == mem[_2707 + 32]
            require mem[_2707 + 64] == mem[_2707 + 95 len 1]
            _2721 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2721] = 0
            _2726 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2726] = 0
            _2727 = mem[64]
            mem[64] = mem[64] + 32
            _2730 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2730] = 23
            mem[_2730 + 32] = 'multiplication overflow'
            mem[_2727] = 0
            mem[_2565 + 96] = 0 / 10^18
            _2745 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2745] = _2714
            _2756 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2756] = 0
            _2760 = mem[64]
            mem[64] = mem[64] + 32
            _2764 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2764] = 23
            mem[_2764 + 32] = 'multiplication overflow'
            mem[_2760] = 0
            mem[_2565 + 128] = 0 / 10^18
            if not _2714:
                _2825 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2825] = mem[_2565 + 160]
                _2843 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2843] = 0
                _2849 = mem[64]
                mem[64] = mem[64] + 32
                _2850 = mem[_2825]
                _2855 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2855] = 23
                mem[_2855 + 32] = 'multiplication overflow'
                if not _2850:
                    mem[_2849] = 0
                    mem[_2565 + 192] = 0 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _2565
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _2700:
                    mem[_2849] = 0
                    mem[_2565 + 192] = 0 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _2565
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _2850 and _2700 > -1 / _2850:
                    revert with 'NH{q', 17
                if not _2850:
                    revert with 'NH{q', 18
                if _2850 * _2700 / _2850 == _2700:
                    mem[_2849] = _2850 * _2700
                    mem[_2565 + 192] = _2850 * _2700 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _2565
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _3022 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_3022 + idx + 68] = mem[_2855 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3022 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3022 + -mem[64] + 100
            _2829 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2829] = mem[_2565 + 160]
            _2851 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2851] = 0
            _2857 = mem[64]
            mem[64] = mem[64] + 32
            _2858 = mem[_2829]
            _2867 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2867] = 23
            mem[_2867 + 32] = 'multiplication overflow'
            if not _2858:
                mem[_2857] = 0
                mem[_2565 + 192] = 0 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _2565
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _2700:
                mem[_2857] = 0
                mem[_2565 + 192] = 0 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _2565
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _2858 and _2700 > -1 / _2858:
                revert with 'NH{q', 17
            if not _2858:
                revert with 'NH{q', 18
            if _2858 * _2700 / _2858 == _2700:
                mem[_2857] = _2858 * _2700
                mem[_2565 + 192] = _2858 * _2700 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _2565
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3030 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3030 + idx + 68] = mem[_2867 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3030 + 91] = 0
            revert with memory
              from mem[64]
               len _3030 + -mem[64] + 100
        if not _2664:
            mem[_2670] = 0
            mem[_2565 + 64] = 0 / 10^18
            staticcall address(arg1).oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2681 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2684 = mem[_2681]
            require mem[_2681] == mem[_2681 + 12 len 20]
            mem[mem[64] + 4] = address(_2561)
            staticcall address(_2684).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_2561)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2699 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2701 = mem[_2699]
            require mem[_2699] == mem[_2699]
            mem[_2565 + 256] = mem[_2699]
            staticcall address(arg1).markets(address arg1) with:
                    gas gas_remaining wei
                   args address(_2561)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2710 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_2710] == bool(mem[_2710])
            _2715 = mem[_2710 + 32]
            require mem[_2710 + 32] == mem[_2710 + 32]
            require mem[_2710 + 64] == mem[_2710 + 95 len 1]
            _2723 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2723] = 0
            _2729 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2729] = 0
            _2731 = mem[64]
            mem[64] = mem[64] + 32
            _2733 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2733] = 23
            mem[_2733 + 32] = 'multiplication overflow'
            mem[_2731] = 0
            mem[_2565 + 96] = 0 / 10^18
            _2749 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2749] = _2715
            _2763 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2763] = 0
            _2768 = mem[64]
            mem[64] = mem[64] + 32
            _2772 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2772] = 23
            mem[_2772 + 32] = 'multiplication overflow'
            mem[_2768] = 0
            mem[_2565 + 128] = 0 / 10^18
            if not _2715:
                _2834 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2834] = mem[_2565 + 160]
                _2853 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2853] = 0
                _2863 = mem[64]
                mem[64] = mem[64] + 32
                _2864 = mem[_2834]
                _2872 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2872] = 23
                mem[_2872 + 32] = 'multiplication overflow'
                if not _2864:
                    mem[_2863] = 0
                    mem[_2565 + 192] = 0 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _2565
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _2701:
                    mem[_2863] = 0
                    mem[_2565 + 192] = 0 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _2565
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _2864 and _2701 > -1 / _2864:
                    revert with 'NH{q', 17
                if not _2864:
                    revert with 'NH{q', 18
                if _2864 * _2701 / _2864 == _2701:
                    mem[_2863] = _2864 * _2701
                    mem[_2565 + 192] = _2864 * _2701 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _2565
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _3035 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_3035 + idx + 68] = mem[_2872 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3035 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3035 + -mem[64] + 100
            _2839 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2839] = mem[_2565 + 160]
            _2865 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2865] = 0
            _2874 = mem[64]
            mem[64] = mem[64] + 32
            _2875 = mem[_2839]
            _2883 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2883] = 23
            mem[_2883 + 32] = 'multiplication overflow'
            if not _2875:
                mem[_2874] = 0
                mem[_2565 + 192] = 0 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _2565
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _2701:
                mem[_2874] = 0
                mem[_2565 + 192] = 0 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _2565
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _2875 and _2701 > -1 / _2875:
                revert with 'NH{q', 17
            if not _2875:
                revert with 'NH{q', 18
            if _2875 * _2701 / _2875 == _2701:
                mem[_2874] = _2875 * _2701
                mem[_2565 + 192] = _2875 * _2701 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _2565
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3041 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3041 + idx + 68] = mem[_2883 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3041 + 91] = 0
            revert with memory
              from mem[64]
               len _3041 + -mem[64] + 100
        if _2666 and _2664 > -1 / _2666:
            revert with 'NH{q', 17
        if not _2666:
            revert with 'NH{q', 18
        if _2666 * _2664 / _2666 != _2664:
            _2680 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_2680 + idx + 68] = mem[_2672 + idx + 32]
                idx = idx + 32
                continue 
            mem[_2680 + 91] = 0
            revert with memory
              from mem[64]
               len _2680 + -mem[64] + 100
        mem[_2670] = _2666 * _2664
        mem[_2565 + 64] = _2666 * _2664 / 10^18
        staticcall address(arg1).oracle() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2691 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2694 = mem[_2691]
        require mem[_2691] == mem[_2691 + 12 len 20]
        mem[mem[64] + 4] = address(_2561)
        staticcall address(_2694).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(_2561)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2705 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2708 = mem[_2705]
        require mem[_2705] == mem[_2705]
        mem[_2565 + 256] = mem[_2705]
        staticcall address(arg1).markets(address arg1) with:
                gas gas_remaining wei
               args address(_2561)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2717 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_2717] == bool(mem[_2717])
        _2725 = mem[_2717 + 32]
        require mem[_2717 + 32] == mem[_2717 + 32]
        require mem[_2717 + 64] == mem[_2717 + 95 len 1]
        _2739 = mem[64]
        mem[64] = mem[64] + 32
        mem[_2739] = _2666 * _2664 / 10^18
        _2741 = mem[64]
        mem[64] = mem[64] + 32
        mem[_2741] = 0
        _2742 = mem[64]
        mem[64] = mem[64] + 32
        _2744 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2744] = 23
        mem[_2744 + 32] = 'multiplication overflow'
        if not _2666 * _2664 / 10^18:
            mem[_2742] = 0
            mem[_2565 + 96] = 0 / 10^18
            _2796 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2796] = _2725
            _2809 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2809] = 0
            _2813 = mem[64]
            mem[64] = mem[64] + 32
            _2818 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2818] = 23
            mem[_2818 + 32] = 'multiplication overflow'
            mem[_2813] = 0
            mem[_2565 + 128] = 0 / 10^18
            if not _2725:
                _2929 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2929] = mem[_2565 + 160]
                _2962 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2962] = 0
                _2974 = mem[64]
                mem[64] = mem[64] + 32
                _2975 = mem[_2929]
                _2988 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2988] = 23
                mem[_2988 + 32] = 'multiplication overflow'
                if not _2975:
                    mem[_2974] = 0
                    mem[_2565 + 192] = 0 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _2565
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _2708:
                    mem[_2974] = 0
                    mem[_2565 + 192] = 0 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _2565
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _2975 and _2708 > -1 / _2975:
                    revert with 'NH{q', 17
                if not _2975:
                    revert with 'NH{q', 18
                if _2975 * _2708 / _2975 == _2708:
                    mem[_2974] = _2975 * _2708
                    mem[_2565 + 192] = _2975 * _2708 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _2565
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _3163 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_3163 + idx + 68] = mem[_2988 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3163 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3163 + -mem[64] + 100
            _2939 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2939] = mem[_2565 + 160]
            _2976 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2976] = 0
            _2990 = mem[64]
            mem[64] = mem[64] + 32
            _2991 = mem[_2939]
            _3003 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3003] = 23
            mem[_3003 + 32] = 'multiplication overflow'
            if not _2991:
                mem[_2990] = 0
                mem[_2565 + 192] = 0 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _2565
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _2708:
                mem[_2990] = 0
                mem[_2565 + 192] = 0 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _2565
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _2991 and _2708 > -1 / _2991:
                revert with 'NH{q', 17
            if not _2991:
                revert with 'NH{q', 18
            if _2991 * _2708 / _2991 == _2708:
                mem[_2990] = _2991 * _2708
                mem[_2565 + 192] = _2991 * _2708 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _2565
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3179 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3179 + idx + 68] = mem[_3003 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3179 + 91] = 0
            revert with memory
              from mem[64]
               len _3179 + -mem[64] + 100
        if not _2708:
            mem[_2742] = 0
            mem[_2565 + 96] = 0 / 10^18
            _2800 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2800] = _2725
            _2815 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2815] = 0
            _2820 = mem[64]
            mem[64] = mem[64] + 32
            _2827 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2827] = 23
            mem[_2827 + 32] = 'multiplication overflow'
            mem[_2820] = 0
            mem[_2565 + 128] = 0 / 10^18
            if not _2725:
                _2941 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2941] = mem[_2565 + 160]
                _2977 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2977] = 0
                _2992 = mem[64]
                mem[64] = mem[64] + 32
                _2993 = mem[_2941]
                _3004 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3004] = 23
                mem[_3004 + 32] = 'multiplication overflow'
                if not _2993:
                    mem[_2992] = 0
                    mem[_2565 + 192] = 0 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _2565
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _2708:
                    mem[_2992] = 0
                    mem[_2565 + 192] = 0 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _2565
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _2993 and _2708 > -1 / _2993:
                    revert with 'NH{q', 17
                if not _2993:
                    revert with 'NH{q', 18
                if _2993 * _2708 / _2993 == _2708:
                    mem[_2992] = _2993 * _2708
                    mem[_2565 + 192] = _2993 * _2708 / 10^18
                    if idx >= mem[_136]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _136 + 32] = _2565
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _3181 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_3181 + idx + 68] = mem[_3004 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3181 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3181 + -mem[64] + 100
            _2952 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2952] = mem[_2565 + 160]
            _2994 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2994] = 0
            _3006 = mem[64]
            mem[64] = mem[64] + 32
            _3007 = mem[_2952]
            _3019 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3019] = 23
            mem[_3019 + 32] = 'multiplication overflow'
            if not _3007:
                mem[_3006] = 0
                mem[_2565 + 192] = 0 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _2565
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _2708:
                mem[_3006] = 0
                mem[_2565 + 192] = 0 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _2565
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _3007 and _2708 > -1 / _3007:
                revert with 'NH{q', 17
            if not _3007:
                revert with 'NH{q', 18
            if _3007 * _2708 / _3007 == _2708:
                mem[_3006] = _3007 * _2708
                mem[_2565 + 192] = _3007 * _2708 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _2565
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3196 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3196 + idx + 68] = mem[_3019 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3196 + 91] = 0
            revert with memory
              from mem[64]
               len _3196 + -mem[64] + 100
        if _2666 * _2664 / 10^18 and _2708 > -1 / _2666 * _2664 / 10^18:
            revert with 'NH{q', 17
        if not _2666 * _2664 / 10^18:
            revert with 'NH{q', 18
        if _2666 * _2664 / 10^18 * _2708 / _2666 * _2664 / 10^18 != _2708:
            _2806 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_2806 + idx + 68] = mem[_2744 + idx + 32]
                idx = idx + 32
                continue 
            mem[_2806 + 91] = 0
            revert with memory
              from mem[64]
               len _2806 + -mem[64] + 100
        mem[_2742] = _2666 * _2664 / 10^18 * _2708
        mem[_2565 + 96] = _2666 * _2664 / 10^18 * _2708 / 10^18
        _2899 = mem[64]
        mem[64] = mem[64] + 32
        mem[_2899] = _2725
        _2908 = mem[64]
        mem[64] = mem[64] + 32
        mem[_2908] = 0
        _2913 = mem[64]
        mem[64] = mem[64] + 32
        _2919 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2919] = 23
        mem[_2919 + 32] = 'multiplication overflow'
        if not _2725:
            mem[_2913] = 0
            mem[_2565 + 128] = 0 / 10^18
            _3092 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3092] = mem[_2565 + 160]
            _3118 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3118] = 0
            _3127 = mem[64]
            mem[64] = mem[64] + 32
            _3128 = mem[_3092]
            _3135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3135] = 23
            mem[_3135 + 32] = 'multiplication overflow'
            if not _3128:
                mem[_3127] = 0
                mem[_2565 + 192] = 0 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _2565
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _2708:
                mem[_3127] = 0
                mem[_2565 + 192] = 0 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _2565
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _3128 and _2708 > -1 / _3128:
                revert with 'NH{q', 17
            if not _3128:
                revert with 'NH{q', 18
            if _3128 * _2708 / _3128 == _2708:
                mem[_3127] = _3128 * _2708
                mem[_2565 + 192] = _3128 * _2708 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _2565
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3286 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3286 + idx + 68] = mem[_3135 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3286 + 91] = 0
            revert with memory
              from mem[64]
               len _3286 + -mem[64] + 100
        if not _2666 * _2664 / 10^18 * _2708 / 10^18:
            mem[_2913] = 0
            mem[_2565 + 128] = 0 / 10^18
            _3101 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3101] = mem[_2565 + 160]
            _3129 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3129] = 0
            _3137 = mem[64]
            mem[64] = mem[64] + 32
            _3138 = mem[_3101]
            _3143 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3143] = 23
            mem[_3143 + 32] = 'multiplication overflow'
            if not _3138:
                mem[_3137] = 0
                mem[_2565 + 192] = 0 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _2565
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _2708:
                mem[_3137] = 0
                mem[_2565 + 192] = 0 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _2565
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _3138 and _2708 > -1 / _3138:
                revert with 'NH{q', 17
            if not _3138:
                revert with 'NH{q', 18
            if _3138 * _2708 / _3138 == _2708:
                mem[_3137] = _3138 * _2708
                mem[_2565 + 192] = _3138 * _2708 / 10^18
                if idx >= mem[_136]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _136 + 32] = _2565
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3300 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3300 + idx + 68] = mem[_3143 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3300 + 91] = 0
            revert with memory
              from mem[64]
               len _3300 + -mem[64] + 100
        if _2725 and _2666 * _2664 / 10^18 * _2708 / 10^18 > -1 / _2725:
            revert with 'NH{q', 17
        if not _2725:
            revert with 'NH{q', 18
        if _2725 * _2666 * _2664 / 10^18 * _2708 / 10^18 / _2725 != _2666 * _2664 / 10^18 * _2708 / 10^18:
            _3111 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3111 + idx + 68] = mem[_2919 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3111 + 91] = 0
            revert with memory
              from mem[64]
               len _3111 + -mem[64] + 100
        mem[_2913] = _2725 * _2666 * _2664 / 10^18 * _2708 / 10^18
        mem[_2565 + 128] = _2725 * _2666 * _2664 / 10^18 * _2708 / 10^18 / 10^18
        _3244 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3244] = mem[_2565 + 160]
        _3257 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3257] = 0
        _3261 = mem[64]
        mem[64] = mem[64] + 32
        _3262 = mem[_3244]
        _3263 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3263] = 23
        mem[_3263 + 32] = 'multiplication overflow'
        if not _3262:
            mem[_3261] = 0
            mem[_2565 + 192] = 0 / 10^18
            if idx >= mem[_136]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _136 + 32] = _2565
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not _2708:
            mem[_3261] = 0
            mem[_2565 + 192] = 0 / 10^18
            if idx >= mem[_136]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _136 + 32] = _2565
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if _3262 and _2708 > -1 / _3262:
            revert with 'NH{q', 17
        if not _3262:
            revert with 'NH{q', 18
        if _3262 * _2708 / _3262 == _2708:
            mem[_3261] = _3262 * _2708
            mem[_2565 + 192] = _3262 * _2708 / 10^18
            if idx >= mem[_136]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _136 + 32] = _2565
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _3348 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 23
        idx = 0
        while idx < 23:
            mem[_3348 + idx + 68] = mem[_3263 + idx + 32]
            idx = idx + 32
            continue 
        mem[_3348 + 91] = 0
        revert with memory
          from mem[64]
           len _3348 + -mem[64] + 100
    _2562 = mem[64]
    mem[mem[64]] = 32
    _2564 = mem[_136]
    mem[mem[64] + 32] = mem[_136]
    idx = 0
    s = _136 + 32
    t = mem[64] + 64
    while idx < _2564:
        _2751 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_2751 + 32]
        mem[t + 64] = mem[_2751 + 64]
        mem[t + 96] = mem[_2751 + 96]
        mem[t + 128] = mem[_2751 + 128]
        mem[t + 160] = mem[_2751 + 160]
        mem[t + 192] = mem[_2751 + 192]
        mem[t + 224] = mem[_2751 + 224]
        mem[t + 256] = mem[_2751 + 256]
        mem[t + 288] = bool(mem[_2751 + 288])
        idx = idx + 1
        s = s + 32
        t = t + 320
        continue 
    return memory
      from mem[64]
       len _2562 + (320 * _2564) + -mem[64] + 64
}

function sub_8cb23728(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] == address(cd[68])
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 36).length
    mem[64] = floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 129
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1061 = mem[(32 * idx) + 128]
            _1062 = mem[64]
            mem[64] = mem[64] + 320
            mem[_1062] = 0
            mem[_1062 + 32] = 0
            mem[_1062 + 64] = 0
            mem[_1062 + 96] = 0
            mem[_1062 + 128] = 0
            mem[_1062 + 160] = 0
            mem[_1062 + 192] = 0
            mem[_1062 + 224] = 0
            mem[_1062 + 256] = 0
            mem[_1062 + 288] = 0
            _1065 = mem[64]
            mem[64] = mem[64] + 320
            mem[_1065 + 32] = 0
            mem[_1065 + 64] = 0
            mem[_1065 + 96] = 0
            mem[_1065 + 128] = 0
            mem[_1065 + 160] = 0
            mem[_1065 + 192] = 0
            mem[_1065 + 224] = 0
            mem[_1065 + 256] = 0
            mem[_1065 + 288] = 0
            mem[_1065] = address(_1061)
            mem[mem[64] + 4] = address(cd[68])
            mem[mem[64] + 36] = address(_1061)
            staticcall address(cd[4]).checkMembership(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[68]), address(_1061)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1085 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1085] == bool(mem[_1085])
            mem[_1065 + 288] = bool(mem[_1085])
            staticcall address(_1061).getAccountSnapshot(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[68])
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1103 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_1103] == mem[_1103]
            _1111 = mem[_1103 + 32]
            require mem[_1103 + 32] == mem[_1103 + 32]
            require mem[_1103 + 64] == mem[_1103 + 64]
            _1115 = mem[_1103 + 96]
            require mem[_1103 + 96] == mem[_1103 + 96]
            mem[_1065 + 160] = mem[_1103 + 64]
            mem[_1065 + 32] = _1111
            _1117 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1117] = _1115
            _1119 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1119] = 0
            _1120 = mem[64]
            mem[64] = mem[64] + 32
            _1124 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1124] = 23
            mem[_1124 + 32] = 'multiplication overflow'
            if not _1115:
                mem[_1120] = 0
                mem[_1065 + 64] = 0 / 10^18
                staticcall address(cd[4]).oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1135 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1140 = mem[_1135]
                require mem[_1135] == mem[_1135 + 12 len 20]
                mem[mem[64] + 4] = address(_1061)
                staticcall address(_1140).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_1061)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1175 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1178 = mem[_1175]
                require mem[_1175] == mem[_1175]
                mem[_1065 + 256] = mem[_1175]
                staticcall address(cd[4]).markets(address arg1) with:
                        gas gas_remaining wei
                       args address(_1061)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1194 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1194] == bool(mem[_1194])
                _1210 = mem[_1194 + 32]
                require mem[_1194 + 32] == mem[_1194 + 32]
                require mem[_1194 + 64] == mem[_1194 + 95 len 1]
                _1225 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1225] = 0
                _1230 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1230] = 0
                _1231 = mem[64]
                mem[64] = mem[64] + 32
                _1236 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1236] = 23
                mem[_1236 + 32] = 'multiplication overflow'
                mem[_1231] = 0
                mem[_1065 + 96] = 0 / 10^18
                _1269 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1269] = _1210
                _1285 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1285] = 0
                _1290 = mem[64]
                mem[64] = mem[64] + 32
                _1298 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1298] = 23
                mem[_1298 + 32] = 'multiplication overflow'
                mem[_1290] = 0
                mem[_1065 + 128] = 0 / 10^18
                if not _1210:
                    _1413 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1413] = mem[_1065 + 160]
                    _1444 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1444] = 0
                    _1457 = mem[64]
                    mem[64] = mem[64] + 32
                    _1458 = mem[_1413]
                    _1468 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1468] = 23
                    mem[_1468 + 32] = 'multiplication overflow'
                    if not _1458:
                        mem[_1457] = 0
                        mem[_1065 + 192] = 0 / 10^18
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if not _1178:
                        mem[_1457] = 0
                        mem[_1065 + 192] = 0 / 10^18
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if _1458 and _1178 > -1 / _1458:
                        revert with 'NH{q', 17
                    if not _1458:
                        revert with 'NH{q', 18
                    if _1458 * _1178 / _1458 == _1178:
                        mem[_1457] = _1458 * _1178
                        mem[_1065 + 192] = _1458 * _1178 / 10^18
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _1773 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 23
                    idx = 0
                    while idx < 23:
                        mem[_1773 + idx + 68] = mem[_1468 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1773 + 91] = 0
                    revert with memory
                      from mem[64]
                       len _1773 + -mem[64] + 100
                _1421 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1421] = mem[_1065 + 160]
                _1459 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1459] = 0
                _1470 = mem[64]
                mem[64] = mem[64] + 32
                _1471 = mem[_1421]
                _1487 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1487] = 23
                mem[_1487 + 32] = 'multiplication overflow'
                if not _1471:
                    mem[_1470] = 0
                    mem[_1065 + 192] = 0 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1178:
                    mem[_1470] = 0
                    mem[_1065 + 192] = 0 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _1471 and _1178 > -1 / _1471:
                    revert with 'NH{q', 17
                if not _1471:
                    revert with 'NH{q', 18
                if _1471 * _1178 / _1471 == _1178:
                    mem[_1470] = _1471 * _1178
                    mem[_1065 + 192] = _1471 * _1178 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1794 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_1794 + idx + 68] = mem[_1487 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1794 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1794 + -mem[64] + 100
            if not _1111:
                mem[_1120] = 0
                mem[_1065 + 64] = 0 / 10^18
                staticcall address(cd[4]).oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1139 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1144 = mem[_1139]
                require mem[_1139] == mem[_1139 + 12 len 20]
                mem[mem[64] + 4] = address(_1061)
                staticcall address(_1144).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_1061)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1177 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1181 = mem[_1177]
                require mem[_1177] == mem[_1177]
                mem[_1065 + 256] = mem[_1177]
                staticcall address(cd[4]).markets(address arg1) with:
                        gas gas_remaining wei
                       args address(_1061)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1198 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1198] == bool(mem[_1198])
                _1211 = mem[_1198 + 32]
                require mem[_1198 + 32] == mem[_1198 + 32]
                require mem[_1198 + 64] == mem[_1198 + 95 len 1]
                _1227 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1227] = 0
                _1233 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1233] = 0
                _1237 = mem[64]
                mem[64] = mem[64] + 32
                _1241 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1241] = 23
                mem[_1241 + 32] = 'multiplication overflow'
                mem[_1237] = 0
                mem[_1065 + 96] = 0 / 10^18
                _1273 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1273] = _1211
                _1293 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1293] = 0
                _1302 = mem[64]
                mem[64] = mem[64] + 32
                _1310 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1310] = 23
                mem[_1310 + 32] = 'multiplication overflow'
                mem[_1302] = 0
                mem[_1065 + 128] = 0 / 10^18
                if not _1211:
                    _1426 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1426] = mem[_1065 + 160]
                    _1461 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1461] = 0
                    _1476 = mem[64]
                    mem[64] = mem[64] + 32
                    _1477 = mem[_1426]
                    _1492 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1492] = 23
                    mem[_1492 + 32] = 'multiplication overflow'
                    if not _1477:
                        mem[_1476] = 0
                        mem[_1065 + 192] = 0 / 10^18
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if not _1181:
                        mem[_1476] = 0
                        mem[_1065 + 192] = 0 / 10^18
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if _1477 and _1181 > -1 / _1477:
                        revert with 'NH{q', 17
                    if not _1477:
                        revert with 'NH{q', 18
                    if _1477 * _1181 / _1477 == _1181:
                        mem[_1476] = _1477 * _1181
                        mem[_1065 + 192] = _1477 * _1181 / 10^18
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _1799 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 23
                    idx = 0
                    while idx < 23:
                        mem[_1799 + idx + 68] = mem[_1492 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1799 + 91] = 0
                    revert with memory
                      from mem[64]
                       len _1799 + -mem[64] + 100
                _1434 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1434] = mem[_1065 + 160]
                _1478 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1478] = 0
                _1494 = mem[64]
                mem[64] = mem[64] + 32
                _1495 = mem[_1434]
                _1510 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1510] = 23
                mem[_1510 + 32] = 'multiplication overflow'
                if not _1495:
                    mem[_1494] = 0
                    mem[_1065 + 192] = 0 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1181:
                    mem[_1494] = 0
                    mem[_1065 + 192] = 0 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _1495 and _1181 > -1 / _1495:
                    revert with 'NH{q', 17
                if not _1495:
                    revert with 'NH{q', 18
                if _1495 * _1181 / _1495 == _1181:
                    mem[_1494] = _1495 * _1181
                    mem[_1065 + 192] = _1495 * _1181 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1825 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_1825 + idx + 68] = mem[_1510 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1825 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1825 + -mem[64] + 100
            if _1115 and _1111 > -1 / _1115:
                revert with 'NH{q', 17
            if not _1115:
                revert with 'NH{q', 18
            if _1115 * _1111 / _1115 != _1111:
                _1138 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_1138 + idx + 68] = mem[_1124 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1138 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1138 + -mem[64] + 100
            mem[_1120] = _1115 * _1111
            mem[_1065 + 64] = _1115 * _1111 / 10^18
            staticcall address(cd[4]).oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1161 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1165 = mem[_1161]
            require mem[_1161] == mem[_1161 + 12 len 20]
            mem[mem[64] + 4] = address(_1061)
            staticcall address(_1165).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_1061)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1192 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1195 = mem[_1192]
            require mem[_1192] == mem[_1192]
            mem[_1065 + 256] = mem[_1192]
            staticcall address(cd[4]).markets(address arg1) with:
                    gas gas_remaining wei
                   args address(_1061)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1216 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1216] == bool(mem[_1216])
            _1229 = mem[_1216 + 32]
            require mem[_1216 + 32] == mem[_1216 + 32]
            require mem[_1216 + 64] == mem[_1216 + 95 len 1]
            _1257 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1257] = _1115 * _1111 / 10^18
            _1262 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1262] = 0
            _1264 = mem[64]
            mem[64] = mem[64] + 32
            _1268 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1268] = 23
            mem[_1268 + 32] = 'multiplication overflow'
            if not _1115 * _1111 / 10^18:
                mem[_1264] = 0
                mem[_1065 + 96] = 0 / 10^18
                _1365 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1365] = _1229
                _1384 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1384] = 0
                _1391 = mem[64]
                mem[64] = mem[64] + 32
                _1401 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1401] = 23
                mem[_1401 + 32] = 'multiplication overflow'
                mem[_1391] = 0
                mem[_1065 + 128] = 0 / 10^18
                if not _1229:
                    _1616 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1616] = mem[_1065 + 160]
                    _1662 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1662] = 0
                    _1681 = mem[64]
                    mem[64] = mem[64] + 32
                    _1682 = mem[_1616]
                    _1706 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1706] = 23
                    mem[_1706 + 32] = 'multiplication overflow'
                    if not _1682:
                        mem[_1681] = 0
                        mem[_1065 + 192] = 0 / 10^18
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if not _1195:
                        mem[_1681] = 0
                        mem[_1065 + 192] = 0 / 10^18
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if _1682 and _1195 > -1 / _1682:
                        revert with 'NH{q', 17
                    if not _1682:
                        revert with 'NH{q', 18
                    if _1682 * _1195 / _1682 == _1195:
                        mem[_1681] = _1682 * _1195
                        mem[_1065 + 192] = _1682 * _1195 / 10^18
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _2069 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 23
                    idx = 0
                    while idx < 23:
                        mem[_2069 + idx + 68] = mem[_1706 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2069 + 91] = 0
                    revert with memory
                      from mem[64]
                       len _2069 + -mem[64] + 100
                _1630 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1630] = mem[_1065 + 160]
                _1683 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1683] = 0
                _1708 = mem[64]
                mem[64] = mem[64] + 32
                _1709 = mem[_1630]
                _1735 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1735] = 23
                mem[_1735 + 32] = 'multiplication overflow'
                if not _1709:
                    mem[_1708] = 0
                    mem[_1065 + 192] = 0 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1195:
                    mem[_1708] = 0
                    mem[_1065 + 192] = 0 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _1709 and _1195 > -1 / _1709:
                    revert with 'NH{q', 17
                if not _1709:
                    revert with 'NH{q', 18
                if _1709 * _1195 / _1709 == _1195:
                    mem[_1708] = _1709 * _1195
                    mem[_1065 + 192] = _1709 * _1195 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2095 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_2095 + idx + 68] = mem[_1735 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2095 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2095 + -mem[64] + 100
            if not _1195:
                mem[_1264] = 0
                mem[_1065 + 96] = 0 / 10^18
                _1370 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1370] = _1229
                _1393 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1393] = 0
                _1403 = mem[64]
                mem[64] = mem[64] + 32
                _1415 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1415] = 23
                mem[_1415 + 32] = 'multiplication overflow'
                mem[_1403] = 0
                mem[_1065 + 128] = 0 / 10^18
                if not _1229:
                    _1632 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1632] = mem[_1065 + 160]
                    _1684 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_1684] = 0
                    _1710 = mem[64]
                    mem[64] = mem[64] + 32
                    _1711 = mem[_1632]
                    _1736 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1736] = 23
                    mem[_1736 + 32] = 'multiplication overflow'
                    if not _1711:
                        mem[_1710] = 0
                        mem[_1065 + 192] = 0 / 10^18
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if not _1195:
                        mem[_1710] = 0
                        mem[_1065 + 192] = 0 / 10^18
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if _1711 and _1195 > -1 / _1711:
                        revert with 'NH{q', 17
                    if not _1711:
                        revert with 'NH{q', 18
                    if _1711 * _1195 / _1711 == _1195:
                        mem[_1710] = _1711 * _1195
                        mem[_1065 + 192] = _1711 * _1195 / 10^18
                        if idx >= mem[floor32(('cd', 36).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _2097 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 23
                    idx = 0
                    while idx < 23:
                        mem[_2097 + idx + 68] = mem[_1736 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2097 + 91] = 0
                    revert with memory
                      from mem[64]
                       len _2097 + -mem[64] + 100
                _1646 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1646] = mem[_1065 + 160]
                _1712 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1712] = 0
                _1738 = mem[64]
                mem[64] = mem[64] + 32
                _1739 = mem[_1646]
                _1762 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1762] = 23
                mem[_1762 + 32] = 'multiplication overflow'
                if not _1739:
                    mem[_1738] = 0
                    mem[_1065 + 192] = 0 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1195:
                    mem[_1738] = 0
                    mem[_1065 + 192] = 0 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _1739 and _1195 > -1 / _1739:
                    revert with 'NH{q', 17
                if not _1739:
                    revert with 'NH{q', 18
                if _1739 * _1195 / _1739 == _1195:
                    mem[_1738] = _1739 * _1195
                    mem[_1065 + 192] = _1739 * _1195 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2122 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_2122 + idx + 68] = mem[_1762 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2122 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2122 + -mem[64] + 100
            if _1115 * _1111 / 10^18 and _1195 > -1 / _1115 * _1111 / 10^18:
                revert with 'NH{q', 17
            if not _1115 * _1111 / 10^18:
                revert with 'NH{q', 18
            if _1115 * _1111 / 10^18 * _1195 / _1115 * _1111 / 10^18 != _1195:
                _1377 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_1377 + idx + 68] = mem[_1268 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1377 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1377 + -mem[64] + 100
            mem[_1264] = _1115 * _1111 / 10^18 * _1195
            mem[_1065 + 96] = _1115 * _1111 / 10^18 * _1195 / 10^18
            _1550 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1550] = _1229
            _1588 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1588] = 0
            _1596 = mem[64]
            mem[64] = mem[64] + 32
            _1604 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1604] = 23
            mem[_1604 + 32] = 'multiplication overflow'
            if not _1229:
                mem[_1596] = 0
                mem[_1065 + 128] = 0 / 10^18
                _1926 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1926] = mem[_1065 + 160]
                _1977 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1977] = 0
                _1998 = mem[64]
                mem[64] = mem[64] + 32
                _1999 = mem[_1926]
                _2016 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2016] = 23
                mem[_2016 + 32] = 'multiplication overflow'
                if not _1999:
                    mem[_1998] = 0
                    mem[_1065 + 192] = 0 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1195:
                    mem[_1998] = 0
                    mem[_1065 + 192] = 0 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _1999 and _1195 > -1 / _1999:
                    revert with 'NH{q', 17
                if not _1999:
                    revert with 'NH{q', 18
                if _1999 * _1195 / _1999 == _1195:
                    mem[_1998] = _1999 * _1195
                    mem[_1065 + 192] = _1999 * _1195 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2330 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_2330 + idx + 68] = mem[_2016 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2330 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2330 + -mem[64] + 100
            if not _1115 * _1111 / 10^18 * _1195 / 10^18:
                mem[_1596] = 0
                mem[_1065 + 128] = 0 / 10^18
                _1940 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1940] = mem[_1065 + 160]
                _2000 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2000] = 0
                _2018 = mem[64]
                mem[64] = mem[64] + 32
                _2019 = mem[_1940]
                _2033 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2033] = 23
                mem[_2033 + 32] = 'multiplication overflow'
                if not _2019:
                    mem[_2018] = 0
                    mem[_1065 + 192] = 0 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1195:
                    mem[_2018] = 0
                    mem[_1065 + 192] = 0 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _2019 and _1195 > -1 / _2019:
                    revert with 'NH{q', 17
                if not _2019:
                    revert with 'NH{q', 18
                if _2019 * _1195 / _2019 == _1195:
                    mem[_2018] = _2019 * _1195
                    mem[_1065 + 192] = _2019 * _1195 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2346 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_2346 + idx + 68] = mem[_2033 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2346 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2346 + -mem[64] + 100
            if _1229 and _1115 * _1111 / 10^18 * _1195 / 10^18 > -1 / _1229:
                revert with 'NH{q', 17
            if not _1229:
                revert with 'NH{q', 18
            if _1229 * _1115 * _1111 / 10^18 * _1195 / 10^18 / _1229 != _1115 * _1111 / 10^18 * _1195 / 10^18:
                _1957 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_1957 + idx + 68] = mem[_1604 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1957 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1957 + -mem[64] + 100
            mem[_1596] = _1229 * _1115 * _1111 / 10^18 * _1195 / 10^18
            mem[_1065 + 128] = _1229 * _1115 * _1111 / 10^18 * _1195 / 10^18 / 10^18
            _2238 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2238] = mem[_1065 + 160]
            _2278 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2278] = 0
            _2288 = mem[64]
            mem[64] = mem[64] + 32
            _2289 = mem[_2238]
            _2292 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2292] = 23
            mem[_2292 + 32] = 'multiplication overflow'
            if not _2289:
                mem[_2288] = 0
                mem[_1065 + 192] = 0 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _1195:
                mem[_2288] = 0
                mem[_1065 + 192] = 0 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _2289 and _1195 > -1 / _2289:
                revert with 'NH{q', 17
            if not _2289:
                revert with 'NH{q', 18
            if _2289 * _1195 / _2289 == _1195:
                mem[_2288] = _2289 * _1195
                mem[_1065 + 192] = _2289 * _1195 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _1065
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _2469 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_2469 + idx + 68] = mem[_2292 + idx + 32]
                idx = idx + 32
                continue 
            mem[_2469 + 91] = 0
            revert with memory
              from mem[64]
               len _2469 + -mem[64] + 100
        _1060 = mem[64]
        mem[mem[64]] = 32
        _1063 = mem[floor32(('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
        idx = 0
        s = floor32(('cd', 36).length) + 129
        t = mem[64] + 64
        while idx < _1063:
            _1276 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1276 + 32]
            mem[t + 64] = mem[_1276 + 64]
            mem[t + 96] = mem[_1276 + 96]
            mem[t + 128] = mem[_1276 + 128]
            mem[t + 160] = mem[_1276 + 160]
            mem[t + 192] = mem[_1276 + 192]
            mem[t + 224] = mem[_1276 + 224]
            mem[t + 256] = mem[_1276 + 256]
            mem[t + 288] = bool(mem[_1276 + 288])
            idx = idx + 1
            s = s + 32
            t = t + 320
            continue 
        return memory
          from mem[64]
           len _1060 + (320 * _1063) + -mem[64] + 64
    mem[64] = floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 449
    mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 129] = 0
    mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 0
    mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 193] = 0
    mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 225] = 0
    mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 257] = 0
    mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 289] = 0
    mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 321] = 0
    mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 353] = 0
    mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 385] = 0
    mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 417] = 0
    mem[var53001] = floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 129
    s = var53001
    idx = var53002
    while idx - 1:
        mem[64] = mem[64] + 320
        mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 129] = 0
        mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 0
        mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 193] = 0
        mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 225] = 0
        mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 257] = 0
        mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 289] = 0
        mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 321] = 0
        mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 353] = 0
        mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 385] = 0
        mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 417] = 0
        mem[s + 32] = floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _2554 = mem[(32 * idx) + 128]
        _2555 = mem[64]
        mem[64] = mem[64] + 320
        mem[_2555] = 0
        mem[_2555 + 32] = 0
        mem[_2555 + 64] = 0
        mem[_2555 + 96] = 0
        mem[_2555 + 128] = 0
        mem[_2555 + 160] = 0
        mem[_2555 + 192] = 0
        mem[_2555 + 224] = 0
        mem[_2555 + 256] = 0
        mem[_2555 + 288] = 0
        _2557 = mem[64]
        mem[64] = mem[64] + 320
        mem[_2557 + 32] = 0
        mem[_2557 + 64] = 0
        mem[_2557 + 96] = 0
        mem[_2557 + 128] = 0
        mem[_2557 + 160] = 0
        mem[_2557 + 192] = 0
        mem[_2557 + 224] = 0
        mem[_2557 + 256] = 0
        mem[_2557 + 288] = 0
        mem[_2557] = address(_2554)
        mem[mem[64] + 4] = address(cd[68])
        mem[mem[64] + 36] = address(_2554)
        staticcall address(cd[4]).checkMembership(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[68]), address(_2554)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2644 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2644] == bool(mem[_2644])
        mem[_2557 + 288] = bool(mem[_2644])
        staticcall address(_2554).getAccountSnapshot(address arg1) with:
                gas gas_remaining wei
               args address(cd[68])
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2653 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_2653] == mem[_2653]
        _2656 = mem[_2653 + 32]
        require mem[_2653 + 32] == mem[_2653 + 32]
        require mem[_2653 + 64] == mem[_2653 + 64]
        _2658 = mem[_2653 + 96]
        require mem[_2653 + 96] == mem[_2653 + 96]
        mem[_2557 + 160] = mem[_2653 + 64]
        mem[_2557 + 32] = _2656
        _2659 = mem[64]
        mem[64] = mem[64] + 32
        mem[_2659] = _2658
        _2661 = mem[64]
        mem[64] = mem[64] + 32
        mem[_2661] = 0
        _2662 = mem[64]
        mem[64] = mem[64] + 32
        _2664 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2664] = 23
        mem[_2664 + 32] = 'multiplication overflow'
        if not _2658:
            mem[_2662] = 0
            mem[_2557 + 64] = 0 / 10^18
            staticcall address(cd[4]).oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2669 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2674 = mem[_2669]
            require mem[_2669] == mem[_2669 + 12 len 20]
            mem[mem[64] + 4] = address(_2554)
            staticcall address(_2674).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_2554)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2689 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2692 = mem[_2689]
            require mem[_2689] == mem[_2689]
            mem[_2557 + 256] = mem[_2689]
            staticcall address(cd[4]).markets(address arg1) with:
                    gas gas_remaining wei
                   args address(_2554)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2699 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_2699] == bool(mem[_2699])
            _2706 = mem[_2699 + 32]
            require mem[_2699 + 32] == mem[_2699 + 32]
            require mem[_2699 + 64] == mem[_2699 + 95 len 1]
            _2713 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2713] = 0
            _2718 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2718] = 0
            _2719 = mem[64]
            mem[64] = mem[64] + 32
            _2722 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2722] = 23
            mem[_2722 + 32] = 'multiplication overflow'
            mem[_2719] = 0
            mem[_2557 + 96] = 0 / 10^18
            _2737 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2737] = _2706
            _2748 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2748] = 0
            _2752 = mem[64]
            mem[64] = mem[64] + 32
            _2756 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2756] = 23
            mem[_2756 + 32] = 'multiplication overflow'
            mem[_2752] = 0
            mem[_2557 + 128] = 0 / 10^18
            if not _2706:
                _2817 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2817] = mem[_2557 + 160]
                _2835 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2835] = 0
                _2841 = mem[64]
                mem[64] = mem[64] + 32
                _2842 = mem[_2817]
                _2847 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2847] = 23
                mem[_2847 + 32] = 'multiplication overflow'
                if not _2842:
                    mem[_2841] = 0
                    mem[_2557 + 192] = 0 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _2692:
                    mem[_2841] = 0
                    mem[_2557 + 192] = 0 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _2842 and _2692 > -1 / _2842:
                    revert with 'NH{q', 17
                if not _2842:
                    revert with 'NH{q', 18
                if _2842 * _2692 / _2842 == _2692:
                    mem[_2841] = _2842 * _2692
                    mem[_2557 + 192] = _2842 * _2692 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _3014 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_3014 + idx + 68] = mem[_2847 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3014 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3014 + -mem[64] + 100
            _2821 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2821] = mem[_2557 + 160]
            _2843 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2843] = 0
            _2849 = mem[64]
            mem[64] = mem[64] + 32
            _2850 = mem[_2821]
            _2859 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2859] = 23
            mem[_2859 + 32] = 'multiplication overflow'
            if not _2850:
                mem[_2849] = 0
                mem[_2557 + 192] = 0 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _2692:
                mem[_2849] = 0
                mem[_2557 + 192] = 0 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _2850 and _2692 > -1 / _2850:
                revert with 'NH{q', 17
            if not _2850:
                revert with 'NH{q', 18
            if _2850 * _2692 / _2850 == _2692:
                mem[_2849] = _2850 * _2692
                mem[_2557 + 192] = _2850 * _2692 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3022 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3022 + idx + 68] = mem[_2859 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3022 + 91] = 0
            revert with memory
              from mem[64]
               len _3022 + -mem[64] + 100
        if not _2656:
            mem[_2662] = 0
            mem[_2557 + 64] = 0 / 10^18
            staticcall address(cd[4]).oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2673 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2676 = mem[_2673]
            require mem[_2673] == mem[_2673 + 12 len 20]
            mem[mem[64] + 4] = address(_2554)
            staticcall address(_2676).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_2554)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2691 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2693 = mem[_2691]
            require mem[_2691] == mem[_2691]
            mem[_2557 + 256] = mem[_2691]
            staticcall address(cd[4]).markets(address arg1) with:
                    gas gas_remaining wei
                   args address(_2554)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2702 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_2702] == bool(mem[_2702])
            _2707 = mem[_2702 + 32]
            require mem[_2702 + 32] == mem[_2702 + 32]
            require mem[_2702 + 64] == mem[_2702 + 95 len 1]
            _2715 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2715] = 0
            _2721 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2721] = 0
            _2723 = mem[64]
            mem[64] = mem[64] + 32
            _2725 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2725] = 23
            mem[_2725 + 32] = 'multiplication overflow'
            mem[_2723] = 0
            mem[_2557 + 96] = 0 / 10^18
            _2741 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2741] = _2707
            _2755 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2755] = 0
            _2760 = mem[64]
            mem[64] = mem[64] + 32
            _2764 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2764] = 23
            mem[_2764 + 32] = 'multiplication overflow'
            mem[_2760] = 0
            mem[_2557 + 128] = 0 / 10^18
            if not _2707:
                _2826 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2826] = mem[_2557 + 160]
                _2845 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2845] = 0
                _2855 = mem[64]
                mem[64] = mem[64] + 32
                _2856 = mem[_2826]
                _2864 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2864] = 23
                mem[_2864 + 32] = 'multiplication overflow'
                if not _2856:
                    mem[_2855] = 0
                    mem[_2557 + 192] = 0 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _2693:
                    mem[_2855] = 0
                    mem[_2557 + 192] = 0 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _2856 and _2693 > -1 / _2856:
                    revert with 'NH{q', 17
                if not _2856:
                    revert with 'NH{q', 18
                if _2856 * _2693 / _2856 == _2693:
                    mem[_2855] = _2856 * _2693
                    mem[_2557 + 192] = _2856 * _2693 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _3027 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_3027 + idx + 68] = mem[_2864 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3027 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3027 + -mem[64] + 100
            _2831 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2831] = mem[_2557 + 160]
            _2857 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2857] = 0
            _2866 = mem[64]
            mem[64] = mem[64] + 32
            _2867 = mem[_2831]
            _2875 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2875] = 23
            mem[_2875 + 32] = 'multiplication overflow'
            if not _2867:
                mem[_2866] = 0
                mem[_2557 + 192] = 0 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _2693:
                mem[_2866] = 0
                mem[_2557 + 192] = 0 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _2867 and _2693 > -1 / _2867:
                revert with 'NH{q', 17
            if not _2867:
                revert with 'NH{q', 18
            if _2867 * _2693 / _2867 == _2693:
                mem[_2866] = _2867 * _2693
                mem[_2557 + 192] = _2867 * _2693 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3033 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3033 + idx + 68] = mem[_2875 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3033 + 91] = 0
            revert with memory
              from mem[64]
               len _3033 + -mem[64] + 100
        if _2658 and _2656 > -1 / _2658:
            revert with 'NH{q', 17
        if not _2658:
            revert with 'NH{q', 18
        if _2658 * _2656 / _2658 != _2656:
            _2672 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_2672 + idx + 68] = mem[_2664 + idx + 32]
                idx = idx + 32
                continue 
            mem[_2672 + 91] = 0
            revert with memory
              from mem[64]
               len _2672 + -mem[64] + 100
        mem[_2662] = _2658 * _2656
        mem[_2557 + 64] = _2658 * _2656 / 10^18
        staticcall address(cd[4]).oracle() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2683 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2686 = mem[_2683]
        require mem[_2683] == mem[_2683 + 12 len 20]
        mem[mem[64] + 4] = address(_2554)
        staticcall address(_2686).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(_2554)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2697 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2700 = mem[_2697]
        require mem[_2697] == mem[_2697]
        mem[_2557 + 256] = mem[_2697]
        staticcall address(cd[4]).markets(address arg1) with:
                gas gas_remaining wei
               args address(_2554)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2709 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_2709] == bool(mem[_2709])
        _2717 = mem[_2709 + 32]
        require mem[_2709 + 32] == mem[_2709 + 32]
        require mem[_2709 + 64] == mem[_2709 + 95 len 1]
        _2731 = mem[64]
        mem[64] = mem[64] + 32
        mem[_2731] = _2658 * _2656 / 10^18
        _2733 = mem[64]
        mem[64] = mem[64] + 32
        mem[_2733] = 0
        _2734 = mem[64]
        mem[64] = mem[64] + 32
        _2736 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2736] = 23
        mem[_2736 + 32] = 'multiplication overflow'
        if not _2658 * _2656 / 10^18:
            mem[_2734] = 0
            mem[_2557 + 96] = 0 / 10^18
            _2788 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2788] = _2717
            _2801 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2801] = 0
            _2805 = mem[64]
            mem[64] = mem[64] + 32
            _2810 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2810] = 23
            mem[_2810 + 32] = 'multiplication overflow'
            mem[_2805] = 0
            mem[_2557 + 128] = 0 / 10^18
            if not _2717:
                _2921 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2921] = mem[_2557 + 160]
                _2954 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2954] = 0
                _2966 = mem[64]
                mem[64] = mem[64] + 32
                _2967 = mem[_2921]
                _2980 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2980] = 23
                mem[_2980 + 32] = 'multiplication overflow'
                if not _2967:
                    mem[_2966] = 0
                    mem[_2557 + 192] = 0 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _2700:
                    mem[_2966] = 0
                    mem[_2557 + 192] = 0 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _2967 and _2700 > -1 / _2967:
                    revert with 'NH{q', 17
                if not _2967:
                    revert with 'NH{q', 18
                if _2967 * _2700 / _2967 == _2700:
                    mem[_2966] = _2967 * _2700
                    mem[_2557 + 192] = _2967 * _2700 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _3155 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_3155 + idx + 68] = mem[_2980 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3155 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3155 + -mem[64] + 100
            _2931 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2931] = mem[_2557 + 160]
            _2968 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2968] = 0
            _2982 = mem[64]
            mem[64] = mem[64] + 32
            _2983 = mem[_2931]
            _2995 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2995] = 23
            mem[_2995 + 32] = 'multiplication overflow'
            if not _2983:
                mem[_2982] = 0
                mem[_2557 + 192] = 0 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _2700:
                mem[_2982] = 0
                mem[_2557 + 192] = 0 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _2983 and _2700 > -1 / _2983:
                revert with 'NH{q', 17
            if not _2983:
                revert with 'NH{q', 18
            if _2983 * _2700 / _2983 == _2700:
                mem[_2982] = _2983 * _2700
                mem[_2557 + 192] = _2983 * _2700 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3171 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3171 + idx + 68] = mem[_2995 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3171 + 91] = 0
            revert with memory
              from mem[64]
               len _3171 + -mem[64] + 100
        if not _2700:
            mem[_2734] = 0
            mem[_2557 + 96] = 0 / 10^18
            _2792 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2792] = _2717
            _2807 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2807] = 0
            _2812 = mem[64]
            mem[64] = mem[64] + 32
            _2819 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2819] = 23
            mem[_2819 + 32] = 'multiplication overflow'
            mem[_2812] = 0
            mem[_2557 + 128] = 0 / 10^18
            if not _2717:
                _2933 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2933] = mem[_2557 + 160]
                _2969 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2969] = 0
                _2984 = mem[64]
                mem[64] = mem[64] + 32
                _2985 = mem[_2933]
                _2996 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2996] = 23
                mem[_2996 + 32] = 'multiplication overflow'
                if not _2985:
                    mem[_2984] = 0
                    mem[_2557 + 192] = 0 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _2700:
                    mem[_2984] = 0
                    mem[_2557 + 192] = 0 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _2985 and _2700 > -1 / _2985:
                    revert with 'NH{q', 17
                if not _2985:
                    revert with 'NH{q', 18
                if _2985 * _2700 / _2985 == _2700:
                    mem[_2984] = _2985 * _2700
                    mem[_2557 + 192] = _2985 * _2700 / 10^18
                    if idx >= mem[floor32(('cd', 36).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _3173 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_3173 + idx + 68] = mem[_2996 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3173 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3173 + -mem[64] + 100
            _2944 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2944] = mem[_2557 + 160]
            _2986 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2986] = 0
            _2998 = mem[64]
            mem[64] = mem[64] + 32
            _2999 = mem[_2944]
            _3011 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3011] = 23
            mem[_3011 + 32] = 'multiplication overflow'
            if not _2999:
                mem[_2998] = 0
                mem[_2557 + 192] = 0 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _2700:
                mem[_2998] = 0
                mem[_2557 + 192] = 0 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _2999 and _2700 > -1 / _2999:
                revert with 'NH{q', 17
            if not _2999:
                revert with 'NH{q', 18
            if _2999 * _2700 / _2999 == _2700:
                mem[_2998] = _2999 * _2700
                mem[_2557 + 192] = _2999 * _2700 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3188 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3188 + idx + 68] = mem[_3011 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3188 + 91] = 0
            revert with memory
              from mem[64]
               len _3188 + -mem[64] + 100
        if _2658 * _2656 / 10^18 and _2700 > -1 / _2658 * _2656 / 10^18:
            revert with 'NH{q', 17
        if not _2658 * _2656 / 10^18:
            revert with 'NH{q', 18
        if _2658 * _2656 / 10^18 * _2700 / _2658 * _2656 / 10^18 != _2700:
            _2798 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_2798 + idx + 68] = mem[_2736 + idx + 32]
                idx = idx + 32
                continue 
            mem[_2798 + 91] = 0
            revert with memory
              from mem[64]
               len _2798 + -mem[64] + 100
        mem[_2734] = _2658 * _2656 / 10^18 * _2700
        mem[_2557 + 96] = _2658 * _2656 / 10^18 * _2700 / 10^18
        _2891 = mem[64]
        mem[64] = mem[64] + 32
        mem[_2891] = _2717
        _2900 = mem[64]
        mem[64] = mem[64] + 32
        mem[_2900] = 0
        _2905 = mem[64]
        mem[64] = mem[64] + 32
        _2911 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2911] = 23
        mem[_2911 + 32] = 'multiplication overflow'
        if not _2717:
            mem[_2905] = 0
            mem[_2557 + 128] = 0 / 10^18
            _3084 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3084] = mem[_2557 + 160]
            _3110 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3110] = 0
            _3119 = mem[64]
            mem[64] = mem[64] + 32
            _3120 = mem[_3084]
            _3127 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3127] = 23
            mem[_3127 + 32] = 'multiplication overflow'
            if not _3120:
                mem[_3119] = 0
                mem[_2557 + 192] = 0 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _2700:
                mem[_3119] = 0
                mem[_2557 + 192] = 0 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _3120 and _2700 > -1 / _3120:
                revert with 'NH{q', 17
            if not _3120:
                revert with 'NH{q', 18
            if _3120 * _2700 / _3120 == _2700:
                mem[_3119] = _3120 * _2700
                mem[_2557 + 192] = _3120 * _2700 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3278 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3278 + idx + 68] = mem[_3127 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3278 + 91] = 0
            revert with memory
              from mem[64]
               len _3278 + -mem[64] + 100
        if not _2658 * _2656 / 10^18 * _2700 / 10^18:
            mem[_2905] = 0
            mem[_2557 + 128] = 0 / 10^18
            _3093 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3093] = mem[_2557 + 160]
            _3121 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3121] = 0
            _3129 = mem[64]
            mem[64] = mem[64] + 32
            _3130 = mem[_3093]
            _3135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3135] = 23
            mem[_3135 + 32] = 'multiplication overflow'
            if not _3130:
                mem[_3129] = 0
                mem[_2557 + 192] = 0 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _2700:
                mem[_3129] = 0
                mem[_2557 + 192] = 0 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _3130 and _2700 > -1 / _3130:
                revert with 'NH{q', 17
            if not _3130:
                revert with 'NH{q', 18
            if _3130 * _2700 / _3130 == _2700:
                mem[_3129] = _3130 * _2700
                mem[_2557 + 192] = _3130 * _2700 / 10^18
                if idx >= mem[floor32(('cd', 36).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3292 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3292 + idx + 68] = mem[_3135 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3292 + 91] = 0
            revert with memory
              from mem[64]
               len _3292 + -mem[64] + 100
        if _2717 and _2658 * _2656 / 10^18 * _2700 / 10^18 > -1 / _2717:
            revert with 'NH{q', 17
        if not _2717:
            revert with 'NH{q', 18
        if _2717 * _2658 * _2656 / 10^18 * _2700 / 10^18 / _2717 != _2658 * _2656 / 10^18 * _2700 / 10^18:
            _3103 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3103 + idx + 68] = mem[_2911 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3103 + 91] = 0
            revert with memory
              from mem[64]
               len _3103 + -mem[64] + 100
        mem[_2905] = _2717 * _2658 * _2656 / 10^18 * _2700 / 10^18
        mem[_2557 + 128] = _2717 * _2658 * _2656 / 10^18 * _2700 / 10^18 / 10^18
        _3236 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3236] = mem[_2557 + 160]
        _3249 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3249] = 0
        _3253 = mem[64]
        mem[64] = mem[64] + 32
        _3254 = mem[_3236]
        _3255 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3255] = 23
        mem[_3255 + 32] = 'multiplication overflow'
        if not _3254:
            mem[_3253] = 0
            mem[_2557 + 192] = 0 / 10^18
            if idx >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not _2700:
            mem[_3253] = 0
            mem[_2557 + 192] = 0 / 10^18
            if idx >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if _3254 and _2700 > -1 / _3254:
            revert with 'NH{q', 17
        if not _3254:
            revert with 'NH{q', 18
        if _3254 * _2700 / _3254 == _2700:
            mem[_3253] = _3254 * _2700
            mem[_2557 + 192] = _3254 * _2700 / 10^18
            if idx >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _2557
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _3340 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 23
        idx = 0
        while idx < 23:
            mem[_3340 + idx + 68] = mem[_3255 + idx + 32]
            idx = idx + 32
            continue 
        mem[_3340 + 91] = 0
        revert with memory
          from mem[64]
           len _3340 + -mem[64] + 100
    _2553 = mem[64]
    mem[mem[64]] = 32
    _2556 = mem[floor32(('cd', 36).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = mem[64] + 64
    while idx < _2556:
        _2743 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_2743 + 32]
        mem[t + 64] = mem[_2743 + 64]
        mem[t + 96] = mem[_2743 + 96]
        mem[t + 128] = mem[_2743 + 128]
        mem[t + 160] = mem[_2743 + 160]
        mem[t + 192] = mem[_2743 + 192]
        mem[t + 224] = mem[_2743 + 224]
        mem[t + 256] = mem[_2743 + 256]
        mem[t + 288] = bool(mem[_2743 + 288])
        idx = idx + 1
        s = s + 32
        t = t + 320
        continue 
    return memory
      from mem[64]
       len _2553 + (320 * _2556) + -mem[64] + 64
}



}
