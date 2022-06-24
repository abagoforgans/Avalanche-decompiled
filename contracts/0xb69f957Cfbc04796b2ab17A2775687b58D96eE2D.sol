contract main {




// =====================  Runtime code  =====================


#
#  - sub_969215ba(?)
#
address stor0;

function _fallback() payable {
    revert
}

function sub_55e50d32(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.getStats(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    require ext_code.size(stor0)
    staticcall stor0.0x2ccb74c8 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor0)
    staticcall stor0.0x62428e4e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    return arg1, 
           address(ext_call.return_data[0]),
           ext_call.return_data[0],
           ext_call.return_data[0] << 240,
           uint16(ext_call.return_data[32])
}

function sub_c0a6e9d7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.0x183ce75d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_code.size(stor0)
    staticcall stor0.0xf769a0c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    if ext_call.return_data[160] > 0:
        return ext_call.return_data[0], 
               ext_call.return_data[32] << 224,
               ext_call.return_data[64] << 224,
               ext_call.return_data[96] << 224,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               ext_call.return_data[0] << 240,
               ext_call.return_data[32] << 240,
               4
    if ext_call.return_data[224] > 0:
        return ext_call.return_data[0], 
               ext_call.return_data[32] << 224,
               ext_call.return_data[64] << 224,
               ext_call.return_data[96] << 224,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               ext_call.return_data[0] << 240,
               ext_call.return_data[32] << 240,
               3
    if ext_call.return_data[128] > 0:
        return ext_call.return_data[0], 
               ext_call.return_data[32] << 224,
               ext_call.return_data[64] << 224,
               ext_call.return_data[96] << 224,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               ext_call.return_data[0] << 240,
               ext_call.return_data[32] << 240,
               2
    if ext_call.return_data[192] <= 0:
        return ext_call.return_data[0], 
               ext_call.return_data[32] << 224,
               ext_call.return_data[64] << 224,
               ext_call.return_data[96] << 224,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               ext_call.return_data[0] << 240,
               ext_call.return_data[32] << 240,
               0
    return ext_call.return_data[0], 
           ext_call.return_data[32] << 224,
           ext_call.return_data[64] << 224,
           ext_call.return_data[96] << 224,
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224],
           ext_call.return_data[0] << 240,
           ext_call.return_data[32] << 240,
           1
}

function getGameInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.0xf0344e36 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    require ext_code.size(stor0)
    staticcall stor0.0x183ce75d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_code.size(stor0)
    staticcall stor0.0xf769a0c with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    if ext_call.return_data[160] > 0:
        return ext_call.return_data[0], 
               ext_call.return_data[32] << 128,
               ext_call.return_data[64] << 128,
               ext_call.return_data[96] << 224,
               ext_call.return_data[128] << 224,
               ext_call.return_data[160] << 224,
               ext_call.return_data[0],
               0,
               0,
               0,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               0,
               0,
               4
    if ext_call.return_data[224] > 0:
        return ext_call.return_data[0], 
               ext_call.return_data[32] << 128,
               ext_call.return_data[64] << 128,
               ext_call.return_data[96] << 224,
               ext_call.return_data[128] << 224,
               ext_call.return_data[160] << 224,
               ext_call.return_data[0],
               0,
               0,
               0,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               0,
               0,
               3
    if ext_call.return_data[128] > 0:
        return ext_call.return_data[0], 
               ext_call.return_data[32] << 128,
               ext_call.return_data[64] << 128,
               ext_call.return_data[96] << 224,
               ext_call.return_data[128] << 224,
               ext_call.return_data[160] << 224,
               ext_call.return_data[0],
               0,
               0,
               0,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               0,
               0,
               2
    if ext_call.return_data[192] <= 0:
        return ext_call.return_data[0], 
               ext_call.return_data[32] << 128,
               ext_call.return_data[64] << 128,
               ext_call.return_data[96] << 224,
               ext_call.return_data[128] << 224,
               ext_call.return_data[160] << 224,
               ext_call.return_data[0],
               0,
               0,
               0,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               0,
               0,
               0
    return ext_call.return_data[0], 
           ext_call.return_data[32] << 128,
           ext_call.return_data[64] << 128,
           ext_call.return_data[96] << 224,
           ext_call.return_data[128] << 224,
           ext_call.return_data[160] << 224,
           ext_call.return_data[0],
           0,
           0,
           0,
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224],
           0,
           0,
           1
}

function sub_0b97dfd0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 < arg1:
        revert with 'NH{q', 17
    if arg2 - arg1 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2 - arg1
    mem[64] = (32 * arg2 - arg1) + 128
    if not arg2 - arg1:
        if arg2 < arg1:
            revert with 'NH{q', 17
        if var146002 >= arg2 - arg1:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            idx = 0
            s = 128
            t = (32 * arg2 - arg1) + 192
            while idx < mem[96]:
                _500 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_500 + 44 len 20]
                mem[t + 64] = mem[_500 + 64]
                mem[t + 96] = mem[_500 + 126 len 2]
                mem[t + 128] = mem[_500 + 158 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len (32 * arg2 - arg1) + (160 * arg2) + (-160 * arg1) + -mem[64] + 192
        if var158003 > -arg1 - 1:
            revert with 'NH{q', 17
        mem[64] = (32 * arg2 - arg1) + 288
        mem[(32 * arg2 - arg1) + 128] = 0
        mem[(32 * arg2 - arg1) + 160] = 0
        mem[(32 * arg2 - arg1) + 192] = 0
        mem[(32 * arg2 - arg1) + 224] = 0
        mem[(32 * arg2 - arg1) + 256] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args (var160002 + arg1)
        mem[(32 * arg2 - arg1) + 288 len 64] = ext_call.return_data[0 len 64]
        s = var160002 + arg1
        t = var160006
        while ext_call.success:
            _906 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _909 = mem[_906]
            require mem[_906] == mem[_906 + 30 len 2]
            _911 = mem[_906 + 32]
            require mem[_906 + 32] == mem[_906 + 62 len 2]
            mem[mem[64] + 4] = s
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _916 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _919 = mem[_916]
            require mem[_916] == mem[_916]
            require ext_code.size(stor0)
            staticcall stor0.0x62428e4e with:
                    gas gas_remaining wei
                   args s
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _924 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _927 = mem[_924]
            require mem[_924] == mem[_924 + 12 len 20]
            require mem[_924 + 32] == mem[_924 + 48 len 16]
            require mem[_924 + 64] == mem[_924 + 80 len 16]
            _933 = mem[64]
            mem[64] = mem[64] + 160
            mem[_933] = s
            mem[_933 + 32] = address(_927)
            mem[_933 + 64] = _919
            mem[_933 + 96] = uint16(_909)
            mem[_933 + 128] = uint16(_911)
            if t >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * t) + 128] = _933
            if t == -1:
                revert with 'NH{q', 17
            if arg2 < arg1:
                revert with 'NH{q', 17
            if t + 1 >= arg2 - arg1:
                _937 = mem[64]
                mem[mem[64]] = 32
                _939 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 64
                while idx < _939:
                    _955 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_955 + 44 len 20]
                    mem[u + 64] = mem[_955 + 64]
                    mem[u + 96] = mem[_955 + 126 len 2]
                    mem[u + 128] = mem[_955 + 158 len 2]
                    mem[64] = mem[64] + 160
                    mem[(32 * arg2 - arg1) + 128] = 0
                    mem[(32 * arg2 - arg1) + 160] = 0
                    mem[(32 * arg2 - arg1) + 192] = 0
                    mem[(32 * arg2 - arg1) + 224] = 0
                    mem[(32 * arg2 - arg1) + 256] = 0
                    mem[mem[64]] = 0x7b30396500000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2 - arg1) + 292] = s
                    require ext_code.size(stor0)
                    staticcall stor0.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (32 * arg2 - arg1) + -mem[64] + 320]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    idx = idx + 1
                    t = t + 32
                    u = u + 160
                    continue 
                return memory
                  from mem[64]
                   len _937 + (160 * _939) + -mem[64] + 64
            if t + 1 > -arg1 - 1:
                revert with 'NH{q', 17
            mem[64] = mem[64] + 160
            mem[(32 * arg2 - arg1) + 128] = 0
            mem[(32 * arg2 - arg1) + 160] = 0
            mem[(32 * arg2 - arg1) + 192] = 0
            mem[(32 * arg2 - arg1) + 224] = 0
            mem[(32 * arg2 - arg1) + 256] = 0
            mem[mem[64]] = 0x7b30396500000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2 - arg1) + 292] = t + arg1 + 2
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * arg2 - arg1) + -mem[64] + 320]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            s = t + arg1 + 1
            t = t + 1
            continue 
    else:
        mem[64] = (32 * arg2 - arg1) + 288
        mem[(32 * arg2 - arg1) + 128] = 0
        mem[(32 * arg2 - arg1) + 160] = 0
        mem[(32 * arg2 - arg1) + 192] = 0
        mem[(32 * arg2 - arg1) + 224] = 0
        mem[(32 * arg2 - arg1) + 256] = 0
        mem[var32001] = (32 * arg2 - arg1) + 128
        s = var32001
        idx = var32002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[(32 * arg2 - arg1) + 128] = 0
            mem[(32 * arg2 - arg1) + 160] = 0
            mem[(32 * arg2 - arg1) + 192] = 0
            mem[(32 * arg2 - arg1) + 224] = 0
            mem[(32 * arg2 - arg1) + 256] = 0
            mem[s + 32] = (32 * arg2 - arg1) + 128
            s = s + 32
            idx = idx - 1
            continue 
        if arg2 < arg1:
            revert with 'NH{q', 17
        if var153002 >= arg2 - arg1:
            _561 = mem[64]
            mem[mem[64]] = 32
            _562 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _562:
                _624 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_624 + 44 len 20]
                mem[t + 64] = mem[_624 + 64]
                mem[t + 96] = mem[_624 + 126 len 2]
                mem[t + 128] = mem[_624 + 158 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _561 + (160 * _562) + -mem[64] + 64
        if var165003 > -arg1 - 1:
            revert with 'NH{q', 17
        _989 = mem[64]
        mem[64] = mem[64] + 160
        mem[_989] = 0
        mem[_989 + 32] = 0
        mem[_989 + 64] = 0
        mem[_989 + 96] = 0
        mem[_989 + 128] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args (var167002 + arg1)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        s = var167002 + arg1
        t = var167006
        while ext_call.success:
            _992 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _993 = mem[_992]
            require mem[_992] == mem[_992 + 30 len 2]
            _994 = mem[_992 + 32]
            require mem[_992 + 32] == mem[_992 + 62 len 2]
            mem[mem[64] + 4] = s
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _997 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _998 = mem[_997]
            require mem[_997] == mem[_997]
            require ext_code.size(stor0)
            staticcall stor0.0x62428e4e with:
                    gas gas_remaining wei
                   args s
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1001 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1002 = mem[_1001]
            require mem[_1001] == mem[_1001 + 12 len 20]
            require mem[_1001 + 32] == mem[_1001 + 48 len 16]
            require mem[_1001 + 64] == mem[_1001 + 80 len 16]
            _1005 = mem[64]
            mem[64] = mem[64] + 160
            mem[_1005] = s
            mem[_1005 + 32] = address(_1002)
            mem[_1005 + 64] = _998
            mem[_1005 + 96] = uint16(_993)
            mem[_1005 + 128] = uint16(_994)
            if t >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * t) + 128] = _1005
            if t == -1:
                revert with 'NH{q', 17
            if arg2 < arg1:
                revert with 'NH{q', 17
            if t + 1 >= arg2 - arg1:
                _1007 = mem[64]
                mem[mem[64]] = 32
                _1008 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 64
                while idx < _1008:
                    _1016 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_1016 + 44 len 20]
                    mem[u + 64] = mem[_1016 + 64]
                    mem[u + 96] = mem[_1016 + 126 len 2]
                    mem[u + 128] = mem[_1016 + 158 len 2]
                    _989 = mem[64]
                    mem[64] = mem[64] + 160
                    mem[_989] = 0
                    mem[_989 + 32] = 0
                    mem[_989 + 64] = 0
                    mem[_989 + 96] = 0
                    mem[_989 + 128] = 0
                    require ext_code.size(stor0)
                    staticcall stor0.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    idx = idx + 1
                    t = t + 32
                    u = u + 160
                    continue 
                return memory
                  from mem[64]
                   len _1007 + (160 * _1008) + -mem[64] + 64
            if t + 1 > -arg1 - 1:
                revert with 'NH{q', 17
            _989 = mem[64]
            mem[64] = mem[64] + 160
            mem[_989] = 0
            mem[_989 + 32] = 0
            mem[_989 + 64] = 0
            mem[_989 + 96] = 0
            mem[_989 + 128] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args (t + arg1 + 2)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            s = t + arg1 + 1
            t = t + 1
            continue 
    revert with ext_call.return_data[0 len return_data.size]
}

