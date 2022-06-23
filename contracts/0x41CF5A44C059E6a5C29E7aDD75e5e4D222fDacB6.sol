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
    return arg1, ext_call.return_data[0] << 240, uint16(ext_call.return_data[32])
}

function sub_0b97dfd0(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 < arg1:
        revert with 'NH{q', 17
    if var88002 < arg2 - arg1:
        if var100003 > -arg1 - 1:
            revert with 'NH{q', 17
        # nil
    else:
        mem[96] = 32
        mem[128] = 32
        idx = 0
        s = 128
        t = 160
        while idx < 32:
            _134 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_134 + 62 len 2]
            mem[t + 64] = mem[_134 + 94 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return 32, 32, mem[160 len 3072]
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
    return ext_call.return_data[0], 
           ext_call.return_data[32] << 224,
           ext_call.return_data[64] << 224,
           ext_call.return_data[96] << 224,
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224]
}

function sub_642b3f78(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 < arg1:
        revert with 'NH{q', 17
    if var342002 < arg2 - arg1:
        # nil
    else:
        mem[96] = 32
        mem[128] = 32
        idx = 0
        s = 128
        t = 160
        while idx < 32:
            _1126 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            _1131 = mem[_1126 + 32]
            mem[t + 32] = mem[mem[_1126 + 32]]
            mem[t + 64] = mem[_1131 + 62 len 2]
            mem[t + 96] = mem[_1131 + 94 len 2]
            _1136 = mem[_1126 + 64]
            mem[t + 128] = mem[mem[_1126 + 64]]
            mem[t + 160] = mem[_1136 + 62 len 2]
            mem[t + 192] = mem[_1136 + 94 len 2]
            _1145 = mem[_1126 + 96]
            mem[t + 224] = mem[mem[_1126 + 96]]
            mem[t + 256] = mem[_1145 + 62 len 2]
            mem[t + 288] = mem[_1145 + 94 len 2]
            mem[t + 320] = mem[_1126 + 158 len 2]
            mem[t + 352] = mem[_1126 + 190 len 2]
            mem[t + 384] = mem[_1126 + 192]
            mem[t + 416] = mem[_1126 + 240 len 16]
            _1157 = mem[_1126 + 256]
            mem[t + 448] = mem[mem[_1126 + 256]]
            mem[t + 480] = mem[_1157 + 48 len 16]
            mem[t + 512] = mem[_1157 + 80 len 16]
            mem[t + 544] = mem[_1157 + 124 len 4]
            mem[t + 576] = mem[_1157 + 156 len 4]
            mem[t + 608] = mem[_1157 + 188 len 4]
            _1167 = mem[_1157 + 192]
            mem[t + 640] = mem[mem[_1157 + 192]]
            mem[t + 672] = mem[_1167 + 60 len 4]
            mem[t + 704] = mem[_1167 + 92 len 4]
            mem[t + 736] = mem[_1167 + 124 len 4]
            mem[t + 768] = mem[_1167 + 128]
            mem[t + 800] = mem[_1167 + 160]
            mem[t + 832] = mem[_1167 + 192]
            mem[t + 864] = mem[_1167 + 224]
            idx = idx + 1
            s = s + 32
            t = t + 896
            continue 
        return 32, 32, mem[160 len 28672]
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
           ext_call.return_data[224]
}



}
