contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_9701eaa8(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] == address(cd[36])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if ('cd', 100).length != 2:
        revert with 0, 'CurveCryptoAdaptor: PathError'
    if 0 >= ('cd', 100).length:
        revert with 0, 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[96] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    mem[128] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
    mem[192] = 0x50b7545627a5162f82a992c33b87adc75187b218
    mem[224] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
    idx = 0
    while idx < 5:
        if address(('cd', 100)[0]) != mem[(32 * idx) + 108 len 20]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if 1 >= ('cd', 100).length:
            revert with 0, 50
        require ('cd', 100)[1] == address(('cd', 100)[1])
        mem[256] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
        mem[288] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
        mem[320] = 0xc7198437980c041c805a1edcba50c1ce5db95118
        mem[352] = 0x50b7545627a5162f82a992c33b87adc75187b218
        mem[384] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
        s = 0
        while s < 5:
            if address(('cd', 100)[1]) != mem[(32 * s) + 268 len 20]:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            staticcall address(cd[36]).get_dy_underlying(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args idx, s, cd[4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0]
        revert with 0, 'CurveCryptoAdaptor: TokenError'
    revert with 0, 'CurveCryptoAdaptor: TokenError'
}

function sub_a20e5faf(?) payable {
    require calldata.size - 4 >= 224
    require cd[68] == address(cd[68])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] == address(cd[164])
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require cd[196] + ('cd', 196).length + 36 <= calldata.size
    if ('cd', 132).length != 2:
        revert with 0, 'CurveCryptoAdaptor: PathError'
    if 0 >= ('cd', 132).length:
        revert with 0, 50
    require ('cd', 132)[0] == address(('cd', 132)[0])
    mem[96] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    mem[128] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
    mem[192] = 0x50b7545627a5162f82a992c33b87adc75187b218
    mem[224] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
    idx = 0
    while idx < 5:
        if address(('cd', 132)[0]) != mem[(32 * idx) + 108 len 20]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if 1 >= ('cd', 132).length:
            revert with 0, 50
        require ('cd', 132)[1] == address(('cd', 132)[1])
        mem[256] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
        mem[288] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
        mem[320] = 0xc7198437980c041c805a1edcba50c1ce5db95118
        mem[352] = 0x50b7545627a5162f82a992c33b87adc75187b218
        mem[384] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
        s = 0
        while s < 5:
            if address(('cd', 132)[1]) != mem[(32 * s) + 268 len 20]:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            require ext_code.size(address(cd[68]))
            call address(cd[68]).exchange_underlying(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5) with:
                 gas gas_remaining wei
                args idx, s, cd[4], cd[36], address(cd[164])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'CurveCryptoAdaptor: TokenError'
    revert with 0, 'CurveCryptoAdaptor: TokenError'
}

