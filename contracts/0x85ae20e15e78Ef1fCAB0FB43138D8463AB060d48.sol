contract main {




// =====================  Runtime code  =====================


address sub_f5303b88Address;
address oracleAddress;

function oracle() payable {
    return oracleAddress
}

function sub_f5303b88(?) payable {
    return sub_f5303b88Address
}

function _fallback() payable {
    revert
}

function sub_35679249(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        idx = 0
        while uint32(idx) < arg1.length:
            require uint32(idx) < arg1.length
            _37 = mem[(32 * uint32(idx)) + 128]
            mem[(64 * arg1.length) + 164] = mem[(32 * uint32(idx)) + 140 len 20]
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_37)
            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint32(idx) < mem[(32 * arg1.length) + 128]
            mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[2718 len 32 * arg1.length]
        idx = 0
        while uint32(idx) < arg1.length:
            require uint32(idx) < arg1.length
            _43 = mem[(32 * uint32(idx)) + 128]
            mem[(64 * arg1.length) + 164] = mem[(32 * uint32(idx)) + 140 len 20]
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getUnderlyingPrice(address arg1) with:
                    gas gas_remaining wei
                   args address(_43)
            mem[(64 * arg1.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require uint32(idx) < mem[(32 * arg1.length) + 128]
            mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] = ext_call.return_data[0]
            idx = idx + 1
            continue 
    mem[(64 * arg1.length) + 160] = 32
    mem[(64 * arg1.length) + 192] = mem[(32 * arg1.length) + 128]
    mem[(64 * arg1.length) + 224 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    return 32, mem[(64 * arg1.length) + 192 len (32 * mem[(32 * arg1.length) + 128]) + 32]
}

function sub_e484b36c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        mem[(64 * arg1.length) + 160] = arg1.length
        if not arg1.length:
            idx = 0
            while uint32(idx) < arg1.length:
                require uint32(idx) < arg1.length
                require ext_code.size(sub_f5303b88Address)
                staticcall sub_f5303b88Address.getAccountLiquidity(address arg1) with:
                        gas gas_remaining wei
                       args mem[(32 * uint32(idx)) + 140 len 20]
                mem[(98 * arg1.length) + 192 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require uint32(idx) < mem[(32 * arg1.length) + 128]
                require uint32(idx) < mem[(64 * arg1.length) + 160]
                mem[(32 * uint32(idx)) + (64 * arg1.length) + 192] = ext_call.return_data[64]
                mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] = ext_call.return_data[32]
                idx = idx + 1
                continue 
            mem[(98 * arg1.length) + 192] = 64
            mem[(98 * arg1.length) + 256] = mem[(32 * arg1.length) + 128]
            mem[(98 * arg1.length) + 288 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[(98 * arg1.length) + 224] = (32 * mem[(32 * arg1.length) + 128]) + 96
            mem[(32 * mem[(32 * arg1.length) + 128]) + (98 * arg1.length) + 288] = mem[(64 * arg1.length) + 160]
            _153 = mem[(64 * arg1.length) + 160]
            mem[(32 * mem[(32 * arg1.length) + 128]) + (98 * arg1.length) + 320 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            return 64, mem[(98 * arg1.length) + 224 len (32 * _153) + (32 * mem[(32 * arg1.length) + 128]) + 96]
        mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[2718 len 32 * arg1.length]
        idx = 0
        while uint32(idx) < arg1.length:
            require uint32(idx) < arg1.length
            require ext_code.size(sub_f5303b88Address)
            staticcall sub_f5303b88Address.getAccountLiquidity(address arg1) with:
                    gas gas_remaining wei
                   args mem[(32 * uint32(idx)) + 140 len 20]
            mem[(98 * arg1.length) + 192 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require uint32(idx) < mem[(32 * arg1.length) + 128]
            require uint32(idx) < mem[(64 * arg1.length) + 160]
            mem[(32 * uint32(idx)) + (64 * arg1.length) + 192] = ext_call.return_data[64]
            mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] = ext_call.return_data[32]
            idx = idx + 1
            continue 
        mem[(98 * arg1.length) + 192] = 64
        mem[(98 * arg1.length) + 256] = mem[(32 * arg1.length) + 128]
        mem[(98 * arg1.length) + 288 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[(98 * arg1.length) + 224] = (32 * mem[(32 * arg1.length) + 128]) + 96
        mem[(32 * mem[(32 * arg1.length) + 128]) + (98 * arg1.length) + 288] = mem[(64 * arg1.length) + 160]
        _156 = mem[(64 * arg1.length) + 160]
        mem[(32 * mem[(32 * arg1.length) + 128]) + (98 * arg1.length) + 320 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        return 64, mem[(98 * arg1.length) + 224 len (32 * _156) + (32 * mem[(32 * arg1.length) + 128]) + 96]
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[2718 len 32 * arg1.length]
    mem[(64 * arg1.length) + 160] = arg1.length
    if not arg1.length:
        idx = 0
        while uint32(idx) < arg1.length:
            require uint32(idx) < arg1.length
            require ext_code.size(sub_f5303b88Address)
            staticcall sub_f5303b88Address.getAccountLiquidity(address arg1) with:
                    gas gas_remaining wei
                   args mem[(32 * uint32(idx)) + 140 len 20]
            mem[(98 * arg1.length) + 192 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require uint32(idx) < mem[(32 * arg1.length) + 128]
            require uint32(idx) < mem[(64 * arg1.length) + 160]
            mem[(32 * uint32(idx)) + (64 * arg1.length) + 192] = ext_call.return_data[64]
            mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] = ext_call.return_data[32]
            idx = idx + 1
            continue 
        mem[(98 * arg1.length) + 192] = 64
        mem[(98 * arg1.length) + 256] = mem[(32 * arg1.length) + 128]
        mem[(98 * arg1.length) + 288 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[(98 * arg1.length) + 224] = (32 * mem[(32 * arg1.length) + 128]) + 96
        mem[(32 * mem[(32 * arg1.length) + 128]) + (98 * arg1.length) + 288] = mem[(64 * arg1.length) + 160]
        _159 = mem[(64 * arg1.length) + 160]
        mem[(32 * mem[(32 * arg1.length) + 128]) + (98 * arg1.length) + 320 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        return 64, mem[(98 * arg1.length) + 224 len (32 * _159) + (32 * mem[(32 * arg1.length) + 128]) + 96]
    mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[2718 len 32 * arg1.length]
    idx = 0
    while uint32(idx) < arg1.length:
        require uint32(idx) < arg1.length
        require ext_code.size(sub_f5303b88Address)
        staticcall sub_f5303b88Address.getAccountLiquidity(address arg1) with:
                gas gas_remaining wei
               args mem[(32 * uint32(idx)) + 140 len 20]
        mem[(98 * arg1.length) + 192 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require uint32(idx) < mem[(32 * arg1.length) + 128]
        require uint32(idx) < mem[(64 * arg1.length) + 160]
        mem[(32 * uint32(idx)) + (64 * arg1.length) + 192] = ext_call.return_data[64]
        mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] = ext_call.return_data[32]
        idx = idx + 1
        continue 
    mem[(98 * arg1.length) + 192] = 64
    mem[(98 * arg1.length) + 256] = mem[(32 * arg1.length) + 128]
    mem[(98 * arg1.length) + 288 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    mem[(98 * arg1.length) + 224] = (32 * mem[(32 * arg1.length) + 128]) + 96
    mem[(32 * mem[(32 * arg1.length) + 128]) + (98 * arg1.length) + 288] = mem[(64 * arg1.length) + 160]
    _162 = mem[(64 * arg1.length) + 160]
    mem[(32 * mem[(32 * arg1.length) + 128]) + (98 * arg1.length) + 320 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
    return 64, mem[(98 * arg1.length) + 224 len (32 * _162) + (32 * mem[(32 * arg1.length) + 128]) + 96]
}

function sub_37addf1d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg2.length
    if not arg2.length:
        mem[(64 * arg2.length) + 160] = arg2.length
        if not arg2.length:
            mem[(98 * arg2.length) + 192] = arg2.length
            if not arg2.length:
                mem[(131 * arg2.length) + 224] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
                mem[(131 * arg2.length) + 228] = arg1
                require ext_code.size(sub_f5303b88Address)
                staticcall sub_f5303b88Address.getAssetsIn(address arg1) with:
                        gas gas_remaining wei
                       args mem[(131 * arg2.length) + 228 len (64 * arg2.length) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(131 * arg2.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (131 * arg2.length) + ceil32(return_data.size) + 224
                require return_data.size >= 32
                _31 = mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64
                require mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 <= 4294967296
                require mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 32 <= return_data.size
                require mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224] <= 4294967296 and mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + (32 * mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224]) + 32 <= return_data.size
                mem[(131 * arg2.length) + ceil32(return_data.size) + 224] = mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224]
                _55 = mem[(131 * arg2.length) + _31 + 224]
                mem[(131 * arg2.length) + ceil32(return_data.size) + 256 len floor32(mem[(131 * arg2.length) + _31 + 224])] = mem[(131 * arg2.length) + _31 + 256 len floor32(mem[(131 * arg2.length) + _31 + 224])]
                idx = 0
                while uint32(idx) < arg2.length:
                    _760 = mem[(131 * arg2.length) + ceil32(return_data.size) + 224]
                    s = 0
                    while uint32(s) < _760:
                        require uint32(idx) < arg2.length
                        require uint32(s) < mem[(131 * arg2.length) + ceil32(return_data.size) + 224]
                        if mem[(32 * uint32(s)) + (131 * arg2.length) + ceil32(return_data.size) + 268 len 20] == mem[(32 * uint32(idx)) + 140 len 20]:
                            require uint32(idx) < arg2.length
                            require ext_code.size(mem[(32 * uint32(idx)) + 140 len 20])
                            staticcall mem[(32 * uint32(idx)) + 140 len 20].getAccountSnapshot(address arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[(32 * _55) + (131 * arg2.length) + ceil32(return_data.size) + 256 len 128] = ext_call.return_data[0 len 128]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 128
                            require uint32(idx) < mem[(32 * arg2.length) + 128]
                            require uint32(idx) < mem[(64 * arg2.length) + 160]
                            require uint32(idx) < mem[(98 * arg2.length) + 192]
                            mem[(32 * uint32(idx)) + (98 * arg2.length) + 224] = ext_call.return_data[96]
                            mem[(32 * uint32(idx)) + (64 * arg2.length) + 192] = ext_call.return_data[64]
                            mem[(32 * uint32(idx)) + (32 * arg2.length) + 160] = ext_call.return_data[32]
                        s = s + 1
                        continue 
                    idx = idx + 1
                    continue 
                mem[(32 * _55) + (131 * arg2.length) + ceil32(return_data.size) + 256] = 96
                mem[(32 * _55) + (131 * arg2.length) + ceil32(return_data.size) + 352] = mem[(32 * arg2.length) + 128]
                mem[(32 * _55) + (131 * arg2.length) + ceil32(return_data.size) + 384 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
                mem[(32 * _55) + (131 * arg2.length) + ceil32(return_data.size) + 288] = (32 * mem[(32 * arg2.length) + 128]) + 128
                mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _55) + (131 * arg2.length) + ceil32(return_data.size) + 384] = mem[(64 * arg2.length) + 160]
                _769 = mem[(64 * arg2.length) + 160]
                mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _55) + (131 * arg2.length) + ceil32(return_data.size) + 416 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
                mem[(32 * _55) + (131 * arg2.length) + ceil32(return_data.size) + 320] = (32 * _769) + (32 * mem[(32 * arg2.length) + 128]) + 160
                mem[(32 * _769) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _55) + (131 * arg2.length) + ceil32(return_data.size) + 416] = mem[(98 * arg2.length) + 192]
                _953 = mem[(98 * arg2.length) + 192]
                mem[(32 * _769) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _55) + (131 * arg2.length) + ceil32(return_data.size) + 448 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
                return 96, 
                       mem[(32 * _55) + (131 * arg2.length) + ceil32(return_data.size) + 288 len (32 * _953) + (32 * _769) + (32 * mem[(32 * arg2.length) + 128]) + 160]
            mem[(98 * arg2.length) + 224 len 32 * arg2.length] = code.data[2718 len 32 * arg2.length]
            mem[(131 * arg2.length) + 224] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
            mem[(131 * arg2.length) + 228] = arg1
            require ext_code.size(sub_f5303b88Address)
            staticcall sub_f5303b88Address.getAssetsIn(address arg1) with:
                    gas gas_remaining wei
                   args mem[(131 * arg2.length) + 228 len (64 * arg2.length) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(131 * arg2.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (131 * arg2.length) + ceil32(return_data.size) + 224
            require return_data.size >= 32
            _38 = mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64
            require mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 <= 4294967296
            require mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 32 <= return_data.size
            require mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224] <= 4294967296 and mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + (32 * mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224]) + 32 <= return_data.size
            mem[(131 * arg2.length) + ceil32(return_data.size) + 224] = mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224]
            _61 = mem[(131 * arg2.length) + _38 + 224]
            mem[(131 * arg2.length) + ceil32(return_data.size) + 256 len floor32(mem[(131 * arg2.length) + _38 + 224])] = mem[(131 * arg2.length) + _38 + 256 len floor32(mem[(131 * arg2.length) + _38 + 224])]
            idx = 0
            while uint32(idx) < arg2.length:
                _761 = mem[(131 * arg2.length) + ceil32(return_data.size) + 224]
                s = 0
                while uint32(s) < _761:
                    require uint32(idx) < arg2.length
                    require uint32(s) < mem[(131 * arg2.length) + ceil32(return_data.size) + 224]
                    if mem[(32 * uint32(s)) + (131 * arg2.length) + ceil32(return_data.size) + 268 len 20] == mem[(32 * uint32(idx)) + 140 len 20]:
                        require uint32(idx) < arg2.length
                        require ext_code.size(mem[(32 * uint32(idx)) + 140 len 20])
                        staticcall mem[(32 * uint32(idx)) + 140 len 20].getAccountSnapshot(address arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[(32 * _61) + (131 * arg2.length) + ceil32(return_data.size) + 256 len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require uint32(idx) < mem[(32 * arg2.length) + 128]
                        require uint32(idx) < mem[(64 * arg2.length) + 160]
                        require uint32(idx) < mem[(98 * arg2.length) + 192]
                        mem[(32 * uint32(idx)) + (98 * arg2.length) + 224] = ext_call.return_data[96]
                        mem[(32 * uint32(idx)) + (64 * arg2.length) + 192] = ext_call.return_data[64]
                        mem[(32 * uint32(idx)) + (32 * arg2.length) + 160] = ext_call.return_data[32]
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            mem[(32 * _61) + (131 * arg2.length) + ceil32(return_data.size) + 256] = 96
            mem[(32 * _61) + (131 * arg2.length) + ceil32(return_data.size) + 352] = mem[(32 * arg2.length) + 128]
            mem[(32 * _61) + (131 * arg2.length) + ceil32(return_data.size) + 384 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[(32 * _61) + (131 * arg2.length) + ceil32(return_data.size) + 288] = (32 * mem[(32 * arg2.length) + 128]) + 128
            mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _61) + (131 * arg2.length) + ceil32(return_data.size) + 384] = mem[(64 * arg2.length) + 160]
            _773 = mem[(64 * arg2.length) + 160]
            mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _61) + (131 * arg2.length) + ceil32(return_data.size) + 416 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
            mem[(32 * _61) + (131 * arg2.length) + ceil32(return_data.size) + 320] = (32 * _773) + (32 * mem[(32 * arg2.length) + 128]) + 160
            mem[(32 * _773) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _61) + (131 * arg2.length) + ceil32(return_data.size) + 416] = mem[(98 * arg2.length) + 192]
            _956 = mem[(98 * arg2.length) + 192]
            mem[(32 * _773) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _61) + (131 * arg2.length) + ceil32(return_data.size) + 448 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
            return 96, 
                   mem[(32 * _61) + (131 * arg2.length) + ceil32(return_data.size) + 288 len (32 * _956) + (32 * _773) + (32 * mem[(32 * arg2.length) + 128]) + 160]
        mem[(64 * arg2.length) + 192 len 32 * arg2.length] = code.data[2718 len 32 * arg2.length]
        mem[(98 * arg2.length) + 192] = arg2.length
        if not arg2.length:
            mem[(131 * arg2.length) + 224] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
            mem[(131 * arg2.length) + 228] = arg1
            require ext_code.size(sub_f5303b88Address)
            staticcall sub_f5303b88Address.getAssetsIn(address arg1) with:
                    gas gas_remaining wei
                   args mem[(131 * arg2.length) + 228 len (64 * arg2.length) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(131 * arg2.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (131 * arg2.length) + ceil32(return_data.size) + 224
            require return_data.size >= 32
            _40 = mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64
            require mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 <= 4294967296
            require mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 32 <= return_data.size
            require mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224] <= 4294967296 and mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + (32 * mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224]) + 32 <= return_data.size
            mem[(131 * arg2.length) + ceil32(return_data.size) + 224] = mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224]
            _62 = mem[(131 * arg2.length) + _40 + 224]
            mem[(131 * arg2.length) + ceil32(return_data.size) + 256 len floor32(mem[(131 * arg2.length) + _40 + 224])] = mem[(131 * arg2.length) + _40 + 256 len floor32(mem[(131 * arg2.length) + _40 + 224])]
            idx = 0
            while uint32(idx) < arg2.length:
                _762 = mem[(131 * arg2.length) + ceil32(return_data.size) + 224]
                s = 0
                while uint32(s) < _762:
                    require uint32(idx) < arg2.length
                    require uint32(s) < mem[(131 * arg2.length) + ceil32(return_data.size) + 224]
                    if mem[(32 * uint32(s)) + (131 * arg2.length) + ceil32(return_data.size) + 268 len 20] == mem[(32 * uint32(idx)) + 140 len 20]:
                        require uint32(idx) < arg2.length
                        require ext_code.size(mem[(32 * uint32(idx)) + 140 len 20])
                        staticcall mem[(32 * uint32(idx)) + 140 len 20].getAccountSnapshot(address arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[(32 * _62) + (131 * arg2.length) + ceil32(return_data.size) + 256 len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require uint32(idx) < mem[(32 * arg2.length) + 128]
                        require uint32(idx) < mem[(64 * arg2.length) + 160]
                        require uint32(idx) < mem[(98 * arg2.length) + 192]
                        mem[(32 * uint32(idx)) + (98 * arg2.length) + 224] = ext_call.return_data[96]
                        mem[(32 * uint32(idx)) + (64 * arg2.length) + 192] = ext_call.return_data[64]
                        mem[(32 * uint32(idx)) + (32 * arg2.length) + 160] = ext_call.return_data[32]
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            mem[(32 * _62) + (131 * arg2.length) + ceil32(return_data.size) + 256] = 96
            mem[(32 * _62) + (131 * arg2.length) + ceil32(return_data.size) + 352] = mem[(32 * arg2.length) + 128]
            mem[(32 * _62) + (131 * arg2.length) + ceil32(return_data.size) + 384 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[(32 * _62) + (131 * arg2.length) + ceil32(return_data.size) + 288] = (32 * mem[(32 * arg2.length) + 128]) + 128
            mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _62) + (131 * arg2.length) + ceil32(return_data.size) + 384] = mem[(64 * arg2.length) + 160]
            _777 = mem[(64 * arg2.length) + 160]
            mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _62) + (131 * arg2.length) + ceil32(return_data.size) + 416 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
            mem[(32 * _62) + (131 * arg2.length) + ceil32(return_data.size) + 320] = (32 * _777) + (32 * mem[(32 * arg2.length) + 128]) + 160
            mem[(32 * _777) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _62) + (131 * arg2.length) + ceil32(return_data.size) + 416] = mem[(98 * arg2.length) + 192]
            _959 = mem[(98 * arg2.length) + 192]
            mem[(32 * _777) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _62) + (131 * arg2.length) + ceil32(return_data.size) + 448 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
            return 96, 
                   mem[(32 * _62) + (131 * arg2.length) + ceil32(return_data.size) + 288 len (32 * _959) + (32 * _777) + (32 * mem[(32 * arg2.length) + 128]) + 160]
        mem[(98 * arg2.length) + 224 len 32 * arg2.length] = code.data[2718 len 32 * arg2.length]
        mem[(131 * arg2.length) + 224] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
        mem[(131 * arg2.length) + 228] = arg1
        require ext_code.size(sub_f5303b88Address)
        staticcall sub_f5303b88Address.getAssetsIn(address arg1) with:
                gas gas_remaining wei
               args mem[(131 * arg2.length) + 228 len (64 * arg2.length) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(131 * arg2.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (131 * arg2.length) + ceil32(return_data.size) + 224
        require return_data.size >= 32
        _48 = mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64
        require mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 <= 4294967296
        require mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 32 <= return_data.size
        require mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224] <= 4294967296 and mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + (32 * mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224]) + 32 <= return_data.size
        mem[(131 * arg2.length) + ceil32(return_data.size) + 224] = mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224]
        _68 = mem[(131 * arg2.length) + _48 + 224]
        mem[(131 * arg2.length) + ceil32(return_data.size) + 256 len floor32(mem[(131 * arg2.length) + _48 + 224])] = mem[(131 * arg2.length) + _48 + 256 len floor32(mem[(131 * arg2.length) + _48 + 224])]
        idx = 0
        while uint32(idx) < arg2.length:
            _763 = mem[(131 * arg2.length) + ceil32(return_data.size) + 224]
            s = 0
            while uint32(s) < _763:
                require uint32(idx) < arg2.length
                require uint32(s) < mem[(131 * arg2.length) + ceil32(return_data.size) + 224]
                if mem[(32 * uint32(s)) + (131 * arg2.length) + ceil32(return_data.size) + 268 len 20] == mem[(32 * uint32(idx)) + 140 len 20]:
                    require uint32(idx) < arg2.length
                    require ext_code.size(mem[(32 * uint32(idx)) + 140 len 20])
                    staticcall mem[(32 * uint32(idx)) + 140 len 20].getAccountSnapshot(address arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[(32 * _68) + (131 * arg2.length) + ceil32(return_data.size) + 256 len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    require uint32(idx) < mem[(32 * arg2.length) + 128]
                    require uint32(idx) < mem[(64 * arg2.length) + 160]
                    require uint32(idx) < mem[(98 * arg2.length) + 192]
                    mem[(32 * uint32(idx)) + (98 * arg2.length) + 224] = ext_call.return_data[96]
                    mem[(32 * uint32(idx)) + (64 * arg2.length) + 192] = ext_call.return_data[64]
                    mem[(32 * uint32(idx)) + (32 * arg2.length) + 160] = ext_call.return_data[32]
                s = s + 1
                continue 
            idx = idx + 1
            continue 
        mem[(32 * _68) + (131 * arg2.length) + ceil32(return_data.size) + 256] = 96
        mem[(32 * _68) + (131 * arg2.length) + ceil32(return_data.size) + 352] = mem[(32 * arg2.length) + 128]
        mem[(32 * _68) + (131 * arg2.length) + ceil32(return_data.size) + 384 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        mem[(32 * _68) + (131 * arg2.length) + ceil32(return_data.size) + 288] = (32 * mem[(32 * arg2.length) + 128]) + 128
        mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _68) + (131 * arg2.length) + ceil32(return_data.size) + 384] = mem[(64 * arg2.length) + 160]
        _781 = mem[(64 * arg2.length) + 160]
        mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _68) + (131 * arg2.length) + ceil32(return_data.size) + 416 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
        mem[(32 * _68) + (131 * arg2.length) + ceil32(return_data.size) + 320] = (32 * _781) + (32 * mem[(32 * arg2.length) + 128]) + 160
        mem[(32 * _781) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _68) + (131 * arg2.length) + ceil32(return_data.size) + 416] = mem[(98 * arg2.length) + 192]
        _962 = mem[(98 * arg2.length) + 192]
        mem[(32 * _781) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _68) + (131 * arg2.length) + ceil32(return_data.size) + 448 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
        return 96, 
               mem[(32 * _68) + (131 * arg2.length) + ceil32(return_data.size) + 288 len (32 * _962) + (32 * _781) + (32 * mem[(32 * arg2.length) + 128]) + 160]
    mem[(32 * arg2.length) + 160 len 32 * arg2.length] = code.data[2718 len 32 * arg2.length]
    mem[(64 * arg2.length) + 160] = arg2.length
    if not arg2.length:
        mem[(98 * arg2.length) + 192] = arg2.length
        if not arg2.length:
            mem[(131 * arg2.length) + 224] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
            mem[(131 * arg2.length) + 228] = arg1
            require ext_code.size(sub_f5303b88Address)
            staticcall sub_f5303b88Address.getAssetsIn(address arg1) with:
                    gas gas_remaining wei
                   args mem[(131 * arg2.length) + 228 len (64 * arg2.length) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(131 * arg2.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (131 * arg2.length) + ceil32(return_data.size) + 224
            require return_data.size >= 32
            _43 = mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64
            require mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 <= 4294967296
            require mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 32 <= return_data.size
            require mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224] <= 4294967296 and mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + (32 * mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224]) + 32 <= return_data.size
            mem[(131 * arg2.length) + ceil32(return_data.size) + 224] = mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224]
            _64 = mem[(131 * arg2.length) + _43 + 224]
            mem[(131 * arg2.length) + ceil32(return_data.size) + 256 len floor32(mem[(131 * arg2.length) + _43 + 224])] = mem[(131 * arg2.length) + _43 + 256 len floor32(mem[(131 * arg2.length) + _43 + 224])]
            idx = 0
            while uint32(idx) < arg2.length:
                _764 = mem[(131 * arg2.length) + ceil32(return_data.size) + 224]
                s = 0
                while uint32(s) < _764:
                    require uint32(idx) < arg2.length
                    require uint32(s) < mem[(131 * arg2.length) + ceil32(return_data.size) + 224]
                    if mem[(32 * uint32(s)) + (131 * arg2.length) + ceil32(return_data.size) + 268 len 20] == mem[(32 * uint32(idx)) + 140 len 20]:
                        require uint32(idx) < arg2.length
                        require ext_code.size(mem[(32 * uint32(idx)) + 140 len 20])
                        staticcall mem[(32 * uint32(idx)) + 140 len 20].getAccountSnapshot(address arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[(32 * _64) + (131 * arg2.length) + ceil32(return_data.size) + 256 len 128] = ext_call.return_data[0 len 128]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 128
                        require uint32(idx) < mem[(32 * arg2.length) + 128]
                        require uint32(idx) < mem[(64 * arg2.length) + 160]
                        require uint32(idx) < mem[(98 * arg2.length) + 192]
                        mem[(32 * uint32(idx)) + (98 * arg2.length) + 224] = ext_call.return_data[96]
                        mem[(32 * uint32(idx)) + (64 * arg2.length) + 192] = ext_call.return_data[64]
                        mem[(32 * uint32(idx)) + (32 * arg2.length) + 160] = ext_call.return_data[32]
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            mem[(32 * _64) + (131 * arg2.length) + ceil32(return_data.size) + 256] = 96
            mem[(32 * _64) + (131 * arg2.length) + ceil32(return_data.size) + 352] = mem[(32 * arg2.length) + 128]
            mem[(32 * _64) + (131 * arg2.length) + ceil32(return_data.size) + 384 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
            mem[(32 * _64) + (131 * arg2.length) + ceil32(return_data.size) + 288] = (32 * mem[(32 * arg2.length) + 128]) + 128
            mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _64) + (131 * arg2.length) + ceil32(return_data.size) + 384] = mem[(64 * arg2.length) + 160]
            _785 = mem[(64 * arg2.length) + 160]
            mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _64) + (131 * arg2.length) + ceil32(return_data.size) + 416 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
            mem[(32 * _64) + (131 * arg2.length) + ceil32(return_data.size) + 320] = (32 * _785) + (32 * mem[(32 * arg2.length) + 128]) + 160
            mem[(32 * _785) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _64) + (131 * arg2.length) + ceil32(return_data.size) + 416] = mem[(98 * arg2.length) + 192]
            _965 = mem[(98 * arg2.length) + 192]
            mem[(32 * _785) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _64) + (131 * arg2.length) + ceil32(return_data.size) + 448 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
            return 96, 
                   mem[(32 * _64) + (131 * arg2.length) + ceil32(return_data.size) + 288 len (32 * _965) + (32 * _785) + (32 * mem[(32 * arg2.length) + 128]) + 160]
        mem[(98 * arg2.length) + 224 len 32 * arg2.length] = code.data[2718 len 32 * arg2.length]
        mem[(131 * arg2.length) + 224] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
        mem[(131 * arg2.length) + 228] = arg1
        require ext_code.size(sub_f5303b88Address)
        staticcall sub_f5303b88Address.getAssetsIn(address arg1) with:
                gas gas_remaining wei
               args mem[(131 * arg2.length) + 228 len (64 * arg2.length) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(131 * arg2.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (131 * arg2.length) + ceil32(return_data.size) + 224
        require return_data.size >= 32
        _50 = mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64
        require mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 <= 4294967296
        require mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 32 <= return_data.size
        require mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224] <= 4294967296 and mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + (32 * mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224]) + 32 <= return_data.size
        mem[(131 * arg2.length) + ceil32(return_data.size) + 224] = mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224]
        _69 = mem[(131 * arg2.length) + _50 + 224]
        mem[(131 * arg2.length) + ceil32(return_data.size) + 256 len floor32(mem[(131 * arg2.length) + _50 + 224])] = mem[(131 * arg2.length) + _50 + 256 len floor32(mem[(131 * arg2.length) + _50 + 224])]
        idx = 0
        while uint32(idx) < arg2.length:
            _765 = mem[(131 * arg2.length) + ceil32(return_data.size) + 224]
            s = 0
            while uint32(s) < _765:
                require uint32(idx) < arg2.length
                require uint32(s) < mem[(131 * arg2.length) + ceil32(return_data.size) + 224]
                if mem[(32 * uint32(s)) + (131 * arg2.length) + ceil32(return_data.size) + 268 len 20] == mem[(32 * uint32(idx)) + 140 len 20]:
                    require uint32(idx) < arg2.length
                    require ext_code.size(mem[(32 * uint32(idx)) + 140 len 20])
                    staticcall mem[(32 * uint32(idx)) + 140 len 20].getAccountSnapshot(address arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[(32 * _69) + (131 * arg2.length) + ceil32(return_data.size) + 256 len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    require uint32(idx) < mem[(32 * arg2.length) + 128]
                    require uint32(idx) < mem[(64 * arg2.length) + 160]
                    require uint32(idx) < mem[(98 * arg2.length) + 192]
                    mem[(32 * uint32(idx)) + (98 * arg2.length) + 224] = ext_call.return_data[96]
                    mem[(32 * uint32(idx)) + (64 * arg2.length) + 192] = ext_call.return_data[64]
                    mem[(32 * uint32(idx)) + (32 * arg2.length) + 160] = ext_call.return_data[32]
                s = s + 1
                continue 
            idx = idx + 1
            continue 
        mem[(32 * _69) + (131 * arg2.length) + ceil32(return_data.size) + 256] = 96
        mem[(32 * _69) + (131 * arg2.length) + ceil32(return_data.size) + 352] = mem[(32 * arg2.length) + 128]
        mem[(32 * _69) + (131 * arg2.length) + ceil32(return_data.size) + 384 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        mem[(32 * _69) + (131 * arg2.length) + ceil32(return_data.size) + 288] = (32 * mem[(32 * arg2.length) + 128]) + 128
        mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _69) + (131 * arg2.length) + ceil32(return_data.size) + 384] = mem[(64 * arg2.length) + 160]
        _789 = mem[(64 * arg2.length) + 160]
        mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _69) + (131 * arg2.length) + ceil32(return_data.size) + 416 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
        mem[(32 * _69) + (131 * arg2.length) + ceil32(return_data.size) + 320] = (32 * _789) + (32 * mem[(32 * arg2.length) + 128]) + 160
        mem[(32 * _789) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _69) + (131 * arg2.length) + ceil32(return_data.size) + 416] = mem[(98 * arg2.length) + 192]
        _968 = mem[(98 * arg2.length) + 192]
        mem[(32 * _789) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _69) + (131 * arg2.length) + ceil32(return_data.size) + 448 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
        return 96, 
               mem[(32 * _69) + (131 * arg2.length) + ceil32(return_data.size) + 288 len (32 * _968) + (32 * _789) + (32 * mem[(32 * arg2.length) + 128]) + 160]
    mem[(64 * arg2.length) + 192 len 32 * arg2.length] = code.data[2718 len 32 * arg2.length]
    mem[(98 * arg2.length) + 192] = arg2.length
    if not arg2.length:
        mem[(131 * arg2.length) + 224] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
        mem[(131 * arg2.length) + 228] = arg1
        require ext_code.size(sub_f5303b88Address)
        staticcall sub_f5303b88Address.getAssetsIn(address arg1) with:
                gas gas_remaining wei
               args mem[(131 * arg2.length) + 228 len (64 * arg2.length) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(131 * arg2.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (131 * arg2.length) + ceil32(return_data.size) + 224
        require return_data.size >= 32
        _52 = mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64
        require mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 <= 4294967296
        require mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 32 <= return_data.size
        require mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224] <= 4294967296 and mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + (32 * mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224]) + 32 <= return_data.size
        mem[(131 * arg2.length) + ceil32(return_data.size) + 224] = mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224]
        _70 = mem[(131 * arg2.length) + _52 + 224]
        mem[(131 * arg2.length) + ceil32(return_data.size) + 256 len floor32(mem[(131 * arg2.length) + _52 + 224])] = mem[(131 * arg2.length) + _52 + 256 len floor32(mem[(131 * arg2.length) + _52 + 224])]
        idx = 0
        while uint32(idx) < arg2.length:
            _766 = mem[(131 * arg2.length) + ceil32(return_data.size) + 224]
            s = 0
            while uint32(s) < _766:
                require uint32(idx) < arg2.length
                require uint32(s) < mem[(131 * arg2.length) + ceil32(return_data.size) + 224]
                if mem[(32 * uint32(s)) + (131 * arg2.length) + ceil32(return_data.size) + 268 len 20] == mem[(32 * uint32(idx)) + 140 len 20]:
                    require uint32(idx) < arg2.length
                    require ext_code.size(mem[(32 * uint32(idx)) + 140 len 20])
                    staticcall mem[(32 * uint32(idx)) + 140 len 20].getAccountSnapshot(address arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[(32 * _70) + (131 * arg2.length) + ceil32(return_data.size) + 256 len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 128
                    require uint32(idx) < mem[(32 * arg2.length) + 128]
                    require uint32(idx) < mem[(64 * arg2.length) + 160]
                    require uint32(idx) < mem[(98 * arg2.length) + 192]
                    mem[(32 * uint32(idx)) + (98 * arg2.length) + 224] = ext_call.return_data[96]
                    mem[(32 * uint32(idx)) + (64 * arg2.length) + 192] = ext_call.return_data[64]
                    mem[(32 * uint32(idx)) + (32 * arg2.length) + 160] = ext_call.return_data[32]
                s = s + 1
                continue 
            idx = idx + 1
            continue 
        mem[(32 * _70) + (131 * arg2.length) + ceil32(return_data.size) + 256] = 96
        mem[(32 * _70) + (131 * arg2.length) + ceil32(return_data.size) + 352] = mem[(32 * arg2.length) + 128]
        mem[(32 * _70) + (131 * arg2.length) + ceil32(return_data.size) + 384 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
        mem[(32 * _70) + (131 * arg2.length) + ceil32(return_data.size) + 288] = (32 * mem[(32 * arg2.length) + 128]) + 128
        mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _70) + (131 * arg2.length) + ceil32(return_data.size) + 384] = mem[(64 * arg2.length) + 160]
        _793 = mem[(64 * arg2.length) + 160]
        mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _70) + (131 * arg2.length) + ceil32(return_data.size) + 416 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
        mem[(32 * _70) + (131 * arg2.length) + ceil32(return_data.size) + 320] = (32 * _793) + (32 * mem[(32 * arg2.length) + 128]) + 160
        mem[(32 * _793) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _70) + (131 * arg2.length) + ceil32(return_data.size) + 416] = mem[(98 * arg2.length) + 192]
        _971 = mem[(98 * arg2.length) + 192]
        mem[(32 * _793) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _70) + (131 * arg2.length) + ceil32(return_data.size) + 448 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
        return 96, 
               mem[(32 * _70) + (131 * arg2.length) + ceil32(return_data.size) + 288 len (32 * _971) + (32 * _793) + (32 * mem[(32 * arg2.length) + 128]) + 160]
    mem[(98 * arg2.length) + 224 len 32 * arg2.length] = code.data[2718 len 32 * arg2.length]
    mem[(131 * arg2.length) + 224] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[(131 * arg2.length) + 228] = arg1
    require ext_code.size(sub_f5303b88Address)
    staticcall sub_f5303b88Address.getAssetsIn(address arg1) with:
            gas gas_remaining wei
           args mem[(131 * arg2.length) + 228 len (64 * arg2.length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(131 * arg2.length) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (131 * arg2.length) + ceil32(return_data.size) + 224
    require return_data.size >= 32
    _59 = mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64
    require mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 <= 4294967296
    require mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 32 <= return_data.size
    require mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224] <= 4294967296 and mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + (32 * mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224]) + 32 <= return_data.size
    mem[(131 * arg2.length) + ceil32(return_data.size) + 224] = mem[(131 * arg2.length) + mem[(131 * arg2.length) + 224 len 4], address(arg1) << 64 + 224]
    _76 = mem[(131 * arg2.length) + _59 + 224]
    mem[(131 * arg2.length) + ceil32(return_data.size) + 256 len floor32(mem[(131 * arg2.length) + _59 + 224])] = mem[(131 * arg2.length) + _59 + 256 len floor32(mem[(131 * arg2.length) + _59 + 224])]
    idx = 0
    while uint32(idx) < arg2.length:
        _767 = mem[(131 * arg2.length) + ceil32(return_data.size) + 224]
        s = 0
        while uint32(s) < _767:
            require uint32(idx) < arg2.length
            require uint32(s) < mem[(131 * arg2.length) + ceil32(return_data.size) + 224]
            if mem[(32 * uint32(s)) + (131 * arg2.length) + ceil32(return_data.size) + 268 len 20] == mem[(32 * uint32(idx)) + 140 len 20]:
                require uint32(idx) < arg2.length
                require ext_code.size(mem[(32 * uint32(idx)) + 140 len 20])
                staticcall mem[(32 * uint32(idx)) + 140 len 20].getAccountSnapshot(address arg1) with:
                        gas gas_remaining wei
                       args arg1
                mem[(32 * _76) + (131 * arg2.length) + ceil32(return_data.size) + 256 len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 128
                require uint32(idx) < mem[(32 * arg2.length) + 128]
                require uint32(idx) < mem[(64 * arg2.length) + 160]
                require uint32(idx) < mem[(98 * arg2.length) + 192]
                mem[(32 * uint32(idx)) + (98 * arg2.length) + 224] = ext_call.return_data[96]
                mem[(32 * uint32(idx)) + (64 * arg2.length) + 192] = ext_call.return_data[64]
                mem[(32 * uint32(idx)) + (32 * arg2.length) + 160] = ext_call.return_data[32]
            s = s + 1
            continue 
        idx = idx + 1
        continue 
    mem[(32 * _76) + (131 * arg2.length) + ceil32(return_data.size) + 256] = 96
    mem[(32 * _76) + (131 * arg2.length) + ceil32(return_data.size) + 352] = mem[(32 * arg2.length) + 128]
    mem[(32 * _76) + (131 * arg2.length) + ceil32(return_data.size) + 384 len floor32(mem[(32 * arg2.length) + 128])] = mem[(32 * arg2.length) + 160 len floor32(mem[(32 * arg2.length) + 128])]
    mem[(32 * _76) + (131 * arg2.length) + ceil32(return_data.size) + 288] = (32 * mem[(32 * arg2.length) + 128]) + 128
    mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _76) + (131 * arg2.length) + ceil32(return_data.size) + 384] = mem[(64 * arg2.length) + 160]
    _797 = mem[(64 * arg2.length) + 160]
    mem[(32 * mem[(32 * arg2.length) + 128]) + (32 * _76) + (131 * arg2.length) + ceil32(return_data.size) + 416 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
    mem[(32 * _76) + (131 * arg2.length) + ceil32(return_data.size) + 320] = (32 * _797) + (32 * mem[(32 * arg2.length) + 128]) + 160
    mem[(32 * _797) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _76) + (131 * arg2.length) + ceil32(return_data.size) + 416] = mem[(98 * arg2.length) + 192]
    _974 = mem[(98 * arg2.length) + 192]
    mem[(32 * _797) + (32 * mem[(32 * arg2.length) + 128]) + (32 * _76) + (131 * arg2.length) + ceil32(return_data.size) + 448 len floor32(mem[(98 * arg2.length) + 192])] = mem[(98 * arg2.length) + 224 len floor32(mem[(98 * arg2.length) + 192])]
    return 96, 
           mem[(32 * _76) + (131 * arg2.length) + ceil32(return_data.size) + 288 len (32 * _974) + (32 * _797) + (32 * mem[(32 * arg2.length) + 128]) + 160]
}



}
