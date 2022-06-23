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
    return ext_call.return_data[0], 
           ext_call.return_data[32] << 224,
           ext_call.return_data[64] << 224,
           ext_call.return_data[96] << 224,
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224],
           ext_call.return_data[0] << 240,
           uint16(ext_call.return_data[32])
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
           0
}

function sub_0b97dfd0(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 < arg1:
        revert with 'NH{q', 17
    if var103002 >= arg2 - arg1:
        mem[96] = 32
        mem[128] = 32
        idx = 0
        s = 128
        t = 160
        while idx < 32:
            _189 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_189 + 32]
            mem[t + 64] = mem[_189 + 94 len 2]
            mem[t + 96] = mem[_189 + 126 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return 32, 32, mem[160 len 4096]
    if var115003 > -arg1 - 1:
        revert with 'NH{q', 17
    mem[64] = 224
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    require ext_code.size(stor0)
    staticcall stor0.getStats(uint256 arg1) with:
            gas gas_remaining wei
           args (var117002 + arg1)
    mem[224 len 64] = ext_call.return_data[0 len 64]
    s = var117002 + arg1
    t = var117006
    while ext_call.success:
        _338 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _339 = mem[_338]
        require mem[_338] == mem[_338 + 30 len 2]
        _340 = mem[_338 + 32]
        require mem[_338 + 32] == mem[_338 + 62 len 2]
        mem[mem[64] + 4] = s
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args s
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _343 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _344 = mem[_343]
        require mem[_343] == mem[_343]
        _345 = mem[64]
        mem[64] = mem[64] + 128
        mem[_345] = s
        mem[_345 + 32] = _344
        mem[_345 + 64] = uint16(_339)
        mem[_345 + 96] = uint16(_340)
        if t >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * t) + 128] = _345
        if t == -1:
            revert with 'NH{q', 17
        if arg2 < arg1:
            revert with 'NH{q', 17
        if t + 1 >= arg2 - arg1:
            _347 = mem[64]
            mem[mem[64]] = 32
            _348 = mem[96]
            mem[mem[64] + 32] = mem[96]
            idx = 0
            t = 128
            u = mem[64] + 64
            while idx < _348:
                _355 = mem[t]
                mem[u] = mem[mem[t]]
                mem[u + 32] = mem[_355 + 32]
                mem[u + 64] = mem[_355 + 94 len 2]
                mem[u + 96] = mem[_355 + 126 len 2]
                mem[64] = mem[64] + 128
                mem[96] = 0
                mem[128] = 0
                mem[160] = 0
                mem[192] = 0
                mem[mem[64]] = 0x7b30396500000000000000000000000000000000000000000000000000000000
                mem[228] = s
                require ext_code.size(stor0)
                staticcall stor0.getStats(uint256 arg1) with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len -mem[64] + 256]
                mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                idx = idx + 1
                t = t + 32
                u = u + 128
                continue 
            return memory
              from mem[64]
               len _347 + (128 * _348) + -mem[64] + 64
        if t + 1 > -arg1 - 1:
            revert with 'NH{q', 17
        mem[64] = mem[64] + 128
        mem[96] = 0
        mem[128] = 0
        mem[160] = 0
        mem[192] = 0
        mem[mem[64]] = 0x7b30396500000000000000000000000000000000000000000000000000000000
        mem[228] = t + arg1 + 2
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len -mem[64] + 256]
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
           0
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
            _113 = mem[64]
            mem[64] = mem[64] + 224
            mem[_113] = 0
            mem[_113 + 32] = 0
            mem[_113 + 64] = 0
            mem[_113 + 96] = 0
            mem[_113 + 128] = 0
            mem[_113 + 160] = 0
            _114 = mem[64]
            mem[64] = mem[64] + 320
            mem[_114] = 0
            mem[_114 + 32] = 0
            mem[_114 + 64] = 0
            mem[_114 + 96] = 0
            mem[_114 + 128] = 0
            mem[_114 + 160] = 0
            mem[_114 + 192] = 0
            mem[_114 + 224] = 0
            mem[_114 + 256] = 0
            mem[_114 + 288] = 0
            mem[_113 + 192] = _114
            require ext_code.size(stor0)
            staticcall stor0.0xf0344e36 with:
                    gas gas_remaining wei
                   args (idx + arg1)
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _126 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _130 = mem[_126]
            require mem[_126] == mem[_126]
            _137 = mem[_126 + 32]
            require mem[_126 + 32] == mem[_126 + 48 len 16]
            _143 = mem[_126 + 64]
            require mem[_126 + 64] == mem[_126 + 80 len 16]
            _148 = mem[_126 + 96]
            require mem[_126 + 96] == mem[_126 + 124 len 4]
            _155 = mem[_126 + 128]
            require mem[_126 + 128] == mem[_126 + 156 len 4]
            _161 = mem[_126 + 160]
            require mem[_126 + 160] == mem[_126 + 188 len 4]
            _168 = mem[64]
            mem[64] = mem[64] + 320
            mem[_168] = 0
            mem[_168 + 32] = 0
            mem[_168 + 64] = 0
            mem[_168 + 96] = 0
            mem[_168 + 128] = 0
            mem[_168 + 160] = 0
            mem[_168 + 192] = 0
            mem[_168 + 224] = 0
            mem[_168 + 256] = 0
            mem[_168 + 288] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x183ce75d with:
                    gas gas_remaining wei
                   args (idx + arg1)
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _177 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _179 = mem[_177]
            require mem[_177] == mem[_177]
            _183 = mem[_177 + 32]
            require mem[_177 + 32] == mem[_177 + 60 len 4]
            _185 = mem[_177 + 64]
            require mem[_177 + 64] == mem[_177 + 92 len 4]
            _187 = mem[_177 + 96]
            require mem[_177 + 96] == mem[_177 + 124 len 4]
            _189 = mem[_177 + 128]
            require mem[_177 + 128] == mem[_177 + 128]
            _191 = mem[_177 + 160]
            require mem[_177 + 160] == mem[_177 + 160]
            _193 = mem[_177 + 192]
            require mem[_177 + 192] == mem[_177 + 192]
            _195 = mem[_177 + 224]
            require mem[_177 + 224] == mem[_177 + 224]
            require ext_code.size(stor0)
            staticcall stor0.0xf769a0c with:
                    gas gas_remaining wei
                   args (idx + arg1)
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _201 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _202 = mem[_201]
            require mem[_201] == mem[_201 + 30 len 2]
            _205 = mem[_201 + 32]
            require mem[_201 + 32] == mem[_201 + 62 len 2]
            _207 = mem[64]
            mem[64] = mem[64] + 320
            mem[_207] = _179
            mem[_207 + 32] = uint32(_183)
            mem[_207 + 64] = uint32(_185)
            mem[_207 + 96] = uint32(_187)
            mem[_207 + 128] = _189
            mem[_207 + 160] = _191
            mem[_207 + 192] = _193
            mem[_207 + 224] = _195
            mem[_207 + 256] = uint16(_202)
            mem[_207 + 288] = uint16(_205)
            _209 = mem[64]
            mem[64] = mem[64] + 224
            mem[_209] = _130
            mem[_209 + 32] = uint128(_137)
            mem[_209 + 64] = uint128(_143)
            mem[_209 + 96] = uint32(_148)
            mem[_209 + 128] = uint32(_155)
            mem[_209 + 160] = uint32(_161)
            mem[_209 + 192] = _207
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _209
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _109 = mem[64]
        mem[mem[64]] = 32
        _111 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _111:
            _215 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_215 + 48 len 16]
            mem[t + 64] = mem[_215 + 80 len 16]
            mem[t + 96] = mem[_215 + 124 len 4]
            mem[t + 128] = mem[_215 + 156 len 4]
            mem[t + 160] = mem[_215 + 188 len 4]
            _235 = mem[_215 + 192]
            mem[t + 192] = mem[mem[_215 + 192]]
            mem[t + 224] = mem[_235 + 60 len 4]
            mem[t + 256] = mem[_235 + 92 len 4]
            mem[t + 288] = mem[_235 + 124 len 4]
            mem[t + 320] = mem[_235 + 128]
            mem[t + 352] = mem[_235 + 160]
            mem[t + 384] = mem[_235 + 192]
            mem[t + 416] = mem[_235 + 224]
            mem[t + 448] = mem[_235 + 286 len 2]
            mem[t + 480] = mem[_235 + 318 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 512
            continue 
        return memory
          from mem[64]
           len _109 + (512 * _111) + -mem[64] + 64
    mem[(32 * arg2 - arg1) + 128] = 0
    mem[(32 * arg2 - arg1) + 160] = 0
    mem[(32 * arg2 - arg1) + 192] = 0
    mem[(32 * arg2 - arg1) + 224] = 0
    mem[(32 * arg2 - arg1) + 256] = 0
    mem[(32 * arg2 - arg1) + 288] = 0
    mem[64] = (32 * arg2 - arg1) + 672
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
    mem[(32 * arg2 - arg1) + 320] = (32 * arg2 - arg1) + 352
    mem[var36002] = (32 * arg2 - arg1) + 128
    s = (32 * arg2 - arg1) + 320
    s = (32 * arg2 - arg1) + 128
    s = var36002
    idx = var36003
    while idx - 1:
        _289 = mem[64]
        mem[64] = mem[64] + 224
        mem[_289] = 0
        mem[_289 + 32] = 0
        mem[_289 + 64] = 0
        mem[_289 + 96] = 0
        mem[_289 + 128] = 0
        mem[_289 + 160] = 0
        mem[64] = mem[64] + 320
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
        mem[_289 + 192] = (32 * arg2 - arg1) + 352
        mem[s + 32] = _289
        s = _289 + 192
        s = _289
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg2 - arg1:
        if idx > -arg1 - 1:
            revert with 'NH{q', 17
        _344 = mem[64]
        mem[64] = mem[64] + 224
        mem[_344] = 0
        mem[_344 + 32] = 0
        mem[_344 + 64] = 0
        mem[_344 + 96] = 0
        mem[_344 + 128] = 0
        mem[_344 + 160] = 0
        _345 = mem[64]
        mem[64] = mem[64] + 320
        mem[_345] = 0
        mem[_345 + 32] = 0
        mem[_345 + 64] = 0
        mem[_345 + 96] = 0
        mem[_345 + 128] = 0
        mem[_345 + 160] = 0
        mem[_345 + 192] = 0
        mem[_345 + 224] = 0
        mem[_345 + 256] = 0
        mem[_345 + 288] = 0
        mem[_344 + 192] = _345
        require ext_code.size(stor0)
        staticcall stor0.0xf0344e36 with:
                gas gas_remaining wei
               args (idx + arg1)
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _352 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _354 = mem[_352]
        require mem[_352] == mem[_352]
        _357 = mem[_352 + 32]
        require mem[_352 + 32] == mem[_352 + 48 len 16]
        _360 = mem[_352 + 64]
        require mem[_352 + 64] == mem[_352 + 80 len 16]
        _363 = mem[_352 + 96]
        require mem[_352 + 96] == mem[_352 + 124 len 4]
        _366 = mem[_352 + 128]
        require mem[_352 + 128] == mem[_352 + 156 len 4]
        _369 = mem[_352 + 160]
        require mem[_352 + 160] == mem[_352 + 188 len 4]
        _372 = mem[64]
        mem[64] = mem[64] + 320
        mem[_372] = 0
        mem[_372 + 32] = 0
        mem[_372 + 64] = 0
        mem[_372 + 96] = 0
        mem[_372 + 128] = 0
        mem[_372 + 160] = 0
        mem[_372 + 192] = 0
        mem[_372 + 224] = 0
        mem[_372 + 256] = 0
        mem[_372 + 288] = 0
        require ext_code.size(stor0)
        staticcall stor0.0x183ce75d with:
                gas gas_remaining wei
               args (idx + arg1)
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _377 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _378 = mem[_377]
        require mem[_377] == mem[_377]
        _379 = mem[_377 + 32]
        require mem[_377 + 32] == mem[_377 + 60 len 4]
        _380 = mem[_377 + 64]
        require mem[_377 + 64] == mem[_377 + 92 len 4]
        _381 = mem[_377 + 96]
        require mem[_377 + 96] == mem[_377 + 124 len 4]
        _382 = mem[_377 + 128]
        require mem[_377 + 128] == mem[_377 + 128]
        _383 = mem[_377 + 160]
        require mem[_377 + 160] == mem[_377 + 160]
        _384 = mem[_377 + 192]
        require mem[_377 + 192] == mem[_377 + 192]
        _385 = mem[_377 + 224]
        require mem[_377 + 224] == mem[_377 + 224]
        require ext_code.size(stor0)
        staticcall stor0.0xf769a0c with:
                gas gas_remaining wei
               args (idx + arg1)
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _388 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _389 = mem[_388]
        require mem[_388] == mem[_388 + 30 len 2]
        _390 = mem[_388 + 32]
        require mem[_388 + 32] == mem[_388 + 62 len 2]
        _391 = mem[64]
        mem[64] = mem[64] + 320
        mem[_391] = _378
        mem[_391 + 32] = uint32(_379)
        mem[_391 + 64] = uint32(_380)
        mem[_391 + 96] = uint32(_381)
        mem[_391 + 128] = _382
        mem[_391 + 160] = _383
        mem[_391 + 192] = _384
        mem[_391 + 224] = _385
        mem[_391 + 256] = uint16(_389)
        mem[_391 + 288] = uint16(_390)
        _392 = mem[64]
        mem[64] = mem[64] + 224
        mem[_392] = _354
        mem[_392 + 32] = uint128(_357)
        mem[_392 + 64] = uint128(_360)
        mem[_392 + 96] = uint32(_363)
        mem[_392 + 128] = uint32(_366)
        mem[_392 + 160] = uint32(_369)
        mem[_392 + 192] = _391
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = _392
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _342 = mem[64]
    mem[mem[64]] = 32
    _343 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _343:
        _394 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_394 + 48 len 16]
        mem[t + 64] = mem[_394 + 80 len 16]
        mem[t + 96] = mem[_394 + 124 len 4]
        mem[t + 128] = mem[_394 + 156 len 4]
        mem[t + 160] = mem[_394 + 188 len 4]
        _402 = mem[_394 + 192]
        mem[t + 192] = mem[mem[_394 + 192]]
        mem[t + 224] = mem[_402 + 60 len 4]
        mem[t + 256] = mem[_402 + 92 len 4]
        mem[t + 288] = mem[_402 + 124 len 4]
        mem[t + 320] = mem[_402 + 128]
        mem[t + 352] = mem[_402 + 160]
        mem[t + 384] = mem[_402 + 192]
        mem[t + 416] = mem[_402 + 224]
        mem[t + 448] = mem[_402 + 286 len 2]
        mem[t + 480] = mem[_402 + 318 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 512
        continue 
    return memory
      from mem[64]
       len _342 + (512 * _343) + -mem[64] + 64
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
            _434 = mem[64]
            mem[64] = mem[64] + 320
            mem[_434] = 0
            mem[_434 + 32] = 0
            _435 = mem[64]
            mem[64] = mem[64] + 128
            mem[_435] = 0
            mem[_435 + 32] = 0
            mem[_435 + 64] = 0
            mem[_435 + 96] = 0
            mem[_434 + 64] = _435
            _438 = mem[64]
            mem[64] = mem[64] + 128
            mem[_438] = 0
            mem[_438 + 32] = 0
            mem[_438 + 64] = 0
            mem[_438 + 96] = 0
            mem[_434 + 96] = _438
            _441 = mem[64]
            mem[64] = mem[64] + 128
            mem[_441] = 0
            mem[_441 + 32] = 0
            mem[_441 + 64] = 0
            mem[_441 + 96] = 0
            mem[_434 + 128] = _441
            mem[_434 + 160] = 0
            mem[_434 + 192] = 0
            mem[_434 + 224] = 0
            mem[_434 + 256] = 0
            _443 = mem[64]
            mem[64] = mem[64] + 224
            mem[_443] = 0
            mem[_443 + 32] = 0
            mem[_443 + 64] = 0
            mem[_443 + 96] = 0
            mem[_443 + 128] = 0
            mem[_443 + 160] = 0
            _445 = mem[64]
            mem[64] = mem[64] + 320
            mem[_445] = 0
            mem[_445 + 32] = 0
            mem[_445 + 64] = 0
            mem[_445 + 96] = 0
            mem[_445 + 128] = 0
            mem[_445 + 160] = 0
            mem[_445 + 192] = 0
            mem[_445 + 224] = 0
            mem[_445 + 256] = 0
            mem[_445 + 288] = 0
            mem[_443 + 192] = _445
            mem[_434 + 288] = _443
            require ext_code.size(stor0)
            staticcall stor0.0x969215ba with:
                    gas gas_remaining wei
                   args (idx + arg1)
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _459 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _463 = mem[_459]
            require mem[_459] == mem[_459 + 12 len 20]
            _470 = mem[_459 + 32]
            require mem[_459 + 32] == mem[_459 + 32]
            _478 = mem[_459 + 64]
            require mem[_459 + 64] == mem[_459 + 64]
            _483 = mem[_459 + 96]
            require mem[_459 + 96] == mem[_459 + 96]
            _490 = mem[_459 + 128]
            require mem[_459 + 128] == mem[_459 + 158 len 2]
            _496 = mem[_459 + 160]
            require mem[_459 + 160] == mem[_459 + 190 len 2]
            _501 = mem[_459 + 192]
            require mem[_459 + 192] == mem[_459 + 192]
            _507 = mem[_459 + 224]
            require mem[_459 + 224] == mem[_459 + 240 len 16]
            _513 = mem[64]
            mem[64] = mem[64] + 128
            mem[_513] = 0
            mem[_513 + 32] = 0
            mem[_513 + 64] = 0
            mem[_513 + 96] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _470
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _522 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _525 = mem[_522]
            require mem[_522] == mem[_522 + 30 len 2]
            _532 = mem[_522 + 32]
            require mem[_522 + 32] == mem[_522 + 62 len 2]
            mem[mem[64] + 4] = _470
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _470
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _547 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _550 = mem[_547]
            require mem[_547] == mem[_547]
            _556 = mem[64]
            mem[64] = mem[64] + 128
            mem[_556] = _470
            mem[_556 + 32] = _550
            mem[_556 + 64] = uint16(_525)
            mem[_556 + 96] = uint16(_532)
            _559 = mem[64]
            mem[64] = mem[64] + 128
            mem[_559] = 0
            mem[_559 + 32] = 0
            mem[_559 + 64] = 0
            mem[_559 + 96] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _478
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _569 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _572 = mem[_569]
            require mem[_569] == mem[_569 + 30 len 2]
            _579 = mem[_569 + 32]
            require mem[_569 + 32] == mem[_569 + 62 len 2]
            mem[mem[64] + 4] = _478
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _478
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _589 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _590 = mem[_589]
            require mem[_589] == mem[_589]
            _592 = mem[64]
            mem[64] = mem[64] + 128
            mem[_592] = _478
            mem[_592 + 32] = _590
            mem[_592 + 64] = uint16(_572)
            mem[_592 + 96] = uint16(_579)
            _594 = mem[64]
            mem[64] = mem[64] + 128
            mem[_594] = 0
            mem[_594 + 32] = 0
            mem[_594 + 64] = 0
            mem[_594 + 96] = 0
            require ext_code.size(stor0)
            staticcall stor0.getStats(uint256 arg1) with:
                    gas gas_remaining wei
                   args _483
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _599 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _601 = mem[_599]
            require mem[_599] == mem[_599 + 30 len 2]
            _610 = mem[_599 + 32]
            require mem[_599 + 32] == mem[_599 + 62 len 2]
            mem[mem[64] + 4] = _483
            require ext_code.size(stor0)
            staticcall stor0.0x2ccb74c8 with:
                    gas gas_remaining wei
                   args _483
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _625 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _628 = mem[_625]
            require mem[_625] == mem[_625]
            _632 = mem[64]
            mem[64] = mem[64] + 128
            mem[_632] = _483
            mem[_632 + 32] = _628
            mem[_632 + 64] = uint16(_601)
            mem[_632 + 96] = uint16(_610)
            _638 = mem[64]
            mem[64] = mem[64] + 224
            mem[_638] = 0
            mem[_638 + 32] = 0
            mem[_638 + 64] = 0
            mem[_638 + 96] = 0
            mem[_638 + 128] = 0
            mem[_638 + 160] = 0
            _640 = mem[64]
            mem[64] = mem[64] + 320
            mem[_640] = 0
            mem[_640 + 32] = 0
            mem[_640 + 64] = 0
            mem[_640 + 96] = 0
            mem[_640 + 128] = 0
            mem[_640 + 160] = 0
            mem[_640 + 192] = 0
            mem[_640 + 224] = 0
            mem[_640 + 256] = 0
            mem[_640 + 288] = 0
            mem[_638 + 192] = _640
            require ext_code.size(stor0)
            staticcall stor0.0xf0344e36 with:
                    gas gas_remaining wei
                   args _501
            mem[mem[64] len 192] = ext_call.return_data[0 len 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _650 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 192
            _653 = mem[_650]
            require mem[_650] == mem[_650]
            _661 = mem[_650 + 32]
            require mem[_650 + 32] == mem[_650 + 48 len 16]
            _668 = mem[_650 + 64]
            require mem[_650 + 64] == mem[_650 + 80 len 16]
            _674 = mem[_650 + 96]
            require mem[_650 + 96] == mem[_650 + 124 len 4]
            _679 = mem[_650 + 128]
            require mem[_650 + 128] == mem[_650 + 156 len 4]
            _684 = mem[_650 + 160]
            require mem[_650 + 160] == mem[_650 + 188 len 4]
            _692 = mem[64]
            mem[64] = mem[64] + 320
            mem[_692] = 0
            mem[_692 + 32] = 0
            mem[_692 + 64] = 0
            mem[_692 + 96] = 0
            mem[_692 + 128] = 0
            mem[_692 + 160] = 0
            mem[_692 + 192] = 0
            mem[_692 + 224] = 0
            mem[_692 + 256] = 0
            mem[_692 + 288] = 0
            require ext_code.size(stor0)
            staticcall stor0.0x183ce75d with:
                    gas gas_remaining wei
                   args _501
            mem[mem[64] len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _701 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 256
            _703 = mem[_701]
            require mem[_701] == mem[_701]
            _712 = mem[_701 + 32]
            require mem[_701 + 32] == mem[_701 + 60 len 4]
            _719 = mem[_701 + 64]
            require mem[_701 + 64] == mem[_701 + 92 len 4]
            _724 = mem[_701 + 96]
            require mem[_701 + 96] == mem[_701 + 124 len 4]
            _730 = mem[_701 + 128]
            require mem[_701 + 128] == mem[_701 + 128]
            _736 = mem[_701 + 160]
            require mem[_701 + 160] == mem[_701 + 160]
            _741 = mem[_701 + 192]
            require mem[_701 + 192] == mem[_701 + 192]
            _744 = mem[_701 + 224]
            require mem[_701 + 224] == mem[_701 + 224]
            require ext_code.size(stor0)
            staticcall stor0.0xf769a0c with:
                    gas gas_remaining wei
                   args _501
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _749 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            _750 = mem[_749]
            require mem[_749] == mem[_749 + 30 len 2]
            _752 = mem[_749 + 32]
            require mem[_749 + 32] == mem[_749 + 62 len 2]
            _756 = mem[64]
            mem[64] = mem[64] + 320
            mem[_756] = _703
            mem[_756 + 32] = uint32(_712)
            mem[_756 + 64] = uint32(_719)
            mem[_756 + 96] = uint32(_724)
            mem[_756 + 128] = _730
            mem[_756 + 160] = _736
            mem[_756 + 192] = _741
            mem[_756 + 224] = _744
            mem[_756 + 256] = uint16(_750)
            mem[_756 + 288] = uint16(_752)
            _757 = mem[64]
            mem[64] = mem[64] + 224
            mem[_757] = _653
            mem[_757 + 32] = uint128(_661)
            mem[_757 + 64] = uint128(_668)
            mem[_757 + 96] = uint32(_674)
            mem[_757 + 128] = uint32(_679)
            mem[_757 + 160] = uint32(_684)
            mem[_757 + 192] = _756
            _758 = mem[64]
            mem[64] = mem[64] + 320
            mem[_758] = idx + arg1
            mem[_758 + 32] = address(_463)
            mem[_758 + 64] = _556
            mem[_758 + 96] = _592
            mem[_758 + 128] = _632
            mem[_758 + 160] = uint16(_490)
            mem[_758 + 192] = uint16(_496)
            mem[_758 + 224] = _501
            mem[_758 + 256] = uint128(_507)
            mem[_758 + 288] = _757
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _758
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _428 = mem[64]
        mem[mem[64]] = 32
        _431 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _431:
            _604 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_604 + 44 len 20]
            _617 = mem[_604 + 64]
            mem[t + 64] = mem[mem[_604 + 64]]
            mem[t + 96] = mem[_617 + 32]
            mem[t + 128] = mem[_617 + 94 len 2]
            mem[t + 160] = mem[_617 + 126 len 2]
            _633 = mem[_604 + 96]
            mem[t + 192] = mem[mem[_604 + 96]]
            mem[t + 224] = mem[_633 + 32]
            mem[t + 256] = mem[_633 + 94 len 2]
            mem[t + 288] = mem[_633 + 126 len 2]
            _655 = mem[_604 + 128]
            mem[t + 320] = mem[mem[_604 + 128]]
            mem[t + 352] = mem[_655 + 32]
            mem[t + 384] = mem[_655 + 94 len 2]
            mem[t + 416] = mem[_655 + 126 len 2]
            mem[t + 448] = mem[_604 + 190 len 2]
            mem[t + 480] = mem[_604 + 222 len 2]
            mem[t + 512] = mem[_604 + 224]
            mem[t + 544] = mem[_604 + 272 len 16]
            _685 = mem[_604 + 288]
            mem[t + 576] = mem[mem[_604 + 288]]
            mem[t + 608] = mem[_685 + 48 len 16]
            mem[t + 640] = mem[_685 + 80 len 16]
            mem[t + 672] = mem[_685 + 124 len 4]
            mem[t + 704] = mem[_685 + 156 len 4]
            mem[t + 736] = mem[_685 + 188 len 4]
            _708 = mem[_685 + 192]
            mem[t + 768] = mem[mem[_685 + 192]]
            mem[t + 800] = mem[_708 + 60 len 4]
            mem[t + 832] = mem[_708 + 92 len 4]
            mem[t + 864] = mem[_708 + 124 len 4]
            mem[t + 896] = mem[_708 + 128]
            mem[t + 928] = mem[_708 + 160]
            mem[t + 960] = mem[_708 + 192]
            mem[t + 992] = mem[_708 + 224]
            mem[t + 1024] = mem[_708 + 286 len 2]
            mem[t + 1056] = mem[_708 + 318 len 2]
            idx = idx + 1
            s = s + 32
            t = t + 1088
            continue 
        return memory
          from mem[64]
           len _428 + (1088 * _431) + -mem[64] + 64
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
    mem[64] = (32 * arg2 - arg1) + 1376
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
    mem[(32 * arg2 - arg1) + 1024] = (32 * arg2 - arg1) + 1056
    mem[(32 * arg2 - arg1) + 416] = (32 * arg2 - arg1) + 832
    mem[var44002] = (32 * arg2 - arg1) + 128
    s = (32 * arg2 - arg1) + 192
    s = (32 * arg2 - arg1) + 128
    s = var44002
    idx = var44003
    while idx - 1:
        _437 = mem[64]
        mem[64] = mem[64] + 320
        mem[_437] = 0
        mem[_437 + 32] = 0
        mem[64] = mem[64] + 128
        mem[(32 * arg2 - arg1) + 448] = 0
        mem[(32 * arg2 - arg1) + 480] = 0
        mem[(32 * arg2 - arg1) + 512] = 0
        mem[(32 * arg2 - arg1) + 544] = 0
        mem[_437 + 64] = (32 * arg2 - arg1) + 448
        mem[64] = mem[64] + 128
        mem[(32 * arg2 - arg1) + 576] = 0
        mem[(32 * arg2 - arg1) + 608] = 0
        mem[(32 * arg2 - arg1) + 640] = 0
        mem[(32 * arg2 - arg1) + 672] = 0
        mem[_437 + 96] = (32 * arg2 - arg1) + 576
        mem[64] = mem[64] + 128
        mem[(32 * arg2 - arg1) + 704] = 0
        mem[(32 * arg2 - arg1) + 736] = 0
        mem[(32 * arg2 - arg1) + 768] = 0
        mem[(32 * arg2 - arg1) + 800] = 0
        mem[_437 + 128] = (32 * arg2 - arg1) + 704
        mem[_437 + 160] = 0
        mem[_437 + 192] = 0
        mem[_437 + 224] = 0
        mem[_437 + 256] = 0
        mem[64] = mem[64] + 224
        mem[(32 * arg2 - arg1) + 832] = 0
        mem[(32 * arg2 - arg1) + 864] = 0
        mem[(32 * arg2 - arg1) + 896] = 0
        mem[(32 * arg2 - arg1) + 928] = 0
        mem[(32 * arg2 - arg1) + 960] = 0
        mem[(32 * arg2 - arg1) + 992] = 0
        mem[64] = mem[64] + 320
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
        mem[(32 * arg2 - arg1) + 1024] = (32 * arg2 - arg1) + 1056
        mem[_437 + 288] = (32 * arg2 - arg1) + 832
        mem[s + 32] = _437
        s = _437 + 64
        s = _437
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg2 - arg1:
        if idx > -arg1 - 1:
            revert with 'NH{q', 17
        _767 = mem[64]
        mem[64] = mem[64] + 320
        mem[_767] = 0
        mem[_767 + 32] = 0
        _768 = mem[64]
        mem[64] = mem[64] + 128
        mem[_768] = 0
        mem[_768 + 32] = 0
        mem[_768 + 64] = 0
        mem[_768 + 96] = 0
        mem[_767 + 64] = _768
        _770 = mem[64]
        mem[64] = mem[64] + 128
        mem[_770] = 0
        mem[_770 + 32] = 0
        mem[_770 + 64] = 0
        mem[_770 + 96] = 0
        mem[_767 + 96] = _770
        _773 = mem[64]
        mem[64] = mem[64] + 128
        mem[_773] = 0
        mem[_773 + 32] = 0
        mem[_773 + 64] = 0
        mem[_773 + 96] = 0
        mem[_767 + 128] = _773
        mem[_767 + 160] = 0
        mem[_767 + 192] = 0
        mem[_767 + 224] = 0
        mem[_767 + 256] = 0
        _774 = mem[64]
        mem[64] = mem[64] + 224
        mem[_774] = 0
        mem[_774 + 32] = 0
        mem[_774 + 64] = 0
        mem[_774 + 96] = 0
        mem[_774 + 128] = 0
        mem[_774 + 160] = 0
        _776 = mem[64]
        mem[64] = mem[64] + 320
        mem[_776] = 0
        mem[_776 + 32] = 0
        mem[_776 + 64] = 0
        mem[_776 + 96] = 0
        mem[_776 + 128] = 0
        mem[_776 + 160] = 0
        mem[_776 + 192] = 0
        mem[_776 + 224] = 0
        mem[_776 + 256] = 0
        mem[_776 + 288] = 0
        mem[_774 + 192] = _776
        mem[_767 + 288] = _774
        require ext_code.size(stor0)
        staticcall stor0.0x969215ba with:
                gas gas_remaining wei
               args (idx + arg1)
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _782 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _783 = mem[_782]
        require mem[_782] == mem[_782 + 12 len 20]
        _786 = mem[_782 + 32]
        require mem[_782 + 32] == mem[_782 + 32]
        _790 = mem[_782 + 64]
        require mem[_782 + 64] == mem[_782 + 64]
        _793 = mem[_782 + 96]
        require mem[_782 + 96] == mem[_782 + 96]
        _796 = mem[_782 + 128]
        require mem[_782 + 128] == mem[_782 + 158 len 2]
        _799 = mem[_782 + 160]
        require mem[_782 + 160] == mem[_782 + 190 len 2]
        _801 = mem[_782 + 192]
        require mem[_782 + 192] == mem[_782 + 192]
        _804 = mem[_782 + 224]
        require mem[_782 + 224] == mem[_782 + 240 len 16]
        _807 = mem[64]
        mem[64] = mem[64] + 128
        mem[_807] = 0
        mem[_807 + 32] = 0
        mem[_807 + 64] = 0
        mem[_807 + 96] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _786
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _813 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _815 = mem[_813]
        require mem[_813] == mem[_813 + 30 len 2]
        _818 = mem[_813 + 32]
        require mem[_813 + 32] == mem[_813 + 62 len 2]
        mem[mem[64] + 4] = _786
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _786
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _825 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _827 = mem[_825]
        require mem[_825] == mem[_825]
        _830 = mem[64]
        mem[64] = mem[64] + 128
        mem[_830] = _786
        mem[_830 + 32] = _827
        mem[_830 + 64] = uint16(_815)
        mem[_830 + 96] = uint16(_818)
        _831 = mem[64]
        mem[64] = mem[64] + 128
        mem[_831] = 0
        mem[_831 + 32] = 0
        mem[_831 + 64] = 0
        mem[_831 + 96] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _790
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _837 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _838 = mem[_837]
        require mem[_837] == mem[_837 + 30 len 2]
        _841 = mem[_837 + 32]
        require mem[_837 + 32] == mem[_837 + 62 len 2]
        mem[mem[64] + 4] = _790
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _790
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _844 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _845 = mem[_844]
        require mem[_844] == mem[_844]
        _846 = mem[64]
        mem[64] = mem[64] + 128
        mem[_846] = _790
        mem[_846 + 32] = _845
        mem[_846 + 64] = uint16(_838)
        mem[_846 + 96] = uint16(_841)
        _847 = mem[64]
        mem[64] = mem[64] + 128
        mem[_847] = 0
        mem[_847 + 32] = 0
        mem[_847 + 64] = 0
        mem[_847 + 96] = 0
        require ext_code.size(stor0)
        staticcall stor0.getStats(uint256 arg1) with:
                gas gas_remaining wei
               args _793
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _850 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _851 = mem[_850]
        require mem[_850] == mem[_850 + 30 len 2]
        _855 = mem[_850 + 32]
        require mem[_850 + 32] == mem[_850 + 62 len 2]
        mem[mem[64] + 4] = _793
        require ext_code.size(stor0)
        staticcall stor0.0x2ccb74c8 with:
                gas gas_remaining wei
               args _793
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _862 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _864 = mem[_862]
        require mem[_862] == mem[_862]
        _866 = mem[64]
        mem[64] = mem[64] + 128
        mem[_866] = _793
        mem[_866 + 32] = _864
        mem[_866 + 64] = uint16(_851)
        mem[_866 + 96] = uint16(_855)
        _869 = mem[64]
        mem[64] = mem[64] + 224
        mem[_869] = 0
        mem[_869 + 32] = 0
        mem[_869 + 64] = 0
        mem[_869 + 96] = 0
        mem[_869 + 128] = 0
        mem[_869 + 160] = 0
        _870 = mem[64]
        mem[64] = mem[64] + 320
        mem[_870] = 0
        mem[_870 + 32] = 0
        mem[_870 + 64] = 0
        mem[_870 + 96] = 0
        mem[_870 + 128] = 0
        mem[_870 + 160] = 0
        mem[_870 + 192] = 0
        mem[_870 + 224] = 0
        mem[_870 + 256] = 0
        mem[_870 + 288] = 0
        mem[_869 + 192] = _870
        require ext_code.size(stor0)
        staticcall stor0.0xf0344e36 with:
                gas gas_remaining wei
               args _801
        mem[mem[64] len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _876 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 192
        _877 = mem[_876]
        require mem[_876] == mem[_876]
        _881 = mem[_876 + 32]
        require mem[_876 + 32] == mem[_876 + 48 len 16]
        _883 = mem[_876 + 64]
        require mem[_876 + 64] == mem[_876 + 80 len 16]
        _886 = mem[_876 + 96]
        require mem[_876 + 96] == mem[_876 + 124 len 4]
        _889 = mem[_876 + 128]
        require mem[_876 + 128] == mem[_876 + 156 len 4]
        _891 = mem[_876 + 160]
        require mem[_876 + 160] == mem[_876 + 188 len 4]
        _895 = mem[64]
        mem[64] = mem[64] + 320
        mem[_895] = 0
        mem[_895 + 32] = 0
        mem[_895 + 64] = 0
        mem[_895 + 96] = 0
        mem[_895 + 128] = 0
        mem[_895 + 160] = 0
        mem[_895 + 192] = 0
        mem[_895 + 224] = 0
        mem[_895 + 256] = 0
        mem[_895 + 288] = 0
        require ext_code.size(stor0)
        staticcall stor0.0x183ce75d with:
                gas gas_remaining wei
               args _801
        mem[mem[64] len 256] = ext_call.return_data[0 len 256]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _901 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 256
        _902 = mem[_901]
        require mem[_901] == mem[_901]
        _906 = mem[_901 + 32]
        require mem[_901 + 32] == mem[_901 + 60 len 4]
        _909 = mem[_901 + 64]
        require mem[_901 + 64] == mem[_901 + 92 len 4]
        _911 = mem[_901 + 96]
        require mem[_901 + 96] == mem[_901 + 124 len 4]
        _914 = mem[_901 + 128]
        require mem[_901 + 128] == mem[_901 + 128]
        _917 = mem[_901 + 160]
        require mem[_901 + 160] == mem[_901 + 160]
        _920 = mem[_901 + 192]
        require mem[_901 + 192] == mem[_901 + 192]
        _921 = mem[_901 + 224]
        require mem[_901 + 224] == mem[_901 + 224]
        require ext_code.size(stor0)
        staticcall stor0.0xf769a0c with:
                gas gas_remaining wei
               args _801
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _924 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        _925 = mem[_924]
        require mem[_924] == mem[_924 + 30 len 2]
        _926 = mem[_924 + 32]
        require mem[_924 + 32] == mem[_924 + 62 len 2]
        _927 = mem[64]
        mem[64] = mem[64] + 320
        mem[_927] = _902
        mem[_927 + 32] = uint32(_906)
        mem[_927 + 64] = uint32(_909)
        mem[_927 + 96] = uint32(_911)
        mem[_927 + 128] = _914
        mem[_927 + 160] = _917
        mem[_927 + 192] = _920
        mem[_927 + 224] = _921
        mem[_927 + 256] = uint16(_925)
        mem[_927 + 288] = uint16(_926)
        _928 = mem[64]
        mem[64] = mem[64] + 224
        mem[_928] = _877
        mem[_928 + 32] = uint128(_881)
        mem[_928 + 64] = uint128(_883)
        mem[_928 + 96] = uint32(_886)
        mem[_928 + 128] = uint32(_889)
        mem[_928 + 160] = uint32(_891)
        mem[_928 + 192] = _927
        _929 = mem[64]
        mem[64] = mem[64] + 320
        mem[_929] = idx + arg1
        mem[_929 + 32] = address(_783)
        mem[_929 + 64] = _830
        mem[_929 + 96] = _846
        mem[_929 + 128] = _866
        mem[_929 + 160] = uint16(_796)
        mem[_929 + 192] = uint16(_799)
        mem[_929 + 224] = _801
        mem[_929 + 256] = uint128(_804)
        mem[_929 + 288] = _928
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = _929
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _765 = mem[64]
    mem[mem[64]] = 32
    _766 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _766:
        _852 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_852 + 44 len 20]
        _858 = mem[_852 + 64]
        mem[t + 64] = mem[mem[_852 + 64]]
        mem[t + 96] = mem[_858 + 32]
        mem[t + 128] = mem[_858 + 94 len 2]
        mem[t + 160] = mem[_858 + 126 len 2]
        _867 = mem[_852 + 96]
        mem[t + 192] = mem[mem[_852 + 96]]
        mem[t + 224] = mem[_867 + 32]
        mem[t + 256] = mem[_867 + 94 len 2]
        mem[t + 288] = mem[_867 + 126 len 2]
        _878 = mem[_852 + 128]
        mem[t + 320] = mem[mem[_852 + 128]]
        mem[t + 352] = mem[_878 + 32]
        mem[t + 384] = mem[_878 + 94 len 2]
        mem[t + 416] = mem[_878 + 126 len 2]
        mem[t + 448] = mem[_852 + 190 len 2]
        mem[t + 480] = mem[_852 + 222 len 2]
        mem[t + 512] = mem[_852 + 224]
        mem[t + 544] = mem[_852 + 272 len 16]
        _892 = mem[_852 + 288]
        mem[t + 576] = mem[mem[_852 + 288]]
        mem[t + 608] = mem[_892 + 48 len 16]
        mem[t + 640] = mem[_892 + 80 len 16]
        mem[t + 672] = mem[_892 + 124 len 4]
        mem[t + 704] = mem[_892 + 156 len 4]
        mem[t + 736] = mem[_892 + 188 len 4]
        _904 = mem[_892 + 192]
        mem[t + 768] = mem[mem[_892 + 192]]
        mem[t + 800] = mem[_904 + 60 len 4]
        mem[t + 832] = mem[_904 + 92 len 4]
        mem[t + 864] = mem[_904 + 124 len 4]
        mem[t + 896] = mem[_904 + 128]
        mem[t + 928] = mem[_904 + 160]
        mem[t + 960] = mem[_904 + 192]
        mem[t + 992] = mem[_904 + 224]
        mem[t + 1024] = mem[_904 + 286 len 2]
        mem[t + 1056] = mem[_904 + 318 len 2]
        idx = idx + 1
        s = s + 32
        t = t + 1088
        continue 
    return memory
      from mem[64]
       len _765 + (1088 * _766) + -mem[64] + 64
}



}
