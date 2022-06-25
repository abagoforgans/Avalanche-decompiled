contract main {




// =====================  Runtime code  =====================


#
#  - sub_314d3090(?)
#
address stor0;
address stor1;

function _fallback() payable {
    revert
}

function sub_2de54a75(?) payable {
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
    require ext_code.size(stor1)
    staticcall stor1.crabadaInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
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
           ext_call.return_data[32] << 240,
           ext_call.return_data[64]
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
        if var192002 >= arg2 - arg1:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            idx = 0
            s = 128
            t = (32 * arg2 - arg1) + 192
            while idx < mem[96]:
                _663 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_663 + 44 len 20]
                mem[t + 64] = mem[_663 + 64]
                mem[t + 96] = mem[_663 + 126 len 2]
                mem[t + 128] = mem[_663 + 158 len 2]
                mem[t + 160] = mem[_663 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            return memory
              from mem[64]
               len (32 * arg2 - arg1) + (192 * arg2) + (-192 * arg1) + -mem[64] + 192
        if var204003 > -arg1 - 1:
            revert with 'NH{q', 17
        mem[64] = (32 * arg2 - arg1) + 320
        mem[(32 * arg2 - arg1) + 128] = 0
        mem[(32 * arg2 - arg1) + 160] = 0
        mem[(32 * arg2 - arg1) + 192] = 0
        mem[(32 * arg2 - arg1) + 224] = 0
        mem[(32 * arg2 - arg1) + 256] = 0
        mem[(32 * arg2 - arg1) + 288] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args (var206002 + arg1)
        mem[(32 * arg2 - arg1) + 320 len 64] = ext_call.return_data[0 len 64]
        s = var206002 + arg1
        t = var206006
        while ext_call.success:
            _1198 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1201 = mem[_1198]
            require mem[_1198] == mem[_1198 + 30 len 2]
            _1203 = mem[_1198 + 32]
            require mem[_1198 + 32] == mem[_1198 + 62 len 2]
            mem[mem[64] + 4] = s
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1208 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1211 = mem[_1208]
            require mem[_1208] == mem[_1208]
            require ext_code.size(stor1)
            staticcall stor1.crabadaInfo(uint256 arg1) with:
                    gas gas_remaining wei
                   args s
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1216 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            require mem[_1216] == mem[_1216]
            require mem[_1216 + 32] == mem[_1216 + 32]
            _1223 = mem[_1216 + 64]
            require mem[_1216 + 64] == mem[_1216 + 64]
            require mem[_1216 + 96] == mem[_1216 + 120 len 8]
            require mem[_1216 + 128] == mem[_1216 + 159 len 1]
            require ext_code.size(stor0)
            staticcall stor0.0x62428e4e with:
                    gas gas_remaining wei
                   args s
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1232 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1235 = mem[_1232]
            require mem[_1232] == mem[_1232 + 12 len 20]
            require mem[_1232 + 32] == mem[_1232 + 48 len 16]
            require mem[_1232 + 64] == mem[_1232 + 80 len 16]
            _1241 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1241] = s
            mem[_1241 + 32] = address(_1235)
            mem[_1241 + 64] = _1211
            mem[_1241 + 96] = uint16(_1201)
            mem[_1241 + 128] = uint16(_1203)
            mem[_1241 + 160] = _1223
            if t >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * t) + 128] = _1241
            if t == -1:
                revert with 'NH{q', 17
            if arg2 < arg1:
                revert with 'NH{q', 17
            if t + 1 >= arg2 - arg1:
                _1245 = mem[64]
                mem[mem[64]] = 32
                _1247 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 64
                while idx < _1247:
                    _1265 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_1265 + 44 len 20]
                    mem[u + 64] = mem[_1265 + 64]
                    mem[u + 96] = mem[_1265 + 126 len 2]
                    mem[u + 128] = mem[_1265 + 158 len 2]
                    mem[u + 160] = mem[_1265 + 160]
                    mem[64] = mem[64] + 192
                    mem[(32 * arg2 - arg1) + 128] = 0
                    mem[(32 * arg2 - arg1) + 160] = 0
                    mem[(32 * arg2 - arg1) + 192] = 0
                    mem[(32 * arg2 - arg1) + 224] = 0
                    mem[(32 * arg2 - arg1) + 256] = 0
                    mem[(32 * arg2 - arg1) + 288] = 0
                    mem[mem[64]] = 0x7b30396500000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2 - arg1) + 324] = s
                    require ext_code.size(stor0)
                    staticcall stor0.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (32 * arg2 - arg1) + -mem[64] + 352]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    idx = idx + 1
                    t = t + 32
                    u = u + 192
                    continue 
                return memory
                  from mem[64]
                   len _1245 + (192 * _1247) + -mem[64] + 64
            if t + 1 > -arg1 - 1:
                revert with 'NH{q', 17
            mem[64] = mem[64] + 192
            mem[(32 * arg2 - arg1) + 128] = 0
            mem[(32 * arg2 - arg1) + 160] = 0
            mem[(32 * arg2 - arg1) + 192] = 0
            mem[(32 * arg2 - arg1) + 224] = 0
            mem[(32 * arg2 - arg1) + 256] = 0
            mem[(32 * arg2 - arg1) + 288] = 0
            mem[mem[64]] = 0x7b30396500000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2 - arg1) + 324] = t + arg1 + 2
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * arg2 - arg1) + -mem[64] + 352]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            s = t + arg1 + 1
            t = t + 1
            continue 
    else:
        mem[64] = (32 * arg2 - arg1) + 320
        mem[(32 * arg2 - arg1) + 128] = 0
        mem[(32 * arg2 - arg1) + 160] = 0
        mem[(32 * arg2 - arg1) + 192] = 0
        mem[(32 * arg2 - arg1) + 224] = 0
        mem[(32 * arg2 - arg1) + 256] = 0
        mem[(32 * arg2 - arg1) + 288] = 0
        mem[var32001] = (32 * arg2 - arg1) + 128
        s = var32001
        idx = var32002
        while idx - 1:
            mem[64] = mem[64] + 192
            mem[(32 * arg2 - arg1) + 128] = 0
            mem[(32 * arg2 - arg1) + 160] = 0
            mem[(32 * arg2 - arg1) + 192] = 0
            mem[(32 * arg2 - arg1) + 224] = 0
            mem[(32 * arg2 - arg1) + 256] = 0
            mem[(32 * arg2 - arg1) + 288] = 0
            mem[s + 32] = (32 * arg2 - arg1) + 128
            s = s + 32
            idx = idx - 1
            continue 
        if arg2 < arg1:
            revert with 'NH{q', 17
        if var199002 >= arg2 - arg1:
            _743 = mem[64]
            mem[mem[64]] = 32
            _744 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _744:
                _825 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_825 + 44 len 20]
                mem[t + 64] = mem[_825 + 64]
                mem[t + 96] = mem[_825 + 126 len 2]
                mem[t + 128] = mem[_825 + 158 len 2]
                mem[t + 160] = mem[_825 + 160]
                idx = idx + 1
                s = s + 32
                t = t + 192
                continue 
            return memory
              from mem[64]
               len _743 + (192 * _744) + -mem[64] + 64
        if var211003 > -arg1 - 1:
            revert with 'NH{q', 17
        _1309 = mem[64]
        mem[64] = mem[64] + 192
        mem[_1309] = 0
        mem[_1309 + 32] = 0
        mem[_1309 + 64] = 0
        mem[_1309 + 96] = 0
        mem[_1309 + 128] = 0
        mem[_1309 + 160] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args (var213002 + arg1)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        s = var213002 + arg1
        t = var213006
        while ext_call.success:
            _1312 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1313 = mem[_1312]
            require mem[_1312] == mem[_1312 + 30 len 2]
            _1314 = mem[_1312 + 32]
            require mem[_1312 + 32] == mem[_1312 + 62 len 2]
            mem[mem[64] + 4] = s
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1317 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1318 = mem[_1317]
            require mem[_1317] == mem[_1317]
            require ext_code.size(stor1)
            staticcall stor1.crabadaInfo(uint256 arg1) with:
                    gas gas_remaining wei
                   args s
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1321 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            require mem[_1321] == mem[_1321]
            require mem[_1321 + 32] == mem[_1321 + 32]
            _1324 = mem[_1321 + 64]
            require mem[_1321 + 64] == mem[_1321 + 64]
            require mem[_1321 + 96] == mem[_1321 + 120 len 8]
            require mem[_1321 + 128] == mem[_1321 + 159 len 1]
            require ext_code.size(stor0)
            staticcall stor0.0x62428e4e with:
                    gas gas_remaining wei
                   args s
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1329 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1330 = mem[_1329]
            require mem[_1329] == mem[_1329 + 12 len 20]
            require mem[_1329 + 32] == mem[_1329 + 48 len 16]
            require mem[_1329 + 64] == mem[_1329 + 80 len 16]
            _1333 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1333] = s
            mem[_1333 + 32] = address(_1330)
            mem[_1333 + 64] = _1318
            mem[_1333 + 96] = uint16(_1313)
            mem[_1333 + 128] = uint16(_1314)
            mem[_1333 + 160] = _1324
            if t >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * t) + 128] = _1333
            if t == -1:
                revert with 'NH{q', 17
            if arg2 < arg1:
                revert with 'NH{q', 17
            if t + 1 >= arg2 - arg1:
                _1335 = mem[64]
                mem[mem[64]] = 32
                _1336 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 64
                while idx < _1336:
                    _1345 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_1345 + 44 len 20]
                    mem[u + 64] = mem[_1345 + 64]
                    mem[u + 96] = mem[_1345 + 126 len 2]
                    mem[u + 128] = mem[_1345 + 158 len 2]
                    mem[u + 160] = mem[_1345 + 160]
                    _1309 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1309] = 0
                    mem[_1309 + 32] = 0
                    mem[_1309 + 64] = 0
                    mem[_1309 + 96] = 0
                    mem[_1309 + 128] = 0
                    mem[_1309 + 160] = 0
                    require ext_code.size(stor0)
                    staticcall stor0.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    idx = idx + 1
                    t = t + 32
                    u = u + 192
                    continue 
                return memory
                  from mem[64]
                   len _1335 + (192 * _1336) + -mem[64] + 64
            if t + 1 > -arg1 - 1:
                revert with 'NH{q', 17
            _1309 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1309] = 0
            mem[_1309 + 32] = 0
            mem[_1309 + 64] = 0
            mem[_1309 + 96] = 0
            mem[_1309 + 128] = 0
            mem[_1309 + 160] = 0
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

