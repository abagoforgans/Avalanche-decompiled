contract main {




// =====================  Runtime code  =====================


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
    return arg1, ext_call.return_data[0], ext_call.return_data[0] << 240, uint16(ext_call.return_data[32])
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
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[96],
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
        return arg1, 
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[96],
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
        return arg1, 
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[96],
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
        return arg1, 
               address(ext_call.return_data[0]),
               ext_call.return_data[32],
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[96],
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
    return arg1, 
           address(ext_call.return_data[0]),
           ext_call.return_data[32],
           ext_call.return_data[0],
           0,
           0,
           ext_call.return_data[64],
           ext_call.return_data[0],
           0,
           0,
           ext_call.return_data[96],
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
        if var112002 >= arg2 - arg1:
            mem[(32 * arg2 - arg1) + 128] = 32
            mem[(32 * arg2 - arg1) + 160] = arg2 - arg1
            idx = 0
            s = 128
            t = (32 * arg2 - arg1) + 192
            while idx < mem[96]:
                _373 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_373 + 32]
                mem[t + 64] = mem[_373 + 94 len 2]
                mem[t + 96] = mem[_373 + 126 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len (162 * arg2) + (-162 * arg1) + -mem[64] + 192
        if var124003 > -arg1 - 1:
            revert with 'NH{q', 17
        mem[64] = (32 * arg2 - arg1) + 256
        mem[(32 * arg2 - arg1) + 128] = 0
        mem[(32 * arg2 - arg1) + 160] = 0
        mem[(32 * arg2 - arg1) + 192] = 0
        mem[(32 * arg2 - arg1) + 224] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args (var126002 + arg1)
        mem[(32 * arg2 - arg1) + 256 len 64] = ext_call.return_data[0 len 64]
        s = var126002 + arg1
        t = var126006
        while ext_call.success:
            _678 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _681 = mem[_678]
            require mem[_678] == mem[_678 + 30 len 2]
            _683 = mem[_678 + 32]
            require mem[_678 + 32] == mem[_678 + 62 len 2]
            mem[mem[64] + 4] = s
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _688 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _691 = mem[_688]
            require mem[_688] == mem[_688]
            _693 = mem[64]
            mem[64] = mem[64] + 128
            mem[_693] = s
            mem[_693 + 32] = _691
            mem[_693 + 64] = uint16(_681)
            mem[_693 + 96] = uint16(_683)
            if t >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * t) + 128] = _693
            if t == -1:
                revert with 'NH{q', 17
            if arg2 < arg1:
                revert with 'NH{q', 17
            if t + 1 >= arg2 - arg1:
                _697 = mem[64]
                mem[mem[64]] = 32
                _699 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 64
                while idx < _699:
                    _713 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_713 + 32]
                    mem[u + 64] = mem[_713 + 94 len 2]
                    mem[u + 96] = mem[_713 + 126 len 2]
                    mem[64] = mem[64] + 128
                    mem[(32 * arg2 - arg1) + 128] = 0
                    mem[(32 * arg2 - arg1) + 160] = 0
                    mem[(32 * arg2 - arg1) + 192] = 0
                    mem[(32 * arg2 - arg1) + 224] = 0
                    mem[mem[64]] = 0x7b30396500000000000000000000000000000000000000000000000000000000
                    mem[(32 * arg2 - arg1) + 260] = s
                    require ext_code.size(stor0)
                    staticcall stor0.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len (32 * arg2 - arg1) + -mem[64] + 288]
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    idx = idx + 1
                    t = t + 32
                    u = u + 128
                    continue 
                return memory
                  from mem[64]
                   len _697 + (128 * _699) + -mem[64] + 64
            if t + 1 > -arg1 - 1:
                revert with 'NH{q', 17
            mem[64] = mem[64] + 128
            mem[(32 * arg2 - arg1) + 128] = 0
            mem[(32 * arg2 - arg1) + 160] = 0
            mem[(32 * arg2 - arg1) + 192] = 0
            mem[(32 * arg2 - arg1) + 224] = 0
            mem[mem[64]] = 0x7b30396500000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2 - arg1) + 260] = t + arg1 + 2
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len (32 * arg2 - arg1) + -mem[64] + 288]
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            s = t + arg1 + 1
            t = t + 1
            continue 
    else:
        mem[64] = (32 * arg2 - arg1) + 256
        mem[(32 * arg2 - arg1) + 128] = 0
        mem[(32 * arg2 - arg1) + 160] = 0
        mem[(32 * arg2 - arg1) + 192] = 0
        mem[(32 * arg2 - arg1) + 224] = 0
        mem[var32001] = (32 * arg2 - arg1) + 128
        s = var32001
        idx = var32002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[(32 * arg2 - arg1) + 128] = 0
            mem[(32 * arg2 - arg1) + 160] = 0
            mem[(32 * arg2 - arg1) + 192] = 0
            mem[(32 * arg2 - arg1) + 224] = 0
            mem[s + 32] = (32 * arg2 - arg1) + 128
            s = s + 32
            idx = idx - 1
            continue 
        if arg2 < arg1:
            revert with 'NH{q', 17
        if var119002 >= arg2 - arg1:
            _419 = mem[64]
            mem[mem[64]] = 32
            _420 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 64
            while idx < _420:
                _467 = mem[s]
                mem[t] = mem[mem[s]]
                mem[t + 32] = mem[_467 + 32]
                mem[t + 64] = mem[_467 + 94 len 2]
                mem[t + 96] = mem[_467 + 126 len 2]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _419 + (128 * _420) + -mem[64] + 64
        if var131003 > -arg1 - 1:
            revert with 'NH{q', 17
        _739 = mem[64]
        mem[64] = mem[64] + 128
        mem[_739] = 0
        mem[_739 + 32] = 0
        mem[_739 + 64] = 0
        mem[_739 + 96] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args (var133002 + arg1)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        s = var133002 + arg1
        t = var133006
        while ext_call.success:
            _742 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _743 = mem[_742]
            require mem[_742] == mem[_742 + 30 len 2]
            _744 = mem[_742 + 32]
            require mem[_742 + 32] == mem[_742 + 62 len 2]
            mem[mem[64] + 4] = s
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args s
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _747 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _748 = mem[_747]
            require mem[_747] == mem[_747]
            _749 = mem[64]
            mem[64] = mem[64] + 128
            mem[_749] = s
            mem[_749 + 32] = _748
            mem[_749 + 64] = uint16(_743)
            mem[_749 + 96] = uint16(_744)
            if t >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * t) + 128] = _749
            if t == -1:
                revert with 'NH{q', 17
            if arg2 < arg1:
                revert with 'NH{q', 17
            if t + 1 >= arg2 - arg1:
                _751 = mem[64]
                mem[mem[64]] = 32
                _752 = mem[96]
                mem[mem[64] + 32] = mem[96]
                idx = 0
                t = 128
                u = mem[64] + 64
                while idx < _752:
                    _759 = mem[t]
                    mem[u] = mem[mem[t]]
                    mem[u + 32] = mem[_759 + 32]
                    mem[u + 64] = mem[_759 + 94 len 2]
                    mem[u + 96] = mem[_759 + 126 len 2]
                    _739 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_739] = 0
                    mem[_739 + 32] = 0
                    mem[_739 + 64] = 0
                    mem[_739 + 96] = 0
                    require ext_code.size(stor0)
                    staticcall stor0.getStats(uint256 arg1) with:
                            gas gas_remaining wei
                           args s
                    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                    idx = idx + 1
                    t = t + 32
                    u = u + 128
                    continue 
                return memory
                  from mem[64]
                   len _751 + (128 * _752) + -mem[64] + 64
            if t + 1 > -arg1 - 1:
                revert with 'NH{q', 17
            _739 = mem[64]
            mem[64] = mem[64] + 128
            mem[_739] = 0
            mem[_739 + 32] = 0
            mem[_739 + 64] = 0
            mem[_739 + 96] = 0
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
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[96],
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
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[96],
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
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[96],
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
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[64],
               ext_call.return_data[0],
               0,
               0,
               ext_call.return_data[96],
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
           ext_call.return_data[0],
           0,
           0,
           ext_call.return_data[64],
           ext_call.return_data[0],
           0,
           0,
           ext_call.return_data[96],
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
            _454 = mem[64]
            mem[64] = mem[64] + 320
            mem[_454] = 0
            mem[_454 + 32] = 0
            _455 = mem[64]
            mem[64] = mem[64] + 128
            mem[_455] = 0
            mem[_455 + 32] = 0
            mem[_455 + 64] = 0
            mem[_455 + 96] = 0
            mem[_454 + 64] = _455
            _458 = mem[64]
            mem[64] = mem[64] + 128
            mem[_458] = 0
            mem[_458 + 32] = 0
            mem[_458 + 64] = 0
            mem[_458 + 96] = 0
            mem[_454 + 96] = _458
            _461 = mem[64]
            mem[64] = mem[64] + 128
            mem[_461] = 0
            mem[_461 + 32] = 0
            mem[_461 + 64] = 0
            mem[_461 + 96] = 0
            mem[_454 + 128] = _461
            mem[_454 + 160] = 0
            mem[_454 + 192] = 0
            mem[_454 + 224] = 0
            mem[_454 + 256] = 0
            _463 = mem[64]
            mem[64] = mem[64] + 224
            mem[_463] = 0
            mem[_463 + 32] = 0
            mem[_463 + 64] = 0
            mem[_463 + 96] = 0
            mem[_463 + 128] = 0
            mem[_463 + 160] = 0
            _465 = mem[64]
            mem[64] = mem[64] + 352
            mem[_465] = 0
            mem[_465 + 32] = 0
            mem[_465 + 64] = 0
            mem[_465 + 96] = 0
            mem[_465 + 128] = 0
            mem[_465 + 160] = 0
            mem[_465 + 192] = 0
            mem[_465 + 224] = 0
            mem[_465 + 256] = 0
            mem[_465 + 288] = 0
            mem[_465 + 320] = 0
            mem[_463 + 192] = _465
            mem[_454 + 288] = _463
            require ext_code.size(stor0)
            staticcall stor0.0x969215ba with:
                    gas gas_remaining wei
                   args (idx + arg1)
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _479 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _483 = mem[_479]
            require mem[_479] == mem[_479 + 12 len 20]
            _490 = mem[_479 + 32]
            require mem[_479 + 32] == mem[_479 + 32]
            _498 = mem[_479 + 64]
            require mem[_479 + 64] == mem[_479 + 64]
            _503 = mem[_479 + 96]
            require mem[_479 + 96] == mem[_479 + 96]
            _510 = mem[_479 + 128]
            require mem[_479 + 128] == mem[_479 + 158 len 2]
            _516 = mem[_479 + 160]
            require mem[_479 + 160] == mem[_479 + 190 len 2]
            _521 = mem[_479 + 192]
            require mem[_479 + 192] == mem[_479 + 192]
            _527 = mem[_479 + 224]
            require mem[_479 + 224] == mem[_479 + 240 len 16]
            _533 = mem[64]
            mem[64] = mem[64] + 128
            mem[_533] = 0
            mem[_533 + 32] = 0
            mem[_533 + 64] = 0
            mem[_533 + 96] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _490
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _542 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _545 = mem[_542]
            require mem[_542] == mem[_542 + 30 len 2]
            _552 = mem[_542 + 32]
            require mem[_542 + 32] == mem[_542 + 62 len 2]
            mem[mem[64] + 4] = _490
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _490
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _567 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _570 = mem[_567]
            require mem[_567] == mem[_567]
            _576 = mem[64]
            mem[64] = mem[64] + 128
            mem[_576] = _490
            mem[_576 + 32] = _570
            mem[_576 + 64] = uint16(_545)
            mem[_576 + 96] = uint16(_552)
            _579 = mem[64]
            mem[64] = mem[64] + 128
            mem[_579] = 0
            mem[_579 + 32] = 0
            mem[_579 + 64] = 0
            mem[_579 + 96] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _498
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _589 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _592 = mem[_589]
            require mem[_589] == mem[_589 + 30 len 2]
            _599 = mem[_589 + 32]
            require mem[_589 + 32] == mem[_589 + 62 len 2]
            mem[mem[64] + 4] = _498
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _498
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _610 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _612 = mem[_610]
            require mem[_610] == mem[_610]
            _614 = mem[64]
            mem[64] = mem[64] + 128
            mem[_614] = _498
            mem[_614 + 32] = _612
            mem[_614 + 64] = uint16(_592)
            mem[_614 + 96] = uint16(_599)
            _616 = mem[64]
            mem[64] = mem[64] + 128
            mem[_616] = 0
            mem[_616 + 32] = 0
            mem[_616 + 64] = 0
            mem[_616 + 96] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _503
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _621 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _623 = mem[_621]
            require mem[_621] == mem[_621 + 30 len 2]
            _632 = mem[_621 + 32]
            require mem[_621 + 32] == mem[_621 + 62 len 2]
            mem[mem[64] + 4] = _503
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _503
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _647 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _650 = mem[_647]
            require mem[_647] == mem[_647]
            _654 = mem[64]
            mem[64] = mem[64] + 128
            mem[_654] = _503
            mem[_654 + 32] = _650
            mem[_654 + 64] = uint16(_623)
            mem[_654 + 96] = uint16(_632)
            _660 = mem[64]
            mem[64] = mem[64] + 224
            mem[_660] = 0
            mem[_660 + 32] = 0
            mem[_660 + 64] = 0
            mem[_660 + 96] = 0
            mem[_660 + 128] = 0
            mem[_660 + 160] = 0
            _662 = mem[64]
            mem[64] = mem[64] + 352
            mem[_662] = 0
            mem[_662 + 32] = 0
            mem[_662 + 64] = 0
            mem[_662 + 96] = 0
            mem[_662 + 128] = 0
            mem[_662 + 160] = 0
            mem[_662 + 192] = 0
            mem[_662 + 224] = 0
            mem[_662 + 256] = 0
            mem[_662 + 288] = 0
            mem[_662 + 320] = 0
            mem[_660 + 192] = _662
            require ext_code.size(stor0)
            staticcall stor0.0xf0344e36 with:
                    gas gas_remaining wei
                   args _521
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _672 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _675 = mem[_672]
            require mem[_672] == mem[_672]
            _683 = mem[_672 + 32]
            require mem[_672 + 32] == mem[_672 + 48 len 16]
            _690 = mem[_672 + 64]
            require mem[_672 + 64] == mem[_672 + 80 len 16]
            _696 = mem[_672 + 96]
            require mem[_672 + 96] == mem[_672 + 124 len 4]
            _701 = mem[_672 + 128]
            require mem[_672 + 128] == mem[_672 + 156 len 4]
            _706 = mem[_672 + 160]
            require mem[_672 + 160] == mem[_672 + 188 len 4]
            _714 = mem[64]
            mem[64] = mem[64] + 352
            mem[_714] = 0
            mem[_714 + 32] = 0
            mem[_714 + 64] = 0
            mem[_714 + 96] = 0
            mem[_714 + 128] = 0
            mem[_714 + 160] = 0
            mem[_714 + 192] = 0
            mem[_714 + 224] = 0
            mem[_714 + 256] = 0
            mem[_714 + 288] = 0
            mem[_714 + 320] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x183ce75d with:
                    gas gas_remaining wei
                   args _521
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _723 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _725 = mem[_723]
            require mem[_723] == mem[_723]
            _734 = mem[_723 + 32]
            require mem[_723 + 32] == mem[_723 + 60 len 4]
            _741 = mem[_723 + 64]
            require mem[_723 + 64] == mem[_723 + 92 len 4]
            _746 = mem[_723 + 96]
            require mem[_723 + 96] == mem[_723 + 124 len 4]
            _752 = mem[_723 + 128]
            require mem[_723 + 128] == mem[_723 + 128]
            _758 = mem[_723 + 160]
            require mem[_723 + 160] == mem[_723 + 160]
            _763 = mem[_723 + 192]
            require mem[_723 + 192] == mem[_723 + 192]
            _768 = mem[_723 + 224]
            require mem[_723 + 224] == mem[_723 + 224]
            require ext_code.size(stor0)
            staticcall stor0.0xf769a0c with:
                    gas gas_remaining wei
                   args _521
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _773 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _774 = mem[_773]
            require mem[_773] == mem[_773 + 30 len 2]
            _776 = mem[_773 + 32]
            require mem[_773 + 32] == mem[_773 + 62 len 2]
            if _758 > 0:
                _780 = mem[64]
                mem[64] = mem[64] + 352
                mem[_780] = _725
                mem[_780 + 32] = uint32(_734)
                mem[_780 + 64] = uint32(_741)
                mem[_780 + 96] = uint32(_746)
                mem[_780 + 128] = _752
                mem[_780 + 160] = _758
                mem[_780 + 192] = _763
                mem[_780 + 224] = _768
                mem[_780 + 256] = uint16(_774)
                mem[_780 + 288] = uint16(_776)
                mem[_780 + 320] = 4
                _781 = mem[64]
                mem[64] = mem[64] + 224
                mem[_781] = _675
                mem[_781 + 32] = uint128(_683)
                mem[_781 + 64] = uint128(_690)
                mem[_781 + 96] = uint32(_696)
                mem[_781 + 128] = uint32(_701)
                mem[_781 + 160] = uint32(_706)
                mem[_781 + 192] = _780
                _783 = mem[64]
                mem[64] = mem[64] + 320
                mem[_783] = idx + arg1
                mem[_783 + 32] = address(_483)
                mem[_783 + 64] = _576
                mem[_783 + 96] = _614
                mem[_783 + 128] = _654
                mem[_783 + 160] = uint16(_510)
                mem[_783 + 192] = uint16(_516)
                mem[_783 + 224] = _521
                mem[_783 + 256] = uint128(_527)
                mem[_783 + 288] = _781
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _783
            else:
                if _768 > 0:
                    _782 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_782] = _725
                    mem[_782 + 32] = uint32(_734)
                    mem[_782 + 64] = uint32(_741)
                    mem[_782 + 96] = uint32(_746)
                    mem[_782 + 128] = _752
                    mem[_782 + 160] = _758
                    mem[_782 + 192] = _763
                    mem[_782 + 224] = _768
                    mem[_782 + 256] = uint16(_774)
                    mem[_782 + 288] = uint16(_776)
                    mem[_782 + 320] = 3
                    _784 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_784] = _675
                    mem[_784 + 32] = uint128(_683)
                    mem[_784 + 64] = uint128(_690)
                    mem[_784 + 96] = uint32(_696)
                    mem[_784 + 128] = uint32(_701)
                    mem[_784 + 160] = uint32(_706)
                    mem[_784 + 192] = _782
                    _787 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_787] = idx + arg1
                    mem[_787 + 32] = address(_483)
                    mem[_787 + 64] = _576
                    mem[_787 + 96] = _614
                    mem[_787 + 128] = _654
                    mem[_787 + 160] = uint16(_510)
                    mem[_787 + 192] = uint16(_516)
                    mem[_787 + 224] = _521
                    mem[_787 + 256] = uint128(_527)
                    mem[_787 + 288] = _784
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _787
                else:
                    if _752 > 0:
                        _786 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_786] = _725
                        mem[_786 + 32] = uint32(_734)
                        mem[_786 + 64] = uint32(_741)
                        mem[_786 + 96] = uint32(_746)
                        mem[_786 + 128] = _752
                        mem[_786 + 160] = _758
                        mem[_786 + 192] = _763
                        mem[_786 + 224] = _768
                        mem[_786 + 256] = uint16(_774)
                        mem[_786 + 288] = uint16(_776)
                        mem[_786 + 320] = 2
                        _790 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_790] = _675
                        mem[_790 + 32] = uint128(_683)
                        mem[_790 + 64] = uint128(_690)
                        mem[_790 + 96] = uint32(_696)
                        mem[_790 + 128] = uint32(_701)
                        mem[_790 + 160] = uint32(_706)
                        mem[_790 + 192] = _786
                        _794 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_794] = idx + arg1
                        mem[_794 + 32] = address(_483)
                        mem[_794 + 64] = _576
                        mem[_794 + 96] = _614
                        mem[_794 + 128] = _654
                        mem[_794 + 160] = uint16(_510)
                        mem[_794 + 192] = uint16(_516)
                        mem[_794 + 224] = _521
                        mem[_794 + 256] = uint128(_527)
                        mem[_794 + 288] = _790
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _794
                    else:
                        if _763 <= 0:
                            _789 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_789] = _725
                            mem[_789 + 32] = uint32(_734)
                            mem[_789 + 64] = uint32(_741)
                            mem[_789 + 96] = uint32(_746)
                            mem[_789 + 128] = _752
                            mem[_789 + 160] = _758
                            mem[_789 + 192] = _763
                            mem[_789 + 224] = _768
                            mem[_789 + 256] = uint16(_774)
                            mem[_789 + 288] = uint16(_776)
                            mem[_789 + 320] = 0
                            _792 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_792] = _675
                            mem[_792 + 32] = uint128(_683)
                            mem[_792 + 64] = uint128(_690)
                            mem[_792 + 96] = uint32(_696)
                            mem[_792 + 128] = uint32(_701)
                            mem[_792 + 160] = uint32(_706)
                            mem[_792 + 192] = _789
                            _795 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_795] = idx + arg1
                            mem[_795 + 32] = address(_483)
                            mem[_795 + 64] = _576
                            mem[_795 + 96] = _614
                            mem[_795 + 128] = _654
                            mem[_795 + 160] = uint16(_510)
                            mem[_795 + 192] = uint16(_516)
                            mem[_795 + 224] = _521
                            mem[_795 + 256] = uint128(_527)
                            mem[_795 + 288] = _792
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _795
                        else:
                            _793 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_793] = _725
                            mem[_793 + 32] = uint32(_734)
                            mem[_793 + 64] = uint32(_741)
                            mem[_793 + 96] = uint32(_746)
                            mem[_793 + 128] = _752
                            mem[_793 + 160] = _758
                            mem[_793 + 192] = _763
                            mem[_793 + 224] = _768
                            mem[_793 + 256] = uint16(_774)
                            mem[_793 + 288] = uint16(_776)
                            mem[_793 + 320] = 1
                            _796 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_796] = _675
                            mem[_796 + 32] = uint128(_683)
                            mem[_796 + 64] = uint128(_690)
                            mem[_796 + 96] = uint32(_696)
                            mem[_796 + 128] = uint32(_701)
                            mem[_796 + 160] = uint32(_706)
                            mem[_796 + 192] = _793
                            _799 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_799] = idx + arg1
                            mem[_799 + 32] = address(_483)
                            mem[_799 + 64] = _576
                            mem[_799 + 96] = _614
                            mem[_799 + 128] = _654
                            mem[_799 + 160] = uint16(_510)
                            mem[_799 + 192] = uint16(_516)
                            mem[_799 + 224] = _521
                            mem[_799 + 256] = uint128(_527)
                            mem[_799 + 288] = _796
                            if idx >= mem[96]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + 128] = _799
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _448 = mem[64]
        mem[mem[64]] = 32
        _451 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _451:
            _626 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_626 + 44 len 20]
            _639 = mem[_626 + 64]
            mem[t + 64] = mem[mem[_626 + 64]]
            mem[t + 96] = mem[_639 + 32]
            mem[t + 128] = mem[_639 + 94 len 2]
            mem[t + 160] = mem[_639 + 126 len 2]
            _655 = mem[_626 + 96]
            mem[t + 192] = mem[mem[_626 + 96]]
            mem[t + 224] = mem[_655 + 32]
            mem[t + 256] = mem[_655 + 94 len 2]
            mem[t + 288] = mem[_655 + 126 len 2]
            _677 = mem[_626 + 128]
            mem[t + 320] = mem[mem[_626 + 128]]
            mem[t + 352] = mem[_677 + 32]
            mem[t + 384] = mem[_677 + 94 len 2]
            mem[t + 416] = mem[_677 + 126 len 2]
            mem[t + 448] = mem[_626 + 190 len 2]
            mem[t + 480] = mem[_626 + 222 len 2]
            mem[t + 512] = mem[_626 + 224]
            mem[t + 544] = mem[_626 + 272 len 16]
            _707 = mem[_626 + 288]
            mem[t + 576] = mem[mem[_626 + 288]]
            mem[t + 608] = mem[_707 + 48 len 16]
            mem[t + 640] = mem[_707 + 80 len 16]
            mem[t + 672] = mem[_707 + 124 len 4]
            mem[t + 704] = mem[_707 + 156 len 4]
            mem[t + 736] = mem[_707 + 188 len 4]
            _730 = mem[_707 + 192]
            mem[t + 768] = mem[mem[_707 + 192]]
            mem[t + 800] = mem[_730 + 60 len 4]
            mem[t + 832] = mem[_730 + 92 len 4]
            mem[t + 864] = mem[_730 + 124 len 4]
            mem[t + 896] = mem[_730 + 128]
            mem[t + 928] = mem[_730 + 160]
            mem[t + 960] = mem[_730 + 192]
            mem[t + 992] = mem[_730 + 224]
            mem[t + 1024] = mem[_730 + 286 len 2]
            mem[t + 1056] = mem[_730 + 318 len 2]
            mem[t + 1088] = mem[_730 + 351 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 1120
            continue 
        return memory
          from mem[64]
           len _448 + (1120 * _451) + -mem[64] + 64
    mem[(32 * arg2 - arg1) + 128] = 0
    mem[(32 * arg2 - arg1) + 160] = 0
    mem[(32 * arg2 - arg1) + 448] = 0
    mem[(32 * arg2 - arg1) + 480] = 0
    mem[(32 * arg2 - arg1) + 512] = 0
    mem[(32 * arg2 - arg1) + 544] = 0
    mem[(32 * arg2 - arg1) + 192] = (32 * arg2 - arg1) + 448
    mem[(32 * arg2 - arg1) + 576] = 0
    mem[(32 * arg2 - arg1) + 608] = 0
    mem[(32 * arg2 - arg1) + 640] = 0
    mem[(32 * arg2 - arg1) + 672] = 0
    mem[(32 * arg2 - arg1) + 224] = (32 * arg2 - arg1) + 576
    mem[(32 * arg2 - arg1) + 704] = 0
    mem[(32 * arg2 - arg1) + 736] = 0
    mem[(32 * arg2 - arg1) + 768] = 0
    mem[(32 * arg2 - arg1) + 800] = 0
    mem[(32 * arg2 - arg1) + 256] = (32 * arg2 - arg1) + 704
    mem[(32 * arg2 - arg1) + 288] = 0
    mem[(32 * arg2 - arg1) + 320] = 0
    mem[(32 * arg2 - arg1) + 352] = 0
    mem[(32 * arg2 - arg1) + 384] = 0
    mem[(32 * arg2 - arg1) + 832] = 0
    mem[(32 * arg2 - arg1) + 864] = 0
    mem[(32 * arg2 - arg1) + 896] = 0
    mem[(32 * arg2 - arg1) + 928] = 0
    mem[(32 * arg2 - arg1) + 960] = 0
    mem[(32 * arg2 - arg1) + 992] = 0
    mem[64] = (32 * arg2 - arg1) + 1408
    mem[(32 * arg2 - arg1) + 1056] = 0
    mem[(32 * arg2 - arg1) + 1088] = 0
    mem[(32 * arg2 - arg1) + 1120] = 0
    mem[(32 * arg2 - arg1) + 1152] = 0
    mem[(32 * arg2 - arg1) + 1184] = 0
    mem[(32 * arg2 - arg1) + 1216] = 0
    mem[(32 * arg2 - arg1) + 1248] = 0
    mem[(32 * arg2 - arg1) + 1280] = 0
    mem[(32 * arg2 - arg1) + 1312] = 0
    mem[(32 * arg2 - arg1) + 1344] = 0
    mem[(32 * arg2 - arg1) + 1376] = 0
    mem[(32 * arg2 - arg1) + 1024] = (32 * arg2 - arg1) + 1056
    mem[(32 * arg2 - arg1) + 416] = (32 * arg2 - arg1) + 832
    mem[var44002] = (32 * arg2 - arg1) + 128
    s = (32 * arg2 - arg1) + 192
    s = (32 * arg2 - arg1) + 128
    s = var44002
    idx = var44003
    while idx - 1:
        _457 = mem[64]
        mem[64] = mem[64] + 320
        mem[_457] = 0
        mem[_457 + 32] = 0
        mem[64] = mem[64] + 128
        mem[(32 * arg2 - arg1) + 448] = 0
        mem[(32 * arg2 - arg1) + 480] = 0
        mem[(32 * arg2 - arg1) + 512] = 0
        mem[(32 * arg2 - arg1) + 544] = 0
        mem[_457 + 64] = (32 * arg2 - arg1) + 448
        mem[64] = mem[64] + 128
        mem[(32 * arg2 - arg1) + 576] = 0
        mem[(32 * arg2 - arg1) + 608] = 0
        mem[(32 * arg2 - arg1) + 640] = 0
        mem[(32 * arg2 - arg1) + 672] = 0
        mem[_457 + 96] = (32 * arg2 - arg1) + 576
        mem[64] = mem[64] + 128
        mem[(32 * arg2 - arg1) + 704] = 0
        mem[(32 * arg2 - arg1) + 736] = 0
        mem[(32 * arg2 - arg1) + 768] = 0
        mem[(32 * arg2 - arg1) + 800] = 0
        mem[_457 + 128] = (32 * arg2 - arg1) + 704
        mem[_457 + 160] = 0
        mem[_457 + 192] = 0
        mem[_457 + 224] = 0
        mem[_457 + 256] = 0
        mem[64] = mem[64] + 224
        mem[(32 * arg2 - arg1) + 832] = 0
        mem[(32 * arg2 - arg1) + 864] = 0
        mem[(32 * arg2 - arg1) + 896] = 0
        mem[(32 * arg2 - arg1) + 928] = 0
        mem[(32 * arg2 - arg1) + 960] = 0
        mem[(32 * arg2 - arg1) + 992] = 0
        mem[64] = mem[64] + 352
        mem[(32 * arg2 - arg1) + 1056] = 0
        mem[(32 * arg2 - arg1) + 1088] = 0
        mem[(32 * arg2 - arg1) + 1120] = 0
        mem[(32 * arg2 - arg1) + 1152] = 0
        mem[(32 * arg2 - arg1) + 1184] = 0
        mem[(32 * arg2 - arg1) + 1216] = 0
        mem[(32 * arg2 - arg1) + 1248] = 0
        mem[(32 * arg2 - arg1) + 1280] = 0
        mem[(32 * arg2 - arg1) + 1312] = 0
        mem[(32 * arg2 - arg1) + 1344] = 0
        mem[(32 * arg2 - arg1) + 1376] = 0
        mem[(32 * arg2 - arg1) + 1024] = (32 * arg2 - arg1) + 1056
        mem[_457 + 288] = (32 * arg2 - arg1) + 832
        mem[s + 32] = _457
        s = _457 + 64
        s = _457
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg2 - arg1:
        if idx > -arg1 - 1:
            revert with 'NH{q', 17
        _823 = mem[64]
        mem[64] = mem[64] + 320
        mem[_823] = 0
        mem[_823 + 32] = 0
        _824 = mem[64]
        mem[64] = mem[64] + 128
        mem[_824] = 0
        mem[_824 + 32] = 0
        mem[_824 + 64] = 0
        mem[_824 + 96] = 0
        mem[_823 + 64] = _824
        _826 = mem[64]
        mem[64] = mem[64] + 128
        mem[_826] = 0
        mem[_826 + 32] = 0
        mem[_826 + 64] = 0
        mem[_826 + 96] = 0
        mem[_823 + 96] = _826
        _829 = mem[64]
        mem[64] = mem[64] + 128
        mem[_829] = 0
        mem[_829 + 32] = 0
        mem[_829 + 64] = 0
        mem[_829 + 96] = 0
        mem[_823 + 128] = _829
        mem[_823 + 160] = 0
        mem[_823 + 192] = 0
        mem[_823 + 224] = 0
        mem[_823 + 256] = 0
        _830 = mem[64]
        mem[64] = mem[64] + 224
        mem[_830] = 0
        mem[_830 + 32] = 0
        mem[_830 + 64] = 0
        mem[_830 + 96] = 0
        mem[_830 + 128] = 0
        mem[_830 + 160] = 0
        _832 = mem[64]
        mem[64] = mem[64] + 352
        mem[_832] = 0
        mem[_832 + 32] = 0
        mem[_832 + 64] = 0
        mem[_832 + 96] = 0
        mem[_832 + 128] = 0
        mem[_832 + 160] = 0
        mem[_832 + 192] = 0
        mem[_832 + 224] = 0
        mem[_832 + 256] = 0
        mem[_832 + 288] = 0
        mem[_832 + 320] = 0
        mem[_830 + 192] = _832
        mem[_823 + 288] = _830
        require ext_code.size(stor0)
        staticcall stor0.0x969215ba with:
                gas gas_remaining wei
               args (idx + arg1)
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _838 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _839 = mem[_838]
        require mem[_838] == mem[_838 + 12 len 20]
        _842 = mem[_838 + 32]
        require mem[_838 + 32] == mem[_838 + 32]
        _846 = mem[_838 + 64]
        require mem[_838 + 64] == mem[_838 + 64]
        _849 = mem[_838 + 96]
        require mem[_838 + 96] == mem[_838 + 96]
        _852 = mem[_838 + 128]
        require mem[_838 + 128] == mem[_838 + 158 len 2]
        _855 = mem[_838 + 160]
        require mem[_838 + 160] == mem[_838 + 190 len 2]
        _857 = mem[_838 + 192]
        require mem[_838 + 192] == mem[_838 + 192]
        _860 = mem[_838 + 224]
        require mem[_838 + 224] == mem[_838 + 240 len 16]
        _863 = mem[64]
        mem[64] = mem[64] + 128
        mem[_863] = 0
        mem[_863 + 32] = 0
        mem[_863 + 64] = 0
        mem[_863 + 96] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _842
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _869 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _871 = mem[_869]
        require mem[_869] == mem[_869 + 30 len 2]
        _874 = mem[_869 + 32]
        require mem[_869 + 32] == mem[_869 + 62 len 2]
        mem[mem[64] + 4] = _842
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _842
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _881 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _883 = mem[_881]
        require mem[_881] == mem[_881]
        _886 = mem[64]
        mem[64] = mem[64] + 128
        mem[_886] = _842
        mem[_886 + 32] = _883
        mem[_886 + 64] = uint16(_871)
        mem[_886 + 96] = uint16(_874)
        _887 = mem[64]
        mem[64] = mem[64] + 128
        mem[_887] = 0
        mem[_887 + 32] = 0
        mem[_887 + 64] = 0
        mem[_887 + 96] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _846
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _893 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _894 = mem[_893]
        require mem[_893] == mem[_893 + 30 len 2]
        _897 = mem[_893 + 32]
        require mem[_893 + 32] == mem[_893 + 62 len 2]
        mem[mem[64] + 4] = _846
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _846
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _901 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _902 = mem[_901]
        require mem[_901] == mem[_901]
        _903 = mem[64]
        mem[64] = mem[64] + 128
        mem[_903] = _846
        mem[_903 + 32] = _902
        mem[_903 + 64] = uint16(_894)
        mem[_903 + 96] = uint16(_897)
        _904 = mem[64]
        mem[64] = mem[64] + 128
        mem[_904] = 0
        mem[_904 + 32] = 0
        mem[_904 + 64] = 0
        mem[_904 + 96] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _849
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _907 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _908 = mem[_907]
        require mem[_907] == mem[_907 + 30 len 2]
        _912 = mem[_907 + 32]
        require mem[_907 + 32] == mem[_907 + 62 len 2]
        mem[mem[64] + 4] = _849
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _849
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _919 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _921 = mem[_919]
        require mem[_919] == mem[_919]
        _923 = mem[64]
        mem[64] = mem[64] + 128
        mem[_923] = _849
        mem[_923 + 32] = _921
        mem[_923 + 64] = uint16(_908)
        mem[_923 + 96] = uint16(_912)
        _926 = mem[64]
        mem[64] = mem[64] + 224
        mem[_926] = 0
        mem[_926 + 32] = 0
        mem[_926 + 64] = 0
        mem[_926 + 96] = 0
        mem[_926 + 128] = 0
        mem[_926 + 160] = 0
        _927 = mem[64]
        mem[64] = mem[64] + 352
        mem[_927] = 0
        mem[_927 + 32] = 0
        mem[_927 + 64] = 0
        mem[_927 + 96] = 0
        mem[_927 + 128] = 0
        mem[_927 + 160] = 0
        mem[_927 + 192] = 0
        mem[_927 + 224] = 0
        mem[_927 + 256] = 0
        mem[_927 + 288] = 0
        mem[_927 + 320] = 0
        mem[_926 + 192] = _927
        require ext_code.size(stor0)
        staticcall stor0.0xf0344e36 with:
                gas gas_remaining wei
               args _857
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _933 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _934 = mem[_933]
        require mem[_933] == mem[_933]
        _938 = mem[_933 + 32]
        require mem[_933 + 32] == mem[_933 + 48 len 16]
        _940 = mem[_933 + 64]
        require mem[_933 + 64] == mem[_933 + 80 len 16]
        _943 = mem[_933 + 96]
        require mem[_933 + 96] == mem[_933 + 124 len 4]
        _946 = mem[_933 + 128]
        require mem[_933 + 128] == mem[_933 + 156 len 4]
        _948 = mem[_933 + 160]
        require mem[_933 + 160] == mem[_933 + 188 len 4]
        _952 = mem[64]
        mem[64] = mem[64] + 352
        mem[_952] = 0
        mem[_952 + 32] = 0
        mem[_952 + 64] = 0
        mem[_952 + 96] = 0
        mem[_952 + 128] = 0
        mem[_952 + 160] = 0
        mem[_952 + 192] = 0
        mem[_952 + 224] = 0
        mem[_952 + 256] = 0
        mem[_952 + 288] = 0
        mem[_952 + 320] = 0
        require ext_code.size(stor0)
        staticcall stor0.0x183ce75d with:
                gas gas_remaining wei
               args _857
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _958 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _959 = mem[_958]
        require mem[_958] == mem[_958]
        _963 = mem[_958 + 32]
        require mem[_958 + 32] == mem[_958 + 60 len 4]
        _966 = mem[_958 + 64]
        require mem[_958 + 64] == mem[_958 + 92 len 4]
        _968 = mem[_958 + 96]
        require mem[_958 + 96] == mem[_958 + 124 len 4]
        _971 = mem[_958 + 128]
        require mem[_958 + 128] == mem[_958 + 128]
        _974 = mem[_958 + 160]
        require mem[_958 + 160] == mem[_958 + 160]
        _977 = mem[_958 + 192]
        require mem[_958 + 192] == mem[_958 + 192]
        _979 = mem[_958 + 224]
        require mem[_958 + 224] == mem[_958 + 224]
        require ext_code.size(stor0)
        staticcall stor0.0xf769a0c with:
                gas gas_remaining wei
               args _857
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _982 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _983 = mem[_982]
        require mem[_982] == mem[_982 + 30 len 2]
        _984 = mem[_982 + 32]
        require mem[_982 + 32] == mem[_982 + 62 len 2]
        if _974 > 0:
            _985 = mem[64]
            mem[64] = mem[64] + 352
            mem[_985] = _959
            mem[_985 + 32] = uint32(_963)
            mem[_985 + 64] = uint32(_966)
            mem[_985 + 96] = uint32(_968)
            mem[_985 + 128] = _971
            mem[_985 + 160] = _974
            mem[_985 + 192] = _977
            mem[_985 + 224] = _979
            mem[_985 + 256] = uint16(_983)
            mem[_985 + 288] = uint16(_984)
            mem[_985 + 320] = 4
            _986 = mem[64]
            mem[64] = mem[64] + 224
            mem[_986] = _934
            mem[_986 + 32] = uint128(_938)
            mem[_986 + 64] = uint128(_940)
            mem[_986 + 96] = uint32(_943)
            mem[_986 + 128] = uint32(_946)
            mem[_986 + 160] = uint32(_948)
            mem[_986 + 192] = _985
            _988 = mem[64]
            mem[64] = mem[64] + 320
            mem[_988] = idx + arg1
            mem[_988 + 32] = address(_839)
            mem[_988 + 64] = _886
            mem[_988 + 96] = _903
            mem[_988 + 128] = _923
            mem[_988 + 160] = uint16(_852)
            mem[_988 + 192] = uint16(_855)
            mem[_988 + 224] = _857
            mem[_988 + 256] = uint128(_860)
            mem[_988 + 288] = _986
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _988
        else:
            if _979 > 0:
                _987 = mem[64]
                mem[64] = mem[64] + 352
                mem[_987] = _959
                mem[_987 + 32] = uint32(_963)
                mem[_987 + 64] = uint32(_966)
                mem[_987 + 96] = uint32(_968)
                mem[_987 + 128] = _971
                mem[_987 + 160] = _974
                mem[_987 + 192] = _977
                mem[_987 + 224] = _979
                mem[_987 + 256] = uint16(_983)
                mem[_987 + 288] = uint16(_984)
                mem[_987 + 320] = 3
                _989 = mem[64]
                mem[64] = mem[64] + 224
                mem[_989] = _934
                mem[_989 + 32] = uint128(_938)
                mem[_989 + 64] = uint128(_940)
                mem[_989 + 96] = uint32(_943)
                mem[_989 + 128] = uint32(_946)
                mem[_989 + 160] = uint32(_948)
                mem[_989 + 192] = _987
                _992 = mem[64]
                mem[64] = mem[64] + 320
                mem[_992] = idx + arg1
                mem[_992 + 32] = address(_839)
                mem[_992 + 64] = _886
                mem[_992 + 96] = _903
                mem[_992 + 128] = _923
                mem[_992 + 160] = uint16(_852)
                mem[_992 + 192] = uint16(_855)
                mem[_992 + 224] = _857
                mem[_992 + 256] = uint128(_860)
                mem[_992 + 288] = _989
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = _992
            else:
                if _971 > 0:
                    _991 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_991] = _959
                    mem[_991 + 32] = uint32(_963)
                    mem[_991 + 64] = uint32(_966)
                    mem[_991 + 96] = uint32(_968)
                    mem[_991 + 128] = _971
                    mem[_991 + 160] = _974
                    mem[_991 + 192] = _977
                    mem[_991 + 224] = _979
                    mem[_991 + 256] = uint16(_983)
                    mem[_991 + 288] = uint16(_984)
                    mem[_991 + 320] = 2
                    _994 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_994] = _934
                    mem[_994 + 32] = uint128(_938)
                    mem[_994 + 64] = uint128(_940)
                    mem[_994 + 96] = uint32(_943)
                    mem[_994 + 128] = uint32(_946)
                    mem[_994 + 160] = uint32(_948)
                    mem[_994 + 192] = _991
                    _998 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_998] = idx + arg1
                    mem[_998 + 32] = address(_839)
                    mem[_998 + 64] = _886
                    mem[_998 + 96] = _903
                    mem[_998 + 128] = _923
                    mem[_998 + 160] = uint16(_852)
                    mem[_998 + 192] = uint16(_855)
                    mem[_998 + 224] = _857
                    mem[_998 + 256] = uint128(_860)
                    mem[_998 + 288] = _994
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _998
                else:
                    if _977 <= 0:
                        _993 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_993] = _959
                        mem[_993 + 32] = uint32(_963)
                        mem[_993 + 64] = uint32(_966)
                        mem[_993 + 96] = uint32(_968)
                        mem[_993 + 128] = _971
                        mem[_993 + 160] = _974
                        mem[_993 + 192] = _977
                        mem[_993 + 224] = _979
                        mem[_993 + 256] = uint16(_983)
                        mem[_993 + 288] = uint16(_984)
                        mem[_993 + 320] = 0
                        _996 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_996] = _934
                        mem[_996 + 32] = uint128(_938)
                        mem[_996 + 64] = uint128(_940)
                        mem[_996 + 96] = uint32(_943)
                        mem[_996 + 128] = uint32(_946)
                        mem[_996 + 160] = uint32(_948)
                        mem[_996 + 192] = _993
                        _999 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_999] = idx + arg1
                        mem[_999 + 32] = address(_839)
                        mem[_999 + 64] = _886
                        mem[_999 + 96] = _903
                        mem[_999 + 128] = _923
                        mem[_999 + 160] = uint16(_852)
                        mem[_999 + 192] = uint16(_855)
                        mem[_999 + 224] = _857
                        mem[_999 + 256] = uint128(_860)
                        mem[_999 + 288] = _996
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _999
                    else:
                        _997 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_997] = _959
                        mem[_997 + 32] = uint32(_963)
                        mem[_997 + 64] = uint32(_966)
                        mem[_997 + 96] = uint32(_968)
                        mem[_997 + 128] = _971
                        mem[_997 + 160] = _974
                        mem[_997 + 192] = _977
                        mem[_997 + 224] = _979
                        mem[_997 + 256] = uint16(_983)
                        mem[_997 + 288] = uint16(_984)
                        mem[_997 + 320] = 1
                        _1000 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1000] = _934
                        mem[_1000 + 32] = uint128(_938)
                        mem[_1000 + 64] = uint128(_940)
                        mem[_1000 + 96] = uint32(_943)
                        mem[_1000 + 128] = uint32(_946)
                        mem[_1000 + 160] = uint32(_948)
                        mem[_1000 + 192] = _997
                        _1003 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_1003] = idx + arg1
                        mem[_1003 + 32] = address(_839)
                        mem[_1003 + 64] = _886
                        mem[_1003 + 96] = _903
                        mem[_1003 + 128] = _923
                        mem[_1003 + 160] = uint16(_852)
                        mem[_1003 + 192] = uint16(_855)
                        mem[_1003 + 224] = _857
                        mem[_1003 + 256] = uint128(_860)
                        mem[_1003 + 288] = _1000
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + 128] = _1003
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _821 = mem[64]
    mem[mem[64]] = 32
    _822 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _822:
        _909 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_909 + 44 len 20]
        _915 = mem[_909 + 64]
        mem[t + 64] = mem[mem[_909 + 64]]
        mem[t + 96] = mem[_915 + 32]
        mem[t + 128] = mem[_915 + 94 len 2]
        mem[t + 160] = mem[_915 + 126 len 2]
        _924 = mem[_909 + 96]
        mem[t + 192] = mem[mem[_909 + 96]]
        mem[t + 224] = mem[_924 + 32]
        mem[t + 256] = mem[_924 + 94 len 2]
        mem[t + 288] = mem[_924 + 126 len 2]
        _935 = mem[_909 + 128]
        mem[t + 320] = mem[mem[_909 + 128]]
        mem[t + 352] = mem[_935 + 32]
        mem[t + 384] = mem[_935 + 94 len 2]
        mem[t + 416] = mem[_935 + 126 len 2]
        mem[t + 448] = mem[_909 + 190 len 2]
        mem[t + 480] = mem[_909 + 222 len 2]
        mem[t + 512] = mem[_909 + 224]
        mem[t + 544] = mem[_909 + 272 len 16]
        _949 = mem[_909 + 288]
        mem[t + 576] = mem[mem[_909 + 288]]
        mem[t + 608] = mem[_949 + 48 len 16]
        mem[t + 640] = mem[_949 + 80 len 16]
        mem[t + 672] = mem[_949 + 124 len 4]
        mem[t + 704] = mem[_949 + 156 len 4]
        mem[t + 736] = mem[_949 + 188 len 4]
        _961 = mem[_949 + 192]
        mem[t + 768] = mem[mem[_949 + 192]]
        mem[t + 800] = mem[_961 + 60 len 4]
        mem[t + 832] = mem[_961 + 92 len 4]
        mem[t + 864] = mem[_961 + 124 len 4]
        mem[t + 896] = mem[_961 + 128]
        mem[t + 928] = mem[_961 + 160]
        mem[t + 960] = mem[_961 + 192]
        mem[t + 992] = mem[_961 + 224]
        mem[t + 1024] = mem[_961 + 286 len 2]
        mem[t + 1056] = mem[_961 + 318 len 2]
        mem[t + 1088] = mem[_961 + 351 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 1120
        continue 
    return memory
      from mem[64]
       len _821 + (1120 * _822) + -mem[64] + 64
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
            _548 = mem[(32 * idx) + 128]
            _550 = mem[64]
            mem[64] = mem[64] + 320
            mem[_550] = 0
            mem[_550 + 32] = 0
            _552 = mem[64]
            mem[64] = mem[64] + 128
            mem[_552] = 0
            mem[_552 + 32] = 0
            mem[_552 + 64] = 0
            mem[_552 + 96] = 0
            mem[_550 + 64] = _552
            _554 = mem[64]
            mem[64] = mem[64] + 128
            mem[_554] = 0
            mem[_554 + 32] = 0
            mem[_554 + 64] = 0
            mem[_554 + 96] = 0
            mem[_550 + 96] = _554
            _557 = mem[64]
            mem[64] = mem[64] + 128
            mem[_557] = 0
            mem[_557 + 32] = 0
            mem[_557 + 64] = 0
            mem[_557 + 96] = 0
            mem[_550 + 128] = _557
            mem[_550 + 160] = 0
            mem[_550 + 192] = 0
            mem[_550 + 224] = 0
            mem[_550 + 256] = 0
            _558 = mem[64]
            mem[64] = mem[64] + 224
            mem[_558] = 0
            mem[_558 + 32] = 0
            mem[_558 + 64] = 0
            mem[_558 + 96] = 0
            mem[_558 + 128] = 0
            mem[_558 + 160] = 0
            _560 = mem[64]
            mem[64] = mem[64] + 352
            mem[_560] = 0
            mem[_560 + 32] = 0
            mem[_560 + 64] = 0
            mem[_560 + 96] = 0
            mem[_560 + 128] = 0
            mem[_560 + 160] = 0
            mem[_560 + 192] = 0
            mem[_560 + 224] = 0
            mem[_560 + 256] = 0
            mem[_560 + 288] = 0
            mem[_560 + 320] = 0
            mem[_558 + 192] = _560
            mem[_550 + 288] = _558
            require ext_code.size(stor0)
            staticcall stor0.0x969215ba with:
                    gas gas_remaining wei
                   args _548
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _574 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _579 = mem[_574]
            require mem[_574] == mem[_574 + 12 len 20]
            _588 = mem[_574 + 32]
            require mem[_574 + 32] == mem[_574 + 32]
            _596 = mem[_574 + 64]
            require mem[_574 + 64] == mem[_574 + 64]
            _601 = mem[_574 + 96]
            require mem[_574 + 96] == mem[_574 + 96]
            _606 = mem[_574 + 128]
            require mem[_574 + 128] == mem[_574 + 158 len 2]
            _613 = mem[_574 + 160]
            require mem[_574 + 160] == mem[_574 + 190 len 2]
            _619 = mem[_574 + 192]
            require mem[_574 + 192] == mem[_574 + 192]
            _624 = mem[_574 + 224]
            require mem[_574 + 224] == mem[_574 + 240 len 16]
            _632 = mem[64]
            mem[64] = mem[64] + 128
            mem[_632] = 0
            mem[_632 + 32] = 0
            mem[_632 + 64] = 0
            mem[_632 + 96] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _588
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _641 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _643 = mem[_641]
            require mem[_641] == mem[_641 + 30 len 2]
            _650 = mem[_641 + 32]
            require mem[_641 + 32] == mem[_641 + 62 len 2]
            mem[mem[64] + 4] = _588
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _588
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _666 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _668 = mem[_666]
            require mem[_666] == mem[_666]
            _674 = mem[64]
            mem[64] = mem[64] + 128
            mem[_674] = _588
            mem[_674 + 32] = _668
            mem[_674 + 64] = uint16(_643)
            mem[_674 + 96] = uint16(_650)
            _677 = mem[64]
            mem[64] = mem[64] + 128
            mem[_677] = 0
            mem[_677 + 32] = 0
            mem[_677 + 64] = 0
            mem[_677 + 96] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _596
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _687 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _691 = mem[_687]
            require mem[_687] == mem[_687 + 30 len 2]
            _698 = mem[_687 + 32]
            require mem[_687 + 32] == mem[_687 + 62 len 2]
            mem[mem[64] + 4] = _596
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _596
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _711 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _712 = mem[_711]
            require mem[_711] == mem[_711]
            _716 = mem[64]
            mem[64] = mem[64] + 128
            mem[_716] = _596
            mem[_716 + 32] = _712
            mem[_716 + 64] = uint16(_691)
            mem[_716 + 96] = uint16(_698)
            _718 = mem[64]
            mem[64] = mem[64] + 128
            mem[_718] = 0
            mem[_718 + 32] = 0
            mem[_718 + 64] = 0
            mem[_718 + 96] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _601
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _723 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _725 = mem[_723]
            require mem[_723] == mem[_723 + 30 len 2]
            _728 = mem[_723 + 32]
            require mem[_723 + 32] == mem[_723 + 62 len 2]
            mem[mem[64] + 4] = _601
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _601
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _743 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _747 = mem[_743]
            require mem[_743] == mem[_743]
            _755 = mem[64]
            mem[64] = mem[64] + 128
            mem[_755] = _601
            mem[_755 + 32] = _747
            mem[_755 + 64] = uint16(_725)
            mem[_755 + 96] = uint16(_728)
            _760 = mem[64]
            mem[64] = mem[64] + 224
            mem[_760] = 0
            mem[_760 + 32] = 0
            mem[_760 + 64] = 0
            mem[_760 + 96] = 0
            mem[_760 + 128] = 0
            mem[_760 + 160] = 0
            _763 = mem[64]
            mem[64] = mem[64] + 352
            mem[_763] = 0
            mem[_763 + 32] = 0
            mem[_763 + 64] = 0
            mem[_763 + 96] = 0
            mem[_763 + 128] = 0
            mem[_763 + 160] = 0
            mem[_763 + 192] = 0
            mem[_763 + 224] = 0
            mem[_763 + 256] = 0
            mem[_763 + 288] = 0
            mem[_763 + 320] = 0
            mem[_760 + 192] = _763
            require ext_code.size(stor0)
            staticcall stor0.0xf0344e36 with:
                    gas gas_remaining wei
                   args _619
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _774 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _778 = mem[_774]
            require mem[_774] == mem[_774]
            _782 = mem[_774 + 32]
            require mem[_774 + 32] == mem[_774 + 48 len 16]
            _788 = mem[_774 + 64]
            require mem[_774 + 64] == mem[_774 + 80 len 16]
            _795 = mem[_774 + 96]
            require mem[_774 + 96] == mem[_774 + 124 len 4]
            _800 = mem[_774 + 128]
            require mem[_774 + 128] == mem[_774 + 156 len 4]
            _806 = mem[_774 + 160]
            require mem[_774 + 160] == mem[_774 + 188 len 4]
            _814 = mem[64]
            mem[64] = mem[64] + 352
            mem[_814] = 0
            mem[_814 + 32] = 0
            mem[_814 + 64] = 0
            mem[_814 + 96] = 0
            mem[_814 + 128] = 0
            mem[_814 + 160] = 0
            mem[_814 + 192] = 0
            mem[_814 + 224] = 0
            mem[_814 + 256] = 0
            mem[_814 + 288] = 0
            mem[_814 + 320] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x183ce75d with:
                    gas gas_remaining wei
                   args _619
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _822 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _825 = mem[_822]
            require mem[_822] == mem[_822]
            _832 = mem[_822 + 32]
            require mem[_822 + 32] == mem[_822 + 60 len 4]
            _839 = mem[_822 + 64]
            require mem[_822 + 64] == mem[_822 + 92 len 4]
            _845 = mem[_822 + 96]
            require mem[_822 + 96] == mem[_822 + 124 len 4]
            _851 = mem[_822 + 128]
            require mem[_822 + 128] == mem[_822 + 128]
            _856 = mem[_822 + 160]
            require mem[_822 + 160] == mem[_822 + 160]
            _864 = mem[_822 + 192]
            require mem[_822 + 192] == mem[_822 + 192]
            _870 = mem[_822 + 224]
            require mem[_822 + 224] == mem[_822 + 224]
            require ext_code.size(stor0)
            staticcall stor0.0xf769a0c with:
                    gas gas_remaining wei
                   args _619
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _882 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _884 = mem[_882]
            require mem[_882] == mem[_882 + 30 len 2]
            _888 = mem[_882 + 32]
            require mem[_882 + 32] == mem[_882 + 62 len 2]
            if _856 > 0:
                _892 = mem[64]
                mem[64] = mem[64] + 352
                mem[_892] = _825
                mem[_892 + 32] = uint32(_832)
                mem[_892 + 64] = uint32(_839)
                mem[_892 + 96] = uint32(_845)
                mem[_892 + 128] = _851
                mem[_892 + 160] = _856
                mem[_892 + 192] = _864
                mem[_892 + 224] = _870
                mem[_892 + 256] = uint16(_884)
                mem[_892 + 288] = uint16(_888)
                mem[_892 + 320] = 4
                _894 = mem[64]
                mem[64] = mem[64] + 224
                mem[_894] = _778
                mem[_894 + 32] = uint128(_782)
                mem[_894 + 64] = uint128(_788)
                mem[_894 + 96] = uint32(_795)
                mem[_894 + 128] = uint32(_800)
                mem[_894 + 160] = uint32(_806)
                mem[_894 + 192] = _892
                _896 = mem[64]
                mem[64] = mem[64] + 320
                mem[_896] = _548
                mem[_896 + 32] = address(_579)
                mem[_896 + 64] = _674
                mem[_896 + 96] = _716
                mem[_896 + 128] = _755
                mem[_896 + 160] = uint16(_606)
                mem[_896 + 192] = uint16(_613)
                mem[_896 + 224] = _619
                mem[_896 + 256] = uint128(_624)
                mem[_896 + 288] = _894
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _896
            else:
                if _870 > 0:
                    _895 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_895] = _825
                    mem[_895 + 32] = uint32(_832)
                    mem[_895 + 64] = uint32(_839)
                    mem[_895 + 96] = uint32(_845)
                    mem[_895 + 128] = _851
                    mem[_895 + 160] = _856
                    mem[_895 + 192] = _864
                    mem[_895 + 224] = _870
                    mem[_895 + 256] = uint16(_884)
                    mem[_895 + 288] = uint16(_888)
                    mem[_895 + 320] = 3
                    _897 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_897] = _778
                    mem[_897 + 32] = uint128(_782)
                    mem[_897 + 64] = uint128(_788)
                    mem[_897 + 96] = uint32(_795)
                    mem[_897 + 128] = uint32(_800)
                    mem[_897 + 160] = uint32(_806)
                    mem[_897 + 192] = _895
                    _901 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_901] = _548
                    mem[_901 + 32] = address(_579)
                    mem[_901 + 64] = _674
                    mem[_901 + 96] = _716
                    mem[_901 + 128] = _755
                    mem[_901 + 160] = uint16(_606)
                    mem[_901 + 192] = uint16(_613)
                    mem[_901 + 224] = _619
                    mem[_901 + 256] = uint128(_624)
                    mem[_901 + 288] = _897
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _901
                else:
                    if _851 > 0:
                        _900 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_900] = _825
                        mem[_900 + 32] = uint32(_832)
                        mem[_900 + 64] = uint32(_839)
                        mem[_900 + 96] = uint32(_845)
                        mem[_900 + 128] = _851
                        mem[_900 + 160] = _856
                        mem[_900 + 192] = _864
                        mem[_900 + 224] = _870
                        mem[_900 + 256] = uint16(_884)
                        mem[_900 + 288] = uint16(_888)
                        mem[_900 + 320] = 2
                        _903 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_903] = _778
                        mem[_903 + 32] = uint128(_782)
                        mem[_903 + 64] = uint128(_788)
                        mem[_903 + 96] = uint32(_795)
                        mem[_903 + 128] = uint32(_800)
                        mem[_903 + 160] = uint32(_806)
                        mem[_903 + 192] = _900
                        _907 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_907] = _548
                        mem[_907 + 32] = address(_579)
                        mem[_907 + 64] = _674
                        mem[_907 + 96] = _716
                        mem[_907 + 128] = _755
                        mem[_907 + 160] = uint16(_606)
                        mem[_907 + 192] = uint16(_613)
                        mem[_907 + 224] = _619
                        mem[_907 + 256] = uint128(_624)
                        mem[_907 + 288] = _903
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _907
                    else:
                        if _864 <= 0:
                            _902 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_902] = _825
                            mem[_902 + 32] = uint32(_832)
                            mem[_902 + 64] = uint32(_839)
                            mem[_902 + 96] = uint32(_845)
                            mem[_902 + 128] = _851
                            mem[_902 + 160] = _856
                            mem[_902 + 192] = _864
                            mem[_902 + 224] = _870
                            mem[_902 + 256] = uint16(_884)
                            mem[_902 + 288] = uint16(_888)
                            mem[_902 + 320] = 0
                            _905 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_905] = _778
                            mem[_905 + 32] = uint128(_782)
                            mem[_905 + 64] = uint128(_788)
                            mem[_905 + 96] = uint32(_795)
                            mem[_905 + 128] = uint32(_800)
                            mem[_905 + 160] = uint32(_806)
                            mem[_905 + 192] = _902
                            _908 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_908] = _548
                            mem[_908 + 32] = address(_579)
                            mem[_908 + 64] = _674
                            mem[_908 + 96] = _716
                            mem[_908 + 128] = _755
                            mem[_908 + 160] = uint16(_606)
                            mem[_908 + 192] = uint16(_613)
                            mem[_908 + 224] = _619
                            mem[_908 + 256] = uint128(_624)
                            mem[_908 + 288] = _905
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _908
                        else:
                            _906 = mem[64]
                            mem[64] = mem[64] + 352
                            mem[_906] = _825
                            mem[_906 + 32] = uint32(_832)
                            mem[_906 + 64] = uint32(_839)
                            mem[_906 + 96] = uint32(_845)
                            mem[_906 + 128] = _851
                            mem[_906 + 160] = _856
                            mem[_906 + 192] = _864
                            mem[_906 + 224] = _870
                            mem[_906 + 256] = uint16(_884)
                            mem[_906 + 288] = uint16(_888)
                            mem[_906 + 320] = 1
                            _909 = mem[64]
                            mem[64] = mem[64] + 224
                            mem[_909] = _778
                            mem[_909 + 32] = uint128(_782)
                            mem[_909 + 64] = uint128(_788)
                            mem[_909 + 96] = uint32(_795)
                            mem[_909 + 128] = uint32(_800)
                            mem[_909 + 160] = uint32(_806)
                            mem[_909 + 192] = _906
                            _912 = mem[64]
                            mem[64] = mem[64] + 320
                            mem[_912] = _548
                            mem[_912 + 32] = address(_579)
                            mem[_912 + 64] = _674
                            mem[_912 + 96] = _716
                            mem[_912 + 128] = _755
                            mem[_912 + 160] = uint16(_606)
                            mem[_912 + 192] = uint16(_613)
                            mem[_912 + 224] = _619
                            mem[_912 + 256] = uint128(_624)
                            mem[_912 + 288] = _909
                            if idx >= mem[floor32(('cd', 4).length) + 97]:
                                revert with 'NH{q', 50
                            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _912
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _547 = mem[64]
        mem[mem[64]] = 32
        _551 = mem[floor32(('cd', 4).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
        idx = 0
        s = floor32(('cd', 4).length) + 129
        t = mem[64] + 64
        while idx < _551:
            _730 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_730 + 44 len 20]
            _741 = mem[_730 + 64]
            mem[t + 64] = mem[mem[_730 + 64]]
            mem[t + 96] = mem[_741 + 32]
            mem[t + 128] = mem[_741 + 94 len 2]
            mem[t + 160] = mem[_741 + 126 len 2]
            _766 = mem[_730 + 96]
            mem[t + 192] = mem[mem[_730 + 96]]
            mem[t + 224] = mem[_766 + 32]
            mem[t + 256] = mem[_766 + 94 len 2]
            mem[t + 288] = mem[_766 + 126 len 2]
            _784 = mem[_730 + 128]
            mem[t + 320] = mem[mem[_730 + 128]]
            mem[t + 352] = mem[_784 + 32]
            mem[t + 384] = mem[_784 + 94 len 2]
            mem[t + 416] = mem[_784 + 126 len 2]
            mem[t + 448] = mem[_730 + 190 len 2]
            mem[t + 480] = mem[_730 + 222 len 2]
            mem[t + 512] = mem[_730 + 224]
            mem[t + 544] = mem[_730 + 272 len 16]
            _811 = mem[_730 + 288]
            mem[t + 576] = mem[mem[_730 + 288]]
            mem[t + 608] = mem[_811 + 48 len 16]
            mem[t + 640] = mem[_811 + 80 len 16]
            mem[t + 672] = mem[_811 + 124 len 4]
            mem[t + 704] = mem[_811 + 156 len 4]
            mem[t + 736] = mem[_811 + 188 len 4]
            _835 = mem[_811 + 192]
            mem[t + 768] = mem[mem[_811 + 192]]
            mem[t + 800] = mem[_835 + 60 len 4]
            mem[t + 832] = mem[_835 + 92 len 4]
            mem[t + 864] = mem[_835 + 124 len 4]
            mem[t + 896] = mem[_835 + 128]
            mem[t + 928] = mem[_835 + 160]
            mem[t + 960] = mem[_835 + 192]
            mem[t + 992] = mem[_835 + 224]
            mem[t + 1024] = mem[_835 + 286 len 2]
            mem[t + 1056] = mem[_835 + 318 len 2]
            mem[t + 1088] = mem[_835 + 351 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 1120
            continue 
        return memory
          from mem[64]
           len _547 + (1120 * _551) + -mem[64] + 64
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 161] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 481] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 513] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 545] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 449
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 577] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 609] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 641] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 673] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 225] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 577
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 705] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 737] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 769] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 801] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 257] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 705
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 289] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 321] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 353] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 385] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 833] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 865] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 897] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 929] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 961] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 993] = 0
    mem[64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1409
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1057] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1089] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1121] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1153] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1185] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1217] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1249] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1281] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1313] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1345] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1377] = 0
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1025] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1057
    mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 417] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 833
    mem[var45002] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 193
    s = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 129
    s = var45002
    idx = var45003
    while idx - 1:
        _740 = mem[64]
        mem[64] = mem[64] + 320
        mem[_740] = 0
        mem[_740 + 32] = 0
        mem[64] = mem[64] + 128
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 449] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 481] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 513] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 545] = 0
        mem[_740 + 64] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 449
        mem[64] = mem[64] + 128
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 577] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 609] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 641] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 673] = 0
        mem[_740 + 96] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 577
        mem[64] = mem[64] + 128
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 705] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 737] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 769] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 801] = 0
        mem[_740 + 128] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 705
        mem[_740 + 160] = 0
        mem[_740 + 192] = 0
        mem[_740 + 224] = 0
        mem[_740 + 256] = 0
        mem[64] = mem[64] + 224
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 833] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 865] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 897] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 929] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 961] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 993] = 0
        mem[64] = mem[64] + 352
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1057] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1089] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1121] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1153] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1185] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1217] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1249] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1281] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1313] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1345] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1377] = 0
        mem[floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1025] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 1057
        mem[_740 + 288] = floor32(('cd', 4).length) + (32 * ('cd', 4).length) + 833
        mem[s + 32] = _740
        s = _740 + 64
        s = _740
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1018 = mem[(32 * idx) + 128]
        _1019 = mem[64]
        mem[64] = mem[64] + 320
        mem[_1019] = 0
        mem[_1019 + 32] = 0
        _1021 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1021] = 0
        mem[_1021 + 32] = 0
        mem[_1021 + 64] = 0
        mem[_1021 + 96] = 0
        mem[_1019 + 64] = _1021
        _1022 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1022] = 0
        mem[_1022 + 32] = 0
        mem[_1022 + 64] = 0
        mem[_1022 + 96] = 0
        mem[_1019 + 96] = _1022
        _1023 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1023] = 0
        mem[_1023 + 32] = 0
        mem[_1023 + 64] = 0
        mem[_1023 + 96] = 0
        mem[_1019 + 128] = _1023
        mem[_1019 + 160] = 0
        mem[_1019 + 192] = 0
        mem[_1019 + 224] = 0
        mem[_1019 + 256] = 0
        _1024 = mem[64]
        mem[64] = mem[64] + 224
        mem[_1024] = 0
        mem[_1024 + 32] = 0
        mem[_1024 + 64] = 0
        mem[_1024 + 96] = 0
        mem[_1024 + 128] = 0
        mem[_1024 + 160] = 0
        _1026 = mem[64]
        mem[64] = mem[64] + 352
        mem[_1026] = 0
        mem[_1026 + 32] = 0
        mem[_1026 + 64] = 0
        mem[_1026 + 96] = 0
        mem[_1026 + 128] = 0
        mem[_1026 + 160] = 0
        mem[_1026 + 192] = 0
        mem[_1026 + 224] = 0
        mem[_1026 + 256] = 0
        mem[_1026 + 288] = 0
        mem[_1026 + 320] = 0
        mem[_1024 + 192] = _1026
        mem[_1019 + 288] = _1024
        require ext_code.size(stor0)
        staticcall stor0.0x969215ba with:
                gas gas_remaining wei
               args _1018
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1032 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _1035 = mem[_1032]
        require mem[_1032] == mem[_1032 + 12 len 20]
        _1038 = mem[_1032 + 32]
        require mem[_1032 + 32] == mem[_1032 + 32]
        _1041 = mem[_1032 + 64]
        require mem[_1032 + 64] == mem[_1032 + 64]
        _1044 = mem[_1032 + 96]
        require mem[_1032 + 96] == mem[_1032 + 96]
        _1047 = mem[_1032 + 128]
        require mem[_1032 + 128] == mem[_1032 + 158 len 2]
        _1050 = mem[_1032 + 160]
        require mem[_1032 + 160] == mem[_1032 + 190 len 2]
        _1053 = mem[_1032 + 192]
        require mem[_1032 + 192] == mem[_1032 + 192]
        _1055 = mem[_1032 + 224]
        require mem[_1032 + 224] == mem[_1032 + 240 len 16]
        _1059 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1059] = 0
        mem[_1059 + 32] = 0
        mem[_1059 + 64] = 0
        mem[_1059 + 96] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _1038
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1065 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1066 = mem[_1065]
        require mem[_1065] == mem[_1065 + 30 len 2]
        _1069 = mem[_1065 + 32]
        require mem[_1065 + 32] == mem[_1065 + 62 len 2]
        mem[mem[64] + 4] = _1038
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _1038
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1077 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1078 = mem[_1077]
        require mem[_1077] == mem[_1077]
        _1081 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1081] = _1038
        mem[_1081 + 32] = _1078
        mem[_1081 + 64] = uint16(_1066)
        mem[_1081 + 96] = uint16(_1069)
        _1083 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1083] = 0
        mem[_1083 + 32] = 0
        mem[_1083 + 64] = 0
        mem[_1083 + 96] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _1041
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1088 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1090 = mem[_1088]
        require mem[_1088] == mem[_1088 + 30 len 2]
        _1093 = mem[_1088 + 32]
        require mem[_1088 + 32] == mem[_1088 + 62 len 2]
        mem[mem[64] + 4] = _1041
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _1041
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1098 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1099 = mem[_1098]
        require mem[_1098] == mem[_1098]
        _1100 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1100] = _1041
        mem[_1100 + 32] = _1099
        mem[_1100 + 64] = uint16(_1090)
        mem[_1100 + 96] = uint16(_1093)
        _1101 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1101] = 0
        mem[_1101 + 32] = 0
        mem[_1101 + 64] = 0
        mem[_1101 + 96] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _1044
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1104 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1105 = mem[_1104]
        require mem[_1104] == mem[_1104 + 30 len 2]
        _1106 = mem[_1104 + 32]
        require mem[_1104 + 32] == mem[_1104 + 62 len 2]
        mem[mem[64] + 4] = _1044
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _1044
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1115 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1116 = mem[_1115]
        require mem[_1115] == mem[_1115]
        _1119 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1119] = _1044
        mem[_1119 + 32] = _1116
        mem[_1119 + 64] = uint16(_1105)
        mem[_1119 + 96] = uint16(_1106)
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
               args _1053
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1128 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _1130 = mem[_1128]
        require mem[_1128] == mem[_1128]
        _1132 = mem[_1128 + 32]
        require mem[_1128 + 32] == mem[_1128 + 48 len 16]
        _1136 = mem[_1128 + 64]
        require mem[_1128 + 64] == mem[_1128 + 80 len 16]
        _1139 = mem[_1128 + 96]
        require mem[_1128 + 96] == mem[_1128 + 124 len 4]
        _1141 = mem[_1128 + 128]
        require mem[_1128 + 128] == mem[_1128 + 156 len 4]
        _1144 = mem[_1128 + 160]
        require mem[_1128 + 160] == mem[_1128 + 188 len 4]
        _1148 = mem[64]
        mem[64] = mem[64] + 352
        mem[_1148] = 0
        mem[_1148 + 32] = 0
        mem[_1148 + 64] = 0
        mem[_1148 + 96] = 0
        mem[_1148 + 128] = 0
        mem[_1148 + 160] = 0
        mem[_1148 + 192] = 0
        mem[_1148 + 224] = 0
        mem[_1148 + 256] = 0
        mem[_1148 + 288] = 0
        mem[_1148 + 320] = 0
        require ext_code.size(stor0)
        staticcall stor0.0x183ce75d with:
                gas gas_remaining wei
               args _1053
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1153 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _1155 = mem[_1153]
        require mem[_1153] == mem[_1153]
        _1158 = mem[_1153 + 32]
        require mem[_1153 + 32] == mem[_1153 + 60 len 4]
        _1161 = mem[_1153 + 64]
        require mem[_1153 + 64] == mem[_1153 + 92 len 4]
        _1164 = mem[_1153 + 96]
        require mem[_1153 + 96] == mem[_1153 + 124 len 4]
        _1167 = mem[_1153 + 128]
        require mem[_1153 + 128] == mem[_1153 + 128]
        _1169 = mem[_1153 + 160]
        require mem[_1153 + 160] == mem[_1153 + 160]
        _1172 = mem[_1153 + 192]
        require mem[_1153 + 192] == mem[_1153 + 192]
        _1175 = mem[_1153 + 224]
        require mem[_1153 + 224] == mem[_1153 + 224]
        require ext_code.size(stor0)
        staticcall stor0.0xf769a0c with:
                gas gas_remaining wei
               args _1053
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1179 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _1180 = mem[_1179]
        require mem[_1179] == mem[_1179 + 30 len 2]
        _1181 = mem[_1179 + 32]
        require mem[_1179 + 32] == mem[_1179 + 62 len 2]
        if _1169 > 0:
            _1182 = mem[64]
            mem[64] = mem[64] + 352
            mem[_1182] = _1155
            mem[_1182 + 32] = uint32(_1158)
            mem[_1182 + 64] = uint32(_1161)
            mem[_1182 + 96] = uint32(_1164)
            mem[_1182 + 128] = _1167
            mem[_1182 + 160] = _1169
            mem[_1182 + 192] = _1172
            mem[_1182 + 224] = _1175
            mem[_1182 + 256] = uint16(_1180)
            mem[_1182 + 288] = uint16(_1181)
            mem[_1182 + 320] = 4
            _1183 = mem[64]
            mem[64] = mem[64] + 224
            mem[_1183] = _1130
            mem[_1183 + 32] = uint128(_1132)
            mem[_1183 + 64] = uint128(_1136)
            mem[_1183 + 96] = uint32(_1139)
            mem[_1183 + 128] = uint32(_1141)
            mem[_1183 + 160] = uint32(_1144)
            mem[_1183 + 192] = _1182
            _1185 = mem[64]
            mem[64] = mem[64] + 320
            mem[_1185] = _1018
            mem[_1185 + 32] = address(_1035)
            mem[_1185 + 64] = _1081
            mem[_1185 + 96] = _1100
            mem[_1185 + 128] = _1119
            mem[_1185 + 160] = uint16(_1047)
            mem[_1185 + 192] = uint16(_1050)
            mem[_1185 + 224] = _1053
            mem[_1185 + 256] = uint128(_1055)
            mem[_1185 + 288] = _1183
            if idx >= mem[floor32(('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1185
        else:
            if _1175 > 0:
                _1184 = mem[64]
                mem[64] = mem[64] + 352
                mem[_1184] = _1155
                mem[_1184 + 32] = uint32(_1158)
                mem[_1184 + 64] = uint32(_1161)
                mem[_1184 + 96] = uint32(_1164)
                mem[_1184 + 128] = _1167
                mem[_1184 + 160] = _1169
                mem[_1184 + 192] = _1172
                mem[_1184 + 224] = _1175
                mem[_1184 + 256] = uint16(_1180)
                mem[_1184 + 288] = uint16(_1181)
                mem[_1184 + 320] = 3
                _1186 = mem[64]
                mem[64] = mem[64] + 224
                mem[_1186] = _1130
                mem[_1186 + 32] = uint128(_1132)
                mem[_1186 + 64] = uint128(_1136)
                mem[_1186 + 96] = uint32(_1139)
                mem[_1186 + 128] = uint32(_1141)
                mem[_1186 + 160] = uint32(_1144)
                mem[_1186 + 192] = _1184
                _1189 = mem[64]
                mem[64] = mem[64] + 320
                mem[_1189] = _1018
                mem[_1189 + 32] = address(_1035)
                mem[_1189 + 64] = _1081
                mem[_1189 + 96] = _1100
                mem[_1189 + 128] = _1119
                mem[_1189 + 160] = uint16(_1047)
                mem[_1189 + 192] = uint16(_1050)
                mem[_1189 + 224] = _1053
                mem[_1189 + 256] = uint128(_1055)
                mem[_1189 + 288] = _1186
                if idx >= mem[floor32(('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1189
            else:
                if _1167 > 0:
                    _1188 = mem[64]
                    mem[64] = mem[64] + 352
                    mem[_1188] = _1155
                    mem[_1188 + 32] = uint32(_1158)
                    mem[_1188 + 64] = uint32(_1161)
                    mem[_1188 + 96] = uint32(_1164)
                    mem[_1188 + 128] = _1167
                    mem[_1188 + 160] = _1169
                    mem[_1188 + 192] = _1172
                    mem[_1188 + 224] = _1175
                    mem[_1188 + 256] = uint16(_1180)
                    mem[_1188 + 288] = uint16(_1181)
                    mem[_1188 + 320] = 2
                    _1191 = mem[64]
                    mem[64] = mem[64] + 224
                    mem[_1191] = _1130
                    mem[_1191 + 32] = uint128(_1132)
                    mem[_1191 + 64] = uint128(_1136)
                    mem[_1191 + 96] = uint32(_1139)
                    mem[_1191 + 128] = uint32(_1141)
                    mem[_1191 + 160] = uint32(_1144)
                    mem[_1191 + 192] = _1188
                    _1195 = mem[64]
                    mem[64] = mem[64] + 320
                    mem[_1195] = _1018
                    mem[_1195 + 32] = address(_1035)
                    mem[_1195 + 64] = _1081
                    mem[_1195 + 96] = _1100
                    mem[_1195 + 128] = _1119
                    mem[_1195 + 160] = uint16(_1047)
                    mem[_1195 + 192] = uint16(_1050)
                    mem[_1195 + 224] = _1053
                    mem[_1195 + 256] = uint128(_1055)
                    mem[_1195 + 288] = _1191
                    if idx >= mem[floor32(('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1195
                else:
                    if _1172 <= 0:
                        _1190 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_1190] = _1155
                        mem[_1190 + 32] = uint32(_1158)
                        mem[_1190 + 64] = uint32(_1161)
                        mem[_1190 + 96] = uint32(_1164)
                        mem[_1190 + 128] = _1167
                        mem[_1190 + 160] = _1169
                        mem[_1190 + 192] = _1172
                        mem[_1190 + 224] = _1175
                        mem[_1190 + 256] = uint16(_1180)
                        mem[_1190 + 288] = uint16(_1181)
                        mem[_1190 + 320] = 0
                        _1193 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1193] = _1130
                        mem[_1193 + 32] = uint128(_1132)
                        mem[_1193 + 64] = uint128(_1136)
                        mem[_1193 + 96] = uint32(_1139)
                        mem[_1193 + 128] = uint32(_1141)
                        mem[_1193 + 160] = uint32(_1144)
                        mem[_1193 + 192] = _1190
                        _1196 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_1196] = _1018
                        mem[_1196 + 32] = address(_1035)
                        mem[_1196 + 64] = _1081
                        mem[_1196 + 96] = _1100
                        mem[_1196 + 128] = _1119
                        mem[_1196 + 160] = uint16(_1047)
                        mem[_1196 + 192] = uint16(_1050)
                        mem[_1196 + 224] = _1053
                        mem[_1196 + 256] = uint128(_1055)
                        mem[_1196 + 288] = _1193
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1196
                    else:
                        _1194 = mem[64]
                        mem[64] = mem[64] + 352
                        mem[_1194] = _1155
                        mem[_1194 + 32] = uint32(_1158)
                        mem[_1194 + 64] = uint32(_1161)
                        mem[_1194 + 96] = uint32(_1164)
                        mem[_1194 + 128] = _1167
                        mem[_1194 + 160] = _1169
                        mem[_1194 + 192] = _1172
                        mem[_1194 + 224] = _1175
                        mem[_1194 + 256] = uint16(_1180)
                        mem[_1194 + 288] = uint16(_1181)
                        mem[_1194 + 320] = 1
                        _1197 = mem[64]
                        mem[64] = mem[64] + 224
                        mem[_1197] = _1130
                        mem[_1197 + 32] = uint128(_1132)
                        mem[_1197 + 64] = uint128(_1136)
                        mem[_1197 + 96] = uint32(_1139)
                        mem[_1197 + 128] = uint32(_1141)
                        mem[_1197 + 160] = uint32(_1144)
                        mem[_1197 + 192] = _1194
                        _1200 = mem[64]
                        mem[64] = mem[64] + 320
                        mem[_1200] = _1018
                        mem[_1200 + 32] = address(_1035)
                        mem[_1200 + 64] = _1081
                        mem[_1200 + 96] = _1100
                        mem[_1200 + 128] = _1119
                        mem[_1200 + 160] = uint16(_1047)
                        mem[_1200 + 192] = uint16(_1050)
                        mem[_1200 + 224] = _1053
                        mem[_1200 + 256] = uint128(_1055)
                        mem[_1200 + 288] = _1197
                        if idx >= mem[floor32(('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + floor32(('cd', 4).length) + 129] = _1200
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _1017 = mem[64]
    mem[mem[64]] = 32
    _1020 = mem[floor32(('cd', 4).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 4).length) + 97]
    idx = 0
    s = floor32(('cd', 4).length) + 129
    t = mem[64] + 64
    while idx < _1020:
        _1107 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_1107 + 44 len 20]
        _1113 = mem[_1107 + 64]
        mem[t + 64] = mem[mem[_1107 + 64]]
        mem[t + 96] = mem[_1113 + 32]
        mem[t + 128] = mem[_1113 + 94 len 2]
        mem[t + 160] = mem[_1113 + 126 len 2]
        _1124 = mem[_1107 + 96]
        mem[t + 192] = mem[mem[_1107 + 96]]
        mem[t + 224] = mem[_1124 + 32]
        mem[t + 256] = mem[_1124 + 94 len 2]
        mem[t + 288] = mem[_1124 + 126 len 2]
        _1133 = mem[_1107 + 128]
        mem[t + 320] = mem[mem[_1107 + 128]]
        mem[t + 352] = mem[_1133 + 32]
        mem[t + 384] = mem[_1133 + 94 len 2]
        mem[t + 416] = mem[_1133 + 126 len 2]
        mem[t + 448] = mem[_1107 + 190 len 2]
        mem[t + 480] = mem[_1107 + 222 len 2]
        mem[t + 512] = mem[_1107 + 224]
        mem[t + 544] = mem[_1107 + 272 len 16]
        _1146 = mem[_1107 + 288]
        mem[t + 576] = mem[mem[_1107 + 288]]
        mem[t + 608] = mem[_1146 + 48 len 16]
        mem[t + 640] = mem[_1146 + 80 len 16]
        mem[t + 672] = mem[_1146 + 124 len 4]
        mem[t + 704] = mem[_1146 + 156 len 4]
        mem[t + 736] = mem[_1146 + 188 len 4]
        _1159 = mem[_1146 + 192]
        mem[t + 768] = mem[mem[_1146 + 192]]
        mem[t + 800] = mem[_1159 + 60 len 4]
        mem[t + 832] = mem[_1159 + 92 len 4]
        mem[t + 864] = mem[_1159 + 124 len 4]
        mem[t + 896] = mem[_1159 + 128]
        mem[t + 928] = mem[_1159 + 160]
        mem[t + 960] = mem[_1159 + 192]
        mem[t + 992] = mem[_1159 + 224]
        mem[t + 1024] = mem[_1159 + 286 len 2]
        mem[t + 1056] = mem[_1159 + 318 len 2]
        mem[t + 1088] = mem[_1159 + 351 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 1120
        continue 
    return memory
      from mem[64]
       len _1017 + (1120 * _1020) + -mem[64] + 64
}



}
