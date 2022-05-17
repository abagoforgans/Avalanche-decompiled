contract main {




// =====================  Runtime code  =====================


#
#  - sub_e428d27d(?)
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
        require ext_call.return_data[64] == bool(ext_call.return_data[64])
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
        require ext_call.return_data[64] == bool(ext_call.return_data[64])
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
                require mem[_1194 + 64] == bool(mem[_1194 + 64])
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
                require mem[_1198 + 64] == bool(mem[_1198 + 64])
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
            require mem[_1216 + 64] == bool(mem[_1216 + 64])
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
            require mem[_2699 + 64] == bool(mem[_2699 + 64])
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
            require mem[_2702 + 64] == bool(mem[_2702 + 64])
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
        require mem[_2709 + 64] == bool(mem[_2709 + 64])
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
    mem[288] = 96
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
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
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 480 len 4], address(arg2) << 64 + 480] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 480 len 4], address(arg2) << 64 + 480]) + 481 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 480 len 4], address(arg2) << 64 + 480]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 480 len 4], address(arg2) << 64 + 480]) + 481
    mem[(2 * ceil32(return_data.size)) + 480] = _15
    require _14 + (32 * _15) + 32 <= return_data.size
    idx = ceil32(return_data.size) + _14 + 512
    s = (2 * ceil32(return_data.size)) + 512
    while idx < ceil32(return_data.size) + _14 + (32 * _15) + 512:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        idx = idx + 32
        s = s + 32
        continue 
    mem[288] = (2 * ceil32(return_data.size)) + 480
    if _15 > test266151307():
        revert with 'NH{q', 65
    _243 = mem[64]
    mem[mem[64]] = _15
    mem[64] = mem[64] + (32 * _15) + 32
    if not _15:
        idx = 0
        while idx < _15:
            if idx >= mem[(2 * ceil32(return_data.size)) + 480]:
                revert with 'NH{q', 50
            _1465 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 512]
            _1472 = mem[64]
            mem[64] = mem[64] + 320
            mem[_1472] = 0
            mem[_1472 + 32] = 0
            mem[_1472 + 64] = 0
            mem[_1472 + 96] = 0
            mem[_1472 + 128] = 0
            mem[_1472 + 160] = 0
            mem[_1472 + 192] = 0
            mem[_1472 + 224] = 0
            mem[_1472 + 256] = 0
            mem[_1472 + 288] = 0
            _1479 = mem[64]
            mem[64] = mem[64] + 320
            mem[_1479 + 32] = 0
            mem[_1479 + 64] = 0
            mem[_1479 + 96] = 0
            mem[_1479 + 128] = 0
            mem[_1479 + 160] = 0
            mem[_1479 + 192] = 0
            mem[_1479 + 224] = 0
            mem[_1479 + 256] = 0
            mem[_1479 + 288] = 0
            mem[_1479] = address(_1465)
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = address(_1465)
            staticcall arg1.checkMembership(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg2), address(_1465)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1556 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1556] == bool(mem[_1556])
            mem[_1479 + 288] = bool(mem[_1556])
            staticcall address(_1465).getAccountSnapshot(address arg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1626 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require mem[_1626] == mem[_1626]
            _1645 = mem[_1626 + 32]
            require mem[_1626 + 32] == mem[_1626 + 32]
            require mem[_1626 + 64] == mem[_1626 + 64]
            _1659 = mem[_1626 + 96]
            require mem[_1626 + 96] == mem[_1626 + 96]
            mem[_1479 + 160] = mem[_1626 + 64]
            mem[_1479 + 32] = _1645
            _1665 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1665] = _1659
            _1667 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1667] = 0
            _1668 = mem[64]
            mem[64] = mem[64] + 32
            _1673 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1673] = 23
            mem[_1673 + 32] = 'multiplication overflow'
            if not _1659:
                mem[_1668] = 0
                mem[_1479 + 64] = 0 / 10^18
                staticcall arg1.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1684 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1689 = mem[_1684]
                require mem[_1684] == mem[_1684 + 12 len 20]
                mem[mem[64] + 4] = address(_1465)
                staticcall address(_1689).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_1465)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1724 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1727 = mem[_1724]
                require mem[_1724] == mem[_1724]
                mem[_1479 + 256] = mem[_1724]
                staticcall arg1.markets(address arg1) with:
                        gas gas_remaining wei
                       args address(_1465)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1743 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1743] == bool(mem[_1743])
                _1759 = mem[_1743 + 32]
                require mem[_1743 + 32] == mem[_1743 + 32]
                require mem[_1743 + 64] == bool(mem[_1743 + 64])
                _1774 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1774] = 0
                _1779 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1779] = 0
                _1780 = mem[64]
                mem[64] = mem[64] + 32
                _1785 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1785] = 23
                mem[_1785 + 32] = 'multiplication overflow'
                mem[_1780] = 0
                mem[_1479 + 96] = 0 / 10^18
                _1818 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1818] = _1759
                _1847 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1847] = 0
                _1855 = mem[64]
                mem[64] = mem[64] + 32
                _1864 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1864] = 23
                mem[_1864 + 32] = 'multiplication overflow'
                mem[_1855] = 0
                mem[_1479 + 128] = 0 / 10^18
                if not _1759:
                    _2018 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2018] = mem[_1479 + 160]
                    _2055 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2055] = 0
                    _2070 = mem[64]
                    mem[64] = mem[64] + 32
                    _2071 = mem[_2018]
                    _2082 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2082] = 23
                    mem[_2082 + 32] = 'multiplication overflow'
                    if not _2071:
                        mem[_2070] = 0
                        mem[_1479 + 192] = 0 / 10^18
                        if idx >= mem[_243]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _243 + 32] = _1479
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if not _1727:
                        mem[_2070] = 0
                        mem[_1479 + 192] = 0 / 10^18
                        if idx >= mem[_243]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _243 + 32] = _1479
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if _2071 and _1727 > -1 / _2071:
                        revert with 'NH{q', 17
                    if not _2071:
                        revert with 'NH{q', 18
                    if _2071 * _1727 / _2071 == _1727:
                        mem[_2070] = _2071 * _1727
                        mem[_1479 + 192] = _2071 * _1727 / 10^18
                        if idx >= mem[_243]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _243 + 32] = _1479
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _2442 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 23
                    idx = 0
                    while idx < 23:
                        mem[_2442 + idx + 68] = mem[_2082 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2442 + 91] = 0
                    revert with memory
                      from mem[64]
                       len _2442 + -mem[64] + 100
                _2027 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2027] = mem[_1479 + 160]
                _2072 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2072] = 0
                _2084 = mem[64]
                mem[64] = mem[64] + 32
                _2085 = mem[_2027]
                _2106 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2106] = 23
                mem[_2106 + 32] = 'multiplication overflow'
                if not _2085:
                    mem[_2084] = 0
                    mem[_1479 + 192] = 0 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _1479
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1727:
                    mem[_2084] = 0
                    mem[_1479 + 192] = 0 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _1479
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _2085 and _1727 > -1 / _2085:
                    revert with 'NH{q', 17
                if not _2085:
                    revert with 'NH{q', 18
                if _2085 * _1727 / _2085 == _1727:
                    mem[_2084] = _2085 * _1727
                    mem[_1479 + 192] = _2085 * _1727 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _1479
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2466 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_2466 + idx + 68] = mem[_2106 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2466 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2466 + -mem[64] + 100
            if not _1645:
                mem[_1668] = 0
                mem[_1479 + 64] = 0 / 10^18
                staticcall arg1.oracle() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1688 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1693 = mem[_1688]
                require mem[_1688] == mem[_1688 + 12 len 20]
                mem[mem[64] + 4] = address(_1465)
                staticcall address(_1693).getUnderlyingPrice(address arg1) with:
                        gas gas_remaining wei
                       args address(_1465)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1726 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1730 = mem[_1726]
                require mem[_1726] == mem[_1726]
                mem[_1479 + 256] = mem[_1726]
                staticcall arg1.markets(address arg1) with:
                        gas gas_remaining wei
                       args address(_1465)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1747 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_1747] == bool(mem[_1747])
                _1760 = mem[_1747 + 32]
                require mem[_1747 + 32] == mem[_1747 + 32]
                require mem[_1747 + 64] == bool(mem[_1747 + 64])
                _1776 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1776] = 0
                _1782 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1782] = 0
                _1786 = mem[64]
                mem[64] = mem[64] + 32
                _1790 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1790] = 23
                mem[_1790 + 32] = 'multiplication overflow'
                mem[_1786] = 0
                mem[_1479 + 96] = 0 / 10^18
                _1823 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1823] = _1760
                _1858 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1858] = 0
                _1868 = mem[64]
                mem[64] = mem[64] + 32
                _1878 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1878] = 23
                mem[_1878 + 32] = 'multiplication overflow'
                mem[_1868] = 0
                mem[_1479 + 128] = 0 / 10^18
                if not _1760:
                    _2032 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2032] = mem[_1479 + 160]
                    _2074 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2074] = 0
                    _2090 = mem[64]
                    mem[64] = mem[64] + 32
                    _2091 = mem[_2032]
                    _2111 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2111] = 23
                    mem[_2111 + 32] = 'multiplication overflow'
                    if not _2091:
                        mem[_2090] = 0
                        mem[_1479 + 192] = 0 / 10^18
                        if idx >= mem[_243]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _243 + 32] = _1479
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if not _1730:
                        mem[_2090] = 0
                        mem[_1479 + 192] = 0 / 10^18
                        if idx >= mem[_243]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _243 + 32] = _1479
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if _2091 and _1730 > -1 / _2091:
                        revert with 'NH{q', 17
                    if not _2091:
                        revert with 'NH{q', 18
                    if _2091 * _1730 / _2091 == _1730:
                        mem[_2090] = _2091 * _1730
                        mem[_1479 + 192] = _2091 * _1730 / 10^18
                        if idx >= mem[_243]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _243 + 32] = _1479
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _2471 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 23
                    idx = 0
                    while idx < 23:
                        mem[_2471 + idx + 68] = mem[_2111 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2471 + 91] = 0
                    revert with memory
                      from mem[64]
                       len _2471 + -mem[64] + 100
                _2042 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2042] = mem[_1479 + 160]
                _2092 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2092] = 0
                _2113 = mem[64]
                mem[64] = mem[64] + 32
                _2114 = mem[_2042]
                _2137 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2137] = 23
                mem[_2137 + 32] = 'multiplication overflow'
                if not _2114:
                    mem[_2113] = 0
                    mem[_1479 + 192] = 0 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _1479
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1730:
                    mem[_2113] = 0
                    mem[_1479 + 192] = 0 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _1479
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _2114 and _1730 > -1 / _2114:
                    revert with 'NH{q', 17
                if not _2114:
                    revert with 'NH{q', 18
                if _2114 * _1730 / _2114 == _1730:
                    mem[_2113] = _2114 * _1730
                    mem[_1479 + 192] = _2114 * _1730 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _1479
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2500 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_2500 + idx + 68] = mem[_2137 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2500 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2500 + -mem[64] + 100
            if _1659 and _1645 > -1 / _1659:
                revert with 'NH{q', 17
            if not _1659:
                revert with 'NH{q', 18
            if _1659 * _1645 / _1659 != _1645:
                _1687 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_1687 + idx + 68] = mem[_1673 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1687 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1687 + -mem[64] + 100
            mem[_1668] = _1659 * _1645
            mem[_1479 + 64] = _1659 * _1645 / 10^18
            staticcall arg1.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1710 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1714 = mem[_1710]
            require mem[_1710] == mem[_1710 + 12 len 20]
            mem[mem[64] + 4] = address(_1465)
            staticcall address(_1714).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_1465)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1741 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1744 = mem[_1741]
            require mem[_1741] == mem[_1741]
            mem[_1479 + 256] = mem[_1741]
            staticcall arg1.markets(address arg1) with:
                    gas gas_remaining wei
                   args address(_1465)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1765 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1765] == bool(mem[_1765])
            _1778 = mem[_1765 + 32]
            require mem[_1765 + 32] == mem[_1765 + 32]
            require mem[_1765 + 64] == bool(mem[_1765 + 64])
            _1806 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1806] = _1659 * _1645 / 10^18
            _1811 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1811] = 0
            _1813 = mem[64]
            mem[64] = mem[64] + 32
            _1817 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1817] = 23
            mem[_1817 + 32] = 'multiplication overflow'
            if not _1659 * _1645 / 10^18:
                mem[_1813] = 0
                mem[_1479 + 96] = 0 / 10^18
                _1956 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1956] = _1778
                _1986 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1986] = 0
                _1994 = mem[64]
                mem[64] = mem[64] + 32
                _2005 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2005] = 23
                mem[_2005 + 32] = 'multiplication overflow'
                mem[_1994] = 0
                mem[_1479 + 128] = 0 / 10^18
                if not _1778:
                    _2264 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2264] = mem[_1479 + 160]
                    _2322 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2322] = 0
                    _2344 = mem[64]
                    mem[64] = mem[64] + 32
                    _2345 = mem[_2264]
                    _2369 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2369] = 23
                    mem[_2369 + 32] = 'multiplication overflow'
                    if not _2345:
                        mem[_2344] = 0
                        mem[_1479 + 192] = 0 / 10^18
                        if idx >= mem[_243]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _243 + 32] = _1479
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if not _1744:
                        mem[_2344] = 0
                        mem[_1479 + 192] = 0 / 10^18
                        if idx >= mem[_243]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _243 + 32] = _1479
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if _2345 and _1744 > -1 / _2345:
                        revert with 'NH{q', 17
                    if not _2345:
                        revert with 'NH{q', 18
                    if _2345 * _1744 / _2345 == _1744:
                        mem[_2344] = _2345 * _1744
                        mem[_1479 + 192] = _2345 * _1744 / 10^18
                        if idx >= mem[_243]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _243 + 32] = _1479
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _2757 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 23
                    idx = 0
                    while idx < 23:
                        mem[_2757 + idx + 68] = mem[_2369 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2757 + 91] = 0
                    revert with memory
                      from mem[64]
                       len _2757 + -mem[64] + 100
                _2279 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2279] = mem[_1479 + 160]
                _2346 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2346] = 0
                _2371 = mem[64]
                mem[64] = mem[64] + 32
                _2372 = mem[_2279]
                _2400 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2400] = 23
                mem[_2400 + 32] = 'multiplication overflow'
                if not _2372:
                    mem[_2371] = 0
                    mem[_1479 + 192] = 0 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _1479
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1744:
                    mem[_2371] = 0
                    mem[_1479 + 192] = 0 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _1479
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _2372 and _1744 > -1 / _2372:
                    revert with 'NH{q', 17
                if not _2372:
                    revert with 'NH{q', 18
                if _2372 * _1744 / _2372 == _1744:
                    mem[_2371] = _2372 * _1744
                    mem[_1479 + 192] = _2372 * _1744 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _1479
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2784 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_2784 + idx + 68] = mem[_2400 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2784 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2784 + -mem[64] + 100
            if not _1744:
                mem[_1813] = 0
                mem[_1479 + 96] = 0 / 10^18
                _1967 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1967] = _1778
                _1996 = mem[64]
                mem[64] = mem[64] + 32
                mem[_1996] = 0
                _2007 = mem[64]
                mem[64] = mem[64] + 32
                _2020 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2020] = 23
                mem[_2020 + 32] = 'multiplication overflow'
                mem[_2007] = 0
                mem[_1479 + 128] = 0 / 10^18
                if not _1778:
                    _2281 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2281] = mem[_1479 + 160]
                    _2347 = mem[64]
                    mem[64] = mem[64] + 32
                    mem[_2347] = 0
                    _2373 = mem[64]
                    mem[64] = mem[64] + 32
                    _2374 = mem[_2281]
                    _2401 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2401] = 23
                    mem[_2401 + 32] = 'multiplication overflow'
                    if not _2374:
                        mem[_2373] = 0
                        mem[_1479 + 192] = 0 / 10^18
                        if idx >= mem[_243]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _243 + 32] = _1479
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if not _1744:
                        mem[_2373] = 0
                        mem[_1479 + 192] = 0 / 10^18
                        if idx >= mem[_243]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _243 + 32] = _1479
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    if _2374 and _1744 > -1 / _2374:
                        revert with 'NH{q', 17
                    if not _2374:
                        revert with 'NH{q', 18
                    if _2374 * _1744 / _2374 == _1744:
                        mem[_2373] = _2374 * _1744
                        mem[_1479 + 192] = _2374 * _1744 / 10^18
                        if idx >= mem[_243]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + _243 + 32] = _1479
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _2786 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 23
                    idx = 0
                    while idx < 23:
                        mem[_2786 + idx + 68] = mem[_2401 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2786 + 91] = 0
                    revert with memory
                      from mem[64]
                       len _2786 + -mem[64] + 100
                _2300 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2300] = mem[_1479 + 160]
                _2375 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2375] = 0
                _2403 = mem[64]
                mem[64] = mem[64] + 32
                _2404 = mem[_2300]
                _2429 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2429] = 23
                mem[_2429 + 32] = 'multiplication overflow'
                if not _2404:
                    mem[_2403] = 0
                    mem[_1479 + 192] = 0 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _1479
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1744:
                    mem[_2403] = 0
                    mem[_1479 + 192] = 0 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _1479
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _2404 and _1744 > -1 / _2404:
                    revert with 'NH{q', 17
                if not _2404:
                    revert with 'NH{q', 18
                if _2404 * _1744 / _2404 == _1744:
                    mem[_2403] = _2404 * _1744
                    mem[_1479 + 192] = _2404 * _1744 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _1479
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _2812 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_2812 + idx + 68] = mem[_2429 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2812 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2812 + -mem[64] + 100
            if _1659 * _1645 / 10^18 and _1744 > -1 / _1659 * _1645 / 10^18:
                revert with 'NH{q', 17
            if not _1659 * _1645 / 10^18:
                revert with 'NH{q', 18
            if _1659 * _1645 / 10^18 * _1744 / _1659 * _1645 / 10^18 != _1744:
                _1977 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_1977 + idx + 68] = mem[_1817 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1977 + 91] = 0
                revert with memory
                  from mem[64]
                   len _1977 + -mem[64] + 100
            mem[_1813] = _1659 * _1645 / 10^18 * _1744
            mem[_1479 + 96] = _1659 * _1645 / 10^18 * _1744 / 10^18
            _2190 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2190] = _1778
            _2235 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2235] = 0
            _2245 = mem[64]
            mem[64] = mem[64] + 32
            _2253 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2253] = 23
            mem[_2253 + 32] = 'multiplication overflow'
            if not _1778:
                mem[_2245] = 0
                mem[_1479 + 128] = 0 / 10^18
                _2605 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2605] = mem[_1479 + 160]
                _2662 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2662] = 0
                _2683 = mem[64]
                mem[64] = mem[64] + 32
                _2684 = mem[_2605]
                _2701 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2701] = 23
                mem[_2701 + 32] = 'multiplication overflow'
                if not _2684:
                    mem[_2683] = 0
                    mem[_1479 + 192] = 0 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _1479
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1744:
                    mem[_2683] = 0
                    mem[_1479 + 192] = 0 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _1479
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _2684 and _1744 > -1 / _2684:
                    revert with 'NH{q', 17
                if not _2684:
                    revert with 'NH{q', 18
                if _2684 * _1744 / _2684 == _1744:
                    mem[_2683] = _2684 * _1744
                    mem[_1479 + 192] = _2684 * _1744 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _1479
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _3026 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_3026 + idx + 68] = mem[_2701 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3026 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3026 + -mem[64] + 100
            if not _1659 * _1645 / 10^18 * _1744 / 10^18:
                mem[_2245] = 0
                mem[_1479 + 128] = 0 / 10^18
                _2620 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2620] = mem[_1479 + 160]
                _2685 = mem[64]
                mem[64] = mem[64] + 32
                mem[_2685] = 0
                _2703 = mem[64]
                mem[64] = mem[64] + 32
                _2704 = mem[_2620]
                _2719 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2719] = 23
                mem[_2719 + 32] = 'multiplication overflow'
                if not _2704:
                    mem[_2703] = 0
                    mem[_1479 + 192] = 0 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _1479
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _1744:
                    mem[_2703] = 0
                    mem[_1479 + 192] = 0 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _1479
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _2704 and _1744 > -1 / _2704:
                    revert with 'NH{q', 17
                if not _2704:
                    revert with 'NH{q', 18
                if _2704 * _1744 / _2704 == _1744:
                    mem[_2703] = _2704 * _1744
                    mem[_1479 + 192] = _2704 * _1744 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _1479
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _3043 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_3043 + idx + 68] = mem[_2719 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3043 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3043 + -mem[64] + 100
            if _1778 and _1659 * _1645 / 10^18 * _1744 / 10^18 > -1 / _1778:
                revert with 'NH{q', 17
            if not _1778:
                revert with 'NH{q', 18
            if _1778 * _1659 * _1645 / 10^18 * _1744 / 10^18 / _1778 != _1659 * _1645 / 10^18 * _1744 / 10^18:
                _2640 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_2640 + idx + 68] = mem[_2253 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2640 + 91] = 0
                revert with memory
                  from mem[64]
                   len _2640 + -mem[64] + 100
            mem[_2245] = _1778 * _1659 * _1645 / 10^18 * _1744 / 10^18
            mem[_1479 + 128] = _1778 * _1659 * _1645 / 10^18 * _1744 / 10^18 / 10^18
            _2931 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2931] = mem[_1479 + 160]
            _2973 = mem[64]
            mem[64] = mem[64] + 32
            mem[_2973] = 0
            _2983 = mem[64]
            mem[64] = mem[64] + 32
            _2984 = mem[_2931]
            _2987 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2987] = 23
            mem[_2987 + 32] = 'multiplication overflow'
            if not _2984:
                mem[_2983] = 0
                mem[_1479 + 192] = 0 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _1479
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _1744:
                mem[_2983] = 0
                mem[_1479 + 192] = 0 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _1479
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _2984 and _1744 > -1 / _2984:
                revert with 'NH{q', 17
            if not _2984:
                revert with 'NH{q', 18
            if _2984 * _1744 / _2984 == _1744:
                mem[_2983] = _2984 * _1744
                mem[_1479 + 192] = _2984 * _1744 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _1479
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3166 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3166 + idx + 68] = mem[_2987 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3166 + 91] = 0
            revert with memory
              from mem[64]
               len _3166 + -mem[64] + 100
        _1820 = mem[_243]
        idx = 0
        while idx < _1820:
            _1830 = mem[384]
            if idx >= mem[_243]:
                revert with 'NH{q', 50
            _1846 = mem[mem[(32 * idx) + _243 + 32] + 128]
            _1854 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1854] = 17
            mem[_1854 + 32] = 'addition overflow'
            if _1830 > -_1846 - 1:
                revert with 'NH{q', 17
            if _1830 + _1846 < _1830:
                _1933 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 17
                idx = 0
                while idx < 17:
                    mem[_1933 + idx + 68] = mem[_1854 + idx + 32]
                    _1820 = mem[_243]
                    idx = idx + 32
                    continue 
                mem[_1933 + 85] = 0
                revert with memory
                  from mem[64]
                   len _1933 + -mem[64] + 100
            mem[384] = _1830 + _1846
            _1941 = mem[416]
            if idx >= mem[_243]:
                revert with 'NH{q', 50
            _1952 = mem[mem[(32 * idx) + _243 + 32] + 192]
            _1965 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1965] = 17
            mem[_1965 + 32] = 'addition overflow'
            if _1941 > -_1952 - 1:
                revert with 'NH{q', 17
            if _1941 + _1952 >= _1941:
                mem[416] = _1941 + _1952
                if idx == -1:
                    revert with 'NH{q', 17
                _1820 = mem[_243]
                idx = idx + 1
                continue 
            _2069 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 17
            idx = 0
            while idx < 17:
                mem[_2069 + idx + 68] = mem[_1965 + idx + 32]
                _1820 = mem[_243]
                idx = idx + 32
                continue 
            mem[_2069 + 85] = 0
            revert with memory
              from mem[64]
               len _2069 + -mem[64] + 100
        _1827 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1827] = mem[416]
        if not mem[384]:
            mem[448] = 0
            mem[mem[64]] = 32
            _1886 = mem[288]
            mem[mem[64] + 32] = 192
            _1903 = mem[_1886]
            mem[mem[64] + 224] = mem[_1886]
            idx = 0
            s = _1886 + 32
            t = mem[64] + 256
            while idx < _1903:
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
            return 32, 192, mem[mem[64] + 64 len (32 * _1903) + 192]
        if mem[416] <= 0:
            mem[448] = 100
            _1887 = mem[64]
            mem[mem[64]] = 32
            _1904 = mem[288]
            mem[mem[64] + 32] = 192
            _1921 = mem[_1904]
            mem[mem[64] + 224] = mem[_1904]
            idx = 0
            s = _1904 + 32
            t = mem[64] + 256
            while idx < _1921:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1887 + 64] = mem[320]
            mem[_1887 + 96] = mem[352]
            mem[_1887 + 128] = mem[384]
            mem[_1887 + 160] = mem[416]
            mem[_1887 + 192] = mem[448]
            return memory
              from mem[64]
               len _1887 + (32 * _1921) + -mem[64] + 256
        _1853 = mem[384]
        _1876 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1876] = 23
        mem[_1876 + 32] = 'multiplication overflow'
        if not _1853:
            _1927 = mem[_1827]
            _1932 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1932] = 14
            mem[_1932 + 32] = 'divide by zero'
            if _1927 <= 0:
                revert with 0, 'divide by zero', 0
            if not _1927:
                revert with 'NH{q', 18
            mem[448] = 0 / _1927
            mem[mem[64]] = 32
            _2151 = mem[288]
            mem[mem[64] + 32] = 192
            _2189 = mem[_2151]
            mem[mem[64] + 224] = mem[_2151]
            idx = 0
            s = _2151 + 32
            t = mem[64] + 256
            while idx < _2189:
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
            return 32, 192, mem[mem[64] + 64 len (32 * _2189) + 192]
        if _1853 and 10^18 > -1 / _1853:
            revert with 'NH{q', 17
        if not _1853:
            revert with 'NH{q', 18
        if 10^18 * _1853 / _1853 != 10^18:
            var140001 = 32
            revert with 0, 'multiplication overflow', 0
        _2103 = mem[_1827]
        _2130 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2130] = 14
        mem[_2130 + 32] = 'divide by zero'
        if _2103 <= 0:
            revert with 0, 'divide by zero', 0
        if not _2103:
            revert with 'NH{q', 18
        mem[448] = 10^18 * _1853 / _2103
        mem[mem[64]] = 32
        _2440 = mem[288]
        mem[mem[64] + 32] = 192
        _2497 = mem[_2440]
        mem[mem[64] + 224] = mem[_2440]
        idx = 0
        s = _2440 + 32
        t = mem[64] + 256
        while idx < _2497:
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
        return 32, 192, mem[mem[64] + 64 len (32 * _2497) + 192]
    mem[64] = _243 + (32 * _15) + 352
    mem[_243 + (32 * _15) + 32] = 0
    mem[_243 + (32 * _15) + 64] = 0
    mem[_243 + (32 * _15) + 96] = 0
    mem[_243 + (32 * _15) + 128] = 0
    mem[_243 + (32 * _15) + 160] = 0
    mem[_243 + (32 * _15) + 192] = 0
    mem[_243 + (32 * _15) + 224] = 0
    mem[_243 + (32 * _15) + 256] = 0
    mem[_243 + (32 * _15) + 288] = 0
    mem[_243 + (32 * _15) + 320] = 0
    mem[var104001] = _243 + (32 * _15) + 32
    s = var104001
    idx = var104002
    while idx - 1:
        mem[64] = mem[64] + 320
        mem[_243 + (32 * _15) + 32] = 0
        mem[_243 + (32 * _15) + 64] = 0
        mem[_243 + (32 * _15) + 96] = 0
        mem[_243 + (32 * _15) + 128] = 0
        mem[_243 + (32 * _15) + 160] = 0
        mem[_243 + (32 * _15) + 192] = 0
        mem[_243 + (32 * _15) + 224] = 0
        mem[_243 + (32 * _15) + 256] = 0
        mem[_243 + (32 * _15) + 288] = 0
        mem[_243 + (32 * _15) + 320] = 0
        mem[s + 32] = _243 + (32 * _15) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < _15:
        if idx >= mem[(2 * ceil32(return_data.size)) + 480]:
            revert with 'NH{q', 50
        _3263 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 512]
        _3270 = mem[64]
        mem[64] = mem[64] + 320
        mem[_3270] = 0
        mem[_3270 + 32] = 0
        mem[_3270 + 64] = 0
        mem[_3270 + 96] = 0
        mem[_3270 + 128] = 0
        mem[_3270 + 160] = 0
        mem[_3270 + 192] = 0
        mem[_3270 + 224] = 0
        mem[_3270 + 256] = 0
        mem[_3270 + 288] = 0
        _3280 = mem[64]
        mem[64] = mem[64] + 320
        mem[_3280 + 32] = 0
        mem[_3280 + 64] = 0
        mem[_3280 + 96] = 0
        mem[_3280 + 128] = 0
        mem[_3280 + 160] = 0
        mem[_3280 + 192] = 0
        mem[_3280 + 224] = 0
        mem[_3280 + 256] = 0
        mem[_3280 + 288] = 0
        mem[_3280] = address(_3263)
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = address(_3263)
        staticcall arg1.checkMembership(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(arg2), address(_3263)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3421 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_3421] == bool(mem[_3421])
        mem[_3280 + 288] = bool(mem[_3421])
        staticcall address(_3263).getAccountSnapshot(address arg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3454 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_3454] == mem[_3454]
        _3462 = mem[_3454 + 32]
        require mem[_3454 + 32] == mem[_3454 + 32]
        require mem[_3454 + 64] == mem[_3454 + 64]
        _3468 = mem[_3454 + 96]
        require mem[_3454 + 96] == mem[_3454 + 96]
        mem[_3280 + 160] = mem[_3454 + 64]
        mem[_3280 + 32] = _3462
        _3471 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3471] = _3468
        _3473 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3473] = 0
        _3474 = mem[64]
        mem[64] = mem[64] + 32
        _3476 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3476] = 23
        mem[_3476 + 32] = 'multiplication overflow'
        if not _3468:
            mem[_3474] = 0
            mem[_3280 + 64] = 0 / 10^18
            staticcall arg1.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3481 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3486 = mem[_3481]
            require mem[_3481] == mem[_3481 + 12 len 20]
            mem[mem[64] + 4] = address(_3263)
            staticcall address(_3486).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_3263)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3501 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3504 = mem[_3501]
            require mem[_3501] == mem[_3501]
            mem[_3280 + 256] = mem[_3501]
            staticcall arg1.markets(address arg1) with:
                    gas gas_remaining wei
                   args address(_3263)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3511 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_3511] == bool(mem[_3511])
            _3518 = mem[_3511 + 32]
            require mem[_3511 + 32] == mem[_3511 + 32]
            require mem[_3511 + 64] == bool(mem[_3511 + 64])
            _3525 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3525] = 0
            _3530 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3530] = 0
            _3531 = mem[64]
            mem[64] = mem[64] + 32
            _3534 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3534] = 23
            mem[_3534 + 32] = 'multiplication overflow'
            mem[_3531] = 0
            mem[_3280 + 96] = 0 / 10^18
            _3549 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3549] = _3518
            _3568 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3568] = 0
            _3572 = mem[64]
            mem[64] = mem[64] + 32
            _3577 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3577] = 23
            mem[_3577 + 32] = 'multiplication overflow'
            mem[_3572] = 0
            mem[_3280 + 128] = 0 / 10^18
            if not _3518:
                _3657 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3657] = mem[_3280 + 160]
                _3679 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3679] = 0
                _3685 = mem[64]
                mem[64] = mem[64] + 32
                _3686 = mem[_3657]
                _3692 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3692] = 23
                mem[_3692 + 32] = 'multiplication overflow'
                if not _3686:
                    mem[_3685] = 0
                    mem[_3280 + 192] = 0 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _3280
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _3504:
                    mem[_3685] = 0
                    mem[_3280 + 192] = 0 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _3280
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _3686 and _3504 > -1 / _3686:
                    revert with 'NH{q', 17
                if not _3686:
                    revert with 'NH{q', 18
                if _3686 * _3504 / _3686 == _3504:
                    mem[_3685] = _3686 * _3504
                    mem[_3280 + 192] = _3686 * _3504 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _3280
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _3887 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_3887 + idx + 68] = mem[_3692 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3887 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3887 + -mem[64] + 100
            _3662 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3662] = mem[_3280 + 160]
            _3687 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3687] = 0
            _3694 = mem[64]
            mem[64] = mem[64] + 32
            _3695 = mem[_3662]
            _3708 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3708] = 23
            mem[_3708 + 32] = 'multiplication overflow'
            if not _3695:
                mem[_3694] = 0
                mem[_3280 + 192] = 0 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _3280
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _3504:
                mem[_3694] = 0
                mem[_3280 + 192] = 0 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _3280
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _3695 and _3504 > -1 / _3695:
                revert with 'NH{q', 17
            if not _3695:
                revert with 'NH{q', 18
            if _3695 * _3504 / _3695 == _3504:
                mem[_3694] = _3695 * _3504
                mem[_3280 + 192] = _3695 * _3504 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _3280
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3896 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3896 + idx + 68] = mem[_3708 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3896 + 91] = 0
            revert with memory
              from mem[64]
               len _3896 + -mem[64] + 100
        if not _3462:
            mem[_3474] = 0
            mem[_3280 + 64] = 0 / 10^18
            staticcall arg1.oracle() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3485 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3488 = mem[_3485]
            require mem[_3485] == mem[_3485 + 12 len 20]
            mem[mem[64] + 4] = address(_3263)
            staticcall address(_3488).getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_3263)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3503 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3505 = mem[_3503]
            require mem[_3503] == mem[_3503]
            mem[_3280 + 256] = mem[_3503]
            staticcall arg1.markets(address arg1) with:
                    gas gas_remaining wei
                   args address(_3263)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3514 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_3514] == bool(mem[_3514])
            _3519 = mem[_3514 + 32]
            require mem[_3514 + 32] == mem[_3514 + 32]
            require mem[_3514 + 64] == bool(mem[_3514 + 64])
            _3527 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3527] = 0
            _3533 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3533] = 0
            _3535 = mem[64]
            mem[64] = mem[64] + 32
            _3537 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3537] = 23
            mem[_3537 + 32] = 'multiplication overflow'
            mem[_3535] = 0
            mem[_3280 + 96] = 0 / 10^18
            _3554 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3554] = _3519
            _3575 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3575] = 0
            _3581 = mem[64]
            mem[64] = mem[64] + 32
            _3586 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3586] = 23
            mem[_3586 + 32] = 'multiplication overflow'
            mem[_3581] = 0
            mem[_3280 + 128] = 0 / 10^18
            if not _3519:
                _3667 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3667] = mem[_3280 + 160]
                _3689 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3689] = 0
                _3700 = mem[64]
                mem[64] = mem[64] + 32
                _3701 = mem[_3667]
                _3713 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3713] = 23
                mem[_3713 + 32] = 'multiplication overflow'
                if not _3701:
                    mem[_3700] = 0
                    mem[_3280 + 192] = 0 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _3280
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _3505:
                    mem[_3700] = 0
                    mem[_3280 + 192] = 0 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _3280
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _3701 and _3505 > -1 / _3701:
                    revert with 'NH{q', 17
                if not _3701:
                    revert with 'NH{q', 18
                if _3701 * _3505 / _3701 == _3505:
                    mem[_3700] = _3701 * _3505
                    mem[_3280 + 192] = _3701 * _3505 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _3280
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _3901 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_3901 + idx + 68] = mem[_3713 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3901 + 91] = 0
                revert with memory
                  from mem[64]
                   len _3901 + -mem[64] + 100
            _3673 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3673] = mem[_3280 + 160]
            _3702 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3702] = 0
            _3715 = mem[64]
            mem[64] = mem[64] + 32
            _3716 = mem[_3673]
            _3728 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3728] = 23
            mem[_3728 + 32] = 'multiplication overflow'
            if not _3716:
                mem[_3715] = 0
                mem[_3280 + 192] = 0 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _3280
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _3505:
                mem[_3715] = 0
                mem[_3280 + 192] = 0 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _3280
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _3716 and _3505 > -1 / _3716:
                revert with 'NH{q', 17
            if not _3716:
                revert with 'NH{q', 18
            if _3716 * _3505 / _3716 == _3505:
                mem[_3715] = _3716 * _3505
                mem[_3280 + 192] = _3716 * _3505 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _3280
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _3909 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3909 + idx + 68] = mem[_3728 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3909 + 91] = 0
            revert with memory
              from mem[64]
               len _3909 + -mem[64] + 100
        if _3468 and _3462 > -1 / _3468:
            revert with 'NH{q', 17
        if not _3468:
            revert with 'NH{q', 18
        if _3468 * _3462 / _3468 != _3462:
            _3484 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3484 + idx + 68] = mem[_3476 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3484 + 91] = 0
            revert with memory
              from mem[64]
               len _3484 + -mem[64] + 100
        mem[_3474] = _3468 * _3462
        mem[_3280 + 64] = _3468 * _3462 / 10^18
        staticcall arg1.oracle() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3495 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3498 = mem[_3495]
        require mem[_3495] == mem[_3495 + 12 len 20]
        mem[mem[64] + 4] = address(_3263)
        staticcall address(_3498).getUnderlyingPrice(address arg1) with:
                gas gas_remaining wei
               args address(_3263)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3509 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _3512 = mem[_3509]
        require mem[_3509] == mem[_3509]
        mem[_3280 + 256] = mem[_3509]
        staticcall arg1.markets(address arg1) with:
                gas gas_remaining wei
               args address(_3263)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _3521 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_3521] == bool(mem[_3521])
        _3529 = mem[_3521 + 32]
        require mem[_3521 + 32] == mem[_3521 + 32]
        require mem[_3521 + 64] == bool(mem[_3521 + 64])
        _3543 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3543] = _3468 * _3462 / 10^18
        _3545 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3545] = 0
        _3546 = mem[64]
        mem[64] = mem[64] + 32
        _3548 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3548] = 23
        mem[_3548 + 32] = 'multiplication overflow'
        if not _3468 * _3462 / 10^18:
            mem[_3546] = 0
            mem[_3280 + 96] = 0 / 10^18
            _3623 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3623] = _3529
            _3640 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3640] = 0
            _3644 = mem[64]
            mem[64] = mem[64] + 32
            _3650 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3650] = 23
            mem[_3650 + 32] = 'multiplication overflow'
            mem[_3644] = 0
            mem[_3280 + 128] = 0 / 10^18
            if not _3529:
                _3782 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3782] = mem[_3280 + 160]
                _3823 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3823] = 0
                _3835 = mem[64]
                mem[64] = mem[64] + 32
                _3836 = mem[_3782]
                _3849 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3849] = 23
                mem[_3849 + 32] = 'multiplication overflow'
                if not _3836:
                    mem[_3835] = 0
                    mem[_3280 + 192] = 0 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _3280
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _3512:
                    mem[_3835] = 0
                    mem[_3280 + 192] = 0 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _3280
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _3836 and _3512 > -1 / _3836:
                    revert with 'NH{q', 17
                if not _3836:
                    revert with 'NH{q', 18
                if _3836 * _3512 / _3836 == _3512:
                    mem[_3835] = _3836 * _3512
                    mem[_3280 + 192] = _3836 * _3512 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _3280
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _4037 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_4037 + idx + 68] = mem[_3849 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4037 + 91] = 0
                revert with memory
                  from mem[64]
                   len _4037 + -mem[64] + 100
            _3794 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3794] = mem[_3280 + 160]
            _3837 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3837] = 0
            _3851 = mem[64]
            mem[64] = mem[64] + 32
            _3852 = mem[_3794]
            _3866 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3866] = 23
            mem[_3866 + 32] = 'multiplication overflow'
            if not _3852:
                mem[_3851] = 0
                mem[_3280 + 192] = 0 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _3280
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _3512:
                mem[_3851] = 0
                mem[_3280 + 192] = 0 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _3280
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _3852 and _3512 > -1 / _3852:
                revert with 'NH{q', 17
            if not _3852:
                revert with 'NH{q', 18
            if _3852 * _3512 / _3852 == _3512:
                mem[_3851] = _3852 * _3512
                mem[_3280 + 192] = _3852 * _3512 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _3280
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _4053 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_4053 + idx + 68] = mem[_3866 + idx + 32]
                idx = idx + 32
                continue 
            mem[_4053 + 91] = 0
            revert with memory
              from mem[64]
               len _4053 + -mem[64] + 100
        if not _3512:
            mem[_3546] = 0
            mem[_3280 + 96] = 0 / 10^18
            _3629 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3629] = _3529
            _3646 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3646] = 0
            _3652 = mem[64]
            mem[64] = mem[64] + 32
            _3659 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3659] = 23
            mem[_3659 + 32] = 'multiplication overflow'
            mem[_3652] = 0
            mem[_3280 + 128] = 0 / 10^18
            if not _3529:
                _3796 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3796] = mem[_3280 + 160]
                _3838 = mem[64]
                mem[64] = mem[64] + 32
                mem[_3838] = 0
                _3853 = mem[64]
                mem[64] = mem[64] + 32
                _3854 = mem[_3796]
                _3867 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3867] = 23
                mem[_3867 + 32] = 'multiplication overflow'
                if not _3854:
                    mem[_3853] = 0
                    mem[_3280 + 192] = 0 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _3280
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if not _3512:
                    mem[_3853] = 0
                    mem[_3280 + 192] = 0 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _3280
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                if _3854 and _3512 > -1 / _3854:
                    revert with 'NH{q', 17
                if not _3854:
                    revert with 'NH{q', 18
                if _3854 * _3512 / _3854 == _3512:
                    mem[_3853] = _3854 * _3512
                    mem[_3280 + 192] = _3854 * _3512 / 10^18
                    if idx >= mem[_243]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _243 + 32] = _3280
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _4055 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 23
                idx = 0
                while idx < 23:
                    mem[_4055 + idx + 68] = mem[_3867 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4055 + 91] = 0
                revert with memory
                  from mem[64]
                   len _4055 + -mem[64] + 100
            _3810 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3810] = mem[_3280 + 160]
            _3855 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3855] = 0
            _3869 = mem[64]
            mem[64] = mem[64] + 32
            _3870 = mem[_3810]
            _3882 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3882] = 23
            mem[_3882 + 32] = 'multiplication overflow'
            if not _3870:
                mem[_3869] = 0
                mem[_3280 + 192] = 0 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _3280
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _3512:
                mem[_3869] = 0
                mem[_3280 + 192] = 0 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _3280
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _3870 and _3512 > -1 / _3870:
                revert with 'NH{q', 17
            if not _3870:
                revert with 'NH{q', 18
            if _3870 * _3512 / _3870 == _3512:
                mem[_3869] = _3870 * _3512
                mem[_3280 + 192] = _3870 * _3512 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _3280
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _4071 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_4071 + idx + 68] = mem[_3882 + idx + 32]
                idx = idx + 32
                continue 
            mem[_4071 + 91] = 0
            revert with memory
              from mem[64]
               len _4071 + -mem[64] + 100
        if _3468 * _3462 / 10^18 and _3512 > -1 / _3468 * _3462 / 10^18:
            revert with 'NH{q', 17
        if not _3468 * _3462 / 10^18:
            revert with 'NH{q', 18
        if _3468 * _3462 / 10^18 * _3512 / _3468 * _3462 / 10^18 != _3512:
            _3636 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3636 + idx + 68] = mem[_3548 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3636 + 91] = 0
            revert with memory
              from mem[64]
               len _3636 + -mem[64] + 100
        mem[_3546] = _3468 * _3462 / 10^18 * _3512
        mem[_3280 + 96] = _3468 * _3462 / 10^18 * _3512 / 10^18
        _3749 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3749] = _3529
        _3762 = mem[64]
        mem[64] = mem[64] + 32
        mem[_3762] = 0
        _3767 = mem[64]
        mem[64] = mem[64] + 32
        _3773 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3773] = 23
        mem[_3773 + 32] = 'multiplication overflow'
        if not _3529:
            mem[_3767] = 0
            mem[_3280 + 128] = 0 / 10^18
            _3961 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3961] = mem[_3280 + 160]
            _3990 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3990] = 0
            _3999 = mem[64]
            mem[64] = mem[64] + 32
            _4000 = mem[_3961]
            _4007 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4007] = 23
            mem[_4007 + 32] = 'multiplication overflow'
            if not _4000:
                mem[_3999] = 0
                mem[_3280 + 192] = 0 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _3280
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _3512:
                mem[_3999] = 0
                mem[_3280 + 192] = 0 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _3280
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _4000 and _3512 > -1 / _4000:
                revert with 'NH{q', 17
            if not _4000:
                revert with 'NH{q', 18
            if _4000 * _3512 / _4000 == _3512:
                mem[_3999] = _4000 * _3512
                mem[_3280 + 192] = _4000 * _3512 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _3280
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _4164 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_4164 + idx + 68] = mem[_4007 + idx + 32]
                idx = idx + 32
                continue 
            mem[_4164 + 91] = 0
            revert with memory
              from mem[64]
               len _4164 + -mem[64] + 100
        if not _3468 * _3462 / 10^18 * _3512 / 10^18:
            mem[_3767] = 0
            mem[_3280 + 128] = 0 / 10^18
            _3971 = mem[64]
            mem[64] = mem[64] + 32
            mem[_3971] = mem[_3280 + 160]
            _4001 = mem[64]
            mem[64] = mem[64] + 32
            mem[_4001] = 0
            _4009 = mem[64]
            mem[64] = mem[64] + 32
            _4010 = mem[_3971]
            _4016 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4016] = 23
            mem[_4016 + 32] = 'multiplication overflow'
            if not _4010:
                mem[_4009] = 0
                mem[_3280 + 192] = 0 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _3280
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not _3512:
                mem[_4009] = 0
                mem[_3280 + 192] = 0 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _3280
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if _4010 and _3512 > -1 / _4010:
                revert with 'NH{q', 17
            if not _4010:
                revert with 'NH{q', 18
            if _4010 * _3512 / _4010 == _3512:
                mem[_4009] = _4010 * _3512
                mem[_3280 + 192] = _4010 * _3512 / 10^18
                if idx >= mem[_243]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + _243 + 32] = _3280
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _4178 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_4178 + idx + 68] = mem[_4016 + idx + 32]
                idx = idx + 32
                continue 
            mem[_4178 + 91] = 0
            revert with memory
              from mem[64]
               len _4178 + -mem[64] + 100
        if _3529 and _3468 * _3462 / 10^18 * _3512 / 10^18 > -1 / _3529:
            revert with 'NH{q', 17
        if not _3529:
            revert with 'NH{q', 18
        if _3529 * _3468 * _3462 / 10^18 * _3512 / 10^18 / _3529 != _3468 * _3462 / 10^18 * _3512 / 10^18:
            _3983 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 23
            idx = 0
            while idx < 23:
                mem[_3983 + idx + 68] = mem[_3773 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3983 + 91] = 0
            revert with memory
              from mem[64]
               len _3983 + -mem[64] + 100
        mem[_3767] = _3529 * _3468 * _3462 / 10^18 * _3512 / 10^18
        mem[_3280 + 128] = _3529 * _3468 * _3462 / 10^18 * _3512 / 10^18 / 10^18
        _4120 = mem[64]
        mem[64] = mem[64] + 32
        mem[_4120] = mem[_3280 + 160]
        _4134 = mem[64]
        mem[64] = mem[64] + 32
        mem[_4134] = 0
        _4138 = mem[64]
        mem[64] = mem[64] + 32
        _4139 = mem[_4120]
        _4140 = mem[64]
        mem[64] = mem[64] + 64
        mem[_4140] = 23
        mem[_4140 + 32] = 'multiplication overflow'
        if not _4139:
            mem[_4138] = 0
            mem[_3280 + 192] = 0 / 10^18
            if idx >= mem[_243]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _243 + 32] = _3280
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not _3512:
            mem[_4138] = 0
            mem[_3280 + 192] = 0 / 10^18
            if idx >= mem[_243]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _243 + 32] = _3280
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if _4139 and _3512 > -1 / _4139:
            revert with 'NH{q', 17
        if not _4139:
            revert with 'NH{q', 18
        if _4139 * _3512 / _4139 == _3512:
            mem[_4138] = _4139 * _3512
            mem[_3280 + 192] = _4139 * _3512 / 10^18
            if idx >= mem[_243]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _243 + 32] = _3280
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _4226 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 23
        idx = 0
        while idx < 23:
            mem[_4226 + idx + 68] = mem[_4140 + idx + 32]
            idx = idx + 32
            continue 
        mem[_4226 + 91] = 0
        revert with memory
          from mem[64]
           len _4226 + -mem[64] + 100
    _3551 = mem[_243]
    idx = 0
    while idx < _3551:
        _3559 = mem[384]
        if idx >= mem[_243]:
            revert with 'NH{q', 50
        _3567 = mem[mem[(32 * idx) + _243 + 32] + 128]
        _3571 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3571] = 17
        mem[_3571 + 32] = 'addition overflow'
        if _3559 > -_3567 - 1:
            revert with 'NH{q', 17
        if _3559 + _3567 < _3559:
            _3606 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 17
            idx = 0
            while idx < 17:
                mem[_3606 + idx + 68] = mem[_3571 + idx + 32]
                _3551 = mem[_243]
                idx = idx + 32
                continue 
            mem[_3606 + 85] = 0
            revert with memory
              from mem[64]
               len _3606 + -mem[64] + 100
        mem[384] = _3559 + _3567
        _3612 = mem[416]
        if idx >= mem[_243]:
            revert with 'NH{q', 50
        _3619 = mem[mem[(32 * idx) + _243 + 32] + 192]
        _3627 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3627] = 17
        mem[_3627 + 32] = 'addition overflow'
        if _3612 > -_3619 - 1:
            revert with 'NH{q', 17
        if _3612 + _3619 >= _3612:
            mem[416] = _3612 + _3619
            if idx == -1:
                revert with 'NH{q', 17
            _3551 = mem[_243]
            idx = idx + 1
            continue 
        _3684 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 17
        idx = 0
        while idx < 17:
            mem[_3684 + idx + 68] = mem[_3627 + idx + 32]
            _3551 = mem[_243]
            idx = idx + 32
            continue 
        mem[_3684 + 85] = 0
        revert with memory
          from mem[64]
           len _3684 + -mem[64] + 100
    _3556 = mem[64]
    mem[64] = mem[64] + 32
    mem[_3556] = mem[416]
    if not mem[384]:
        mem[448] = 0
        mem[mem[64]] = 32
        _3590 = mem[288]
        mem[mem[64] + 32] = 192
        _3598 = mem[_3590]
        mem[mem[64] + 224] = mem[_3590]
        idx = 0
        s = _3590 + 32
        t = mem[64] + 256
        while idx < _3598:
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
        return 32, 192, mem[mem[64] + 64 len (32 * _3598) + 192]
    if mem[416] <= 0:
        mem[448] = 100
        _3591 = mem[64]
        mem[mem[64]] = 32
        _3599 = mem[288]
        mem[mem[64] + 32] = 192
        _3601 = mem[_3599]
        mem[mem[64] + 224] = mem[_3599]
        idx = 0
        s = _3599 + 32
        t = mem[64] + 256
        while idx < _3601:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_3591 + 64] = mem[320]
        mem[_3591 + 96] = mem[352]
        mem[_3591 + 128] = mem[384]
        mem[_3591 + 160] = mem[416]
        mem[_3591 + 192] = mem[448]
        return memory
          from mem[64]
           len _3591 + (32 * _3601) + -mem[64] + 256
    _3570 = mem[384]
    _3584 = mem[64]
    mem[64] = mem[64] + 64
    mem[_3584] = 23
    mem[_3584 + 32] = 'multiplication overflow'
    if not _3570:
        _3603 = mem[_3556]
        _3605 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3605] = 14
        mem[_3605 + 32] = 'divide by zero'
        if _3603 <= 0:
            revert with 0, 'divide by zero', 0
        if not _3603:
            revert with 'NH{q', 18
        mem[448] = 0 / _3603
        mem[mem[64]] = 32
        _3733 = mem[288]
        mem[mem[64] + 32] = 192
        _3748 = mem[_3733]
        mem[mem[64] + 224] = mem[_3733]
        idx = 0
        s = _3733 + 32
        t = mem[64] + 256
        while idx < _3748:
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
        return 32, 192, mem[mem[64] + 64 len (32 * _3748) + 192]
    if _3570 and 10^18 > -1 / _3570:
        revert with 'NH{q', 17
    if not _3570:
        revert with 'NH{q', 18
    if 10^18 * _3570 / _3570 != 10^18:
        var147001 = 32
        revert with 0, 'multiplication overflow', 0
    _3705 = mem[_3556]
    _3721 = mem[64]
    mem[64] = mem[64] + 64
    mem[_3721] = 14
    mem[_3721 + 32] = 'divide by zero'
    if _3705 <= 0:
        revert with 0, 'divide by zero', 0
    if not _3705:
        revert with 'NH{q', 18
    mem[448] = 10^18 * _3570 / _3705
    mem[mem[64]] = 32
    _3885 = mem[288]
    mem[mem[64] + 32] = 192
    _3906 = mem[_3885]
    mem[mem[64] + 224] = mem[_3885]
    idx = 0
    s = _3885 + 32
    t = mem[64] + 256
    while idx < _3906:
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
    return 32, 192, mem[mem[64] + 64 len (32 * _3906) + 192]
}



}