function sub_a9e3fdb8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.0xf0344e36 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    require ext_code.size(stor0)
    staticcall stor0.0x969215ba with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[158 len 2]
    require ext_call.return_data[160] == ext_call.return_data[190 len 2]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[240 len 16]
    require ext_code.size(stor0)
    staticcall stor0.getStats(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    require ext_code.size(stor0)
    staticcall stor0.0x2ccb74c8 with:
            gas gas_remaining wei
           args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor0)
    staticcall stor0.0x62428e4e with:
            gas gas_remaining wei
           args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_code.size(stor0)
    staticcall stor0.getStats(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    require ext_code.size(stor0)
    staticcall stor0.0x2ccb74c8 with:
            gas gas_remaining wei
           args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor0)
    staticcall stor0.0x62428e4e with:
            gas gas_remaining wei
           args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_code.size(stor0)
    staticcall stor0.getStats(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    require ext_code.size(stor0)
    staticcall stor0.0x2ccb74c8 with:
            gas gas_remaining wei
           args ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(stor0)
    staticcall stor0.0x62428e4e with:
            gas gas_remaining wei
           args ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_code.size(stor0)
    staticcall stor0.0xf0344e36 with:
            gas gas_remaining wei
           args ext_call.return_data[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[48 len 16]
    require ext_call.return_data[64] == ext_call.return_data[80 len 16]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[156 len 4]
    require ext_call.return_data[160] == ext_call.return_data[188 len 4]
    require ext_code.size(stor0)
    staticcall stor0.0x183ce75d with:
            gas gas_remaining wei
           args ext_call.return_data[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[60 len 4]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[96] == ext_call.return_data[124 len 4]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    require ext_call.return_data[224] == ext_call.return_data[224]
    require ext_code.size(stor0)
    staticcall stor0.0xf769a0c with:
            gas gas_remaining wei
           args ext_call.return_data[192]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[30 len 2]
    require ext_call.return_data[32] == ext_call.return_data[62 len 2]
    if ext_call.return_data[160] > 0:
        return ext_call.return_data[0], 
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[96],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[128] << 240,
               ext_call.return_data[160] << 240,
               ext_call.return_data[192],
               ext_call.return_data[224] << 128,
               ext_call.return_data[0],
               0,
               0,
               0,
               0,
               0,
               ext_call.return_data[0],
               0,
               0,
               0,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               0,
               0,
               4
    if ext_call.return_data[224] > 0:
        return ext_call.return_data[0], 
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[96],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[128] << 240,
               ext_call.return_data[160] << 240,
               ext_call.return_data[192],
               ext_call.return_data[224] << 128,
               ext_call.return_data[0],
               0,
               0,
               0,
               0,
               0,
               ext_call.return_data[0],
               0,
               0,
               0,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               0,
               0,
               3
    if ext_call.return_data[128] > 0:
        return ext_call.return_data[0], 
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[96],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[128] << 240,
               ext_call.return_data[160] << 240,
               ext_call.return_data[192],
               ext_call.return_data[224] << 128,
               ext_call.return_data[0],
               0,
               0,
               0,
               0,
               0,
               ext_call.return_data[0],
               0,
               0,
               0,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               0,
               0,
               2
    if ext_call.return_data[192] <= 0:
        return ext_call.return_data[0], 
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[96],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[128] << 240,
               ext_call.return_data[160] << 240,
               ext_call.return_data[192],
               ext_call.return_data[224] << 128,
               ext_call.return_data[0],
               0,
               0,
               0,
               0,
               0,
               ext_call.return_data[0],
               0,
               0,
               0,
               ext_call.return_data[128],
               ext_call.return_data[160],
               ext_call.return_data[192],
               ext_call.return_data[224],
               0,
               0,
               0
    return ext_call.return_data[0], 
           address(ext_call.return_data[0]),
           ext_call.return_data[32],
           ext_call.return_data[0] << 192,
           ext_call.return_data[0],
           0,
           0,
           ext_call.return_data[64],
           ext_call.return_data[0] << 192,
           ext_call.return_data[0],
           0,
           0,
           ext_call.return_data[96],
           ext_call.return_data[0] << 192,
           ext_call.return_data[0],
           0,
           0,
           ext_call.return_data[128] << 240,
           ext_call.return_data[160] << 240,
           ext_call.return_data[192],
           ext_call.return_data[224] << 128,
           ext_call.return_data[0],
           0,
           0,
           0,
           0,
           0,
           ext_call.return_data[0],
           0,
           0,
           0,
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224],
           0,
           0,
           1
}

function sub_321dfd74(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 < arg1:
        revert with 'NH{q', 17
    if arg2 - arg1 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2 - arg1
    mem[64] = (32 * arg2 - arg1) + 128
    if not arg2 - arg1:
        idx = 0
        while idx < arg2 - arg1:
            if idx > -arg1 - 1:
                revert with 'NH{q', 17
            _126 = mem[64]
            mem[64] = mem[64] + 224
            mem[_126] = 0
            mem[_126 + 32] = 0
            mem[_126 + 64] = 0
            mem[_126 + 96] = 0
            mem[_126 + 128] = 0
            mem[_126 + 160] = 0
            _127 = mem[64]
            mem[64] = mem[64] + 352
            mem[_127] = 0
            mem[_127 + 32] = 0
            mem[_127 + 64] = 0
            mem[_127 + 96] = 0
            mem[_127 + 128] = 0
            mem[_127 + 160] = 0
            mem[_127 + 192] = 0
            mem[_127 + 224] = 0
            mem[_127 + 256] = 0
            mem[_127 + 288] = 0
            mem[_127 + 320] = 0
            mem[_126 + 192] = _127
            require ext_code.size(stor0)
            staticcall stor0.0xf0344e36 with:
                    gas gas_remaining wei
                   args (idx + arg1)
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _139 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _143 = mem[_139]
            require mem[_139] == mem[_139]
            _150 = mem[_139 + 32]
            require mem[_139 + 32] == mem[_139 + 48 len 16]
            _156 = mem[_139 + 64]
            require mem[_139 + 64] == mem[_139 + 80 len 16]
            _161 = mem[_139 + 96]
            require mem[_139 + 96] == mem[_139 + 124 len 4]
            _168 = mem[_139 + 128]
            require mem[_139 + 128] == mem[_139 + 156 len 4]
            _174 = mem[_139 + 160]
            require mem[_139 + 160] == mem[_139 + 188 len 4]
            _181 = mem[64]
            mem[64] = mem[64] + 352
            mem[_181] = 0
            mem[_181 + 32] = 0
            mem[_181 + 64] = 0
            mem[_181 + 96] = 0
            mem[_181 + 128] = 0
            mem[_181 + 160] = 0
            mem[_181 + 192] = 0
            mem[_181 + 224] = 0
            mem[_181 + 256] = 0
            mem[_181 + 288] = 0
            mem[_181 + 320] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x183ce75d with:
                    gas gas_remaining wei
                   args (idx + arg1)
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _190 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _193 = mem[_190]
            require mem[_190] == mem[_190]
            _198 = mem[_190 + 32]
            require mem[_190 + 32] == mem[_190 + 60 len 4]
            _200 = mem[_190 + 64]
            require mem[_190 + 64] == mem[_190 + 92 len 4]
            _202 = mem[_190 + 96]
            require mem[_190 + 96] == mem[_190 + 124 len 4]
            _204 = mem[_190 + 128]
            require mem[_190 + 128] == mem[_190 + 128]
            _206 = mem[_190 + 160]
            require mem[_190 + 160] == mem[_190 + 160]
            _208 = mem[_190 + 192]
            require mem[_190 + 192] == mem[_190 + 192]
            _210 = mem[_190 + 224]
            require mem[_190 + 224] == mem[_190 + 224]
            require ext_code.size(stor0)
            staticcall stor0.0xf769a0c with:
                    gas gas_remaining wei
                   args (idx + arg1)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _216 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _217 = mem[_216]
            require mem[_216] == mem[_216 + 30 len 2]
            _220 = mem[_216 + 32]
            require mem[_216 + 32] == mem[_216 + 62 len 2]
            if _206 > 0:
                _223 = mem[64]
                mem[64] = mem[64] + 352
                mem[_223] = _193
                mem[_223 + 32] = uint32(_198)
                mem[_223 + 64] = uint32(_200)
                mem[_223 + 96] = uint32(_202)
                mem[_223 + 128] = _204
                mem[_223 + 160] = _206
                mem[_223 + 192] = _208
                mem[_223 + 224] = _210
                mem[_223 + 256] = uint16(_217)
                mem[_223 + 288] = uint16(_220)
                mem[_223 + 320] = 4
                _224 = mem[64]
                mem[64] = mem[64] + 224
                mem[_224] = _143
                mem[_224 + 32] = uint128(_150)
                mem[_224 + 64] = uint128(_156)
                mem[_224 + 96] = uint32(_161)
                mem[_224 + 128] = uint32(_168)
                mem[_224 + 160] = uint32(_174)
                mem[_224 + 192] = _223
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _224
            else:
                if _210 > 0:
                    _225 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_225] = _193
                    mem[_225 + 32] = uint32(_198)
                    mem[_225 + 64] = uint32(_200)
                    mem[_225 + 96] = uint32(_202)
                    mem[_225 + 128] = _204
                    mem[_225 + 160] = _206
                    mem[_225 + 192] = _208
                    mem[_225 + 224] = _210
                    mem[_225 + 256] = uint16(_217)
                    mem[_225 + 288] = uint16(_220)
                    mem[_225 + 320] = 3
                    _227 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_227] = _143
                    mem[_227 + 32] = uint128(_150)
                    mem[_227 + 64] = uint128(_156)
                    mem[_227 + 96] = uint32(_161)
                    mem[_227 + 128] = uint32(_168)
                    mem[_227 + 160] = uint32(_174)
                    mem[_227 + 192] = _225
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _227
                else:
                    if _204 > 0:
                        _228 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_228] = _193
                        mem[_228 + 32] = uint32(_198)
                        mem[_228 + 64] = uint32(_200)
                        mem[_228 + 96] = uint32(_202)
                        mem[_228 + 128] = _204
                        mem[_228 + 160] = _206
                        mem[_228 + 192] = _208
                        mem[_228 + 224] = _210
                        mem[_228 + 256] = uint16(_217)
                        mem[_228 + 288] = uint16(_220)
                        mem[_228 + 320] = 2
                        _231 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_231] = _143
                        mem[_231 + 32] = uint128(_150)
                        mem[_231 + 64] = uint128(_156)
                        mem[_231 + 96] = uint32(_161)
                        mem[_231 + 128] = uint32(_168)
                        mem[_231 + 160] = uint32(_174)
                        mem[_231 + 192] = _228
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _231
                    else:
                        if _208 <= 0:
                            _230 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_230] = _193
                            mem[_230 + 32] = uint32(_198)
                            mem[_230 + 64] = uint32(_200)
                            mem[_230 + 96] = uint32(_202)
                            mem[_230 + 128] = _204
                            mem[_230 + 160] = _206
                            mem[_230 + 192] = _208
                            mem[_230 + 224] = _210
                            mem[_230 + 256] = uint16(_217)
                            mem[_230 + 288] = uint16(_220)
                            mem[_230 + 320] = 0
                            _232 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_232] = _143
                            mem[_232 + 32] = uint128(_150)
                            mem[_232 + 64] = uint128(_156)
                            mem[_232 + 96] = uint32(_161)
                            mem[_232 + 128] = uint32(_168)
                            mem[_232 + 160] = uint32(_174)
                            mem[_232 + 192] = _230
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _232
                        else:
                            _233 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_233] = _193
                            mem[_233 + 32] = uint32(_198)
                            mem[_233 + 64] = uint32(_200)
                            mem[_233 + 96] = uint32(_202)
                            mem[_233 + 128] = _204
                            mem[_233 + 160] = _206
                            mem[_233 + 192] = _208
                            mem[_233 + 224] = _210
                            mem[_233 + 256] = uint16(_217)
                            mem[_233 + 288] = uint16(_220)
                            mem[_233 + 320] = 1
                            _236 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_236] = _143
                            mem[_236 + 32] = uint128(_150)
                            mem[_236 + 64] = uint128(_156)
                            mem[_236 + 96] = uint32(_161)
                            mem[_236 + 128] = uint32(_168)
                            mem[_236 + 160] = uint32(_174)
                            mem[_236 + 192] = _233
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _236
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _122 = mem[64]
        mem[mem[64]] = 32
        _124 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _124:
            _254 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_254 + 48 len 16]
            mem[t + 64] = mem[_254 + 80 len 16]
            mem[t + 96] = mem[_254 + 124 len 4]
            mem[t + 128] = mem[_254 + 156 len 4]
            mem[t + 160] = mem[_254 + 188 len 4]
            _274 = mem[_254 + 192]
            mem[t + 192] = mem[mem[_254 + 192]]
            mem[t + 224] = mem[_274 + 60 len 4]
            mem[t + 256] = mem[_274 + 92 len 4]
            mem[t + 288] = mem[_274 + 124 len 4]
            mem[t + 320] = mem[_274 + 128]
            mem[t + 352] = mem[_274 + 160]
            mem[t + 384] = mem[_274 + 192]
            mem[t + 416] = mem[_274 + 224]
            mem[t + 448] = mem[_274 + 286 len 2]
            mem[t + 480] = mem[_274 + 318 len 2]
            mem[t + 512] = mem[_274 + 351 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 544
            continue 
        return memory
          from mem[64]
           len _122 + (544 * _124) + -mem[64] + 64
    mem[(32 * arg2 - arg1) + 128] = 0
    mem[(32 * arg2 - arg1) + 160] = 0
    mem[(32 * arg2 - arg1) + 192] = 0
    mem[(32 * arg2 - arg1) + 224] = 0
    mem[(32 * arg2 - arg1) + 256] = 0
    mem[(32 * arg2 - arg1) + 288] = 0
    mem[64] = (32 * arg2 - arg1) + 704
    mem[(32 * arg2 - arg1) + 352] = 0
    mem[(32 * arg2 - arg1) + 384] = 0
    mem[(32 * arg2 - arg1) + 416] = 0
    mem[(32 * arg2 - arg1) + 448] = 0
    mem[(32 * arg2 - arg1) + 480] = 0
    mem[(32 * arg2 - arg1) + 512] = 0
    mem[(32 * arg2 - arg1) + 544] = 0
    mem[(32 * arg2 - arg1) + 576] = 0
    mem[(32 * arg2 - arg1) + 608] = 0
    mem[(32 * arg2 - arg1) + 640] = 0
    mem[(32 * arg2 - arg1) + 672] = 0
    mem[(32 * arg2 - arg1) + 320] = (32 * arg2 - arg1) + 352
    mem[var36002] = (32 * arg2 - arg1) + 128
    s = (32 * arg2 - arg1) + 320
    s = (32 * arg2 - arg1) + 128
    s = var36002
    idx = var36003
    while idx - 1:
        _342 = mem[64]
        mem[64] = mem[64] + 224
        mem[_342] = 0
        mem[_342 + 32] = 0
        mem[_342 + 64] = 0
        mem[_342 + 96] = 0
        mem[_342 + 128] = 0
        mem[_342 + 160] = 0
        mem[64] = mem[64] + 352
        mem[(32 * arg2 - arg1) + 352] = 0
        mem[(32 * arg2 - arg1) + 384] = 0
        mem[(32 * arg2 - arg1) + 416] = 0
        mem[(32 * arg2 - arg1) + 448] = 0
        mem[(32 * arg2 - arg1) + 480] = 0
        mem[(32 * arg2 - arg1) + 512] = 0
        mem[(32 * arg2 - arg1) + 544] = 0
        mem[(32 * arg2 - arg1) + 576] = 0
        mem[(32 * arg2 - arg1) + 608] = 0
        mem[(32 * arg2 - arg1) + 640] = 0
        mem[(32 * arg2 - arg1) + 672] = 0
        mem[_342 + 192] = (32 * arg2 - arg1) + 352
        mem[s + 32] = _342
        s = _342 + 192
        s = _342
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg2 - arg1:
        if idx > -arg1 - 1:
            revert with 'NH{q', 17
        _410 = mem[64]
        mem[64] = mem[64] + 224
        mem[_410] = 0
        mem[_410 + 32] = 0
        mem[_410 + 64] = 0
        mem[_410 + 96] = 0
        mem[_410 + 128] = 0
        mem[_410 + 160] = 0
        _411 = mem[64]
        mem[64] = mem[64] + 352
        mem[_411] = 0
        mem[_411 + 32] = 0
        mem[_411 + 64] = 0
        mem[_411 + 96] = 0
        mem[_411 + 128] = 0
        mem[_411 + 160] = 0
        mem[_411 + 192] = 0
        mem[_411 + 224] = 0
        mem[_411 + 256] = 0
        mem[_411 + 288] = 0
        mem[_411 + 320] = 0
        mem[_410 + 192] = _411
        require ext_code.size(stor0)
        staticcall stor0.0xf0344e36 with:
                gas gas_remaining wei
               args (idx + arg1)
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _418 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _420 = mem[_418]
        require mem[_418] == mem[_418]
        _423 = mem[_418 + 32]
        require mem[_418 + 32] == mem[_418 + 48 len 16]
        _426 = mem[_418 + 64]
        require mem[_418 + 64] == mem[_418 + 80 len 16]
        _429 = mem[_418 + 96]
        require mem[_418 + 96] == mem[_418 + 124 len 4]
        _432 = mem[_418 + 128]
        require mem[_418 + 128] == mem[_418 + 156 len 4]
        _435 = mem[_418 + 160]
        require mem[_418 + 160] == mem[_418 + 188 len 4]
        _438 = mem[64]
        mem[64] = mem[64] + 352
        mem[_438] = 0
        mem[_438 + 32] = 0
        mem[_438 + 64] = 0
        mem[_438 + 96] = 0
        mem[_438 + 128] = 0
        mem[_438 + 160] = 0
        mem[_438 + 192] = 0
        mem[_438 + 224] = 0
        mem[_438 + 256] = 0
        mem[_438 + 288] = 0
        mem[_438 + 320] = 0
        require ext_code.size(stor0)
        staticcall stor0.0x183ce75d with:
                gas gas_remaining wei
               args (idx + arg1)
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _443 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _445 = mem[_443]
        require mem[_443] == mem[_443]
        _446 = mem[_443 + 32]
        require mem[_443 + 32] == mem[_443 + 60 len 4]
        _447 = mem[_443 + 64]
        require mem[_443 + 64] == mem[_443 + 92 len 4]
        _448 = mem[_443 + 96]
        require mem[_443 + 96] == mem[_443 + 124 len 4]
        _449 = mem[_443 + 128]
        require mem[_443 + 128] == mem[_443 + 128]
        _450 = mem[_443 + 160]
        require mem[_443 + 160] == mem[_443 + 160]
        _451 = mem[_443 + 192]
        require mem[_443 + 192] == mem[_443 + 192]
        _452 = mem[_443 + 224]
        require mem[_443 + 224] == mem[_443 + 224]
        require ext_code.size(stor0)
        staticcall stor0.0xf769a0c with:
                gas gas_remaining wei
               args (idx + arg1)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _455 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _456 = mem[_455]
        require mem[_455] == mem[_455 + 30 len 2]
        _457 = mem[_455 + 32]
        require mem[_455 + 32] == mem[_455 + 62 len 2]
        if _450 > 0:
            _458 = mem[64]
            mem[64] = mem[64] + 352
            mem[_458] = _445
            mem[_458 + 32] = uint32(_446)
            mem[_458 + 64] = uint32(_447)
            mem[_458 + 96] = uint32(_448)
            mem[_458 + 128] = _449
            mem[_458 + 160] = _450
            mem[_458 + 192] = _451
            mem[_458 + 224] = _452
            mem[_458 + 256] = uint16(_456)
            mem[_458 + 288] = uint16(_457)
            mem[_458 + 320] = 4
            _459 = mem[64]
            mem[64] = mem[64] + 224
            mem[_459] = _420
            mem[_459 + 32] = uint128(_423)
            mem[_459 + 64] = uint128(_426)
            mem[_459 + 96] = uint32(_429)
            mem[_459 + 128] = uint32(_432)
            mem[_459 + 160] = uint32(_435)
            mem[_459 + 192] = _458
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _459
        else:
            if _452 > 0:
                _460 = mem[64]
                mem[64] = mem[64] + 352
                mem[_460] = _445
                mem[_460 + 32] = uint32(_446)
                mem[_460 + 64] = uint32(_447)
                mem[_460 + 96] = uint32(_448)
                mem[_460 + 128] = _449
                mem[_460 + 160] = _450
                mem[_460 + 192] = _451
                mem[_460 + 224] = _452
                mem[_460 + 256] = uint16(_456)
                mem[_460 + 288] = uint16(_457)
                mem[_460 + 320] = 3
                _462 = mem[64]
                mem[64] = mem[64] + 224
                mem[_462] = _420
                mem[_462 + 32] = uint128(_423)
                mem[_462 + 64] = uint128(_426)
                mem[_462 + 96] = uint32(_429)
                mem[_462 + 128] = uint32(_432)
                mem[_462 + 160] = uint32(_435)
                mem[_462 + 192] = _460
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _462
            else:
                if _449 > 0:
                    _463 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_463] = _445
                    mem[_463 + 32] = uint32(_446)
                    mem[_463 + 64] = uint32(_447)
                    mem[_463 + 96] = uint32(_448)
                    mem[_463 + 128] = _449
                    mem[_463 + 160] = _450
                    mem[_463 + 192] = _451
                    mem[_463 + 224] = _452
                    mem[_463 + 256] = uint16(_456)
                    mem[_463 + 288] = uint16(_457)
                    mem[_463 + 320] = 2
                    _466 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_466] = _420
                    mem[_466 + 32] = uint128(_423)
                    mem[_466 + 64] = uint128(_426)
                    mem[_466 + 96] = uint32(_429)
                    mem[_466 + 128] = uint32(_432)
                    mem[_466 + 160] = uint32(_435)
                    mem[_466 + 192] = _463
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _466
                else:
                    if _451 <= 0:
                        _465 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_465] = _445
                        mem[_465 + 32] = uint32(_446)
                        mem[_465 + 64] = uint32(_447)
                        mem[_465 + 96] = uint32(_448)
                        mem[_465 + 128] = _449
                        mem[_465 + 160] = _450
                        mem[_465 + 192] = _451
                        mem[_465 + 224] = _452
                        mem[_465 + 256] = uint16(_456)
                        mem[_465 + 288] = uint16(_457)
                        mem[_465 + 320] = 0
                        _467 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_467] = _420
                        mem[_467 + 32] = uint128(_423)
                        mem[_467 + 64] = uint128(_426)
                        mem[_467 + 96] = uint32(_429)
                        mem[_467 + 128] = uint32(_432)
                        mem[_467 + 160] = uint32(_435)
                        mem[_467 + 192] = _465
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _467
                    else:
                        _468 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_468] = _445
                        mem[_468 + 32] = uint32(_446)
                        mem[_468 + 64] = uint32(_447)
                        mem[_468 + 96] = uint32(_448)
                        mem[_468 + 128] = _449
                        mem[_468 + 160] = _450
                        mem[_468 + 192] = _451
                        mem[_468 + 224] = _452
                        mem[_468 + 256] = uint16(_456)
                        mem[_468 + 288] = uint16(_457)
                        mem[_468 + 320] = 1
                        _471 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_471] = _420
                        mem[_471 + 32] = uint128(_423)
                        mem[_471 + 64] = uint128(_426)
                        mem[_471 + 96] = uint32(_429)
                        mem[_471 + 128] = uint32(_432)
                        mem[_471 + 160] = uint32(_435)
                        mem[_471 + 192] = _468
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _471
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _408 = mem[64]
    mem[mem[64]] = 32
    _409 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _409:
        _473 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_473 + 48 len 16]
        mem[t + 64] = mem[_473 + 80 len 16]
        mem[t + 96] = mem[_473 + 124 len 4]
        mem[t + 128] = mem[_473 + 156 len 4]
        mem[t + 160] = mem[_473 + 188 len 4]
        _481 = mem[_473 + 192]
        mem[t + 192] = mem[mem[_473 + 192]]
        mem[t + 224] = mem[_481 + 60 len 4]
        mem[t + 256] = mem[_481 + 92 len 4]
        mem[t + 288] = mem[_481 + 124 len 4]
        mem[t + 320] = mem[_481 + 128]
        mem[t + 352] = mem[_481 + 160]
        mem[t + 384] = mem[_481 + 192]
        mem[t + 416] = mem[_481 + 224]
        mem[t + 448] = mem[_481 + 286 len 2]
        mem[t + 480] = mem[_481 + 318 len 2]
        mem[t + 512] = mem[_481 + 351 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 544
        continue 
    return memory
      from mem[64]
       len _408 + (544 * _409) + -mem[64] + 64
}