function sub_969215ba(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor0)
    staticcall stor0.0x969215ba with:
            gas gas_remaining wei
           args arg1
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
    require ext_code.size(stor1)
    staticcall stor1.crabadaInfo(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
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
    require ext_code.size(stor1)
    staticcall stor1.crabadaInfo(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
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
    require ext_code.size(stor1)
    staticcall stor1.crabadaInfo(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
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
        return arg1, 
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[64],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[128] << 240,
               ext_call.return_data[160] << 240,
               ext_call.return_data[192],
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
        return arg1, 
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[64],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[128] << 240,
               ext_call.return_data[160] << 240,
               ext_call.return_data[192],
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
        return arg1, 
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[64],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[128] << 240,
               ext_call.return_data[160] << 240,
               ext_call.return_data[192],
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
        return arg1, 
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[64],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[128] << 240,
               ext_call.return_data[160] << 240,
               ext_call.return_data[192],
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
    return arg1, 
           address(ext_call.return_data[0]),
           ext_call.return_data[32],
           ext_call.return_data[0] << 192,
           ext_call.return_data[0],
           0,
           0,
           ext_call.return_data[64],
           ext_call.return_data[64],
           ext_call.return_data[0] << 192,
           ext_call.return_data[0],
           0,
           0,
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[0] << 192,
           ext_call.return_data[0],
           0,
           0,
           ext_call.return_data[64],
           ext_call.return_data[128] << 240,
           ext_call.return_data[160] << 240,
           ext_call.return_data[192],
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
    require ext_code.size(stor1)
    staticcall stor1.crabadaInfo(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
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
    require ext_code.size(stor1)
    staticcall stor1.crabadaInfo(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
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
    require ext_code.size(stor1)
    staticcall stor1.crabadaInfo(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[120 len 8]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
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
               ext_call.return_data[64],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[128] << 240,
               ext_call.return_data[160] << 240,
               ext_call.return_data[192],
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
               ext_call.return_data[64],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[128] << 240,
               ext_call.return_data[160] << 240,
               ext_call.return_data[192],
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
               ext_call.return_data[64],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[128] << 240,
               ext_call.return_data[160] << 240,
               ext_call.return_data[192],
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
               ext_call.return_data[64],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[96],
               ext_call.return_data[0] << 192,
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[128] << 240,
               ext_call.return_data[160] << 240,
               ext_call.return_data[192],
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
           ext_call.return_data[64],
           ext_call.return_data[0] << 192,
           ext_call.return_data[0],
           0,
           0,
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[0] << 192,
           ext_call.return_data[0],
           0,
           0,
           ext_call.return_data[64],
           ext_call.return_data[128] << 240,
           ext_call.return_data[160] << 240,
           ext_call.return_data[192],
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
            _785 = mem[(32 * idx) + 128]
            _786 = mem[64]
            mem[64] = mem[64] + 288
            mem[_786] = 0
            mem[_786 + 32] = 0
            _788 = mem[64]
            mem[64] = mem[64] + 192
            mem[_788] = 0
            mem[_788 + 32] = 0
            mem[_788 + 64] = 0
            mem[_788 + 96] = 0
            mem[_788 + 128] = 0
            mem[_788 + 160] = 0
            mem[_786 + 64] = _788
            _789 = mem[64]
            mem[64] = mem[64] + 192
            mem[_789] = 0
            mem[_789 + 32] = 0
            mem[_789 + 64] = 0
            mem[_789 + 96] = 0
            mem[_789 + 128] = 0
            mem[_789 + 160] = 0
            mem[_786 + 96] = _789
            _790 = mem[64]
            mem[64] = mem[64] + 192
            mem[_790] = 0
            mem[_790 + 32] = 0
            mem[_790 + 64] = 0
            mem[_790 + 96] = 0
            mem[_790 + 128] = 0
            mem[_790 + 160] = 0
            mem[_786 + 128] = _790
            mem[_786 + 160] = 0
            mem[_786 + 192] = 0
            mem[_786 + 224] = 0
            _792 = mem[64]
            mem[64] = mem[64] + 224
            mem[_792] = 0
            mem[_792 + 32] = 0
            mem[_792 + 64] = 0
            mem[_792 + 96] = 0
            mem[_792 + 128] = 0
            mem[_792 + 160] = 0
            _794 = mem[64]
            mem[64] = mem[64] + 352
            mem[_794] = 0
            mem[_794 + 32] = 0
            mem[_794 + 64] = 0
            mem[_794 + 96] = 0
            mem[_794 + 128] = 0
            mem[_794 + 160] = 0
            mem[_794 + 192] = 0
            mem[_794 + 224] = 0
            mem[_794 + 256] = 0
            mem[_794 + 288] = 0
            mem[_794 + 320] = 0
            mem[_792 + 192] = _794
            mem[_786 + 256] = _792
            require ext_code.size(stor0)
            staticcall stor0.0x969215ba with:
                    gas gas_remaining wei
                   args _785
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _801 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _805 = mem[_801]
            require mem[_801] == mem[_801 + 12 len 20]
            _811 = mem[_801 + 32]
            require mem[_801 + 32] == mem[_801 + 32]
            _815 = mem[_801 + 64]
            require mem[_801 + 64] == mem[_801 + 64]
            _819 = mem[_801 + 96]
            require mem[_801 + 96] == mem[_801 + 96]
            _823 = mem[_801 + 128]
            require mem[_801 + 128] == mem[_801 + 158 len 2]
            _828 = mem[_801 + 160]
            require mem[_801 + 160] == mem[_801 + 190 len 2]
            _831 = mem[_801 + 192]
            require mem[_801 + 192] == mem[_801 + 192]
            require mem[_801 + 224] == mem[_801 + 240 len 16]
            _842 = mem[64]
            mem[64] = mem[64] + 192
            mem[_842] = 0
            mem[_842 + 32] = 0
            mem[_842 + 64] = 0
            mem[_842 + 96] = 0
            mem[_842 + 128] = 0
            mem[_842 + 160] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _811
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _848 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _850 = mem[_848]
            require mem[_848] == mem[_848 + 30 len 2]
            _854 = mem[_848 + 32]
            require mem[_848 + 32] == mem[_848 + 62 len 2]
            mem[mem[64] + 4] = _811
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _811
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _863 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _866 = mem[_863]
            require mem[_863] == mem[_863]
            require ext_code.size(stor1)
            staticcall stor1.crabadaInfo(uint256 arg1) with:
                    gas gas_remaining wei
                   args _811
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _876 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            require mem[_876] == mem[_876]
            require mem[_876 + 32] == mem[_876 + 32]
            _888 = mem[_876 + 64]
            require mem[_876 + 64] == mem[_876 + 64]
            require mem[_876 + 96] == mem[_876 + 120 len 8]
            require mem[_876 + 128] == mem[_876 + 159 len 1]
            require ext_code.size(stor0)
            staticcall stor0.0x62428e4e with:
                    gas gas_remaining wei
                   args _811
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _905 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _908 = mem[_905]
            require mem[_905] == mem[_905 + 12 len 20]
            require mem[_905 + 32] == mem[_905 + 48 len 16]
            require mem[_905 + 64] == mem[_905 + 80 len 16]
            _925 = mem[64]
            mem[64] = mem[64] + 192
            mem[_925] = _811
            mem[_925 + 32] = address(_908)
            mem[_925 + 64] = _866
            mem[_925 + 96] = uint16(_850)
            mem[_925 + 128] = uint16(_854)
            mem[_925 + 160] = _888
            _927 = mem[64]
            mem[64] = mem[64] + 192
            mem[_927] = 0
            mem[_927 + 32] = 0
            mem[_927 + 64] = 0
            mem[_927 + 96] = 0
            mem[_927 + 128] = 0
            mem[_927 + 160] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _815
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _936 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _940 = mem[_936]
            require mem[_936] == mem[_936 + 30 len 2]
            _945 = mem[_936 + 32]
            require mem[_936 + 32] == mem[_936 + 62 len 2]
            mem[mem[64] + 4] = _815
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _815
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _959 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _961 = mem[_959]
            require mem[_959] == mem[_959]
            require ext_code.size(stor1)
            staticcall stor1.crabadaInfo(uint256 arg1) with:
                    gas gas_remaining wei
                   args _815
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _975 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            require mem[_975] == mem[_975]
            require mem[_975 + 32] == mem[_975 + 32]
            _990 = mem[_975 + 64]
            require mem[_975 + 64] == mem[_975 + 64]
            require mem[_975 + 96] == mem[_975 + 120 len 8]
            require mem[_975 + 128] == mem[_975 + 159 len 1]
            require ext_code.size(stor0)
            staticcall stor0.0x62428e4e with:
                    gas gas_remaining wei
                   args _815
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1017 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1019 = mem[_1017]
            require mem[_1017] == mem[_1017 + 12 len 20]
            require mem[_1017 + 32] == mem[_1017 + 48 len 16]
            require mem[_1017 + 64] == mem[_1017 + 80 len 16]
            _1038 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1038] = _815
            mem[_1038 + 32] = address(_1019)
            mem[_1038 + 64] = _961
            mem[_1038 + 96] = uint16(_940)
            mem[_1038 + 128] = uint16(_945)
            mem[_1038 + 160] = _990
            _1043 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1043] = 0
            mem[_1043 + 32] = 0
            mem[_1043 + 64] = 0
            mem[_1043 + 96] = 0
            mem[_1043 + 128] = 0
            mem[_1043 + 160] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _819
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1052 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1056 = mem[_1052]
            require mem[_1052] == mem[_1052 + 30 len 2]
            _1061 = mem[_1052 + 32]
            require mem[_1052 + 32] == mem[_1052 + 62 len 2]
            mem[mem[64] + 4] = _819
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _819
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1073 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1076 = mem[_1073]
            require mem[_1073] == mem[_1073]
            require ext_code.size(stor1)
            staticcall stor1.crabadaInfo(uint256 arg1) with:
                    gas gas_remaining wei
                   args _819
            mem[mem[64] len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1081 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 160
            require mem[_1081] == mem[_1081]
            require mem[_1081 + 32] == mem[_1081 + 32]
            _1087 = mem[_1081 + 64]
            require mem[_1081 + 64] == mem[_1081 + 64]
            require mem[_1081 + 96] == mem[_1081 + 120 len 8]
            require mem[_1081 + 128] == mem[_1081 + 159 len 1]
            require ext_code.size(stor0)
            staticcall stor0.0x62428e4e with:
                    gas gas_remaining wei
                   args _819
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1104 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1114 = mem[_1104]
            require mem[_1104] == mem[_1104 + 12 len 20]
            require mem[_1104 + 32] == mem[_1104 + 48 len 16]
            require mem[_1104 + 64] == mem[_1104 + 80 len 16]
            _1120 = mem[64]
            mem[64] = mem[64] + 192
            mem[_1120] = _819
            mem[_1120 + 32] = address(_1114)
            mem[_1120 + 64] = _1076
            mem[_1120 + 96] = uint16(_1056)
            mem[_1120 + 128] = uint16(_1061)
            mem[_1120 + 160] = _1087
            _1121 = mem[64]
            mem[64] = mem[64] + 224
            mem[_1121] = 0
            mem[_1121 + 32] = 0
            mem[_1121 + 64] = 0
            mem[_1121 + 96] = 0
            mem[_1121 + 128] = 0
            mem[_1121 + 160] = 0
            _1122 = mem[64]
            mem[64] = mem[64] + 352
            mem[_1122] = 0
            mem[_1122 + 32] = 0
            mem[_1122 + 64] = 0
            mem[_1122 + 96] = 0
            mem[_1122 + 128] = 0
            mem[_1122 + 160] = 0
            mem[_1122 + 192] = 0
            mem[_1122 + 224] = 0
            mem[_1122 + 256] = 0
            mem[_1122 + 288] = 0
            mem[_1122 + 320] = 0
            mem[_1121 + 192] = _1122
            require ext_code.size(stor0)
            staticcall stor0.0xf0344e36 with:
                    gas gas_remaining wei
                   args _831
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1125 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _1126 = mem[_1125]
            require mem[_1125] == mem[_1125]
            _1127 = mem[_1125 + 32]
            require mem[_1125 + 32] == mem[_1125 + 48 len 16]
            _1128 = mem[_1125 + 64]
            require mem[_1125 + 64] == mem[_1125 + 80 len 16]
            _1129 = mem[_1125 + 96]
            require mem[_1125 + 96] == mem[_1125 + 124 len 4]
            _1130 = mem[_1125 + 128]
            require mem[_1125 + 128] == mem[_1125 + 156 len 4]
            _1131 = mem[_1125 + 160]
            require mem[_1125 + 160] == mem[_1125 + 188 len 4]
            _1132 = mem[64]
            mem[64] = mem[64] + 352
            mem[_1132] = 0
            mem[_1132 + 32] = 0
            mem[_1132 + 64] = 0
            mem[_1132 + 96] = 0
            mem[_1132 + 128] = 0
            mem[_1132 + 160] = 0
            mem[_1132 + 192] = 0
            mem[_1132 + 224] = 0
            mem[_1132 + 256] = 0
            mem[_1132 + 288] = 0
            mem[_1132 + 320] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x183ce75d with:
                    gas gas_remaining wei
                   args _831
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1135 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _1136 = mem[_1135]
            require mem[_1135] == mem[_1135]
            _1137 = mem[_1135 + 32]
            require mem[_1135 + 32] == mem[_1135 + 60 len 4]
            _1138 = mem[_1135 + 64]
            require mem[_1135 + 64] == mem[_1135 + 92 len 4]
            _1139 = mem[_1135 + 96]
            require mem[_1135 + 96] == mem[_1135 + 124 len 4]
            _1140 = mem[_1135 + 128]
            require mem[_1135 + 128] == mem[_1135 + 128]
            _1141 = mem[_1135 + 160]
            require mem[_1135 + 160] == mem[_1135 + 160]
            _1142 = mem[_1135 + 192]
            require mem[_1135 + 192] == mem[_1135 + 192]
            _1143 = mem[_1135 + 224]
            require mem[_1135 + 224] == mem[_1135 + 224]
            require ext_code.size(stor0)
            staticcall stor0.0xf769a0c with:
                    gas gas_remaining wei
                   args _831
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1146 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _1150 = mem[_1146]
            require mem[_1146] == mem[_1146 + 30 len 2]
            _1156 = mem[_1146 + 32]
            require mem[_1146 + 32] == mem[_1146 + 62 len 2]
            if _1141 > 0:
                _1164 = mem[64]
                mem[64] = mem[64] + 352
                mem[_1164] = _1136
                mem[_1164 + 32] = uint32(_1137)
                mem[_1164 + 64] = uint32(_1138)
                mem[_1164 + 96] = uint32(_1139)
                mem[_1164 + 128] = _1140
                mem[_1164 + 160] = _1141
                mem[_1164 + 192] = _1142
                mem[_1164 + 224] = _1143
                mem[_1164 + 256] = uint16(_1150)
                mem[_1164 + 288] = uint16(_1156)
                mem[_1164 + 320] = 4
                _1165 = mem[64]
                mem[64] = mem[64] + 224
                mem[_1165] = _1126
                mem[_1165 + 32] = uint128(_1127)
                mem[_1165 + 64] = uint128(_1128)
                mem[_1165 + 96] = uint32(_1129)
                mem[_1165 + 128] = uint32(_1130)
                mem[_1165 + 160] = uint32(_1131)
                mem[_1165 + 192] = _1164
                _1168 = mem[64]
                mem[64] = mem[64] + 288
                mem[_1168] = _785
                mem[_1168 + 32] = address(_805)
                mem[_1168 + 64] = _925
                mem[_1168 + 96] = _1038
                mem[_1168 + 128] = _1120
                mem[_1168 + 160] = uint16(_823)
                mem[_1168 + 192] = uint16(_828)
                mem[_1168 + 224] = _831
                mem[_1168 + 256] = _1165
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1168
            else:
                if _1143 > 0:
                    _1167 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_1167] = _1136
                    mem[_1167 + 32] = uint32(_1137)
                    mem[_1167 + 64] = uint32(_1138)
                    mem[_1167 + 96] = uint32(_1139)
                    mem[_1167 + 128] = _1140
                    mem[_1167 + 160] = _1141
                    mem[_1167 + 192] = _1142
                    mem[_1167 + 224] = _1143
                    mem[_1167 + 256] = uint16(_1150)
                    mem[_1167 + 288] = uint16(_1156)
                    mem[_1167 + 320] = 3
                    _1169 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1169] = _1126
                    mem[_1169 + 32] = uint128(_1127)
                    mem[_1169 + 64] = uint128(_1128)
                    mem[_1169 + 96] = uint32(_1129)
                    mem[_1169 + 128] = uint32(_1130)
                    mem[_1169 + 160] = uint32(_1131)
                    mem[_1169 + 192] = _1167
                    _1173 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1173] = _785
                    mem[_1173 + 32] = address(_805)
                    mem[_1173 + 64] = _925
                    mem[_1173 + 96] = _1038
                    mem[_1173 + 128] = _1120
                    mem[_1173 + 160] = uint16(_823)
                    mem[_1173 + 192] = uint16(_828)
                    mem[_1173 + 224] = _831
                    mem[_1173 + 256] = _1169
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1173
                else:
                    if _1140 > 0:
                        _1172 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_1172] = _1136
                        mem[_1172 + 32] = uint32(_1137)
                        mem[_1172 + 64] = uint32(_1138)
                        mem[_1172 + 96] = uint32(_1139)
                        mem[_1172 + 128] = _1140
                        mem[_1172 + 160] = _1141
                        mem[_1172 + 192] = _1142
                        mem[_1172 + 224] = _1143
                        mem[_1172 + 256] = uint16(_1150)
                        mem[_1172 + 288] = uint16(_1156)
                        mem[_1172 + 320] = 2
                        _1176 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1176] = _1126
                        mem[_1176 + 32] = uint128(_1127)
                        mem[_1176 + 64] = uint128(_1128)
                        mem[_1176 + 96] = uint32(_1129)
                        mem[_1176 + 128] = uint32(_1130)
                        mem[_1176 + 160] = uint32(_1131)
                        mem[_1176 + 192] = _1172
                        _1181 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_1181] = _785
                        mem[_1181 + 32] = address(_805)
                        mem[_1181 + 64] = _925
                        mem[_1181 + 96] = _1038
                        mem[_1181 + 128] = _1120
                        mem[_1181 + 160] = uint16(_823)
                        mem[_1181 + 192] = uint16(_828)
                        mem[_1181 + 224] = _831
                        mem[_1181 + 256] = _1176
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1181
                    else:
                        if _1142 <= 0:
                            _1175 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_1175] = _1136
                            mem[_1175 + 32] = uint32(_1137)
                            mem[_1175 + 64] = uint32(_1138)
                            mem[_1175 + 96] = uint32(_1139)
                            mem[_1175 + 128] = _1140
                            mem[_1175 + 160] = _1141
                            mem[_1175 + 192] = _1142
                            mem[_1175 + 224] = _1143
                            mem[_1175 + 256] = uint16(_1150)
                            mem[_1175 + 288] = uint16(_1156)
                            mem[_1175 + 320] = 0
                            _1179 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1179] = _1126
                            mem[_1179 + 32] = uint128(_1127)
                            mem[_1179 + 64] = uint128(_1128)
                            mem[_1179 + 96] = uint32(_1129)
                            mem[_1179 + 128] = uint32(_1130)
                            mem[_1179 + 160] = uint32(_1131)
                            mem[_1179 + 192] = _1175
                            _1183 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_1183] = _785
                            mem[_1183 + 32] = address(_805)
                            mem[_1183 + 64] = _925
                            mem[_1183 + 96] = _1038
                            mem[_1183 + 128] = _1120
                            mem[_1183 + 160] = uint16(_823)
                            mem[_1183 + 192] = uint16(_828)
                            mem[_1183 + 224] = _831
                            mem[_1183 + 256] = _1179
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1183
                        else:
                            _1180 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_1180] = _1136
                            mem[_1180 + 32] = uint32(_1137)
                            mem[_1180 + 64] = uint32(_1138)
                            mem[_1180 + 96] = uint32(_1139)
                            mem[_1180 + 128] = _1140
                            mem[_1180 + 160] = _1141
                            mem[_1180 + 192] = _1142
                            mem[_1180 + 224] = _1143
                            mem[_1180 + 256] = uint16(_1150)
                            mem[_1180 + 288] = uint16(_1156)
                            mem[_1180 + 320] = 1
                            _1184 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_1184] = _1126
                            mem[_1184 + 32] = uint128(_1127)
                            mem[_1184 + 64] = uint128(_1128)
                            mem[_1184 + 96] = uint32(_1129)
                            mem[_1184 + 128] = uint32(_1130)
                            mem[_1184 + 160] = uint32(_1131)
                            mem[_1184 + 192] = _1180
                            _1187 = mem[64]
                            mem[64] = mem[64] + 288
                            mem[_1187] = _785
                            mem[_1187 + 32] = address(_805)
                            mem[_1187 + 64] = _925
                            mem[_1187 + 96] = _1038
                            mem[_1187 + 128] = _1120
                            mem[_1187 + 160] = uint16(_823)
                            mem[_1187 + 192] = uint16(_828)
                            mem[_1187 + 224] = _831
                            mem[_1187 + 256] = _1184
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1187
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _784 = mem[64]
        mem[mem[64]] = 32
        _787 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _787:
            _913 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_913 + 44 len 20]
            _926 = mem[_913 + 64]
            mem[t + 64] = mem[mem[_913 + 64]]
            mem[t + 96] = mem[_926 + 44 len 20]
            mem[t + 128] = mem[_926 + 64]
            mem[t + 160] = mem[_926 + 126 len 2]
            mem[t + 192] = mem[_926 + 158 len 2]
            mem[t + 224] = mem[_926 + 160]
            _951 = mem[_913 + 96]
            mem[t + 256] = mem[mem[_913 + 96]]
            mem[t + 288] = mem[_951 + 44 len 20]
            mem[t + 320] = mem[_951 + 64]
            mem[t + 352] = mem[_951 + 126 len 2]
            mem[t + 384] = mem[_951 + 158 len 2]
            mem[t + 416] = mem[_951 + 160]
            _977 = mem[_913 + 128]
            mem[t + 448] = mem[mem[_913 + 128]]
            mem[t + 480] = mem[_977 + 44 len 20]
            mem[t + 512] = mem[_977 + 64]
            mem[t + 544] = mem[_977 + 126 len 2]
            mem[t + 576] = mem[_977 + 158 len 2]
            mem[t + 608] = mem[_977 + 160]
            mem[t + 640] = mem[_913 + 190 len 2]
            mem[t + 672] = mem[_913 + 222 len 2]
            mem[t + 704] = mem[_913 + 224]
            _1012 = mem[_913 + 256]
            mem[t + 736] = mem[mem[_913 + 256]]
            mem[t + 768] = mem[_1012 + 48 len 16]
            mem[t + 800] = mem[_1012 + 80 len 16]
            mem[t + 832] = mem[_1012 + 124 len 4]
            mem[t + 864] = mem[_1012 + 156 len 4]
            mem[t + 896] = mem[_1012 + 188 len 4]
            _1034 = mem[_1012 + 192]
            mem[t + 928] = mem[mem[_1012 + 192]]
            mem[t + 960] = mem[_1034 + 60 len 4]
            mem[t + 992] = mem[_1034 + 92 len 4]
            mem[t + 1024] = mem[_1034 + 124 len 4]
            mem[t + 1056] = mem[_1034 + 128]
            mem[t + 1088] = mem[_1034 + 160]
            mem[t + 1120] = mem[_1034 + 192]
            mem[t + 1152] = mem[_1034 + 224]
            mem[t + 1184] = mem[_1034 + 286 len 2]
            mem[t + 1216] = mem[_1034 + 318 len 2]
            mem[t + 1248] = mem[_1034 + 351 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 1280
            continue 
        return memory
          from mem[64]
           len _784 + (1280 * _787) + -mem[64] + 64
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 417] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 481] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 513] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 545] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 577] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 417
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 609] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 641] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 673] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 705] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 737] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 769] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 609
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 801] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 833] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 865] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 897] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 929] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 961] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 801
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 321] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 993] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1025] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1057] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1089] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1121] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1153] = 0
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1569
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1217] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1249] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1281] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1313] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1345] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1377] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1409] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1441] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1473] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1505] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1537] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1185] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1217
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 385] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 993
    mem[var45002] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193
    s = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = var45002
    idx = var45003
    while idx - 1:
        _671 = mem[64]
        mem[64] = mem[64] + 288
        mem[_671] = 0
        mem[_671 + 32] = 0
        mem[64] = mem[64] + 192
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 417] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 481] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 513] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 545] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 577] = 0
        mem[_671 + 64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 417
        mem[64] = mem[64] + 192
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 609] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 641] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 673] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 705] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 737] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 769] = 0
        mem[_671 + 96] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 609
        mem[64] = mem[64] + 192
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 801] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 833] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 865] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 897] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 929] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 961] = 0
        mem[_671 + 128] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 801
        mem[_671 + 160] = 0
        mem[_671 + 192] = 0
        mem[_671 + 224] = 0
        mem[64] = mem[64] + 224
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 993] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1025] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1057] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1089] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1121] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1153] = 0
        mem[64] = mem[64] + 352
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1217] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1249] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1281] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1313] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1345] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1377] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1409] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1441] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1473] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1505] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1537] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1185] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1217
        mem[_671 + 256] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 993
        mem[s + 32] = _671
        s = _671 + 64
        s = _671
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1149 = mem[(32 * idx) + 128]
        _1151 = mem[64]
        mem[64] = mem[64] + 288
        mem[_1151] = 0
        mem[_1151 + 32] = 0
        _1153 = mem[64]
        mem[64] = mem[64] + 192
        mem[_1153] = 0
        mem[_1153 + 32] = 0
        mem[_1153 + 64] = 0
        mem[_1153 + 96] = 0
        mem[_1153 + 128] = 0
        mem[_1153 + 160] = 0
        mem[_1151 + 64] = _1153
        _1154 = mem[64]
        mem[64] = mem[64] + 192
        mem[_1154] = 0
        mem[_1154 + 32] = 0
        mem[_1154 + 64] = 0
        mem[_1154 + 96] = 0
        mem[_1154 + 128] = 0
        mem[_1154 + 160] = 0
        mem[_1151 + 96] = _1154
        _1155 = mem[64]
        mem[64] = mem[64] + 192
        mem[_1155] = 0
        mem[_1155 + 32] = 0
        mem[_1155 + 64] = 0
        mem[_1155 + 96] = 0
        mem[_1155 + 128] = 0
        mem[_1155 + 160] = 0
        mem[_1151 + 128] = _1155
        mem[_1151 + 160] = 0
        mem[_1151 + 192] = 0
        mem[_1151 + 224] = 0
        _1157 = mem[64]
        mem[64] = mem[64] + 224
        mem[_1157] = 0
        mem[_1157 + 32] = 0
        mem[_1157 + 64] = 0
        mem[_1157 + 96] = 0
        mem[_1157 + 128] = 0
        mem[_1157 + 160] = 0
        _1159 = mem[64]
        mem[64] = mem[64] + 352
        mem[_1159] = 0
        mem[_1159 + 32] = 0
        mem[_1159 + 64] = 0
        mem[_1159 + 96] = 0
        mem[_1159 + 128] = 0
        mem[_1159 + 160] = 0
        mem[_1159 + 192] = 0
        mem[_1159 + 224] = 0
        mem[_1159 + 256] = 0
        mem[_1159 + 288] = 0
        mem[_1159 + 320] = 0
        mem[_1157 + 192] = _1159
        mem[_1151 + 256] = _1157
        require ext_code.size(stor0)
        staticcall stor0.0x969215ba with:
                gas gas_remaining wei
               args _1149
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1171 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _1182 = mem[_1171]
        require mem[_1171] == mem[_1171 + 12 len 20]
        _1191 = mem[_1171 + 32]
        require mem[_1171 + 32] == mem[_1171 + 32]
        _1193 = mem[_1171 + 64]
        require mem[_1171 + 64] == mem[_1171 + 64]
        _1196 = mem[_1171 + 96]
        require mem[_1171 + 96] == mem[_1171 + 96]
        _1199 = mem[_1171 + 128]
        require mem[_1171 + 128] == mem[_1171 + 158 len 2]
        _1202 = mem[_1171 + 160]
        require mem[_1171 + 160] == mem[_1171 + 190 len 2]
        _1204 = mem[_1171 + 192]
        require mem[_1171 + 192] == mem[_1171 + 192]
        require mem[_1171 + 224] == mem[_1171 + 240 len 16]
        _1211 = mem[64]
        mem[64] = mem[64] + 192
        mem[_1211] = 0
        mem[_1211 + 32] = 0
        mem[_1211 + 64] = 0
        mem[_1211 + 96] = 0
        mem[_1211 + 128] = 0
        mem[_1211 + 160] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _1191
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1216 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1217 = mem[_1216]
        require mem[_1216] == mem[_1216 + 30 len 2]
        _1220 = mem[_1216 + 32]
        require mem[_1216 + 32] == mem[_1216 + 62 len 2]
        mem[mem[64] + 4] = _1191
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _1191
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1227 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1229 = mem[_1227]
        require mem[_1227] == mem[_1227]
        require ext_code.size(stor1)
        staticcall stor1.crabadaInfo(uint256 arg1) with:
                gas gas_remaining wei
               args _1191
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1236 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        require mem[_1236] == mem[_1236]
        require mem[_1236 + 32] == mem[_1236 + 32]
        _1244 = mem[_1236 + 64]
        require mem[_1236 + 64] == mem[_1236 + 64]
        require mem[_1236 + 96] == mem[_1236 + 120 len 8]
        require mem[_1236 + 128] == mem[_1236 + 159 len 1]
        require ext_code.size(stor0)
        staticcall stor0.0x62428e4e with:
                gas gas_remaining wei
               args _1191
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1256 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1258 = mem[_1256]
        require mem[_1256] == mem[_1256 + 12 len 20]
        require mem[_1256 + 32] == mem[_1256 + 48 len 16]
        require mem[_1256 + 64] == mem[_1256 + 80 len 16]
        _1265 = mem[64]
        mem[64] = mem[64] + 192
        mem[_1265] = _1191
        mem[_1265 + 32] = address(_1258)
        mem[_1265 + 64] = _1229
        mem[_1265 + 96] = uint16(_1217)
        mem[_1265 + 128] = uint16(_1220)
        mem[_1265 + 160] = _1244
        _1267 = mem[64]
        mem[64] = mem[64] + 192
        mem[_1267] = 0
        mem[_1267 + 32] = 0
        mem[_1267 + 64] = 0
        mem[_1267 + 96] = 0
        mem[_1267 + 128] = 0
        mem[_1267 + 160] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _1193
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1272 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1274 = mem[_1272]
        require mem[_1272] == mem[_1272 + 30 len 2]
        _1277 = mem[_1272 + 32]
        require mem[_1272 + 32] == mem[_1272 + 62 len 2]
        mem[mem[64] + 4] = _1193
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _1193
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1284 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1285 = mem[_1284]
        require mem[_1284] == mem[_1284]
        require ext_code.size(stor1)
        staticcall stor1.crabadaInfo(uint256 arg1) with:
                gas gas_remaining wei
               args _1193
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1292 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        require mem[_1292] == mem[_1292]
        require mem[_1292 + 32] == mem[_1292 + 32]
        _1299 = mem[_1292 + 64]
        require mem[_1292 + 64] == mem[_1292 + 64]
        require mem[_1292 + 96] == mem[_1292 + 120 len 8]
        require mem[_1292 + 128] == mem[_1292 + 159 len 1]
        require ext_code.size(stor0)
        staticcall stor0.0x62428e4e with:
                gas gas_remaining wei
               args _1193
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1312 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1314 = mem[_1312]
        require mem[_1312] == mem[_1312 + 12 len 20]
        require mem[_1312 + 32] == mem[_1312 + 48 len 16]
        require mem[_1312 + 64] == mem[_1312 + 80 len 16]
        _1323 = mem[64]
        mem[64] = mem[64] + 192
        mem[_1323] = _1193
        mem[_1323 + 32] = address(_1314)
        mem[_1323 + 64] = _1285
        mem[_1323 + 96] = uint16(_1274)
        mem[_1323 + 128] = uint16(_1277)
        mem[_1323 + 160] = _1299
        _1325 = mem[64]
        mem[64] = mem[64] + 192
        mem[_1325] = 0
        mem[_1325 + 32] = 0
        mem[_1325 + 64] = 0
        mem[_1325 + 96] = 0
        mem[_1325 + 128] = 0
        mem[_1325 + 160] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _1196
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1330 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1332 = mem[_1330]
        require mem[_1330] == mem[_1330 + 30 len 2]
        _1335 = mem[_1330 + 32]
        require mem[_1330 + 32] == mem[_1330 + 62 len 2]
        mem[mem[64] + 4] = _1196
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _1196
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1341 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1343 = mem[_1341]
        require mem[_1341] == mem[_1341]
        require ext_code.size(stor1)
        staticcall stor1.crabadaInfo(uint256 arg1) with:
                gas gas_remaining wei
               args _1196
        mem[mem[64] len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1346 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 160
        require mem[_1346] == mem[_1346]
        require mem[_1346 + 32] == mem[_1346 + 32]
        _1349 = mem[_1346 + 64]
        require mem[_1346 + 64] == mem[_1346 + 64]
        require mem[_1346 + 96] == mem[_1346 + 120 len 8]
        require mem[_1346 + 128] == mem[_1346 + 159 len 1]
        require ext_code.size(stor0)
        staticcall stor0.0x62428e4e with:
                gas gas_remaining wei
               args _1196
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1354 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1355 = mem[_1354]
        require mem[_1354] == mem[_1354 + 12 len 20]
        require mem[_1354 + 32] == mem[_1354 + 48 len 16]
        require mem[_1354 + 64] == mem[_1354 + 80 len 16]
        _1358 = mem[64]
        mem[64] = mem[64] + 192
        mem[_1358] = _1196
        mem[_1358 + 32] = address(_1355)
        mem[_1358 + 64] = _1343
        mem[_1358 + 96] = uint16(_1332)
        mem[_1358 + 128] = uint16(_1335)
        mem[_1358 + 160] = _1349
        _1359 = mem[64]
        mem[64] = mem[64] + 224
        mem[_1359] = 0
        mem[_1359 + 32] = 0
        mem[_1359 + 64] = 0
        mem[_1359 + 96] = 0
        mem[_1359 + 128] = 0
        mem[_1359 + 160] = 0
        _1360 = mem[64]
        mem[64] = mem[64] + 352
        mem[_1360] = 0
        mem[_1360 + 32] = 0
        mem[_1360 + 64] = 0
        mem[_1360 + 96] = 0
        mem[_1360 + 128] = 0
        mem[_1360 + 160] = 0
        mem[_1360 + 192] = 0
        mem[_1360 + 224] = 0
        mem[_1360 + 256] = 0
        mem[_1360 + 288] = 0
        mem[_1360 + 320] = 0
        mem[_1359 + 192] = _1360
        require ext_code.size(stor0)
        staticcall stor0.0xf0344e36 with:
                gas gas_remaining wei
               args _1204
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1363 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _1364 = mem[_1363]
        require mem[_1363] == mem[_1363]
        _1365 = mem[_1363 + 32]
        require mem[_1363 + 32] == mem[_1363 + 48 len 16]
        _1366 = mem[_1363 + 64]
        require mem[_1363 + 64] == mem[_1363 + 80 len 16]
        _1367 = mem[_1363 + 96]
        require mem[_1363 + 96] == mem[_1363 + 124 len 4]
        _1368 = mem[_1363 + 128]
        require mem[_1363 + 128] == mem[_1363 + 156 len 4]
        _1369 = mem[_1363 + 160]
        require mem[_1363 + 160] == mem[_1363 + 188 len 4]
        _1370 = mem[64]
        mem[64] = mem[64] + 352
        mem[_1370] = 0
        mem[_1370 + 32] = 0
        mem[_1370 + 64] = 0
        mem[_1370 + 96] = 0
        mem[_1370 + 128] = 0
        mem[_1370 + 160] = 0
        mem[_1370 + 192] = 0
        mem[_1370 + 224] = 0
        mem[_1370 + 256] = 0
        mem[_1370 + 288] = 0
        mem[_1370 + 320] = 0
        require ext_code.size(stor0)
        staticcall stor0.0x183ce75d with:
                gas gas_remaining wei
               args _1204
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1373 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _1374 = mem[_1373]
        require mem[_1373] == mem[_1373]
        _1375 = mem[_1373 + 32]
        require mem[_1373 + 32] == mem[_1373 + 60 len 4]
        _1376 = mem[_1373 + 64]
        require mem[_1373 + 64] == mem[_1373 + 92 len 4]
        _1377 = mem[_1373 + 96]
        require mem[_1373 + 96] == mem[_1373 + 124 len 4]
        _1378 = mem[_1373 + 128]
        require mem[_1373 + 128] == mem[_1373 + 128]
        _1379 = mem[_1373 + 160]
        require mem[_1373 + 160] == mem[_1373 + 160]
        _1380 = mem[_1373 + 192]
        require mem[_1373 + 192] == mem[_1373 + 192]
        _1381 = mem[_1373 + 224]
        require mem[_1373 + 224] == mem[_1373 + 224]
        require ext_code.size(stor0)
        staticcall stor0.0xf769a0c with:
                gas gas_remaining wei
               args _1204
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1384 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1385 = mem[_1384]
        require mem[_1384] == mem[_1384 + 30 len 2]
        _1386 = mem[_1384 + 32]
        require mem[_1384 + 32] == mem[_1384 + 62 len 2]
        if _1379 > 0:
            _1387 = mem[64]
            mem[64] = mem[64] + 352
            mem[_1387] = _1374
            mem[_1387 + 32] = uint32(_1375)
            mem[_1387 + 64] = uint32(_1376)
            mem[_1387 + 96] = uint32(_1377)
            mem[_1387 + 128] = _1378
            mem[_1387 + 160] = _1379
            mem[_1387 + 192] = _1380
            mem[_1387 + 224] = _1381
            mem[_1387 + 256] = uint16(_1385)
            mem[_1387 + 288] = uint16(_1386)
            mem[_1387 + 320] = 4
            _1388 = mem[64]
            mem[64] = mem[64] + 224
            mem[_1388] = _1364
            mem[_1388 + 32] = uint128(_1365)
            mem[_1388 + 64] = uint128(_1366)
            mem[_1388 + 96] = uint32(_1367)
            mem[_1388 + 128] = uint32(_1368)
            mem[_1388 + 160] = uint32(_1369)
            mem[_1388 + 192] = _1387
            _1390 = mem[64]
            mem[64] = mem[64] + 288
            mem[_1390] = _1149
            mem[_1390 + 32] = address(_1182)
            mem[_1390 + 64] = _1265
            mem[_1390 + 96] = _1323
            mem[_1390 + 128] = _1358
            mem[_1390 + 160] = uint16(_1199)
            mem[_1390 + 192] = uint16(_1202)
            mem[_1390 + 224] = _1204
            mem[_1390 + 256] = _1388
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1390
        else:
            if _1381 > 0:
                _1389 = mem[64]
                mem[64] = mem[64] + 352
                mem[_1389] = _1374
                mem[_1389 + 32] = uint32(_1375)
                mem[_1389 + 64] = uint32(_1376)
                mem[_1389 + 96] = uint32(_1377)
                mem[_1389 + 128] = _1378
                mem[_1389 + 160] = _1379
                mem[_1389 + 192] = _1380
                mem[_1389 + 224] = _1381
                mem[_1389 + 256] = uint16(_1385)
                mem[_1389 + 288] = uint16(_1386)
                mem[_1389 + 320] = 3
                _1391 = mem[64]
                mem[64] = mem[64] + 224
                mem[_1391] = _1364
                mem[_1391 + 32] = uint128(_1365)
                mem[_1391 + 64] = uint128(_1366)
                mem[_1391 + 96] = uint32(_1367)
                mem[_1391 + 128] = uint32(_1368)
                mem[_1391 + 160] = uint32(_1369)
                mem[_1391 + 192] = _1389
                _1394 = mem[64]
                mem[64] = mem[64] + 288
                mem[_1394] = _1149
                mem[_1394 + 32] = address(_1182)
                mem[_1394 + 64] = _1265
                mem[_1394 + 96] = _1323
                mem[_1394 + 128] = _1358
                mem[_1394 + 160] = uint16(_1199)
                mem[_1394 + 192] = uint16(_1202)
                mem[_1394 + 224] = _1204
                mem[_1394 + 256] = _1391
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1394
            else:
                if _1378 > 0:
                    _1393 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_1393] = _1374
                    mem[_1393 + 32] = uint32(_1375)
                    mem[_1393 + 64] = uint32(_1376)
                    mem[_1393 + 96] = uint32(_1377)
                    mem[_1393 + 128] = _1378
                    mem[_1393 + 160] = _1379
                    mem[_1393 + 192] = _1380
                    mem[_1393 + 224] = _1381
                    mem[_1393 + 256] = uint16(_1385)
                    mem[_1393 + 288] = uint16(_1386)
                    mem[_1393 + 320] = 2
                    _1396 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1396] = _1364
                    mem[_1396 + 32] = uint128(_1365)
                    mem[_1396 + 64] = uint128(_1366)
                    mem[_1396 + 96] = uint32(_1367)
                    mem[_1396 + 128] = uint32(_1368)
                    mem[_1396 + 160] = uint32(_1369)
                    mem[_1396 + 192] = _1393
                    _1400 = mem[64]
                    mem[64] = mem[64] + 288
                    mem[_1400] = _1149
                    mem[_1400 + 32] = address(_1182)
                    mem[_1400 + 64] = _1265
                    mem[_1400 + 96] = _1323
                    mem[_1400 + 128] = _1358
                    mem[_1400 + 160] = uint16(_1199)
                    mem[_1400 + 192] = uint16(_1202)
                    mem[_1400 + 224] = _1204
                    mem[_1400 + 256] = _1396
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1400
                else:
                    if _1380 <= 0:
                        _1395 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_1395] = _1374
                        mem[_1395 + 32] = uint32(_1375)
                        mem[_1395 + 64] = uint32(_1376)
                        mem[_1395 + 96] = uint32(_1377)
                        mem[_1395 + 128] = _1378
                        mem[_1395 + 160] = _1379
                        mem[_1395 + 192] = _1380
                        mem[_1395 + 224] = _1381
                        mem[_1395 + 256] = uint16(_1385)
                        mem[_1395 + 288] = uint16(_1386)
                        mem[_1395 + 320] = 0
                        _1398 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1398] = _1364
                        mem[_1398 + 32] = uint128(_1365)
                        mem[_1398 + 64] = uint128(_1366)
                        mem[_1398 + 96] = uint32(_1367)
                        mem[_1398 + 128] = uint32(_1368)
                        mem[_1398 + 160] = uint32(_1369)
                        mem[_1398 + 192] = _1395
                        _1401 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_1401] = _1149
                        mem[_1401 + 32] = address(_1182)
                        mem[_1401 + 64] = _1265
                        mem[_1401 + 96] = _1323
                        mem[_1401 + 128] = _1358
                        mem[_1401 + 160] = uint16(_1199)
                        mem[_1401 + 192] = uint16(_1202)
                        mem[_1401 + 224] = _1204
                        mem[_1401 + 256] = _1398
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1401
                    else:
                        _1399 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_1399] = _1374
                        mem[_1399 + 32] = uint32(_1375)
                        mem[_1399 + 64] = uint32(_1376)
                        mem[_1399 + 96] = uint32(_1377)
                        mem[_1399 + 128] = _1378
                        mem[_1399 + 160] = _1379
                        mem[_1399 + 192] = _1380
                        mem[_1399 + 224] = _1381
                        mem[_1399 + 256] = uint16(_1385)
                        mem[_1399 + 288] = uint16(_1386)
                        mem[_1399 + 320] = 1
                        _1402 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1402] = _1364
                        mem[_1402 + 32] = uint128(_1365)
                        mem[_1402 + 64] = uint128(_1366)
                        mem[_1402 + 96] = uint32(_1367)
                        mem[_1402 + 128] = uint32(_1368)
                        mem[_1402 + 160] = uint32(_1369)
                        mem[_1402 + 192] = _1399
                        _1405 = mem[64]
                        mem[64] = mem[64] + 288
                        mem[_1405] = _1149
                        mem[_1405 + 32] = address(_1182)
                        mem[_1405 + 64] = _1265
                        mem[_1405 + 96] = _1323
                        mem[_1405 + 128] = _1358
                        mem[_1405 + 160] = uint16(_1199)
                        mem[_1405 + 192] = uint16(_1202)
                        mem[_1405 + 224] = _1204
                        mem[_1405 + 256] = _1402
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1405
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _1148 = mem[64]
    mem[mem[64]] = 32
    _1152 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    idx = 0
    s = floor32(('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < _1152:
        _1260 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_1260 + 44 len 20]
        _1266 = mem[_1260 + 64]
        mem[t + 64] = mem[mem[_1260 + 64]]
        mem[t + 96] = mem[_1266 + 44 len 20]
        mem[t + 128] = mem[_1266 + 64]
        mem[t + 160] = mem[_1266 + 126 len 2]
        mem[t + 192] = mem[_1266 + 158 len 2]
        mem[t + 224] = mem[_1266 + 160]
        _1280 = mem[_1260 + 96]
        mem[t + 256] = mem[mem[_1260 + 96]]
        mem[t + 288] = mem[_1280 + 44 len 20]
        mem[t + 320] = mem[_1280 + 64]
        mem[t + 352] = mem[_1280 + 126 len 2]
        mem[t + 384] = mem[_1280 + 158 len 2]
        mem[t + 416] = mem[_1280 + 160]
        _1294 = mem[_1260 + 128]
        mem[t + 448] = mem[mem[_1260 + 128]]
        mem[t + 480] = mem[_1294 + 44 len 20]
        mem[t + 512] = mem[_1294 + 64]
        mem[t + 544] = mem[_1294 + 126 len 2]
        mem[t + 576] = mem[_1294 + 158 len 2]
        mem[t + 608] = mem[_1294 + 160]
        mem[t + 640] = mem[_1260 + 190 len 2]
        mem[t + 672] = mem[_1260 + 222 len 2]
        mem[t + 704] = mem[_1260 + 224]
        _1309 = mem[_1260 + 256]
        mem[t + 736] = mem[mem[_1260 + 256]]
        mem[t + 768] = mem[_1309 + 48 len 16]
        mem[t + 800] = mem[_1309 + 80 len 16]
        mem[t + 832] = mem[_1309 + 124 len 4]
        mem[t + 864] = mem[_1309 + 156 len 4]
        mem[t + 896] = mem[_1309 + 188 len 4]
        _1321 = mem[_1309 + 192]
        mem[t + 928] = mem[mem[_1309 + 192]]
        mem[t + 960] = mem[_1321 + 60 len 4]
        mem[t + 992] = mem[_1321 + 92 len 4]
        mem[t + 1024] = mem[_1321 + 124 len 4]
        mem[t + 1056] = mem[_1321 + 128]
        mem[t + 1088] = mem[_1321 + 160]
        mem[t + 1120] = mem[_1321 + 192]
        mem[t + 1152] = mem[_1321 + 224]
        mem[t + 1184] = mem[_1321 + 286 len 2]
        mem[t + 1216] = mem[_1321 + 318 len 2]
        mem[t + 1248] = mem[_1321 + 351 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 1280
        continue 
    return memory
      from mem[64]
       len _1148 + (1280 * _1152) + -mem[64] + 64
}



}