function getState(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 96
    mem[128] = 96
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    staticcall arg1.base_pool() with:
            gas gas_remaining wei
    mem[544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall arg1.pool() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).A() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[416] = ext_call.return_data[0]
    staticcall address(ext_call.return_data[0]).fee() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[480] = ext_call.return_data[0]
    staticcall address(ext_call.return_data[0]).offpeg_fee_multiplier() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[512] = ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 544] = 3
    mem[64] = (7 * ceil32(return_data.size)) + 672
    mem[(7 * ceil32(return_data.size)) + 576 len 96] = call.data[calldata.size len 96]
    mem[448] = (7 * ceil32(return_data.size)) + 544
    idx = 0
    while idx < 3:
        mem[mem[64] + 4] = idx
        staticcall address(ext_call.return_data[0]).balances(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[mem[448]]:
            revert with 0, 50
        mem[(32 * idx) + mem[448] + 32] = mem[_35]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    staticcall address(ext_call.return_data[0]).lp_token() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _34 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _36 = mem[_34]
    require mem[_34] == mem[_34 + 12 len 20]
    _40 = mem[64]
    mem[mem[64]] = 4
    mem[64] = mem[64] + 36
    mem[_40 + 32 len 4] = unknown_0x18160ddd(?????)
    mem[_40 + 36 len ceil32(mem[_40])] = mem[_40 + 32 len ceil32(mem[_40])]
    if ceil32(mem[_40]) <= mem[_40]:
        staticcall address(_36) with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len mem[_40] + _40 + -mem[64] + 32]
        if not return_data.size:
            require ext_call.success
            require mem[96] >= 32
            require mem[96] >= 32
            mem[384] = mem[128]
            mem[352] = block.number
            staticcall address(ext_call.return_data[0]).A() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _206 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[288] = mem[_206]
            staticcall address(ext_call.return_data[0]).D() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _222 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[320] = mem[_222]
            staticcall address(ext_call.return_data[0]).0x92526c0c with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _238 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[224] = mem[_238]
            staticcall address(ext_call.return_data[0]).0xee8de675 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _254 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[256] = mem[_254]
            staticcall address(ext_call.return_data[0]).gamma() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _270 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[160] = mem[_270]
            staticcall address(ext_call.return_data[0]).0x72d4f0e2 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _286 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[192] = mem[_286]
            _298 = mem[64]
            mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
            mem[96] = mem[64]
            if var112002 < 2:
                mem[mem[64] + 100] = var114001
                staticcall address(ext_call.return_data[0]).0xa3f7cdd5 with:
                        gas gas_remaining wei
                       args var114001
                mem[mem[64] + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size) + 96
                require var118002 - var118001 >= 32
                if var122002 >= mem[_298]:
                    revert with 0, 50
                mem[(32 * var122002) + _298 + 32] = var122001
                s = var122002
                t = _298
                u = var122001
                idx = var122002
                while idx != -1:
                    if idx + 1 < 2:
                        mem[mem[64] + 4] = idx + 1
                        staticcall address(ext_call.return_data[0]).0xa3f7cdd5 with:
                                gas gas_remaining wei
                               args (idx + 1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1126 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1139 = mem[_1126]
                        _1146 = mem[96]
                        if idx + 1 >= mem[mem[96]]:
                            revert with 0, 50
                        mem[(32 * idx + 2) + mem[96] + 32] = mem[_1126]
                        s = idx + 1
                        t = _1146
                        u = _1139
                        idx = idx + 1
                        continue 
                    _1114 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    mem[_1114 + 32 len 96] = call.data[calldata.size len 96]
                    mem[128] = _1114
                    idx = 0
                    while idx < 3:
                        mem[mem[64] + 4] = idx
                        staticcall address(ext_call.return_data[0]).balances(uint256 arg1) with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1175 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[mem[128]]:
                            revert with 0, 50
                        mem[(32 * idx) + mem[128] + 32] = mem[_1175]
                        if idx == -1:
                            revert with 0, 17
                        mem[(32 * s) + t + 32] = u
                        idx = idx + 1
                        continue 
                    _1174 = mem[64]
                    mem[mem[64]] = 64
                    mem[mem[64] + 64] = 288
                    _1186 = mem[mem[96]]
                    mem[mem[64] + 352] = mem[mem[96]]
                    idx = 0
                    v = mem[96] + 32
                    w = mem[64] + 384
                    while idx < _1186:
                        mem[w] = mem[v]
                        mem[(32 * s) + t + 32] = u
                        idx = idx + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    _1282 = mem[128]
                    mem[_1174 + 96] = (32 * _1186) + 320
                    _1286 = mem[_1282]
                    mem[_1174 + (32 * _1186) + 384] = mem[_1282]
                    idx = 0
                    v = _1282 + 32
                    w = _1174 + (32 * _1186) + 416
                    while idx < _1286:
                        mem[w] = mem[v]
                        mem[(32 * s) + t + 32] = u
                        idx = idx + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_1174 + 128] = mem[160]
                    mem[_1174 + 160] = mem[192]
                    mem[_1174 + 192] = mem[224]
                    mem[_1174 + 224] = mem[256]
                    mem[_1174 + 256] = mem[288]
                    mem[_1174 + 288] = mem[320]
                    mem[_1174 + 320] = mem[352]
                    mem[_1174 + 32] = (32 * _1186) + (32 * _1286) + 416
                    mem[_1174 + (32 * _1186) + (32 * _1286) + 416] = mem[384]
                    mem[_1174 + (32 * _1186) + (32 * _1286) + 448] = mem[416]
                    mem[_1174 + (32 * _1186) + (32 * _1286) + 480] = 160
                    _1398 = mem[mem[448]]
                    mem[_1174 + (32 * _1186) + (32 * _1286) + 576] = mem[mem[448]]
                    idx = 0
                    v = mem[448] + 32
                    w = _1174 + (32 * _1186) + (32 * _1286) + 608
                    while idx < _1398:
                        mem[w] = mem[v]
                        mem[(32 * s) + t + 32] = u
                        idx = idx + 1
                        v = v + 32
                        w = w + 32
                        continue 
                    mem[_1174 + (32 * _1186) + (32 * _1286) + 512] = mem[480]
                    mem[_1174 + (32 * _1186) + (32 * _1286) + 544] = mem[512]
                    return memory
                      from mem[64]
                       len _1174 + (32 * _1186) + (32 * _1286) + (32 * _1398) + -mem[64] + 608
                revert with 0, 17
            mem[mem[64] + 96] = 3
            mem[64] = mem[64] + 224
            mem[_298 + 128 len 96] = call.data[calldata.size len 96]
            mem[128] = _298 + 96
            idx = 0
            while idx < 3:
                mem[mem[64] + 4] = idx
                staticcall address(ext_call.return_data[0]).balances(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _583 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[mem[128]]:
                    revert with 0, 50
                mem[(32 * idx) + mem[128] + 32] = mem[_583]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _582 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = 288
            _598 = mem[mem[96]]
            mem[mem[64] + 352] = mem[mem[96]]
            mem[mem[64] + 384 len 32 * _598] = mem[mem[96] + 32 len 32 * _598]
            mem[mem[64] + 96] = (32 * _598) + 320
            _750 = mem[mem[128]]
            mem[mem[64] + (32 * _598) + 384] = mem[mem[128]]
            mem[mem[64] + (32 * _598) + 416 len 32 * _750] = mem[mem[128] + 32 len 32 * _750]
            var115001 = _750
            mem[mem[64] + 128] = mem[160]
            mem[mem[64] + 160] = mem[192]
            mem[mem[64] + 192] = mem[224]
            mem[mem[64] + 224] = mem[256]
            mem[mem[64] + 256] = mem[288]
            mem[mem[64] + 288] = mem[320]
            mem[mem[64] + 320] = mem[352]
            mem[mem[64] + 32] = (32 * _598) + (32 * _750) + 416
            mem[_582 + (32 * _598) + (32 * _750) + 416] = mem[384]
            mem[_582 + (32 * _598) + (32 * _750) + 448] = mem[416]
            mem[_582 + (32 * _598) + (32 * _750) + 480] = 160
            _922 = mem[mem[448]]
            mem[_582 + (32 * _598) + (32 * _750) + 576] = mem[mem[448]]
            mem[_582 + (32 * _598) + (32 * _750) + 608 len 32 * _922] = mem[mem[448] + 32 len 32 * _922]
            mem[_582 + (32 * _598) + (32 * _750) + 512] = mem[480]
            mem[_582 + (32 * _598) + (32 * _750) + 544] = mem[512]
            return memory
              from mem[64]
               len _582 + (32 * _598) + (32 * _750) + (32 * _922) + -mem[64] + 608
        _187 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_187] = return_data.size
        mem[_187 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        require return_data.size >= 32
        require return_data.size >= 32
        mem[384] = mem[_187 + 32]
        mem[352] = block.number
        staticcall address(ext_call.return_data[0]).A() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _207 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[288] = mem[_207]
        staticcall address(ext_call.return_data[0]).D() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _223 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[320] = mem[_223]
        staticcall address(ext_call.return_data[0]).0x92526c0c with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _239 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[224] = mem[_239]
        staticcall address(ext_call.return_data[0]).0xee8de675 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _255 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[256] = mem[_255]
        staticcall address(ext_call.return_data[0]).gamma() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _271 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[160] = mem[_271]
        staticcall address(ext_call.return_data[0]).0x72d4f0e2 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _287 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[192] = mem[_287]
        _299 = mem[64]
        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
        mem[96] = mem[64]
        if var112002 < 2:
            mem[mem[64] + 100] = var114001
            staticcall address(ext_call.return_data[0]).0xa3f7cdd5 with:
                    gas gas_remaining wei
                   args var114001
            mem[mem[64] + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 96
            require var118002 - var118001 >= 32
            if var122002 >= mem[_299]:
                revert with 0, 50
            mem[(32 * var122002) + _299 + 32] = var122001
            s = var122002
            t = _299
            u = var122001
            idx = var122002
            while idx != -1:
                if idx + 1 < 2:
                    mem[mem[64] + 4] = idx + 1
                    staticcall address(ext_call.return_data[0]).0xa3f7cdd5 with:
                            gas gas_remaining wei
                           args (idx + 1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1127 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1141 = mem[_1127]
                    _1148 = mem[96]
                    if idx + 1 >= mem[mem[96]]:
                        revert with 0, 50
                    mem[(32 * idx + 2) + mem[96] + 32] = mem[_1127]
                    s = idx + 1
                    t = _1148
                    u = _1141
                    idx = idx + 1
                    continue 
                _1117 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                mem[_1117 + 32 len 96] = call.data[calldata.size len 96]
                mem[128] = _1117
                idx = 0
                while idx < 3:
                    mem[mem[64] + 4] = idx
                    staticcall address(ext_call.return_data[0]).balances(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1177 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[mem[128]]:
                        revert with 0, 50
                    mem[(32 * idx) + mem[128] + 32] = mem[_1177]
                    if idx == -1:
                        revert with 0, 17
                    mem[(32 * s) + t + 32] = u
                    idx = idx + 1
                    continue 
                _1176 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = 288
                _1188 = mem[mem[96]]
                mem[mem[64] + 352] = mem[mem[96]]
                idx = 0
                v = mem[96] + 32
                w = mem[64] + 384
                while idx < _1188:
                    mem[w] = mem[v]
                    mem[(32 * s) + t + 32] = u
                    idx = idx + 1
                    v = v + 32
                    w = w + 32
                    continue 
                _1283 = mem[128]
                mem[_1176 + 96] = (32 * _1188) + 320
                _1287 = mem[_1283]
                mem[_1176 + (32 * _1188) + 384] = mem[_1283]
                idx = 0
                v = _1283 + 32
                w = _1176 + (32 * _1188) + 416
                while idx < _1287:
                    mem[w] = mem[v]
                    mem[(32 * s) + t + 32] = u
                    idx = idx + 1
                    v = v + 32
                    w = w + 32
                    continue 
                mem[_1176 + 128] = mem[160]
                mem[_1176 + 160] = mem[192]
                mem[_1176 + 192] = mem[224]
                mem[_1176 + 224] = mem[256]
                mem[_1176 + 256] = mem[288]
                mem[_1176 + 288] = mem[320]
                mem[_1176 + 320] = mem[352]
                mem[_1176 + 32] = (32 * _1188) + (32 * _1287) + 416
                mem[_1176 + (32 * _1188) + (32 * _1287) + 416] = mem[384]
                mem[_1176 + (32 * _1188) + (32 * _1287) + 448] = mem[416]
                mem[_1176 + (32 * _1188) + (32 * _1287) + 480] = 160
                _1399 = mem[mem[448]]
                mem[_1176 + (32 * _1188) + (32 * _1287) + 576] = mem[mem[448]]
                idx = 0
                v = mem[448] + 32
                w = _1176 + (32 * _1188) + (32 * _1287) + 608
                while idx < _1399:
                    mem[w] = mem[v]
                    mem[(32 * s) + t + 32] = u
                    idx = idx + 1
                    v = v + 32
                    w = w + 32
                    continue 
                mem[_1176 + (32 * _1188) + (32 * _1287) + 512] = mem[480]
                mem[_1176 + (32 * _1188) + (32 * _1287) + 544] = mem[512]
                return memory
                  from mem[64]
                   len _1176 + (32 * _1188) + (32 * _1287) + (32 * _1399) + -mem[64] + 608
            revert with 0, 17
        mem[mem[64] + 96] = 3
        mem[64] = mem[64] + 224
        mem[_299 + 128 len 96] = call.data[calldata.size len 96]
        mem[128] = _299 + 96
        idx = 0
        while idx < 3:
            mem[mem[64] + 4] = idx
            staticcall address(ext_call.return_data[0]).balances(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _585 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[mem[128]]:
                revert with 0, 50
            mem[(32 * idx) + mem[128] + 32] = mem[_585]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _584 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = 288
        _602 = mem[mem[96]]
        mem[mem[64] + 352] = mem[mem[96]]
        mem[mem[64] + 384 len 32 * _602] = mem[mem[96] + 32 len 32 * _602]
        _744 = mem[128]
        mem[mem[64] + 96] = (32 * _602) + 320
        _753 = mem[mem[128]]
        mem[mem[64] + (32 * _602) + 384] = mem[mem[128]]
        mem[mem[64] + (32 * _602) + 416 len 32 * _753] = mem[_744 + 32 len 32 * _753]
        var115001 = _753
        mem[mem[64] + 128] = mem[160]
        mem[mem[64] + 160] = mem[192]
        mem[mem[64] + 192] = mem[224]
        mem[mem[64] + 224] = mem[256]
        mem[mem[64] + 256] = mem[288]
        mem[mem[64] + 288] = mem[320]
        mem[mem[64] + 320] = mem[352]
        mem[mem[64] + 32] = (32 * _602) + (32 * _753) + 416
        mem[_584 + (32 * _602) + (32 * _753) + 416] = mem[384]
        mem[_584 + (32 * _602) + (32 * _753) + 448] = mem[416]
        mem[_584 + (32 * _602) + (32 * _753) + 480] = 160
        _923 = mem[mem[448]]
        mem[_584 + (32 * _602) + (32 * _753) + 576] = mem[mem[448]]
        mem[_584 + (32 * _602) + (32 * _753) + 608 len 32 * _923] = mem[mem[448] + 32 len 32 * _923]
        mem[_584 + (32 * _602) + (32 * _753) + 512] = mem[480]
        mem[_584 + (32 * _602) + (32 * _753) + 544] = mem[512]
        return memory
          from mem[64]
           len _584 + (32 * _602) + (32 * _753) + (32 * _923) + -mem[64] + 608
    mem[_40 + mem[_40] + 36] = 0
    staticcall address(_36) with:
            gas gas_remaining wei
           args mem[mem[64] + 4 len mem[_40] + _40 + -mem[64] + 32]
    if not return_data.size:
        require ext_call.success
        require mem[96] >= 32
        require mem[96] >= 32
        mem[384] = mem[128]
        mem[352] = block.number
        staticcall address(ext_call.return_data[0]).A() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _212 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[288] = mem[_212]
        staticcall address(ext_call.return_data[0]).D() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _228 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[320] = mem[_228]
        staticcall address(ext_call.return_data[0]).0x92526c0c with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _244 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[224] = mem[_244]
        staticcall address(ext_call.return_data[0]).0xee8de675 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _260 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[256] = mem[_260]
        staticcall address(ext_call.return_data[0]).gamma() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _276 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[160] = mem[_276]
        staticcall address(ext_call.return_data[0]).0x72d4f0e2 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _292 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[192] = mem[_292]
        _300 = mem[64]
        mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
        mem[96] = mem[64]
        if var113002 < 2:
            mem[mem[64] + 100] = var115001
            staticcall address(ext_call.return_data[0]).0xa3f7cdd5 with:
                    gas gas_remaining wei
                   args var115001
            mem[mem[64] + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 96
            require var119002 - var119001 >= 32
            if var123002 >= mem[_300]:
                revert with 0, 50
            mem[(32 * var123002) + _300 + 32] = var123001
            s = var123002
            t = _300
            u = var123001
            idx = var123002
            while idx != -1:
                if idx + 1 < 2:
                    mem[mem[64] + 4] = idx + 1
                    staticcall address(ext_call.return_data[0]).0xa3f7cdd5 with:
                            gas gas_remaining wei
                           args (idx + 1)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1128 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1143 = mem[_1128]
                    _1150 = mem[96]
                    if idx + 1 >= mem[mem[96]]:
                        revert with 0, 50
                    mem[(32 * idx + 2) + mem[96] + 32] = mem[_1128]
                    s = idx + 1
                    t = _1150
                    u = _1143
                    idx = idx + 1
                    continue 
                _1120 = mem[64]
                mem[mem[64]] = 3
                mem[64] = mem[64] + 128
                mem[_1120 + 32 len 96] = call.data[calldata.size len 96]
                mem[128] = _1120
                idx = 0
                while idx < 3:
                    mem[mem[64] + 4] = idx
                    staticcall address(ext_call.return_data[0]).balances(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1179 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[mem[128]]:
                        revert with 0, 50
                    mem[(32 * idx) + mem[128] + 32] = mem[_1179]
                    if idx == -1:
                        revert with 0, 17
                    mem[(32 * s) + t + 32] = u
                    idx = idx + 1
                    continue 
                _1178 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = 288
                _1190 = mem[mem[96]]
                mem[mem[64] + 352] = mem[mem[96]]
                idx = 0
                v = mem[96] + 32
                w = mem[64] + 384
                while idx < _1190:
                    mem[w] = mem[v]
                    mem[(32 * s) + t + 32] = u
                    idx = idx + 1
                    v = v + 32
                    w = w + 32
                    continue 
                _1284 = mem[128]
                mem[_1178 + 96] = (32 * _1190) + 320
                _1288 = mem[_1284]
                mem[_1178 + (32 * _1190) + 384] = mem[_1284]
                idx = 0
                v = _1284 + 32
                w = _1178 + (32 * _1190) + 416
                while idx < _1288:
                    mem[w] = mem[v]
                    mem[(32 * s) + t + 32] = u
                    idx = idx + 1
                    v = v + 32
                    w = w + 32
                    continue 
                mem[_1178 + 128] = mem[160]
                mem[_1178 + 160] = mem[192]
                mem[_1178 + 192] = mem[224]
                mem[_1178 + 224] = mem[256]
                mem[_1178 + 256] = mem[288]
                mem[_1178 + 288] = mem[320]
                mem[_1178 + 320] = mem[352]
                mem[_1178 + 32] = (32 * _1190) + (32 * _1288) + 416
                mem[_1178 + (32 * _1190) + (32 * _1288) + 416] = mem[384]
                mem[_1178 + (32 * _1190) + (32 * _1288) + 448] = mem[416]
                mem[_1178 + (32 * _1190) + (32 * _1288) + 480] = 160
                _1400 = mem[mem[448]]
                mem[_1178 + (32 * _1190) + (32 * _1288) + 576] = mem[mem[448]]
                idx = 0
                v = mem[448] + 32
                w = _1178 + (32 * _1190) + (32 * _1288) + 608
                while idx < _1400:
                    mem[w] = mem[v]
                    mem[(32 * s) + t + 32] = u
                    idx = idx + 1
                    v = v + 32
                    w = w + 32
                    continue 
                mem[_1178 + (32 * _1190) + (32 * _1288) + 512] = mem[480]
                mem[_1178 + (32 * _1190) + (32 * _1288) + 544] = mem[512]
                return memory
                  from mem[64]
                   len _1178 + (32 * _1190) + (32 * _1288) + (32 * _1400) + -mem[64] + 608
            revert with 0, 17
        mem[mem[64] + 96] = 3
        mem[64] = mem[64] + 224
        mem[_300 + 128 len 96] = call.data[calldata.size len 96]
        mem[128] = _300 + 96
        idx = 0
        while idx < 3:
            mem[mem[64] + 4] = idx
            staticcall address(ext_call.return_data[0]).balances(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _587 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[mem[128]]:
                revert with 0, 50
            mem[(32 * idx) + mem[128] + 32] = mem[_587]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _586 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = 288
        _606 = mem[mem[96]]
        mem[mem[64] + 352] = mem[mem[96]]
        mem[mem[64] + 384 len 32 * _606] = mem[mem[96] + 32 len 32 * _606]
        _746 = mem[128]
        mem[mem[64] + 96] = (32 * _606) + 320
        _756 = mem[mem[128]]
        mem[mem[64] + (32 * _606) + 384] = mem[mem[128]]
        mem[mem[64] + (32 * _606) + 416 len 32 * _756] = mem[_746 + 32 len 32 * _756]
        mem[mem[64] + 128] = mem[160]
        mem[mem[64] + 160] = mem[192]
        mem[mem[64] + 192] = mem[224]
        mem[mem[64] + 224] = mem[256]
        mem[mem[64] + 256] = mem[288]
        mem[mem[64] + 288] = mem[320]
        mem[mem[64] + 320] = mem[352]
        mem[mem[64] + 32] = (32 * _606) + (32 * _756) + 416
        mem[_586 + (32 * _606) + (32 * _756) + 416] = mem[384]
        mem[_586 + (32 * _606) + (32 * _756) + 448] = mem[416]
        mem[_586 + (32 * _606) + (32 * _756) + 480] = 160
        _924 = mem[mem[448]]
        mem[_586 + (32 * _606) + (32 * _756) + 576] = mem[mem[448]]
        mem[_586 + (32 * _606) + (32 * _756) + 608 len 32 * _924] = mem[mem[448] + 32 len 32 * _924]
        var122001 = _924
        var122002 = mem[448] + (32 * _924) + 32
        mem[_586 + (32 * _606) + (32 * _756) + 512] = mem[480]
        mem[_586 + (32 * _606) + (32 * _756) + 544] = mem[512]
        return memory
          from mem[64]
           len _586 + (32 * _606) + (32 * _756) + (32 * _924) + -mem[64] + 608
    _189 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size) + 1
    mem[_189] = return_data.size
    mem[_189 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require ext_call.success
    require return_data.size >= 32
    require return_data.size >= 32
    mem[384] = mem[_189 + 32]
    mem[352] = block.number
    staticcall address(ext_call.return_data[0]).A() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _213 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[288] = mem[_213]
    staticcall address(ext_call.return_data[0]).D() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _229 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[320] = mem[_229]
    staticcall address(ext_call.return_data[0]).0x92526c0c with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _245 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[224] = mem[_245]
    staticcall address(ext_call.return_data[0]).0xee8de675 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _261 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[256] = mem[_261]
    staticcall address(ext_call.return_data[0]).gamma() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _277 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[160] = mem[_277]
    staticcall address(ext_call.return_data[0]).0x72d4f0e2 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _293 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[192] = mem[_293]
    _301 = mem[64]
    mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
    mem[96] = mem[64]
    if var113002 < 2:
        mem[mem[64] + 100] = var115001
        staticcall address(ext_call.return_data[0]).0xa3f7cdd5 with:
                gas gas_remaining wei
               args var115001
        mem[mem[64] + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size) + 96
        require var119002 - var119001 >= 32
        if var123002 >= mem[_301]:
            revert with 0, 50
        mem[(32 * var123002) + _301 + 32] = var123001
        s = var123002
        t = _301
        u = var123001
        idx = var123002
        while idx != -1:
            if idx + 1 < 2:
                mem[mem[64] + 4] = idx + 1
                staticcall address(ext_call.return_data[0]).0xa3f7cdd5 with:
                        gas gas_remaining wei
                       args (idx + 1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1129 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1145 = mem[_1129]
                _1152 = mem[96]
                if idx + 1 >= mem[mem[96]]:
                    revert with 0, 50
                mem[(32 * idx + 2) + mem[96] + 32] = mem[_1129]
                s = idx + 1
                t = _1152
                u = _1145
                idx = idx + 1
                continue 
            _1123 = mem[64]
            mem[mem[64]] = 3
            mem[64] = mem[64] + 128
            mem[_1123 + 32 len 96] = call.data[calldata.size len 96]
            mem[128] = _1123
            idx = 0
            while idx < 3:
                mem[mem[64] + 4] = idx
                staticcall address(ext_call.return_data[0]).balances(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1181 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[mem[128]]:
                    revert with 0, 50
                mem[(32 * idx) + mem[128] + 32] = mem[_1181]
                if idx == -1:
                    revert with 0, 17
                mem[(32 * s) + t + 32] = u
                idx = idx + 1
                continue 
            _1180 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = 288
            _1192 = mem[mem[96]]
            mem[mem[64] + 352] = mem[mem[96]]
            idx = 0
            v = mem[96] + 32
            w = mem[64] + 384
            while idx < _1192:
                mem[w] = mem[v]
                mem[(32 * s) + t + 32] = u
                idx = idx + 1
                v = v + 32
                w = w + 32
                continue 
            _1285 = mem[128]
            mem[_1180 + 96] = (32 * _1192) + 320
            _1289 = mem[_1285]
            mem[_1180 + (32 * _1192) + 384] = mem[_1285]
            idx = 0
            v = _1285 + 32
            w = _1180 + (32 * _1192) + 416
            while idx < _1289:
                mem[w] = mem[v]
                mem[(32 * s) + t + 32] = u
                idx = idx + 1
                v = v + 32
                w = w + 32
                continue 
            mem[_1180 + 128] = mem[160]
            mem[_1180 + 160] = mem[192]
            mem[_1180 + 192] = mem[224]
            mem[_1180 + 224] = mem[256]
            mem[_1180 + 256] = mem[288]
            mem[_1180 + 288] = mem[320]
            mem[_1180 + 320] = mem[352]
            mem[_1180 + 32] = (32 * _1192) + (32 * _1289) + 416
            mem[_1180 + (32 * _1192) + (32 * _1289) + 416] = mem[384]
            mem[_1180 + (32 * _1192) + (32 * _1289) + 448] = mem[416]
            mem[_1180 + (32 * _1192) + (32 * _1289) + 480] = 160
            _1401 = mem[mem[448]]
            mem[_1180 + (32 * _1192) + (32 * _1289) + 576] = mem[mem[448]]
            idx = 0
            v = mem[448] + 32
            w = _1180 + (32 * _1192) + (32 * _1289) + 608
            while idx < _1401:
                mem[w] = mem[v]
                mem[(32 * s) + t + 32] = u
                idx = idx + 1
                v = v + 32
                w = w + 32
                continue 
            mem[_1180 + (32 * _1192) + (32 * _1289) + 512] = mem[480]
            mem[_1180 + (32 * _1192) + (32 * _1289) + 544] = mem[512]
            return memory
              from mem[64]
               len _1180 + (32 * _1192) + (32 * _1289) + (32 * _1401) + -mem[64] + 608
        revert with 0, 17
    mem[mem[64] + 96] = 3
    mem[64] = mem[64] + 224
    mem[_301 + 128 len 96] = call.data[calldata.size len 96]
    mem[128] = _301 + 96
    idx = 0
    while idx < 3:
        mem[mem[64] + 4] = idx
        staticcall address(ext_call.return_data[0]).balances(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _589 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[mem[128]]:
            revert with 0, 50
        mem[(32 * idx) + mem[128] + 32] = mem[_589]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _588 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = 288
    _610 = mem[mem[96]]
    mem[mem[64] + 352] = mem[mem[96]]
    mem[mem[64] + 384 len 32 * _610] = mem[mem[96] + 32 len 32 * _610]
    _748 = mem[128]
    mem[mem[64] + 96] = (32 * _610) + 320
    _759 = mem[mem[128]]
    mem[mem[64] + (32 * _610) + 384] = mem[mem[128]]
    mem[mem[64] + (32 * _610) + 416 len 32 * _759] = mem[_748 + 32 len 32 * _759]
    mem[mem[64] + 128] = mem[160]
    mem[mem[64] + 160] = mem[192]
    mem[mem[64] + 192] = mem[224]
    mem[mem[64] + 224] = mem[256]
    mem[mem[64] + 256] = mem[288]
    mem[mem[64] + 288] = mem[320]
    mem[mem[64] + 320] = mem[352]
    mem[mem[64] + 32] = (32 * _610) + (32 * _759) + 416
    mem[_588 + (32 * _610) + (32 * _759) + 416] = mem[384]
    mem[_588 + (32 * _610) + (32 * _759) + 448] = mem[416]
    mem[_588 + (32 * _610) + (32 * _759) + 480] = 160
    _925 = mem[mem[448]]
    mem[_588 + (32 * _610) + (32 * _759) + 576] = mem[mem[448]]
    mem[_588 + (32 * _610) + (32 * _759) + 608 len 32 * _925] = mem[mem[448] + 32 len 32 * _925]
    var122001 = _925
    var122002 = mem[448] + (32 * _925) + 32
    mem[_588 + (32 * _610) + (32 * _759) + 512] = mem[480]
    mem[_588 + (32 * _610) + (32 * _759) + 544] = mem[512]
    return memory
      from mem[64]
       len _588 + (32 * _610) + (32 * _759) + (32 * _925) + -mem[64] + 608
}



}