function sub_314d3090(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 < arg1:
        revert with 'NH{q', 17
    if arg2 - arg1 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2 - arg1
    mem[64] = (32 * arg2 - arg1) + 128
    if not arg2 - arg1:
        idx = 0
        while idx < arg2 - arg1:
            if idx > -arg1 - 1:
                revert with 'NH{q', 17
            _480 = mem[64]
            mem[64] = mem[64] + 320
            mem[_480] = 0
            mem[_480 + 32] = 0
            _481 = mem[64]
            mem[64] = mem[64] + 160
            mem[_481] = 0
            mem[_481 + 32] = 0
            mem[_481 + 64] = 0
            mem[_481 + 96] = 0
            mem[_481 + 128] = 0
            mem[_480 + 64] = _481
            _484 = mem[64]
            mem[64] = mem[64] + 160
            mem[_484] = 0
            mem[_484 + 32] = 0
            mem[_484 + 64] = 0
            mem[_484 + 96] = 0
            mem[_484 + 128] = 0
            mem[_480 + 96] = _484
            _487 = mem[64]
            mem[64] = mem[64] + 160
            mem[_487] = 0
            mem[_487 + 32] = 0
            mem[_487 + 64] = 0
            mem[_487 + 96] = 0
            mem[_487 + 128] = 0
            mem[_480 + 128] = _487
            mem[_480 + 160] = 0
            mem[_480 + 192] = 0
            mem[_480 + 224] = 0
            mem[_480 + 256] = 0
            _489 = mem[64]
            mem[64] = mem[64] + 224
            mem[_489] = 0
            mem[_489 + 32] = 0
            mem[_489 + 64] = 0
            mem[_489 + 96] = 0
            mem[_489 + 128] = 0
            mem[_489 + 160] = 0
            _491 = mem[64]
            mem[64] = mem[64] + 352
            mem[_491] = 0
            mem[_491 + 32] = 0
            mem[_491 + 64] = 0
            mem[_491 + 96] = 0
            mem[_491 + 128] = 0
            mem[_491 + 160] = 0
            mem[_491 + 192] = 0
            mem[_491 + 224] = 0
            mem[_491 + 256] = 0
            mem[_491 + 288] = 0
            mem[_491 + 320] = 0
            mem[_489 + 192] = _491
            mem[_480 + 288] = _489
            require ext_code.size(stor0)
            staticcall stor0.0x969215ba with:
                    gas gas_remaining wei
                   args (idx + arg1)
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _505 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _509 = mem[_505]
            require mem[_505] == mem[_505 + 12 len 20]
            _516 = mem[_505 + 32]
            require mem[_505 + 32] == mem[_505 + 32]
            _522 = mem[_505 + 64]
            require mem[_505 + 64] == mem[_505 + 64]
            _528 = mem[_505 + 96]
            require mem[_505 + 96] == mem[_505 + 96]
            _533 = mem[_505 + 128]
            require mem[_505 + 128] == mem[_505 + 158 len 2]
            _539 = mem[_505 + 160]
            require mem[_505 + 160] == mem[_505 + 190 len 2]
            _544 = mem[_505 + 192]
            require mem[_505 + 192] == mem[_505 + 192]
            _550 = mem[_505 + 224]
            require mem[_505 + 224] == mem[_505 + 240 len 16]
            _557 = mem[64]
            mem[64] = mem[64] + 160
            mem[_557] = 0
            mem[_557 + 32] = 0
            mem[_557 + 64] = 0
            mem[_557 + 96] = 0
            mem[_557 + 128] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _516
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _565 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _567 = mem[_565]
            require mem[_565] == mem[_565 + 30 len 2]
            _573 = mem[_565 + 32]
            require mem[_565 + 32] == mem[_565 + 62 len 2]
            mem[mem[64] + 4] = _516
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _516
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _589 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _592 = mem[_589]
            require mem[_589] == mem[_589]
            require ext_code.size(stor0)
            staticcall stor0.0x62428e4e with:
                    gas gas_remaining wei
                   args _516
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _607 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _610 = mem[_607]
            require mem[_607] == mem[_607 + 12 len 20]
            require mem[_607 + 32] == mem[_607 + 48 len 16]
            require mem[_607 + 64] == mem[_607 + 80 len 16]
            _630 = mem[64]
            mem[64] = mem[64] + 160
            mem[_630] = _516
            mem[_630 + 32] = address(_610)
            mem[_630 + 64] = _592
            mem[_630 + 96] = uint16(_567)
            mem[_630 + 128] = uint16(_573)
            _632 = mem[64]
            mem[64] = mem[64] + 160
            mem[_632] = 0
            mem[_632 + 32] = 0
            mem[_632 + 64] = 0
            mem[_632 + 96] = 0
            mem[_632 + 128] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _522
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _640 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _643 = mem[_640]
            require mem[_640] == mem[_640 + 30 len 2]
            _648 = mem[_640 + 32]
            require mem[_640 + 32] == mem[_640 + 62 len 2]
            mem[mem[64] + 4] = _522
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _522
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _659 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _660 = mem[_659]
            require mem[_659] == mem[_659]
            require ext_code.size(stor0)
            staticcall stor0.0x62428e4e with:
                    gas gas_remaining wei
                   args _522
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _671 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _673 = mem[_671]
            require mem[_671] == mem[_671 + 12 len 20]
            require mem[_671 + 32] == mem[_671 + 48 len 16]
            require mem[_671 + 64] == mem[_671 + 80 len 16]
            _686 = mem[64]
            mem[64] = mem[64] + 160
            mem[_686] = _522
            mem[_686 + 32] = address(_673)
            mem[_686 + 64] = _660
            mem[_686 + 96] = uint16(_643)
            mem[_686 + 128] = uint16(_648)
            _688 = mem[64]
            mem[64] = mem[64] + 160
            mem[_688] = 0
            mem[_688 + 32] = 0
            mem[_688 + 64] = 0
            mem[_688 + 96] = 0
            mem[_688 + 128] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _528
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _695 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _698 = mem[_695]
            require mem[_695] == mem[_695 + 30 len 2]
            _702 = mem[_695 + 32]
            require mem[_695 + 32] == mem[_695 + 62 len 2]
            mem[mem[64] + 4] = _528
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _528
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _712 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _714 = mem[_712]
            require mem[_712] == mem[_712]
            require ext_code.size(stor0)
            staticcall stor0.0x62428e4e with:
                    gas gas_remaining wei
                   args _528
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _726 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _727 = mem[_726]
            require mem[_726] == mem[_726 + 12 len 20]
            require mem[_726 + 32] == mem[_726 + 48 len 16]
            require mem[_726 + 64] == mem[_726 + 80 len 16]
            _742 = mem[64]
            mem[64] = mem[64] + 160
            mem[_742] = _528
            mem[_742 + 32] = address(_727)
            mem[_742 + 64] = _714
            mem[_742 + 96] = uint16(_698)
            mem[_742 + 128] = uint16(_702)
            _744 = mem[64]
            mem[64] = mem[64] + 224
            mem[_744] = 0
            mem[_744 + 32] = 0
            mem[_744 + 64] = 0
            mem[_744 + 96] = 0
            mem[_744 + 128] = 0
            mem[_744 + 160] = 0
            _745 = mem[64]
            mem[64] = mem[64] + 352
            mem[_745] = 0
            mem[_745 + 32] = 0
            mem[_745 + 64] = 0
            mem[_745 + 96] = 0
            mem[_745 + 128] = 0
            mem[_745 + 160] = 0
            mem[_745 + 192] = 0
            mem[_745 + 224] = 0
            mem[_745 + 256] = 0
            mem[_745 + 288] = 0
            mem[_745 + 320] = 0
            mem[_744 + 192] = _745
            require ext_code.size(stor0)
            staticcall stor0.0xf0344e36 with:
                    gas gas_remaining wei
                   args _544
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _752 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _755 = mem[_752]
            require mem[_752] == mem[_752]
            _760 = mem[_752 + 32]
            require mem[_752 + 32] == mem[_752 + 48 len 16]
            _766 = mem[_752 + 64]
            require mem[_752 + 64] == mem[_752 + 80 len 16]
            _769 = mem[_752 + 96]
            require mem[_752 + 96] == mem[_752 + 124 len 4]
            _771 = mem[_752 + 128]
            require mem[_752 + 128] == mem[_752 + 156 len 4]
            _773 = mem[_752 + 160]
            require mem[_752 + 160] == mem[_752 + 188 len 4]
            _775 = mem[64]
            mem[64] = mem[64] + 352
            mem[_775] = 0
            mem[_775 + 32] = 0
            mem[_775 + 64] = 0
            mem[_775 + 96] = 0
            mem[_775 + 128] = 0
            mem[_775 + 160] = 0
            mem[_775 + 192] = 0
            mem[_775 + 224] = 0
            mem[_775 + 256] = 0
            mem[_775 + 288] = 0
            mem[_775 + 320] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x183ce75d with:
                    gas gas_remaining wei
                   args _544
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _780 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _783 = mem[_780]
            require mem[_780] == mem[_780]
            _787 = mem[_780 + 32]
            require mem[_780 + 32] == mem[_780 + 60 len 4]
            _794 = mem[_780 + 64]
            require mem[_780 + 64] == mem[_780 + 92 len 4]
            _797 = mem[_780 + 96]
            require mem[_780 + 96] == mem[_780 + 124 len 4]
            _801 = mem[_780 + 128]
            require mem[_780 + 128] == mem[_780 + 128]
            _805 = mem[_780 + 160]
            require mem[_780 + 160] == mem[_780 + 160]
            _808 = mem[_780 + 192]
            require mem[_780 + 192] == mem[_780 + 192]
            _812 = mem[_780 + 224]
            require mem[_780 + 224] == mem[_780 + 224]
            require ext_code.size(stor0)
            staticcall stor0.0xf769a0c with:
                    gas gas_remaining wei
                   args _544
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _821 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _822 = mem[_821]
            require mem[_821] == mem[_821 + 30 len 2]
            _826 = mem[_821 + 32]
            require mem[_821 + 32] == mem[_821 + 62 len 2]
            if _805 > 0:
                _832 = mem[64]
                mem[64] = mem[64] + 352
                mem[_832] = _783
                mem[_832 + 32] = uint32(_787)
                mem[_832 + 64] = uint32(_794)
                mem[_832 + 96] = uint32(_797)
                mem[_832 + 128] = _801
                mem[_832 + 160] = _805
                mem[_832 + 192] = _808
                mem[_832 + 224] = _812
                mem[_832 + 256] = uint16(_822)
                mem[_832 + 288] = uint16(_826)
                mem[_832 + 320] = 4
                _833 = mem[64]
                mem[64] = mem[64] + 224
                mem[_833] = _755
                mem[_833 + 32] = uint128(_760)
                mem[_833 + 64] = uint128(_766)
                mem[_833 + 96] = uint32(_769)
                mem[_833 + 128] = uint32(_771)
                mem[_833 + 160] = uint32(_773)
                mem[_833 + 192] = _832
                _836 = mem[64]
                mem[64] = mem[64] + 320
                mem[_836] = idx + arg1
                mem[_836 + 32] = address(_509)
                mem[_836 + 64] = _630
                mem[_836 + 96] = _686
                mem[_836 + 128] = _742
                mem[_836 + 160] = uint16(_533)
                mem[_836 + 192] = uint16(_539)
                mem[_836 + 224] = _544
                mem[_836 + 256] = uint128(_550)
                mem[_836 + 288] = _833
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _836
            else:
                if _812 > 0:
                    _835 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_835] = _783
                    mem[_835 + 32] = uint32(_787)
                    mem[_835 + 64] = uint32(_794)
                    mem[_835 + 96] = uint32(_797)
                    mem[_835 + 128] = _801
                    mem[_835 + 160] = _805
                    mem[_835 + 192] = _808
                    mem[_835 + 224] = _812
                    mem[_835 + 256] = uint16(_822)
                    mem[_835 + 288] = uint16(_826)
                    mem[_835 + 320] = 3
                    _837 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_837] = _755
                    mem[_837 + 32] = uint128(_760)
                    mem[_837 + 64] = uint128(_766)
                    mem[_837 + 96] = uint32(_769)
                    mem[_837 + 128] = uint32(_771)
                    mem[_837 + 160] = uint32(_773)
                    mem[_837 + 192] = _835
                    _840 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_840] = idx + arg1
                    mem[_840 + 32] = address(_509)
                    mem[_840 + 64] = _630
                    mem[_840 + 96] = _686
                    mem[_840 + 128] = _742
                    mem[_840 + 160] = uint16(_533)
                    mem[_840 + 192] = uint16(_539)
                    mem[_840 + 224] = _544
                    mem[_840 + 256] = uint128(_550)
                    mem[_840 + 288] = _837
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _840
                else:
                    if _801 > 0:
                        _839 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_839] = _783
                        mem[_839 + 32] = uint32(_787)
                        mem[_839 + 64] = uint32(_794)
                        mem[_839 + 96] = uint32(_797)
                        mem[_839 + 128] = _801
                        mem[_839 + 160] = _805
                        mem[_839 + 192] = _808
                        mem[_839 + 224] = _812
                        mem[_839 + 256] = uint16(_822)
                        mem[_839 + 288] = uint16(_826)
                        mem[_839 + 320] = 2
                        _843 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_843] = _755
                        mem[_843 + 32] = uint128(_760)
                        mem[_843 + 64] = uint128(_766)
                        mem[_843 + 96] = uint32(_769)
                        mem[_843 + 128] = uint32(_771)
                        mem[_843 + 160] = uint32(_773)
                        mem[_843 + 192] = _839
                        _848 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_848] = idx + arg1
                        mem[_848 + 32] = address(_509)
                        mem[_848 + 64] = _630
                        mem[_848 + 96] = _686
                        mem[_848 + 128] = _742
                        mem[_848 + 160] = uint16(_533)
                        mem[_848 + 192] = uint16(_539)
                        mem[_848 + 224] = _544
                        mem[_848 + 256] = uint128(_550)
                        mem[_848 + 288] = _843
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _848
                    else:
                        if _808 <= 0:
                            _842 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_842] = _783
                            mem[_842 + 32] = uint32(_787)
                            mem[_842 + 64] = uint32(_794)
                            mem[_842 + 96] = uint32(_797)
                            mem[_842 + 128] = _801
                            mem[_842 + 160] = _805
                            mem[_842 + 192] = _808
                            mem[_842 + 224] = _812
                            mem[_842 + 256] = uint16(_822)
                            mem[_842 + 288] = uint16(_826)
                            mem[_842 + 320] = 0
                            _846 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_846] = _755
                            mem[_846 + 32] = uint128(_760)
                            mem[_846 + 64] = uint128(_766)
                            mem[_846 + 96] = uint32(_769)
                            mem[_846 + 128] = uint32(_771)
                            mem[_846 + 160] = uint32(_773)
                            mem[_846 + 192] = _842
                            _849 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_849] = idx + arg1
                            mem[_849 + 32] = address(_509)
                            mem[_849 + 64] = _630
                            mem[_849 + 96] = _686
                            mem[_849 + 128] = _742
                            mem[_849 + 160] = uint16(_533)
                            mem[_849 + 192] = uint16(_539)
                            mem[_849 + 224] = _544
                            mem[_849 + 256] = uint128(_550)
                            mem[_849 + 288] = _846
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _849
                        else:
                            _847 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_847] = _783
                            mem[_847 + 32] = uint32(_787)
                            mem[_847 + 64] = uint32(_794)
                            mem[_847 + 96] = uint32(_797)
                            mem[_847 + 128] = _801
                            mem[_847 + 160] = _805
                            mem[_847 + 192] = _808
                            mem[_847 + 224] = _812
                            mem[_847 + 256] = uint16(_822)
                            mem[_847 + 288] = uint16(_826)
                            mem[_847 + 320] = 1
                            _850 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_850] = _755
                            mem[_850 + 32] = uint128(_760)
                            mem[_850 + 64] = uint128(_766)
                            mem[_850 + 96] = uint32(_769)
                            mem[_850 + 128] = uint32(_771)
                            mem[_850 + 160] = uint32(_773)
                            mem[_850 + 192] = _847
                            _853 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_853] = idx + arg1
                            mem[_853 + 32] = address(_509)
                            mem[_853 + 64] = _630
                            mem[_853 + 96] = _686
                            mem[_853 + 128] = _742
                            mem[_853 + 160] = uint16(_533)
                            mem[_853 + 192] = uint16(_539)
                            mem[_853 + 224] = _544
                            mem[_853 + 256] = uint128(_550)
                            mem[_853 + 288] = _850
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _853
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _474 = mem[64]
        mem[mem[64]] = 32
        _477 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _477:
            _653 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_653 + 44 len 20]
            _662 = mem[_653 + 64]
            mem[t + 64] = mem[mem[_653 + 64]]
            mem[t + 96] = mem[_662 + 44 len 20]
            mem[t + 128] = mem[_662 + 64]
            mem[t + 160] = mem[_662 + 126 len 2]
            mem[t + 192] = mem[_662 + 158 len 2]
            _677 = mem[_653 + 96]
            mem[t + 224] = mem[mem[_653 + 96]]
            mem[t + 256] = mem[_677 + 44 len 20]
            mem[t + 288] = mem[_677 + 64]
            mem[t + 320] = mem[_677 + 126 len 2]
            mem[t + 352] = mem[_677 + 158 len 2]
            _692 = mem[_653 + 128]
            mem[t + 384] = mem[mem[_653 + 128]]
            mem[t + 416] = mem[_692 + 44 len 20]
            mem[t + 448] = mem[_692 + 64]
            mem[t + 480] = mem[_692 + 126 len 2]
            mem[t + 512] = mem[_692 + 158 len 2]
            mem[t + 544] = mem[_653 + 190 len 2]
            mem[t + 576] = mem[_653 + 222 len 2]
            mem[t + 608] = mem[_653 + 224]
            mem[t + 640] = mem[_653 + 272 len 16]
            _720 = mem[_653 + 288]
            mem[t + 672] = mem[mem[_653 + 288]]
            mem[t + 704] = mem[_720 + 48 len 16]
            mem[t + 736] = mem[_720 + 80 len 16]
            mem[t + 768] = mem[_720 + 124 len 4]
            mem[t + 800] = mem[_720 + 156 len 4]
            mem[t + 832] = mem[_720 + 188 len 4]
            _738 = mem[_720 + 192]
            mem[t + 864] = mem[mem[_720 + 192]]
            mem[t + 896] = mem[_738 + 60 len 4]
            mem[t + 928] = mem[_738 + 92 len 4]
            mem[t + 960] = mem[_738 + 124 len 4]
            mem[t + 992] = mem[_738 + 128]
            mem[t + 1024] = mem[_738 + 160]
            mem[t + 1056] = mem[_738 + 192]
            mem[t + 1088] = mem[_738 + 224]
            mem[t + 1120] = mem[_738 + 286 len 2]
            mem[t + 1152] = mem[_738 + 318 len 2]
            mem[t + 1184] = mem[_738 + 351 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 1216
            continue 
        return memory
          from mem[64]
           len _474 + (1216 * _477) + -mem[64] + 64
    mem[(32 * arg2 - arg1) + 128] = 0
    mem[(32 * arg2 - arg1) + 160] = 0
    mem[(32 * arg2 - arg1) + 448] = 0
    mem[(32 * arg2 - arg1) + 480] = 0
    mem[(32 * arg2 - arg1) + 512] = 0
    mem[(32 * arg2 - arg1) + 544] = 0
    mem[(32 * arg2 - arg1) + 576] = 0
    mem[(32 * arg2 - arg1) + 192] = (32 * arg2 - arg1) + 448
    mem[(32 * arg2 - arg1) + 608] = 0
    mem[(32 * arg2 - arg1) + 640] = 0
    mem[(32 * arg2 - arg1) + 672] = 0
    mem[(32 * arg2 - arg1) + 704] = 0
    mem[(32 * arg2 - arg1) + 736] = 0
    mem[(32 * arg2 - arg1) + 224] = (32 * arg2 - arg1) + 608
    mem[(32 * arg2 - arg1) + 768] = 0
    mem[(32 * arg2 - arg1) + 800] = 0
    mem[(32 * arg2 - arg1) + 832] = 0
    mem[(32 * arg2 - arg1) + 864] = 0
    mem[(32 * arg2 - arg1) + 896] = 0
    mem[(32 * arg2 - arg1) + 256] = (32 * arg2 - arg1) + 768
    mem[(32 * arg2 - arg1) + 288] = 0
    mem[(32 * arg2 - arg1) + 320] = 0
    mem[(32 * arg2 - arg1) + 352] = 0
    mem[(32 * arg2 - arg1) + 384] = 0
    mem[(32 * arg2 - arg1) + 928] = 0
    mem[(32 * arg2 - arg1) + 960] = 0
    mem[(32 * arg2 - arg1) + 992] = 0
    mem[(32 * arg2 - arg1) + 1024] = 0
    mem[(32 * arg2 - arg1) + 1056] = 0
    mem[(32 * arg2 - arg1) + 1088] = 0
    mem[64] = (32 * arg2 - arg1) + 1504
    mem[(32 * arg2 - arg1) + 1152] = 0
    mem[(32 * arg2 - arg1) + 1184] = 0
    mem[(32 * arg2 - arg1) + 1216] = 0
    mem[(32 * arg2 - arg1) + 1248] = 0
    mem[(32 * arg2 - arg1) + 1280] = 0
    mem[(32 * arg2 - arg1) + 1312] = 0
    mem[(32 * arg2 - arg1) + 1344] = 0
    mem[(32 * arg2 - arg1) + 1376] = 0
    mem[(32 * arg2 - arg1) + 1408] = 0
    mem[(32 * arg2 - arg1) + 1440] = 0
    mem[(32 * arg2 - arg1) + 1472] = 0
    mem[(32 * arg2 - arg1) + 1120] = (32 * arg2 - arg1) + 1152
    mem[(32 * arg2 - arg1) + 416] = (32 * arg2 - arg1) + 928
    mem[var44002] = (32 * arg2 - arg1) + 128
    s = (32 * arg2 - arg1) + 192
    s = (32 * arg2 - arg1) + 128
    s = var44002
    idx = var44003
    while idx - 1:
        _483 = mem[64]
        mem[64] = mem[64] + 320
        mem[_483] = 0
        mem[_483 + 32] = 0
        mem[64] = mem[64] + 160
        mem[(32 * arg2 - arg1) + 448] = 0
        mem[(32 * arg2 - arg1) + 480] = 0
        mem[(32 * arg2 - arg1) + 512] = 0
        mem[(32 * arg2 - arg1) + 544] = 0
        mem[(32 * arg2 - arg1) + 576] = 0
        mem[_483 + 64] = (32 * arg2 - arg1) + 448
        mem[64] = mem[64] + 160
        mem[(32 * arg2 - arg1) + 608] = 0
        mem[(32 * arg2 - arg1) + 640] = 0
        mem[(32 * arg2 - arg1) + 672] = 0
        mem[(32 * arg2 - arg1) + 704] = 0
        mem[(32 * arg2 - arg1) + 736] = 0
        mem[_483 + 96] = (32 * arg2 - arg1) + 608
        mem[64] = mem[64] + 160
        mem[(32 * arg2 - arg1) + 768] = 0
        mem[(32 * arg2 - arg1) + 800] = 0
        mem[(32 * arg2 - arg1) + 832] = 0
        mem[(32 * arg2 - arg1) + 864] = 0
        mem[(32 * arg2 - arg1) + 896] = 0
        mem[_483 + 128] = (32 * arg2 - arg1) + 768
        mem[_483 + 160] = 0
        mem[_483 + 192] = 0
        mem[_483 + 224] = 0
        mem[_483 + 256] = 0
        mem[64] = mem[64] + 224
        mem[(32 * arg2 - arg1) + 928] = 0
        mem[(32 * arg2 - arg1) + 960] = 0
        mem[(32 * arg2 - arg1) + 992] = 0
        mem[(32 * arg2 - arg1) + 1024] = 0
        mem[(32 * arg2 - arg1) + 1056] = 0
        mem[(32 * arg2 - arg1) + 1088] = 0
        mem[64] = mem[64] + 352
        mem[(32 * arg2 - arg1) + 1152] = 0
        mem[(32 * arg2 - arg1) + 1184] = 0
        mem[(32 * arg2 - arg1) + 1216] = 0
        mem[(32 * arg2 - arg1) + 1248] = 0
        mem[(32 * arg2 - arg1) + 1280] = 0
        mem[(32 * arg2 - arg1) + 1312] = 0
        mem[(32 * arg2 - arg1) + 1344] = 0
        mem[(32 * arg2 - arg1) + 1376] = 0
        mem[(32 * arg2 - arg1) + 1408] = 0
        mem[(32 * arg2 - arg1) + 1440] = 0
        mem[(32 * arg2 - arg1) + 1472] = 0
        mem[(32 * arg2 - arg1) + 1120] = (32 * arg2 - arg1) + 1152
        mem[_483 + 288] = (32 * arg2 - arg1) + 928
        mem[s + 32] = _483
        s = _483 + 64
        s = _483
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg2 - arg1:
        if idx > -arg1 - 1:
            revert with 'NH{q', 17
        _897 = mem[64]
        mem[64] = mem[64] + 320
        mem[_897] = 0
        mem[_897 + 32] = 0
        _898 = mem[64]
        mem[64] = mem[64] + 160
        mem[_898] = 0
        mem[_898 + 32] = 0
        mem[_898 + 64] = 0
        mem[_898 + 96] = 0
        mem[_898 + 128] = 0
        mem[_897 + 64] = _898
        _900 = mem[64]
        mem[64] = mem[64] + 160
        mem[_900] = 0
        mem[_900 + 32] = 0
        mem[_900 + 64] = 0
        mem[_900 + 96] = 0
        mem[_900 + 128] = 0
        mem[_897 + 96] = _900
        _903 = mem[64]
        mem[64] = mem[64] + 160
        mem[_903] = 0
        mem[_903 + 32] = 0
        mem[_903 + 64] = 0
        mem[_903 + 96] = 0
        mem[_903 + 128] = 0
        mem[_897 + 128] = _903
        mem[_897 + 160] = 0
        mem[_897 + 192] = 0
        mem[_897 + 224] = 0
        mem[_897 + 256] = 0
        _904 = mem[64]
        mem[64] = mem[64] + 224
        mem[_904] = 0
        mem[_904 + 32] = 0
        mem[_904 + 64] = 0
        mem[_904 + 96] = 0
        mem[_904 + 128] = 0
        mem[_904 + 160] = 0
        _906 = mem[64]
        mem[64] = mem[64] + 352
        mem[_906] = 0
        mem[_906 + 32] = 0
        mem[_906 + 64] = 0
        mem[_906 + 96] = 0
        mem[_906 + 128] = 0
        mem[_906 + 160] = 0
        mem[_906 + 192] = 0
        mem[_906 + 224] = 0
        mem[_906 + 256] = 0
        mem[_906 + 288] = 0
        mem[_906 + 320] = 0
        mem[_904 + 192] = _906
        mem[_897 + 288] = _904
        require ext_code.size(stor0)
        staticcall stor0.0x969215ba with:
                gas gas_remaining wei
               args (idx + arg1)
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _912 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _913 = mem[_912]
        require mem[_912] == mem[_912 + 12 len 20]
        _916 = mem[_912 + 32]
        require mem[_912 + 32] == mem[_912 + 32]
        _919 = mem[_912 + 64]
        require mem[_912 + 64] == mem[_912 + 64]
        _922 = mem[_912 + 96]
        require mem[_912 + 96] == mem[_912 + 96]
        _924 = mem[_912 + 128]
        require mem[_912 + 128] == mem[_912 + 158 len 2]
        _927 = mem[_912 + 160]
        require mem[_912 + 160] == mem[_912 + 190 len 2]
        _930 = mem[_912 + 192]
        require mem[_912 + 192] == mem[_912 + 192]
        _933 = mem[_912 + 224]
        require mem[_912 + 224] == mem[_912 + 240 len 16]
        _936 = mem[64]
        mem[64] = mem[64] + 160
        mem[_936] = 0
        mem[_936 + 32] = 0
        mem[_936 + 64] = 0
        mem[_936 + 96] = 0
        mem[_936 + 128] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _916
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _941 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _943 = mem[_941]
        require mem[_941] == mem[_941 + 30 len 2]
        _945 = mem[_941 + 32]
        require mem[_941 + 32] == mem[_941 + 62 len 2]
        mem[mem[64] + 4] = _916
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _916
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _953 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _955 = mem[_953]
        require mem[_953] == mem[_953]
        require ext_code.size(stor0)
        staticcall stor0.0x62428e4e with:
                gas gas_remaining wei
               args _916
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _962 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _964 = mem[_962]
        require mem[_962] == mem[_962 + 12 len 20]
        require mem[_962 + 32] == mem[_962 + 48 len 16]
        require mem[_962 + 64] == mem[_962 + 80 len 16]
        _973 = mem[64]
        mem[64] = mem[64] + 160
        mem[_973] = _916
        mem[_973 + 32] = address(_964)
        mem[_973 + 64] = _955
        mem[_973 + 96] = uint16(_943)
        mem[_973 + 128] = uint16(_945)
        _974 = mem[64]
        mem[64] = mem[64] + 160
        mem[_974] = 0
        mem[_974 + 32] = 0
        mem[_974 + 64] = 0
        mem[_974 + 96] = 0
        mem[_974 + 128] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _919
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _979 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _980 = mem[_979]
        require mem[_979] == mem[_979 + 30 len 2]
        _981 = mem[_979 + 32]
        require mem[_979 + 32] == mem[_979 + 62 len 2]
        mem[mem[64] + 4] = _919
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _919
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _988 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _989 = mem[_988]
        require mem[_988] == mem[_988]
        require ext_code.size(stor0)
        staticcall stor0.0x62428e4e with:
                gas gas_remaining wei
               args _919
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _996 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _998 = mem[_996]
        require mem[_996] == mem[_996 + 12 len 20]
        require mem[_996 + 32] == mem[_996 + 48 len 16]
        require mem[_996 + 64] == mem[_996 + 80 len 16]
        _1006 = mem[64]
        mem[64] = mem[64] + 160
        mem[_1006] = _919
        mem[_1006 + 32] = address(_998)
        mem[_1006 + 64] = _989
        mem[_1006 + 96] = uint16(_980)
        mem[_1006 + 128] = uint16(_981)
        _1008 = mem[64]
        mem[64] = mem[64] + 160
        mem[_1008] = 0
        mem[_1008 + 32] = 0
        mem[_1008 + 64] = 0
        mem[_1008 + 96] = 0
        mem[_1008 + 128] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _922
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1014 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1016 = mem[_1014]
        require mem[_1014] == mem[_1014 + 30 len 2]
        _1018 = mem[_1014 + 32]
        require mem[_1014 + 32] == mem[_1014 + 62 len 2]
        mem[mem[64] + 4] = _922
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _922
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1024 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1026 = mem[_1024]
        require mem[_1024] == mem[_1024]
        require ext_code.size(stor0)
        staticcall stor0.0x62428e4e with:
                gas gas_remaining wei
               args _922
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1034 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1035 = mem[_1034]
        require mem[_1034] == mem[_1034 + 12 len 20]
        require mem[_1034 + 32] == mem[_1034 + 48 len 16]
        require mem[_1034 + 64] == mem[_1034 + 80 len 16]
        _1045 = mem[64]
        mem[64] = mem[64] + 160
        mem[_1045] = _922
        mem[_1045 + 32] = address(_1035)
        mem[_1045 + 64] = _1026
        mem[_1045 + 96] = uint16(_1016)
        mem[_1045 + 128] = uint16(_1018)
        _1047 = mem[64]
        mem[64] = mem[64] + 224
        mem[_1047] = 0
        mem[_1047 + 32] = 0
        mem[_1047 + 64] = 0
        mem[_1047 + 96] = 0
        mem[_1047 + 128] = 0
        mem[_1047 + 160] = 0
        _1048 = mem[64]
        mem[64] = mem[64] + 352
        mem[_1048] = 0
        mem[_1048 + 32] = 0
        mem[_1048 + 64] = 0
        mem[_1048 + 96] = 0
        mem[_1048 + 128] = 0
        mem[_1048 + 160] = 0
        mem[_1048 + 192] = 0
        mem[_1048 + 224] = 0
        mem[_1048 + 256] = 0
        mem[_1048 + 288] = 0
        mem[_1048 + 320] = 0
        mem[_1047 + 192] = _1048
        require ext_code.size(stor0)
        staticcall stor0.0xf0344e36 with:
                gas gas_remaining wei
               args _930
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1053 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _1055 = mem[_1053]
        require mem[_1053] == mem[_1053]
        _1058 = mem[_1053 + 32]
        require mem[_1053 + 32] == mem[_1053 + 48 len 16]
        _1061 = mem[_1053 + 64]
        require mem[_1053 + 64] == mem[_1053 + 80 len 16]
        _1063 = mem[_1053 + 96]
        require mem[_1053 + 96] == mem[_1053 + 124 len 4]
        _1064 = mem[_1053 + 128]
        require mem[_1053 + 128] == mem[_1053 + 156 len 4]
        _1065 = mem[_1053 + 160]
        require mem[_1053 + 160] == mem[_1053 + 188 len 4]
        _1066 = mem[64]
        mem[64] = mem[64] + 352
        mem[_1066] = 0
        mem[_1066 + 32] = 0
        mem[_1066 + 64] = 0
        mem[_1066 + 96] = 0
        mem[_1066 + 128] = 0
        mem[_1066 + 160] = 0
        mem[_1066 + 192] = 0
        mem[_1066 + 224] = 0
        mem[_1066 + 256] = 0
        mem[_1066 + 288] = 0
        mem[_1066 + 320] = 0
        require ext_code.size(stor0)
        staticcall stor0.0x183ce75d with:
                gas gas_remaining wei
               args _930
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1069 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _1070 = mem[_1069]
        require mem[_1069] == mem[_1069]
        _1071 = mem[_1069 + 32]
        require mem[_1069 + 32] == mem[_1069 + 60 len 4]
        _1072 = mem[_1069 + 64]
        require mem[_1069 + 64] == mem[_1069 + 92 len 4]
        _1073 = mem[_1069 + 96]
        require mem[_1069 + 96] == mem[_1069 + 124 len 4]
        _1074 = mem[_1069 + 128]
        require mem[_1069 + 128] == mem[_1069 + 128]
        _1075 = mem[_1069 + 160]
        require mem[_1069 + 160] == mem[_1069 + 160]
        _1076 = mem[_1069 + 192]
        require mem[_1069 + 192] == mem[_1069 + 192]
        _1077 = mem[_1069 + 224]
        require mem[_1069 + 224] == mem[_1069 + 224]
        require ext_code.size(stor0)
        staticcall stor0.0xf769a0c with:
                gas gas_remaining wei
               args _930
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1080 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1081 = mem[_1080]
        require mem[_1080] == mem[_1080 + 30 len 2]
        _1082 = mem[_1080 + 32]
        require mem[_1080 + 32] == mem[_1080 + 62 len 2]
        if _1075 > 0:
            _1083 = mem[64]
            mem[64] = mem[64] + 352
            mem[_1083] = _1070
            mem[_1083 + 32] = uint32(_1071)
            mem[_1083 + 64] = uint32(_1072)
            mem[_1083 + 96] = uint32(_1073)
            mem[_1083 + 128] = _1074
            mem[_1083 + 160] = _1075
            mem[_1083 + 192] = _1076
            mem[_1083 + 224] = _1077
            mem[_1083 + 256] = uint16(_1081)
            mem[_1083 + 288] = uint16(_1082)
            mem[_1083 + 320] = 4
            _1084 = mem[64]
            mem[64] = mem[64] + 224
            mem[_1084] = _1055
            mem[_1084 + 32] = uint128(_1058)
            mem[_1084 + 64] = uint128(_1061)
            mem[_1084 + 96] = uint32(_1063)
            mem[_1084 + 128] = uint32(_1064)
            mem[_1084 + 160] = uint32(_1065)
            mem[_1084 + 192] = _1083
            _1086 = mem[64]
            mem[64] = mem[64] + 320
            mem[_1086] = idx + arg1
            mem[_1086 + 32] = address(_913)
            mem[_1086 + 64] = _973
            mem[_1086 + 96] = _1006
            mem[_1086 + 128] = _1045
            mem[_1086 + 160] = uint16(_924)
            mem[_1086 + 192] = uint16(_927)
            mem[_1086 + 224] = _930
            mem[_1086 + 256] = uint128(_933)
            mem[_1086 + 288] = _1084
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _1086
        else:
            if _1077 > 0:
                _1085 = mem[64]
                mem[64] = mem[64] + 352
                mem[_1085] = _1070
                mem[_1085 + 32] = uint32(_1071)
                mem[_1085 + 64] = uint32(_1072)
                mem[_1085 + 96] = uint32(_1073)
                mem[_1085 + 128] = _1074
                mem[_1085 + 160] = _1075
                mem[_1085 + 192] = _1076
                mem[_1085 + 224] = _1077
                mem[_1085 + 256] = uint16(_1081)
                mem[_1085 + 288] = uint16(_1082)
                mem[_1085 + 320] = 3
                _1087 = mem[64]
                mem[64] = mem[64] + 224
                mem[_1087] = _1055
                mem[_1087 + 32] = uint128(_1058)
                mem[_1087 + 64] = uint128(_1061)
                mem[_1087 + 96] = uint32(_1063)
                mem[_1087 + 128] = uint32(_1064)
                mem[_1087 + 160] = uint32(_1065)
                mem[_1087 + 192] = _1085
                _1090 = mem[64]
                mem[64] = mem[64] + 320
                mem[_1090] = idx + arg1
                mem[_1090 + 32] = address(_913)
                mem[_1090 + 64] = _973
                mem[_1090 + 96] = _1006
                mem[_1090 + 128] = _1045
                mem[_1090 + 160] = uint16(_924)
                mem[_1090 + 192] = uint16(_927)
                mem[_1090 + 224] = _930
                mem[_1090 + 256] = uint128(_933)
                mem[_1090 + 288] = _1087
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _1090
            else:
                if _1074 > 0:
                    _1089 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_1089] = _1070
                    mem[_1089 + 32] = uint32(_1071)
                    mem[_1089 + 64] = uint32(_1072)
                    mem[_1089 + 96] = uint32(_1073)
                    mem[_1089 + 128] = _1074
                    mem[_1089 + 160] = _1075
                    mem[_1089 + 192] = _1076
                    mem[_1089 + 224] = _1077
                    mem[_1089 + 256] = uint16(_1081)
                    mem[_1089 + 288] = uint16(_1082)
                    mem[_1089 + 320] = 2
                    _1092 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1092] = _1055
                    mem[_1092 + 32] = uint128(_1058)
                    mem[_1092 + 64] = uint128(_1061)
                    mem[_1092 + 96] = uint32(_1063)
                    mem[_1092 + 128] = uint32(_1064)
                    mem[_1092 + 160] = uint32(_1065)
                    mem[_1092 + 192] = _1089
                    _1096 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_1096] = idx + arg1
                    mem[_1096 + 32] = address(_913)
                    mem[_1096 + 64] = _973
                    mem[_1096 + 96] = _1006
                    mem[_1096 + 128] = _1045
                    mem[_1096 + 160] = uint16(_924)
                    mem[_1096 + 192] = uint16(_927)
                    mem[_1096 + 224] = _930
                    mem[_1096 + 256] = uint128(_933)
                    mem[_1096 + 288] = _1092
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _1096
                else:
                    if _1076 <= 0:
                        _1091 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_1091] = _1070
                        mem[_1091 + 32] = uint32(_1071)
                        mem[_1091 + 64] = uint32(_1072)
                        mem[_1091 + 96] = uint32(_1073)
                        mem[_1091 + 128] = _1074
                        mem[_1091 + 160] = _1075
                        mem[_1091 + 192] = _1076
                        mem[_1091 + 224] = _1077
                        mem[_1091 + 256] = uint16(_1081)
                        mem[_1091 + 288] = uint16(_1082)
                        mem[_1091 + 320] = 0
                        _1094 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1094] = _1055
                        mem[_1094 + 32] = uint128(_1058)
                        mem[_1094 + 64] = uint128(_1061)
                        mem[_1094 + 96] = uint32(_1063)
                        mem[_1094 + 128] = uint32(_1064)
                        mem[_1094 + 160] = uint32(_1065)
                        mem[_1094 + 192] = _1091
                        _1097 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_1097] = idx + arg1
                        mem[_1097 + 32] = address(_913)
                        mem[_1097 + 64] = _973
                        mem[_1097 + 96] = _1006
                        mem[_1097 + 128] = _1045
                        mem[_1097 + 160] = uint16(_924)
                        mem[_1097 + 192] = uint16(_927)
                        mem[_1097 + 224] = _930
                        mem[_1097 + 256] = uint128(_933)
                        mem[_1097 + 288] = _1094
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _1097
                    else:
                        _1095 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_1095] = _1070
                        mem[_1095 + 32] = uint32(_1071)
                        mem[_1095 + 64] = uint32(_1072)
                        mem[_1095 + 96] = uint32(_1073)
                        mem[_1095 + 128] = _1074
                        mem[_1095 + 160] = _1075
                        mem[_1095 + 192] = _1076
                        mem[_1095 + 224] = _1077
                        mem[_1095 + 256] = uint16(_1081)
                        mem[_1095 + 288] = uint16(_1082)
                        mem[_1095 + 320] = 1
                        _1098 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1098] = _1055
                        mem[_1098 + 32] = uint128(_1058)
                        mem[_1098 + 64] = uint128(_1061)
                        mem[_1098 + 96] = uint32(_1063)
                        mem[_1098 + 128] = uint32(_1064)
                        mem[_1098 + 160] = uint32(_1065)
                        mem[_1098 + 192] = _1095
                        _1101 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_1101] = idx + arg1
                        mem[_1101 + 32] = address(_913)
                        mem[_1101 + 64] = _973
                        mem[_1101 + 96] = _1006
                        mem[_1101 + 128] = _1045
                        mem[_1101 + 160] = uint16(_924)
                        mem[_1101 + 192] = uint16(_927)
                        mem[_1101 + 224] = _930
                        mem[_1101 + 256] = uint128(_933)
                        mem[_1101 + 288] = _1098
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _1101
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _895 = mem[64]
    mem[mem[64]] = 32
    _896 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _896:
        _983 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_983 + 44 len 20]
        _990 = mem[_983 + 64]
        mem[t + 64] = mem[mem[_983 + 64]]
        mem[t + 96] = mem[_990 + 44 len 20]
        mem[t + 128] = mem[_990 + 64]
        mem[t + 160] = mem[_990 + 126 len 2]
        mem[t + 192] = mem[_990 + 158 len 2]
        _1000 = mem[_983 + 96]
        mem[t + 224] = mem[mem[_983 + 96]]
        mem[t + 256] = mem[_1000 + 44 len 20]
        mem[t + 288] = mem[_1000 + 64]
        mem[t + 320] = mem[_1000 + 126 len 2]
        mem[t + 352] = mem[_1000 + 158 len 2]
        _1011 = mem[_983 + 128]
        mem[t + 384] = mem[mem[_983 + 128]]
        mem[t + 416] = mem[_1011 + 44 len 20]
        mem[t + 448] = mem[_1011 + 64]
        mem[t + 480] = mem[_1011 + 126 len 2]
        mem[t + 512] = mem[_1011 + 158 len 2]
        mem[t + 544] = mem[_983 + 190 len 2]
        mem[t + 576] = mem[_983 + 222 len 2]
        mem[t + 608] = mem[_983 + 224]
        mem[t + 640] = mem[_983 + 272 len 16]
        _1030 = mem[_983 + 288]
        mem[t + 672] = mem[mem[_983 + 288]]
        mem[t + 704] = mem[_1030 + 48 len 16]
        mem[t + 736] = mem[_1030 + 80 len 16]
        mem[t + 768] = mem[_1030 + 124 len 4]
        mem[t + 800] = mem[_1030 + 156 len 4]
        mem[t + 832] = mem[_1030 + 188 len 4]
        _1042 = mem[_1030 + 192]
        mem[t + 864] = mem[mem[_1030 + 192]]
        mem[t + 896] = mem[_1042 + 60 len 4]
        mem[t + 928] = mem[_1042 + 92 len 4]
        mem[t + 960] = mem[_1042 + 124 len 4]
        mem[t + 992] = mem[_1042 + 128]
        mem[t + 1024] = mem[_1042 + 160]
        mem[t + 1056] = mem[_1042 + 192]
        mem[t + 1088] = mem[_1042 + 224]
        mem[t + 1120] = mem[_1042 + 286 len 2]
        mem[t + 1152] = mem[_1042 + 318 len 2]
        mem[t + 1184] = mem[_1042 + 351 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 1216
        continue 
    return memory
      from mem[64]
       len _895 + (1216 * _896) + -mem[64] + 64
}

function sub_30e33018(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 4).length
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _664 = mem[(32 * idx) + 128]
            _666 = mem[64]
            mem[64] = mem[64] + 320
            mem[_666] = 0
            mem[_666 + 32] = 0
            _669 = mem[64]
            mem[64] = mem[64] + 160
            mem[_669] = 0
            mem[_669 + 32] = 0
            mem[_669 + 64] = 0
            mem[_669 + 96] = 0
            mem[_669 + 128] = 0
            mem[_666 + 64] = _669
            _671 = mem[64]
            mem[64] = mem[64] + 160
            mem[_671] = 0
            mem[_671 + 32] = 0
            mem[_671 + 64] = 0
            mem[_671 + 96] = 0
            mem[_671 + 128] = 0
            mem[_666 + 96] = _671
            _673 = mem[64]
            mem[64] = mem[64] + 160
            mem[_673] = 0
            mem[_673 + 32] = 0
            mem[_673 + 64] = 0
            mem[_673 + 96] = 0
            mem[_673 + 128] = 0
            mem[_666 + 128] = _673
            mem[_666 + 160] = 0
            mem[_666 + 192] = 0
            mem[_666 + 224] = 0
            mem[_666 + 256] = 0
            _674 = mem[64]
            mem[64] = mem[64] + 224
            mem[_674] = 0
            mem[_674 + 32] = 0
            mem[_674 + 64] = 0
            mem[_674 + 96] = 0
            mem[_674 + 128] = 0
            mem[_674 + 160] = 0
            _676 = mem[64]
            mem[64] = mem[64] + 352
            mem[_676] = 0
            mem[_676 + 32] = 0
            mem[_676 + 64] = 0
            mem[_676 + 96] = 0
            mem[_676 + 128] = 0
            mem[_676 + 160] = 0
            mem[_676 + 192] = 0
            mem[_676 + 224] = 0
            mem[_676 + 256] = 0
            mem[_676 + 288] = 0
            mem[_676 + 320] = 0
            mem[_674 + 192] = _676
            mem[_666 + 288] = _674
            require ext_code.size(stor0)
            staticcall stor0.0x969215ba with:
                    gas gas_remaining wei
                   args _664
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _691 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _697 = mem[_691]
            require mem[_691] == mem[_691 + 12 len 20]
            _705 = mem[_691 + 32]
            require mem[_691 + 32] == mem[_691 + 32]
            _711 = mem[_691 + 64]
            require mem[_691 + 64] == mem[_691 + 64]
            _718 = mem[_691 + 96]
            require mem[_691 + 96] == mem[_691 + 96]
            _722 = mem[_691 + 128]
            require mem[_691 + 128] == mem[_691 + 158 len 2]
            _729 = mem[_691 + 160]
            require mem[_691 + 160] == mem[_691 + 190 len 2]
            _733 = mem[_691 + 192]
            require mem[_691 + 192] == mem[_691 + 192]
            _740 = mem[_691 + 224]
            require mem[_691 + 224] == mem[_691 + 240 len 16]
            _745 = mem[64]
            mem[64] = mem[64] + 160
            mem[_745] = 0
            mem[_745 + 32] = 0
            mem[_745 + 64] = 0
            mem[_745 + 96] = 0
            mem[_745 + 128] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _705
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _753 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _756 = mem[_753]
            require mem[_753] == mem[_753 + 30 len 2]
            _763 = mem[_753 + 32]
            require mem[_753 + 32] == mem[_753 + 62 len 2]
            mem[mem[64] + 4] = _705
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _705
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _777 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _780 = mem[_777]
            require mem[_777] == mem[_777]
            require ext_code.size(stor0)
            staticcall stor0.0x62428e4e with:
                    gas gas_remaining wei
                   args _705
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _796 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _798 = mem[_796]
            require mem[_796] == mem[_796 + 12 len 20]
            require mem[_796 + 32] == mem[_796 + 48 len 16]
            require mem[_796 + 64] == mem[_796 + 80 len 16]
            _819 = mem[64]
            mem[64] = mem[64] + 160
            mem[_819] = _705
            mem[_819 + 32] = address(_798)
            mem[_819 + 64] = _780
            mem[_819 + 96] = uint16(_756)
            mem[_819 + 128] = uint16(_763)
            _821 = mem[64]
            mem[64] = mem[64] + 160
            mem[_821] = 0
            mem[_821 + 32] = 0
            mem[_821 + 64] = 0
            mem[_821 + 96] = 0
            mem[_821 + 128] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _711
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _830 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _833 = mem[_830]
            require mem[_830] == mem[_830 + 30 len 2]
            _838 = mem[_830 + 32]
            require mem[_830 + 32] == mem[_830 + 62 len 2]
            mem[mem[64] + 4] = _711
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _711
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _848 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _851 = mem[_848]
            require mem[_848] == mem[_848]
            require ext_code.size(stor0)
            staticcall stor0.0x62428e4e with:
                    gas gas_remaining wei
                   args _711
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _862 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _863 = mem[_862]
            require mem[_862] == mem[_862 + 12 len 20]
            require mem[_862 + 32] == mem[_862 + 48 len 16]
            require mem[_862 + 64] == mem[_862 + 80 len 16]
            _877 = mem[64]
            mem[64] = mem[64] + 160
            mem[_877] = _711
            mem[_877 + 32] = address(_863)
            mem[_877 + 64] = _851
            mem[_877 + 96] = uint16(_833)
            mem[_877 + 128] = uint16(_838)
            _879 = mem[64]
            mem[64] = mem[64] + 160
            mem[_879] = 0
            mem[_879 + 32] = 0
            mem[_879 + 64] = 0
            mem[_879 + 96] = 0
            mem[_879 + 128] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _718
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _885 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _887 = mem[_885]
            require mem[_885] == mem[_885 + 30 len 2]
            _893 = mem[_885 + 32]
            require mem[_885 + 32] == mem[_885 + 62 len 2]
            mem[mem[64] + 4] = _718
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _718
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _903 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _905 = mem[_903]
            require mem[_903] == mem[_903]
            require ext_code.size(stor0)
            staticcall stor0.0x62428e4e with:
                    gas gas_remaining wei
                   args _718
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _915 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _918 = mem[_915]
            require mem[_915] == mem[_915 + 12 len 20]
            require mem[_915 + 32] == mem[_915 + 48 len 16]
            require mem[_915 + 64] == mem[_915 + 80 len 16]
            _932 = mem[64]
            mem[64] = mem[64] + 160
            mem[_932] = _718
            mem[_932 + 32] = address(_918)
            mem[_932 + 64] = _905
            mem[_932 + 96] = uint16(_887)
            mem[_932 + 128] = uint16(_893)
            _934 = mem[64]
            mem[64] = mem[64] + 224
            mem[_934] = 0
            mem[_934 + 32] = 0
            mem[_934 + 64] = 0
            mem[_934 + 96] = 0
            mem[_934 + 128] = 0
            mem[_934 + 160] = 0
            _935 = mem[64]
            mem[64] = mem[64] + 352
            mem[_935] = 0
            mem[_935 + 32] = 0
            mem[_935 + 64] = 0
            mem[_935 + 96] = 0
            mem[_935 + 128] = 0
            mem[_935 + 160] = 0
            mem[_935 + 192] = 0
            mem[_935 + 224] = 0
            mem[_935 + 256] = 0
            mem[_935 + 288] = 0
            mem[_935 + 320] = 0
            mem[_934 + 192] = _935
            require ext_code.size(stor0)
            staticcall stor0.0xf0344e36 with:
                    gas gas_remaining wei
                   args _733
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _943 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _946 = mem[_943]
            require mem[_943] == mem[_943]
            _950 = mem[_943 + 32]
            require mem[_943 + 32] == mem[_943 + 48 len 16]
            _956 = mem[_943 + 64]
            require mem[_943 + 64] == mem[_943 + 80 len 16]
            _960 = mem[_943 + 96]
            require mem[_943 + 96] == mem[_943 + 124 len 4]
            _963 = mem[_943 + 128]
            require mem[_943 + 128] == mem[_943 + 156 len 4]
            _965 = mem[_943 + 160]
            require mem[_943 + 160] == mem[_943 + 188 len 4]
            _967 = mem[64]
            mem[64] = mem[64] + 352
            mem[_967] = 0
            mem[_967 + 32] = 0
            mem[_967 + 64] = 0
            mem[_967 + 96] = 0
            mem[_967 + 128] = 0
            mem[_967 + 160] = 0
            mem[_967 + 192] = 0
            mem[_967 + 224] = 0
            mem[_967 + 256] = 0
            mem[_967 + 288] = 0
            mem[_967 + 320] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x183ce75d with:
                    gas gas_remaining wei
                   args _733
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _971 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _972 = mem[_971]
            require mem[_971] == mem[_971]
            _978 = mem[_971 + 32]
            require mem[_971 + 32] == mem[_971 + 60 len 4]
            _983 = mem[_971 + 64]
            require mem[_971 + 64] == mem[_971 + 92 len 4]
            _988 = mem[_971 + 96]
            require mem[_971 + 96] == mem[_971 + 124 len 4]
            _991 = mem[_971 + 128]
            require mem[_971 + 128] == mem[_971 + 128]
            _995 = mem[_971 + 160]
            require mem[_971 + 160] == mem[_971 + 160]
            _999 = mem[_971 + 192]
            require mem[_971 + 192] == mem[_971 + 192]
            _1002 = mem[_971 + 224]
            require mem[_971 + 224] == mem[_971 + 224]
            require ext_code.size(stor0)
            staticcall stor0.0xf769a0c with:
                    gas gas_remaining wei
                   args _733
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1012 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1013 = mem[_1012]
            require mem[_1012] == mem[_1012 + 30 len 2]
            _1017 = mem[_1012 + 32]
            require mem[_1012 + 32] == mem[_1012 + 62 len 2]
            if _995 > 0:
                _1023 = mem[64]
                mem[64] = mem[64] + 352
                mem[_1023] = _972
                mem[_1023 + 32] = uint32(_978)
                mem[_1023 + 64] = uint32(_983)
                mem[_1023 + 96] = uint32(_988)
                mem[_1023 + 128] = _991
                mem[_1023 + 160] = _995
                mem[_1023 + 192] = _999
                mem[_1023 + 224] = _1002
                mem[_1023 + 256] = uint16(_1013)
                mem[_1023 + 288] = uint16(_1017)
                mem[_1023 + 320] = 4
                _1024 = mem[64]
                mem[64] = mem[64] + 224
                mem[_1024] = _946
                mem[_1024 + 32] = uint128(_950)
                mem[_1024 + 64] = uint128(_956)
                mem[_1024 + 96] = uint32(_960)
                mem[_1024 + 128] = uint32(_963)
                mem[_1024 + 160] = uint32(_965)
                mem[_1024 + 192] = _1023
                _1026 = mem[64]
                mem[64] = mem[64] + 320
                mem[_1026] = _664
                mem[_1026 + 32] = address(_697)
                mem[_1026 + 64] = _819
                mem[_1026 + 96] = _877
                mem[_1026 + 128] = _932
                mem[_1026 + 160] = uint16(_722)
                mem[_1026 + 192] = uint16(_729)
                mem[_1026 + 224] = _733
                mem[_1026 + 256] = uint128(_740)
                mem[_1026 + 288] = _1024
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1026
            else:
                if _1002 > 0:
                    _1025 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_1025] = _972
                    mem[_1025 + 32] = uint32(_978)
                    mem[_1025 + 64] = uint32(_983)
                    mem[_1025 + 96] = uint32(_988)
                    mem[_1025 + 128] = _991
                    mem[_1025 + 160] = _995
                    mem[_1025 + 192] = _999
                    mem[_1025 + 224] = _1002
                    mem[_1025 + 256] = uint16(_1013)
                    mem[_1025 + 288] = uint16(_1017)
                    mem[_1025 + 320] = 3
                    _1027 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1027] = _946
                    mem[_1027 + 32] = uint128(_950)
                    mem[_1027 + 64] = uint128(_956)
                    mem[_1027 + 96] = uint32(_960)
                    mem[_1027 + 128] = uint32(_963)
                    mem[_1027 + 160] = uint32(_965)
                    mem[_1027 + 192] = _1025
                    _1031 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_1031] = _664
                    mem[_1031 + 32] = address(_697)
                    mem[_1031 + 64] = _819
                    mem[_1031 + 96] = _877
                    mem[_1031 + 128] = _932
                    mem[_1031 + 160] = uint16(_722)
                    mem[_1031 + 192] = uint16(_729)
                    mem[_1031 + 224] = _733
                    mem[_1031 + 256] = uint128(_740)
                    mem[_1031 + 288] = _1027
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1031
                else:
                    if _991 > 0:
                        _1030 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_1030] = _972
                        mem[_1030 + 32] = uint32(_978)
                        mem[_1030 + 64] = uint32(_983)
                        mem[_1030 + 96] = uint32(_988)
                        mem[_1030 + 128] = _991
                        mem[_1030 + 160] = _995
                        mem[_1030 + 192] = _999
                        mem[_1030 + 224] = _1002
                        mem[_1030 + 256] = uint16(_1013)
                        mem[_1030 + 288] = uint16(_1017)
                        mem[_1030 + 320] = 2
                        _1034 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1034] = _946
                        mem[_1034 + 32] = uint128(_950)
                        mem[_1034 + 64] = uint128(_956)
                        mem[_1034 + 96] = uint32(_960)
                        mem[_1034 + 128] = uint32(_963)
                        mem[_1034 + 160] = uint32(_965)
                        mem[_1034 + 192] = _1030
                        _1038 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_1038] = _664
                        mem[_1038 + 32] = address(_697)
                        mem[_1038 + 64] = _819
                        mem[_1038 + 96] = _877
                        mem[_1038 + 128] = _932
                        mem[_1038 + 160] = uint16(_722)
                        mem[_1038 + 192] = uint16(_729)
                        mem[_1038 + 224] = _733
                        mem[_1038 + 256] = uint128(_740)
                        mem[_1038 + 288] = _1034
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1038
                    else:
                        if _999 <= 0:
                            _1033 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_1033] = _972
                            mem[_1033 + 32] = uint32(_978)
                            mem[_1033 + 64] = uint32(_983)
                            mem[_1033 + 96] = uint32(_988)
                            mem[_1033 + 128] = _991
                            mem[_1033 + 160] = _995
                            mem[_1033 + 192] = _999
                            mem[_1033 + 224] = _1002
                            mem[_1033 + 256] = uint16(_1013)
                            mem[_1033 + 288] = uint16(_1017)
                            mem[_1033 + 320] = 0
                            _1036 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1036] = _946
                            mem[_1036 + 32] = uint128(_950)
                            mem[_1036 + 64] = uint128(_956)
                            mem[_1036 + 96] = uint32(_960)
                            mem[_1036 + 128] = uint32(_963)
                            mem[_1036 + 160] = uint32(_965)
                            mem[_1036 + 192] = _1033
                            _1039 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_1039] = _664
                            mem[_1039 + 32] = address(_697)
                            mem[_1039 + 64] = _819
                            mem[_1039 + 96] = _877
                            mem[_1039 + 128] = _932
                            mem[_1039 + 160] = uint16(_722)
                            mem[_1039 + 192] = uint16(_729)
                            mem[_1039 + 224] = _733
                            mem[_1039 + 256] = uint128(_740)
                            mem[_1039 + 288] = _1036
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1039
                        else:
                            _1037 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_1037] = _972
                            mem[_1037 + 32] = uint32(_978)
                            mem[_1037 + 64] = uint32(_983)
                            mem[_1037 + 96] = uint32(_988)
                            mem[_1037 + 128] = _991
                            mem[_1037 + 160] = _995
                            mem[_1037 + 192] = _999
                            mem[_1037 + 224] = _1002
                            mem[_1037 + 256] = uint16(_1013)
                            mem[_1037 + 288] = uint16(_1017)
                            mem[_1037 + 320] = 1
                            _1040 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1040] = _946
                            mem[_1040 + 32] = uint128(_950)
                            mem[_1040 + 64] = uint128(_956)
                            mem[_1040 + 96] = uint32(_960)
                            mem[_1040 + 128] = uint32(_963)
                            mem[_1040 + 160] = uint32(_965)
                            mem[_1040 + 192] = _1037
                            _1044 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_1044] = _664
                            mem[_1044 + 32] = address(_697)
                            mem[_1044 + 64] = _819
                            mem[_1044 + 96] = _877
                            mem[_1044 + 128] = _932
                            mem[_1044 + 160] = uint16(_722)
                            mem[_1044 + 192] = uint16(_729)
                            mem[_1044 + 224] = _733
                            mem[_1044 + 256] = uint128(_740)
                            mem[_1044 + 288] = _1040
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1044
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _663 = mem[64]
        mem[mem[64]] = 32
        _668 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _668:
            _847 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_847 + 44 len 20]
            _856 = mem[_847 + 64]
            mem[t + 64] = mem[mem[_847 + 64]]
            mem[t + 96] = mem[_856 + 44 len 20]
            mem[t + 128] = mem[_856 + 64]
            mem[t + 160] = mem[_856 + 126 len 2]
            mem[t + 192] = mem[_856 + 158 len 2]
            _872 = mem[_847 + 96]
            mem[t + 224] = mem[mem[_847 + 96]]
            mem[t + 256] = mem[_872 + 44 len 20]
            mem[t + 288] = mem[_872 + 64]
            mem[t + 320] = mem[_872 + 126 len 2]
            mem[t + 352] = mem[_872 + 158 len 2]
            _888 = mem[_847 + 128]
            mem[t + 384] = mem[mem[_847 + 128]]
            mem[t + 416] = mem[_888 + 44 len 20]
            mem[t + 448] = mem[_888 + 64]
            mem[t + 480] = mem[_888 + 126 len 2]
            mem[t + 512] = mem[_888 + 158 len 2]
            mem[t + 544] = mem[_847 + 190 len 2]
            mem[t + 576] = mem[_847 + 222 len 2]
            mem[t + 608] = mem[_847 + 224]
            mem[t + 640] = mem[_847 + 272 len 16]
            _916 = mem[_847 + 288]
            mem[t + 672] = mem[mem[_847 + 288]]
            mem[t + 704] = mem[_916 + 48 len 16]
            mem[t + 736] = mem[_916 + 80 len 16]
            mem[t + 768] = mem[_916 + 124 len 4]
            mem[t + 800] = mem[_916 + 156 len 4]
            mem[t + 832] = mem[_916 + 188 len 4]
            _931 = mem[_916 + 192]
            mem[t + 864] = mem[mem[_916 + 192]]
            mem[t + 896] = mem[_931 + 60 len 4]
            mem[t + 928] = mem[_931 + 92 len 4]
            mem[t + 960] = mem[_931 + 124 len 4]
            mem[t + 992] = mem[_931 + 128]
            mem[t + 1024] = mem[_931 + 160]
            mem[t + 1056] = mem[_931 + 192]
            mem[t + 1088] = mem[_931 + 224]
            mem[t + 1120] = mem[_931 + 286 len 2]
            mem[t + 1152] = mem[_931 + 318 len 2]
            mem[t + 1184] = mem[_931 + 351 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 1216
            continue 
        return memory
          from mem[64]
           len _663 + (1216 * _668) + -mem[64] + 64
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 481] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 513] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 545] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 577] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 449
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 609] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 641] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 673] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 705] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 737] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 609
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 769] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 801] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 833] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 865] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 897] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 769
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 321] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 385] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 929] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 961] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 993] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1025] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1057] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1089] = 0
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1505
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1153] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1185] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1217] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1249] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1281] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1313] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1345] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1377] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1409] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1441] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1473] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1121] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1153
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 417] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 929
    mem[var45002] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193
    s = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = var45002
    idx = var45003
    while idx - 1:
        _677 = mem[64]
        mem[64] = mem[64] + 320
        mem[_677] = 0
        mem[_677 + 32] = 0
        mem[64] = mem[64] + 160
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 481] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 513] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 545] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 577] = 0
        mem[_677 + 64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 449
        mem[64] = mem[64] + 160
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 609] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 641] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 673] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 705] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 737] = 0
        mem[_677 + 96] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 609
        mem[64] = mem[64] + 160
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 769] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 801] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 833] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 865] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 897] = 0
        mem[_677 + 128] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 769
        mem[_677 + 160] = 0
        mem[_677 + 192] = 0
        mem[_677 + 224] = 0
        mem[_677 + 256] = 0
        mem[64] = mem[64] + 224
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 929] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 961] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 993] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1025] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1057] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1089] = 0
        mem[64] = mem[64] + 352
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1153] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1185] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1217] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1249] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1281] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1313] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1345] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1377] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1409] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1441] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1473] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1121] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1153
        mem[_677 + 288] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 929
        mem[s + 32] = _677
        s = _677 + 64
        s = _677
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1089 = mem[(32 * idx) + 128]
        _1090 = mem[64]
        mem[64] = mem[64] + 320
        mem[_1090] = 0
        mem[_1090 + 32] = 0
        _1092 = mem[64]
        mem[64] = mem[64] + 160
        mem[_1092] = 0
        mem[_1092 + 32] = 0
        mem[_1092 + 64] = 0
        mem[_1092 + 96] = 0
        mem[_1092 + 128] = 0
        mem[_1090 + 64] = _1092
        _1093 = mem[64]
        mem[64] = mem[64] + 160
        mem[_1093] = 0
        mem[_1093 + 32] = 0
        mem[_1093 + 64] = 0
        mem[_1093 + 96] = 0
        mem[_1093 + 128] = 0
        mem[_1090 + 96] = _1093
        _1094 = mem[64]
        mem[64] = mem[64] + 160
        mem[_1094] = 0
        mem[_1094 + 32] = 0
        mem[_1094 + 64] = 0
        mem[_1094 + 96] = 0
        mem[_1094 + 128] = 0
        mem[_1090 + 128] = _1094
        mem[_1090 + 160] = 0
        mem[_1090 + 192] = 0
        mem[_1090 + 224] = 0
        mem[_1090 + 256] = 0
        _1095 = mem[64]
        mem[64] = mem[64] + 224
        mem[_1095] = 0
        mem[_1095 + 32] = 0
        mem[_1095 + 64] = 0
        mem[_1095 + 96] = 0
        mem[_1095 + 128] = 0
        mem[_1095 + 160] = 0
        _1097 = mem[64]
        mem[64] = mem[64] + 352
        mem[_1097] = 0
        mem[_1097 + 32] = 0
        mem[_1097 + 64] = 0
        mem[_1097 + 96] = 0
        mem[_1097 + 128] = 0
        mem[_1097 + 160] = 0
        mem[_1097 + 192] = 0
        mem[_1097 + 224] = 0
        mem[_1097 + 256] = 0
        mem[_1097 + 288] = 0
        mem[_1097 + 320] = 0
        mem[_1095 + 192] = _1097
        mem[_1090 + 288] = _1095
        require ext_code.size(stor0)
        staticcall stor0.0x969215ba with:
                gas gas_remaining wei
               args _1089
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1103 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _1106 = mem[_1103]
        require mem[_1103] == mem[_1103 + 12 len 20]
        _1109 = mem[_1103 + 32]
        require mem[_1103 + 32] == mem[_1103 + 32]
        _1111 = mem[_1103 + 64]
        require mem[_1103 + 64] == mem[_1103 + 64]
        _1115 = mem[_1103 + 96]
        require mem[_1103 + 96] == mem[_1103 + 96]
        _1117 = mem[_1103 + 128]
        require mem[_1103 + 128] == mem[_1103 + 158 len 2]
        _1120 = mem[_1103 + 160]
        require mem[_1103 + 160] == mem[_1103 + 190 len 2]
        _1122 = mem[_1103 + 192]
        require mem[_1103 + 192] == mem[_1103 + 192]
        _1126 = mem[_1103 + 224]
        require mem[_1103 + 224] == mem[_1103 + 240 len 16]
        _1128 = mem[64]
        mem[64] = mem[64] + 160
        mem[_1128] = 0
        mem[_1128 + 32] = 0
        mem[_1128 + 64] = 0
        mem[_1128 + 96] = 0
        mem[_1128 + 128] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _1109
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1133 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1135 = mem[_1133]
        require mem[_1133] == mem[_1133 + 30 len 2]
        _1138 = mem[_1133 + 32]
        require mem[_1133 + 32] == mem[_1133 + 62 len 2]
        mem[mem[64] + 4] = _1109
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _1109
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1145 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1147 = mem[_1145]
        require mem[_1145] == mem[_1145]
        require ext_code.size(stor0)
        staticcall stor0.0x62428e4e with:
                gas gas_remaining wei
               args _1109
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1155 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1156 = mem[_1155]
        require mem[_1155] == mem[_1155 + 12 len 20]
        require mem[_1155 + 32] == mem[_1155 + 48 len 16]
        require mem[_1155 + 64] == mem[_1155 + 80 len 16]
        _1165 = mem[64]
        mem[64] = mem[64] + 160
        mem[_1165] = _1109
        mem[_1165 + 32] = address(_1156)
        mem[_1165 + 64] = _1147
        mem[_1165 + 96] = uint16(_1135)
        mem[_1165 + 128] = uint16(_1138)
        _1167 = mem[64]
        mem[64] = mem[64] + 160
        mem[_1167] = 0
        mem[_1167 + 32] = 0
        mem[_1167 + 64] = 0
        mem[_1167 + 96] = 0
        mem[_1167 + 128] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _1111
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1172 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1174 = mem[_1172]
        require mem[_1172] == mem[_1172 + 30 len 2]
        _1175 = mem[_1172 + 32]
        require mem[_1172 + 32] == mem[_1172 + 62 len 2]
        mem[mem[64] + 4] = _1111
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _1111
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1179 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1182 = mem[_1179]
        require mem[_1179] == mem[_1179]
        require ext_code.size(stor0)
        staticcall stor0.0x62428e4e with:
                gas gas_remaining wei
               args _1111
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1189 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1190 = mem[_1189]
        require mem[_1189] == mem[_1189 + 12 len 20]
        require mem[_1189 + 32] == mem[_1189 + 48 len 16]
        require mem[_1189 + 64] == mem[_1189 + 80 len 16]
        _1199 = mem[64]
        mem[64] = mem[64] + 160
        mem[_1199] = _1111
        mem[_1199 + 32] = address(_1190)
        mem[_1199 + 64] = _1182
        mem[_1199 + 96] = uint16(_1174)
        mem[_1199 + 128] = uint16(_1175)
        _1201 = mem[64]
        mem[64] = mem[64] + 160
        mem[_1201] = 0
        mem[_1201 + 32] = 0
        mem[_1201 + 64] = 0
        mem[_1201 + 96] = 0
        mem[_1201 + 128] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _1115
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1206 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1207 = mem[_1206]
        require mem[_1206] == mem[_1206 + 30 len 2]
        _1211 = mem[_1206 + 32]
        require mem[_1206 + 32] == mem[_1206 + 62 len 2]
        mem[mem[64] + 4] = _1115
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _1115
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1217 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1219 = mem[_1217]
        require mem[_1217] == mem[_1217]
        require ext_code.size(stor0)
        staticcall stor0.0x62428e4e with:
                gas gas_remaining wei
               args _1115
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1225 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1228 = mem[_1225]
        require mem[_1225] == mem[_1225 + 12 len 20]
        require mem[_1225 + 32] == mem[_1225 + 48 len 16]
        require mem[_1225 + 64] == mem[_1225 + 80 len 16]
        _1237 = mem[64]
        mem[64] = mem[64] + 160
        mem[_1237] = _1115
        mem[_1237 + 32] = address(_1228)
        mem[_1237 + 64] = _1219
        mem[_1237 + 96] = uint16(_1207)
        mem[_1237 + 128] = uint16(_1211)
        _1239 = mem[64]
        mem[64] = mem[64] + 224
        mem[_1239] = 0
        mem[_1239 + 32] = 0
        mem[_1239 + 64] = 0
        mem[_1239 + 96] = 0
        mem[_1239 + 128] = 0
        mem[_1239 + 160] = 0
        _1240 = mem[64]
        mem[64] = mem[64] + 352
        mem[_1240] = 0
        mem[_1240 + 32] = 0
        mem[_1240 + 64] = 0
        mem[_1240 + 96] = 0
        mem[_1240 + 128] = 0
        mem[_1240 + 160] = 0
        mem[_1240 + 192] = 0
        mem[_1240 + 224] = 0
        mem[_1240 + 256] = 0
        mem[_1240 + 288] = 0
        mem[_1240 + 320] = 0
        mem[_1239 + 192] = _1240
        require ext_code.size(stor0)
        staticcall stor0.0xf0344e36 with:
                gas gas_remaining wei
               args _1122
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1246 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _1248 = mem[_1246]
        require mem[_1246] == mem[_1246]
        _1250 = mem[_1246 + 32]
        require mem[_1246 + 32] == mem[_1246 + 48 len 16]
        _1253 = mem[_1246 + 64]
        require mem[_1246 + 64] == mem[_1246 + 80 len 16]
        _1256 = mem[_1246 + 96]
        require mem[_1246 + 96] == mem[_1246 + 124 len 4]
        _1258 = mem[_1246 + 128]
        require mem[_1246 + 128] == mem[_1246 + 156 len 4]
        _1259 = mem[_1246 + 160]
        require mem[_1246 + 160] == mem[_1246 + 188 len 4]
        _1260 = mem[64]
        mem[64] = mem[64] + 352
        mem[_1260] = 0
        mem[_1260 + 32] = 0
        mem[_1260 + 64] = 0
        mem[_1260 + 96] = 0
        mem[_1260 + 128] = 0
        mem[_1260 + 160] = 0
        mem[_1260 + 192] = 0
        mem[_1260 + 224] = 0
        mem[_1260 + 256] = 0
        mem[_1260 + 288] = 0
        mem[_1260 + 320] = 0
        require ext_code.size(stor0)
        staticcall stor0.0x183ce75d with:
                gas gas_remaining wei
               args _1122
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1263 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _1264 = mem[_1263]
        require mem[_1263] == mem[_1263]
        _1265 = mem[_1263 + 32]
        require mem[_1263 + 32] == mem[_1263 + 60 len 4]
        _1266 = mem[_1263 + 64]
        require mem[_1263 + 64] == mem[_1263 + 92 len 4]
        _1267 = mem[_1263 + 96]
        require mem[_1263 + 96] == mem[_1263 + 124 len 4]
        _1268 = mem[_1263 + 128]
        require mem[_1263 + 128] == mem[_1263 + 128]
        _1269 = mem[_1263 + 160]
        require mem[_1263 + 160] == mem[_1263 + 160]
        _1270 = mem[_1263 + 192]
        require mem[_1263 + 192] == mem[_1263 + 192]
        _1271 = mem[_1263 + 224]
        require mem[_1263 + 224] == mem[_1263 + 224]
        require ext_code.size(stor0)
        staticcall stor0.0xf769a0c with:
                gas gas_remaining wei
               args _1122
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1274 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1275 = mem[_1274]
        require mem[_1274] == mem[_1274 + 30 len 2]
        _1276 = mem[_1274 + 32]
        require mem[_1274 + 32] == mem[_1274 + 62 len 2]
        if _1269 > 0:
            _1277 = mem[64]
            mem[64] = mem[64] + 352
            mem[_1277] = _1264
            mem[_1277 + 32] = uint32(_1265)
            mem[_1277 + 64] = uint32(_1266)
            mem[_1277 + 96] = uint32(_1267)
            mem[_1277 + 128] = _1268
            mem[_1277 + 160] = _1269
            mem[_1277 + 192] = _1270
            mem[_1277 + 224] = _1271
            mem[_1277 + 256] = uint16(_1275)
            mem[_1277 + 288] = uint16(_1276)
            mem[_1277 + 320] = 4
            _1278 = mem[64]
            mem[64] = mem[64] + 224
            mem[_1278] = _1248
            mem[_1278 + 32] = uint128(_1250)
            mem[_1278 + 64] = uint128(_1253)
            mem[_1278 + 96] = uint32(_1256)
            mem[_1278 + 128] = uint32(_1258)
            mem[_1278 + 160] = uint32(_1259)
            mem[_1278 + 192] = _1277
            _1280 = mem[64]
            mem[64] = mem[64] + 320
            mem[_1280] = _1089
            mem[_1280 + 32] = address(_1106)
            mem[_1280 + 64] = _1165
            mem[_1280 + 96] = _1199
            mem[_1280 + 128] = _1237
            mem[_1280 + 160] = uint16(_1117)
            mem[_1280 + 192] = uint16(_1120)
            mem[_1280 + 224] = _1122
            mem[_1280 + 256] = uint128(_1126)
            mem[_1280 + 288] = _1278
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1280
        else:
            if _1271 > 0:
                _1279 = mem[64]
                mem[64] = mem[64] + 352
                mem[_1279] = _1264
                mem[_1279 + 32] = uint32(_1265)
                mem[_1279 + 64] = uint32(_1266)
                mem[_1279 + 96] = uint32(_1267)
                mem[_1279 + 128] = _1268
                mem[_1279 + 160] = _1269
                mem[_1279 + 192] = _1270
                mem[_1279 + 224] = _1271
                mem[_1279 + 256] = uint16(_1275)
                mem[_1279 + 288] = uint16(_1276)
                mem[_1279 + 320] = 3
                _1281 = mem[64]
                mem[64] = mem[64] + 224
                mem[_1281] = _1248
                mem[_1281 + 32] = uint128(_1250)
                mem[_1281 + 64] = uint128(_1253)
                mem[_1281 + 96] = uint32(_1256)
                mem[_1281 + 128] = uint32(_1258)
                mem[_1281 + 160] = uint32(_1259)
                mem[_1281 + 192] = _1279
                _1284 = mem[64]
                mem[64] = mem[64] + 320
                mem[_1284] = _1089
                mem[_1284 + 32] = address(_1106)
                mem[_1284 + 64] = _1165
                mem[_1284 + 96] = _1199
                mem[_1284 + 128] = _1237
                mem[_1284 + 160] = uint16(_1117)
                mem[_1284 + 192] = uint16(_1120)
                mem[_1284 + 224] = _1122
                mem[_1284 + 256] = uint128(_1126)
                mem[_1284 + 288] = _1281
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1284
            else:
                if _1268 > 0:
                    _1283 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_1283] = _1264
                    mem[_1283 + 32] = uint32(_1265)
                    mem[_1283 + 64] = uint32(_1266)
                    mem[_1283 + 96] = uint32(_1267)
                    mem[_1283 + 128] = _1268
                    mem[_1283 + 160] = _1269
                    mem[_1283 + 192] = _1270
                    mem[_1283 + 224] = _1271
                    mem[_1283 + 256] = uint16(_1275)
                    mem[_1283 + 288] = uint16(_1276)
                    mem[_1283 + 320] = 2
                    _1286 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1286] = _1248
                    mem[_1286 + 32] = uint128(_1250)
                    mem[_1286 + 64] = uint128(_1253)
                    mem[_1286 + 96] = uint32(_1256)
                    mem[_1286 + 128] = uint32(_1258)
                    mem[_1286 + 160] = uint32(_1259)
                    mem[_1286 + 192] = _1283
                    _1290 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_1290] = _1089
                    mem[_1290 + 32] = address(_1106)
                    mem[_1290 + 64] = _1165
                    mem[_1290 + 96] = _1199
                    mem[_1290 + 128] = _1237
                    mem[_1290 + 160] = uint16(_1117)
                    mem[_1290 + 192] = uint16(_1120)
                    mem[_1290 + 224] = _1122
                    mem[_1290 + 256] = uint128(_1126)
                    mem[_1290 + 288] = _1286
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1290
                else:
                    if _1270 <= 0:
                        _1285 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_1285] = _1264
                        mem[_1285 + 32] = uint32(_1265)
                        mem[_1285 + 64] = uint32(_1266)
                        mem[_1285 + 96] = uint32(_1267)
                        mem[_1285 + 128] = _1268
                        mem[_1285 + 160] = _1269
                        mem[_1285 + 192] = _1270
                        mem[_1285 + 224] = _1271
                        mem[_1285 + 256] = uint16(_1275)
                        mem[_1285 + 288] = uint16(_1276)
                        mem[_1285 + 320] = 0
                        _1288 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1288] = _1248
                        mem[_1288 + 32] = uint128(_1250)
                        mem[_1288 + 64] = uint128(_1253)
                        mem[_1288 + 96] = uint32(_1256)
                        mem[_1288 + 128] = uint32(_1258)
                        mem[_1288 + 160] = uint32(_1259)
                        mem[_1288 + 192] = _1285
                        _1291 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_1291] = _1089
                        mem[_1291 + 32] = address(_1106)
                        mem[_1291 + 64] = _1165
                        mem[_1291 + 96] = _1199
                        mem[_1291 + 128] = _1237
                        mem[_1291 + 160] = uint16(_1117)
                        mem[_1291 + 192] = uint16(_1120)
                        mem[_1291 + 224] = _1122
                        mem[_1291 + 256] = uint128(_1126)
                        mem[_1291 + 288] = _1288
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1291
                    else:
                        _1289 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_1289] = _1264
                        mem[_1289 + 32] = uint32(_1265)
                        mem[_1289 + 64] = uint32(_1266)
                        mem[_1289 + 96] = uint32(_1267)
                        mem[_1289 + 128] = _1268
                        mem[_1289 + 160] = _1269
                        mem[_1289 + 192] = _1270
                        mem[_1289 + 224] = _1271
                        mem[_1289 + 256] = uint16(_1275)
                        mem[_1289 + 288] = uint16(_1276)
                        mem[_1289 + 320] = 1
                        _1292 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1292] = _1248
                        mem[_1292 + 32] = uint128(_1250)
                        mem[_1292 + 64] = uint128(_1253)
                        mem[_1292 + 96] = uint32(_1256)
                        mem[_1292 + 128] = uint32(_1258)
                        mem[_1292 + 160] = uint32(_1259)
                        mem[_1292 + 192] = _1289
                        _1295 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_1295] = _1089
                        mem[_1295 + 32] = address(_1106)
                        mem[_1295 + 64] = _1165
                        mem[_1295 + 96] = _1199
                        mem[_1295 + 128] = _1237
                        mem[_1295 + 160] = uint16(_1117)
                        mem[_1295 + 192] = uint16(_1120)
                        mem[_1295 + 224] = _1122
                        mem[_1295 + 256] = uint128(_1126)
                        mem[_1295 + 288] = _1292
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1295
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _1088 = mem[64]
    mem[mem[64]] = 32
    _1091 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    idx = 0
    s = floor32(('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < _1091:
        _1178 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_1178 + 44 len 20]
        _1185 = mem[_1178 + 64]
        mem[t + 64] = mem[mem[_1178 + 64]]
        mem[t + 96] = mem[_1185 + 44 len 20]
        mem[t + 128] = mem[_1185 + 64]
        mem[t + 160] = mem[_1185 + 126 len 2]
        mem[t + 192] = mem[_1185 + 158 len 2]
        _1195 = mem[_1178 + 96]
        mem[t + 224] = mem[mem[_1178 + 96]]
        mem[t + 256] = mem[_1195 + 44 len 20]
        mem[t + 288] = mem[_1195 + 64]
        mem[t + 320] = mem[_1195 + 126 len 2]
        mem[t + 352] = mem[_1195 + 158 len 2]
        _1208 = mem[_1178 + 128]
        mem[t + 384] = mem[mem[_1178 + 128]]
        mem[t + 416] = mem[_1208 + 44 len 20]
        mem[t + 448] = mem[_1208 + 64]
        mem[t + 480] = mem[_1208 + 126 len 2]
        mem[t + 512] = mem[_1208 + 158 len 2]
        mem[t + 544] = mem[_1178 + 190 len 2]
        mem[t + 576] = mem[_1178 + 222 len 2]
        mem[t + 608] = mem[_1178 + 224]
        mem[t + 640] = mem[_1178 + 272 len 16]
        _1226 = mem[_1178 + 288]
        mem[t + 672] = mem[mem[_1178 + 288]]
        mem[t + 704] = mem[_1226 + 48 len 16]
        mem[t + 736] = mem[_1226 + 80 len 16]
        mem[t + 768] = mem[_1226 + 124 len 4]
        mem[t + 800] = mem[_1226 + 156 len 4]
        mem[t + 832] = mem[_1226 + 188 len 4]
        _1236 = mem[_1226 + 192]
        mem[t + 864] = mem[mem[_1226 + 192]]
        mem[t + 896] = mem[_1236 + 60 len 4]
        mem[t + 928] = mem[_1236 + 92 len 4]
        mem[t + 960] = mem[_1236 + 124 len 4]
        mem[t + 992] = mem[_1236 + 128]
        mem[t + 1024] = mem[_1236 + 160]
        mem[t + 1056] = mem[_1236 + 192]
        mem[t + 1088] = mem[_1236 + 224]
        mem[t + 1120] = mem[_1236 + 286 len 2]
        mem[t + 1152] = mem[_1236 + 318 len 2]
        mem[t + 1184] = mem[_1236 + 351 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 1216
        continue 
    return memory
      from mem[64]
       len _1088 + (1216 * _1091) + -mem[64] + 64
}



}
