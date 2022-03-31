contract main {




// =====================  Runtime code  =====================


#
#  - getBalancesReservesMulti(address[] arg1)
#  - getBalancesReserves(address arg1)
#  - getLiqudityAndReserve(address arg1)
#
function _fallback() payable {
    revert
}

function getLiquidityAndReserveMulti(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        mem[(64 * arg1.length) + 160] = arg1.length
        mem[64] = (98 * arg1.length) + 192
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                require idx < mem[96]
                _672 = mem[(32 * idx) + 128]
                _679 = mem[64]
                mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
                _680 = mem[64]
                mem[mem[64]] = 36
                mem[64] = mem[64] + 68
                mem[_680 + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or mem[_680 + 36 len 28]
                _683 = mem[_680]
                t = _680 + 32
                u = mem[64]
                s = mem[_680]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_680])] = mem[_680 + floor32(mem[_680]) + -(mem[_680] % 32) + 64 len mem[_680] % 32] or Mask(8 * -(mem[_680] % 32) + 32, -(8 * -(mem[_680] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_680])])
                staticcall address(_672).mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _683 + _679 + -mem[64] + 64]
                if not return_data.size:
                    if not ext_call.success:
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                        require idx < mem[96]
                        _1352 = mem[(32 * idx) + 128]
                        _1368 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_1368 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_1368 + 36 len 28]
                        if mem[_1368] < 32:
                            mem[_1368 + 36] = Mask(-(8 * -mem[_1368] + 32) + 256, 0, mem[_1368 + 32]) or Mask(8 * -mem[_1368] + 32, -(8 * -mem[_1368] + 32) + 256, 4)
                            staticcall address(_1352).mem[_1368 + 36 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_1368 + 40 len mem[_1368] - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                                else:
                                    require mem[96] >= 32
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                            else:
                                mem[64] = _1368 + ceil32(return_data.size) + 37
                                mem[_1368 + 36] = return_data.size
                                mem[_1368 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                                else:
                                    require return_data.size >= 32
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1368 + 68]
                        else:
                            mem[_1368 + 36] = mem[_1368 + 32]
                            t = _1368 + 64
                            u = _1368 + 68
                            s = mem[_1368] - 32
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1368 + floor32(mem[_1368] - 32) + 68] = mem[_1368 + (2 * floor32(mem[_1368] - 32)) + -mem[_1368] + 128 len mem[_1368] + -floor32(mem[_1368] - 32) - 32] or Mask(8 * -mem[_1368] + floor32(mem[_1368] - 32) + 64, -(8 * -mem[_1368] + floor32(mem[_1368] - 32) + 64) + 256, mem[_1368 + floor32(mem[_1368] - 32) + 68])
                            staticcall address(_1352).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_1368] + _1368 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                                else:
                                    require mem[96] >= 32
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                            else:
                                _1936 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1936] = return_data.size
                                mem[_1936 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                                else:
                                    require return_data.size >= 32
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1936 + 32]
                    else:
                        require mem[96] >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = mem[128]
                        require idx < mem[96]
                        _1412 = mem[(32 * idx) + 128]
                        _1449 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_1449 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_1449 + 36 len 28]
                        if mem[_1449] < 32:
                            mem[_1449 + 36] = Mask(-(8 * -mem[_1449] + 32) + 256, 0, mem[_1449 + 32]) or Mask(8 * -mem[_1449] + 32, -(8 * -mem[_1449] + 32) + 256, 4)
                            staticcall address(_1412).mem[_1449 + 36 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_1449 + 40 len mem[_1449] - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                                else:
                                    require mem[96] >= 32
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                            else:
                                mem[64] = _1449 + ceil32(return_data.size) + 37
                                mem[_1449 + 36] = return_data.size
                                mem[_1449 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                                else:
                                    require return_data.size >= 32
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1449 + 68]
                        else:
                            mem[_1449 + 36] = mem[_1449 + 32]
                            t = _1449 + 64
                            u = _1449 + 68
                            s = mem[_1449] - 32
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1449 + floor32(mem[_1449] - 32) + 68] = mem[_1449 + (2 * floor32(mem[_1449] - 32)) + -mem[_1449] + 128 len mem[_1449] + -floor32(mem[_1449] - 32) - 32] or Mask(8 * -mem[_1449] + floor32(mem[_1449] - 32) + 64, -(8 * -mem[_1449] + floor32(mem[_1449] - 32) + 64) + 256, mem[_1449 + floor32(mem[_1449] - 32) + 68])
                            staticcall address(_1412).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_1449] + _1449 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                                else:
                                    require mem[96] >= 32
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                            else:
                                _1937 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1937] = return_data.size
                                mem[_1937 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                                else:
                                    require return_data.size >= 32
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1937 + 32]
                else:
                    _1308 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1308] = return_data.size
                    mem[_1308 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                        require idx < mem[96]
                        _1354 = mem[(32 * idx) + 128]
                        _1373 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_1373 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_1373 + 36 len 28]
                        if mem[_1373] < 32:
                            mem[_1373 + 36] = Mask(-(8 * -mem[_1373] + 32) + 256, 0, mem[_1373 + 32]) or Mask(8 * -mem[_1373] + 32, -(8 * -mem[_1373] + 32) + 256, 4)
                            staticcall address(_1354).mem[_1373 + 36 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_1373 + 40 len mem[_1373] - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                                else:
                                    require mem[96] >= 32
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                            else:
                                mem[64] = _1373 + ceil32(return_data.size) + 37
                                mem[_1373 + 36] = return_data.size
                                mem[_1373 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                                else:
                                    require return_data.size >= 32
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1373 + 68]
                        else:
                            mem[_1373 + 36] = mem[_1373 + 32]
                            t = _1373 + 64
                            u = _1373 + 68
                            s = mem[_1373] - 32
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1373 + floor32(mem[_1373] - 32) + 68] = mem[_1373 + (2 * floor32(mem[_1373] - 32)) + -mem[_1373] + 128 len mem[_1373] + -floor32(mem[_1373] - 32) - 32] or Mask(8 * -mem[_1373] + floor32(mem[_1373] - 32) + 64, -(8 * -mem[_1373] + floor32(mem[_1373] - 32) + 64) + 256, mem[_1373 + floor32(mem[_1373] - 32) + 68])
                            staticcall address(_1354).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_1373] + _1373 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                                else:
                                    require mem[96] >= 32
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                            else:
                                _1938 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1938] = return_data.size
                                mem[_1938 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                                else:
                                    require return_data.size >= 32
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1938 + 32]
                    else:
                        require return_data.size >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_1308 + 32]
                        require idx < mem[96]
                        _1417 = mem[(32 * idx) + 128]
                        _1454 = mem[64]
                        mem[mem[64]] = 4
                        mem[64] = mem[64] + 36
                        mem[_1454 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_1454 + 36 len 28]
                        if mem[_1454] < 32:
                            mem[_1454 + 36] = Mask(-(8 * -mem[_1454] + 32) + 256, 0, mem[_1454 + 32]) or Mask(8 * -mem[_1454] + 32, -(8 * -mem[_1454] + 32) + 256, 4)
                            staticcall address(_1417).mem[_1454 + 36 len 4] with:
                                    gas gas_remaining wei
                                   args mem[_1454 + 40 len mem[_1454] - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                                else:
                                    require mem[96] >= 32
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                            else:
                                mem[64] = _1454 + ceil32(return_data.size) + 37
                                mem[_1454 + 36] = return_data.size
                                mem[_1454 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                                else:
                                    require return_data.size >= 32
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1454 + 68]
                        else:
                            mem[_1454 + 36] = mem[_1454 + 32]
                            t = _1454 + 64
                            u = _1454 + 68
                            s = mem[_1454] - 32
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_1454 + floor32(mem[_1454] - 32) + 68] = mem[_1454 + (2 * floor32(mem[_1454] - 32)) + -mem[_1454] + 128 len mem[_1454] + -floor32(mem[_1454] - 32) - 32] or Mask(8 * -mem[_1454] + floor32(mem[_1454] - 32) + 64, -(8 * -mem[_1454] + floor32(mem[_1454] - 32) + 64) + 256, mem[_1454 + floor32(mem[_1454] - 32) + 68])
                            staticcall address(_1417).mem[mem[64] len 4] with:
                                    gas gas_remaining wei
                                   args mem[mem[64] + 4 len mem[_1454] + _1454 + -mem[64] + 32]
                            if not return_data.size:
                                if not ext_call.success:
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                                else:
                                    require mem[96] >= 32
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                            else:
                                _1939 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_1939] = return_data.size
                                mem[_1939 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                                else:
                                    require return_data.size >= 32
                                    require idx < mem[(64 * arg1.length) + 160]
                                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1939 + 32]
                idx = idx + 1
                continue 
            _652 = mem[64]
            mem[mem[64] + 64] = block.number
            mem[mem[64]] = 96
            mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
            _654 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[mem[64] + 32] = (32 * _654) + 128
            mem[(32 * _654) + _652 + 128] = mem[(64 * arg1.length) + 160]
            _1281 = mem[(64 * arg1.length) + 160]
            mem[(32 * _654) + _652 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            return memory
              from mem[64]
               len (32 * _1281) + (32 * _654) + _652 + -mem[64] + 160
        mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[2974 len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require idx < mem[96]
            _673 = mem[(32 * idx) + 128]
            _687 = mem[64]
            mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
            _688 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_688 + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or mem[_688 + 36 len 28]
            _691 = mem[_688]
            t = _688 + 32
            u = mem[64]
            s = mem[_688]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_688])] = mem[_688 + floor32(mem[_688]) + -(mem[_688] % 32) + 64 len mem[_688] % 32] or Mask(8 * -(mem[_688] % 32) + 32, -(8 * -(mem[_688] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_688])])
            staticcall address(_673).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _691 + _687 + -mem[64] + 64]
            if not return_data.size:
                if not ext_call.success:
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    require idx < mem[96]
                    _1356 = mem[(32 * idx) + 128]
                    _1378 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_1378 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_1378 + 36 len 28]
                    if mem[_1378] < 32:
                        mem[_1378 + 36] = Mask(-(8 * -mem[_1378] + 32) + 256, 0, mem[_1378 + 32]) or Mask(8 * -mem[_1378] + 32, -(8 * -mem[_1378] + 32) + 256, 4)
                        staticcall address(_1356).mem[_1378 + 36 len 4] with:
                                gas gas_remaining wei
                               args mem[_1378 + 40 len mem[_1378] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            mem[64] = _1378 + ceil32(return_data.size) + 37
                            mem[_1378 + 36] = return_data.size
                            mem[_1378 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1378 + 68]
                    else:
                        mem[_1378 + 36] = mem[_1378 + 32]
                        t = _1378 + 64
                        u = _1378 + 68
                        s = mem[_1378] - 32
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1378 + floor32(mem[_1378] - 32) + 68] = mem[_1378 + (2 * floor32(mem[_1378] - 32)) + -mem[_1378] + 128 len mem[_1378] + -floor32(mem[_1378] - 32) - 32] or Mask(8 * -mem[_1378] + floor32(mem[_1378] - 32) + 64, -(8 * -mem[_1378] + floor32(mem[_1378] - 32) + 64) + 256, mem[_1378 + floor32(mem[_1378] - 32) + 68])
                        staticcall address(_1356).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_1378] + _1378 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            _1940 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1940] = return_data.size
                            mem[_1940 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1940 + 32]
                else:
                    require mem[96] >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = mem[128]
                    require idx < mem[96]
                    _1422 = mem[(32 * idx) + 128]
                    _1459 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_1459 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_1459 + 36 len 28]
                    if mem[_1459] < 32:
                        mem[_1459 + 36] = Mask(-(8 * -mem[_1459] + 32) + 256, 0, mem[_1459 + 32]) or Mask(8 * -mem[_1459] + 32, -(8 * -mem[_1459] + 32) + 256, 4)
                        staticcall address(_1422).mem[_1459 + 36 len 4] with:
                                gas gas_remaining wei
                               args mem[_1459 + 40 len mem[_1459] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            mem[64] = _1459 + ceil32(return_data.size) + 37
                            mem[_1459 + 36] = return_data.size
                            mem[_1459 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1459 + 68]
                    else:
                        mem[_1459 + 36] = mem[_1459 + 32]
                        t = _1459 + 64
                        u = _1459 + 68
                        s = mem[_1459] - 32
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1459 + floor32(mem[_1459] - 32) + 68] = mem[_1459 + (2 * floor32(mem[_1459] - 32)) + -mem[_1459] + 128 len mem[_1459] + -floor32(mem[_1459] - 32) - 32] or Mask(8 * -mem[_1459] + floor32(mem[_1459] - 32) + 64, -(8 * -mem[_1459] + floor32(mem[_1459] - 32) + 64) + 256, mem[_1459 + floor32(mem[_1459] - 32) + 68])
                        staticcall address(_1422).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_1459] + _1459 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            _1941 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1941] = return_data.size
                            mem[_1941 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1941 + 32]
            else:
                _1309 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1309] = return_data.size
                mem[_1309 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    require idx < mem[96]
                    _1358 = mem[(32 * idx) + 128]
                    _1383 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_1383 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_1383 + 36 len 28]
                    if mem[_1383] < 32:
                        mem[_1383 + 36] = Mask(-(8 * -mem[_1383] + 32) + 256, 0, mem[_1383 + 32]) or Mask(8 * -mem[_1383] + 32, -(8 * -mem[_1383] + 32) + 256, 4)
                        staticcall address(_1358).mem[_1383 + 36 len 4] with:
                                gas gas_remaining wei
                               args mem[_1383 + 40 len mem[_1383] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            mem[64] = _1383 + ceil32(return_data.size) + 37
                            mem[_1383 + 36] = return_data.size
                            mem[_1383 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1383 + 68]
                    else:
                        mem[_1383 + 36] = mem[_1383 + 32]
                        t = _1383 + 64
                        u = _1383 + 68
                        s = mem[_1383] - 32
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1383 + floor32(mem[_1383] - 32) + 68] = mem[_1383 + (2 * floor32(mem[_1383] - 32)) + -mem[_1383] + 128 len mem[_1383] + -floor32(mem[_1383] - 32) - 32] or Mask(8 * -mem[_1383] + floor32(mem[_1383] - 32) + 64, -(8 * -mem[_1383] + floor32(mem[_1383] - 32) + 64) + 256, mem[_1383 + floor32(mem[_1383] - 32) + 68])
                        staticcall address(_1358).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_1383] + _1383 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            _1942 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1942] = return_data.size
                            mem[_1942 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1942 + 32]
                else:
                    require return_data.size >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_1309 + 32]
                    require idx < mem[96]
                    _1427 = mem[(32 * idx) + 128]
                    _1464 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_1464 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_1464 + 36 len 28]
                    if mem[_1464] < 32:
                        mem[_1464 + 36] = Mask(-(8 * -mem[_1464] + 32) + 256, 0, mem[_1464 + 32]) or Mask(8 * -mem[_1464] + 32, -(8 * -mem[_1464] + 32) + 256, 4)
                        staticcall address(_1427).mem[_1464 + 36 len 4] with:
                                gas gas_remaining wei
                               args mem[_1464 + 40 len mem[_1464] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            mem[64] = _1464 + ceil32(return_data.size) + 37
                            mem[_1464 + 36] = return_data.size
                            mem[_1464 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1464 + 68]
                    else:
                        mem[_1464 + 36] = mem[_1464 + 32]
                        t = _1464 + 64
                        u = _1464 + 68
                        s = mem[_1464] - 32
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1464 + floor32(mem[_1464] - 32) + 68] = mem[_1464 + (2 * floor32(mem[_1464] - 32)) + -mem[_1464] + 128 len mem[_1464] + -floor32(mem[_1464] - 32) - 32] or Mask(8 * -mem[_1464] + floor32(mem[_1464] - 32) + 64, -(8 * -mem[_1464] + floor32(mem[_1464] - 32) + 64) + 256, mem[_1464 + floor32(mem[_1464] - 32) + 68])
                        staticcall address(_1427).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_1464] + _1464 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            _1943 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1943] = return_data.size
                            mem[_1943 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1943 + 32]
            idx = idx + 1
            continue 
        _657 = mem[64]
        mem[mem[64] + 64] = block.number
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
        _659 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _659) + 128
        mem[(32 * _659) + _657 + 128] = mem[(64 * arg1.length) + 160]
        _1288 = mem[(64 * arg1.length) + 160]
        mem[(32 * _659) + _657 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        return memory
          from mem[64]
           len (32 * _1288) + (32 * _659) + _657 + -mem[64] + 160
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[2974 len 32 * arg1.length]
    mem[(64 * arg1.length) + 160] = arg1.length
    mem[64] = (98 * arg1.length) + 192
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require idx < mem[96]
            _674 = mem[(32 * idx) + 128]
            _695 = mem[64]
            mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
            _696 = mem[64]
            mem[mem[64]] = 36
            mem[64] = mem[64] + 68
            mem[_696 + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or mem[_696 + 36 len 28]
            _699 = mem[_696]
            t = _696 + 32
            u = mem[64]
            s = mem[_696]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_696])] = mem[_696 + floor32(mem[_696]) + -(mem[_696] % 32) + 64 len mem[_696] % 32] or Mask(8 * -(mem[_696] % 32) + 32, -(8 * -(mem[_696] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_696])])
            staticcall address(_674).mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _699 + _695 + -mem[64] + 64]
            if not return_data.size:
                if not ext_call.success:
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    require idx < mem[96]
                    _1360 = mem[(32 * idx) + 128]
                    _1388 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_1388 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_1388 + 36 len 28]
                    if mem[_1388] < 32:
                        mem[_1388 + 36] = Mask(-(8 * -mem[_1388] + 32) + 256, 0, mem[_1388 + 32]) or Mask(8 * -mem[_1388] + 32, -(8 * -mem[_1388] + 32) + 256, 4)
                        staticcall address(_1360).mem[_1388 + 36 len 4] with:
                                gas gas_remaining wei
                               args mem[_1388 + 40 len mem[_1388] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            mem[64] = _1388 + ceil32(return_data.size) + 37
                            mem[_1388 + 36] = return_data.size
                            mem[_1388 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1388 + 68]
                    else:
                        mem[_1388 + 36] = mem[_1388 + 32]
                        t = _1388 + 64
                        u = _1388 + 68
                        s = mem[_1388] - 32
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1388 + floor32(mem[_1388] - 32) + 68] = mem[_1388 + (2 * floor32(mem[_1388] - 32)) + -mem[_1388] + 128 len mem[_1388] + -floor32(mem[_1388] - 32) - 32] or Mask(8 * -mem[_1388] + floor32(mem[_1388] - 32) + 64, -(8 * -mem[_1388] + floor32(mem[_1388] - 32) + 64) + 256, mem[_1388 + floor32(mem[_1388] - 32) + 68])
                        staticcall address(_1360).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_1388] + _1388 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            _1944 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1944] = return_data.size
                            mem[_1944 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1944 + 32]
                else:
                    require mem[96] >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = mem[128]
                    require idx < mem[96]
                    _1432 = mem[(32 * idx) + 128]
                    _1469 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_1469 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_1469 + 36 len 28]
                    if mem[_1469] < 32:
                        mem[_1469 + 36] = Mask(-(8 * -mem[_1469] + 32) + 256, 0, mem[_1469 + 32]) or Mask(8 * -mem[_1469] + 32, -(8 * -mem[_1469] + 32) + 256, 4)
                        staticcall address(_1432).mem[_1469 + 36 len 4] with:
                                gas gas_remaining wei
                               args mem[_1469 + 40 len mem[_1469] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            mem[64] = _1469 + ceil32(return_data.size) + 37
                            mem[_1469 + 36] = return_data.size
                            mem[_1469 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1469 + 68]
                    else:
                        mem[_1469 + 36] = mem[_1469 + 32]
                        t = _1469 + 64
                        u = _1469 + 68
                        s = mem[_1469] - 32
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1469 + floor32(mem[_1469] - 32) + 68] = mem[_1469 + (2 * floor32(mem[_1469] - 32)) + -mem[_1469] + 128 len mem[_1469] + -floor32(mem[_1469] - 32) - 32] or Mask(8 * -mem[_1469] + floor32(mem[_1469] - 32) + 64, -(8 * -mem[_1469] + floor32(mem[_1469] - 32) + 64) + 256, mem[_1469 + floor32(mem[_1469] - 32) + 68])
                        staticcall address(_1432).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_1469] + _1469 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            _1945 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1945] = return_data.size
                            mem[_1945 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1945 + 32]
            else:
                _1310 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_1310] = return_data.size
                mem[_1310 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    require idx < mem[96]
                    _1362 = mem[(32 * idx) + 128]
                    _1393 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_1393 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_1393 + 36 len 28]
                    if mem[_1393] < 32:
                        mem[_1393 + 36] = Mask(-(8 * -mem[_1393] + 32) + 256, 0, mem[_1393 + 32]) or Mask(8 * -mem[_1393] + 32, -(8 * -mem[_1393] + 32) + 256, 4)
                        staticcall address(_1362).mem[_1393 + 36 len 4] with:
                                gas gas_remaining wei
                               args mem[_1393 + 40 len mem[_1393] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            mem[64] = _1393 + ceil32(return_data.size) + 37
                            mem[_1393 + 36] = return_data.size
                            mem[_1393 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1393 + 68]
                    else:
                        mem[_1393 + 36] = mem[_1393 + 32]
                        t = _1393 + 64
                        u = _1393 + 68
                        s = mem[_1393] - 32
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1393 + floor32(mem[_1393] - 32) + 68] = mem[_1393 + (2 * floor32(mem[_1393] - 32)) + -mem[_1393] + 128 len mem[_1393] + -floor32(mem[_1393] - 32) - 32] or Mask(8 * -mem[_1393] + floor32(mem[_1393] - 32) + 64, -(8 * -mem[_1393] + floor32(mem[_1393] - 32) + 64) + 256, mem[_1393 + floor32(mem[_1393] - 32) + 68])
                        staticcall address(_1362).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_1393] + _1393 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            _1946 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1946] = return_data.size
                            mem[_1946 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1946 + 32]
                else:
                    require return_data.size >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_1310 + 32]
                    require idx < mem[96]
                    _1437 = mem[(32 * idx) + 128]
                    _1474 = mem[64]
                    mem[mem[64]] = 4
                    mem[64] = mem[64] + 36
                    mem[_1474 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_1474 + 36 len 28]
                    if mem[_1474] < 32:
                        mem[_1474 + 36] = Mask(-(8 * -mem[_1474] + 32) + 256, 0, mem[_1474 + 32]) or Mask(8 * -mem[_1474] + 32, -(8 * -mem[_1474] + 32) + 256, 4)
                        staticcall address(_1437).mem[_1474 + 36 len 4] with:
                                gas gas_remaining wei
                               args mem[_1474 + 40 len mem[_1474] - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            mem[64] = _1474 + ceil32(return_data.size) + 37
                            mem[_1474 + 36] = return_data.size
                            mem[_1474 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1474 + 68]
                    else:
                        mem[_1474 + 36] = mem[_1474 + 32]
                        t = _1474 + 64
                        u = _1474 + 68
                        s = mem[_1474] - 32
                        while s >= 32:
                            mem[u] = mem[t]
                            t = t + 32
                            u = u + 32
                            s = s - 32
                            continue 
                        mem[_1474 + floor32(mem[_1474] - 32) + 68] = mem[_1474 + (2 * floor32(mem[_1474] - 32)) + -mem[_1474] + 128 len mem[_1474] + -floor32(mem[_1474] - 32) - 32] or Mask(8 * -mem[_1474] + floor32(mem[_1474] - 32) + 64, -(8 * -mem[_1474] + floor32(mem[_1474] - 32) + 64) + 256, mem[_1474 + floor32(mem[_1474] - 32) + 68])
                        staticcall address(_1437).mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len mem[_1474] + _1474 + -mem[64] + 32]
                        if not return_data.size:
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require mem[96] >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                        else:
                            _1947 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_1947] = return_data.size
                            mem[_1947 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                            else:
                                require return_data.size >= 32
                                require idx < mem[(64 * arg1.length) + 160]
                                mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1947 + 32]
            idx = idx + 1
            continue 
        _662 = mem[64]
        mem[mem[64] + 64] = block.number
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
        _664 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _664) + 128
        mem[(32 * _664) + _662 + 128] = mem[(64 * arg1.length) + 160]
        _1295 = mem[(64 * arg1.length) + 160]
        mem[(32 * _664) + _662 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        return memory
          from mem[64]
           len (32 * _1295) + (32 * _664) + _662 + -mem[64] + 160
    mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[2974 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require idx < mem[96]
        _675 = mem[(32 * idx) + 128]
        _703 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
        _704 = mem[64]
        mem[mem[64]] = 36
        mem[64] = mem[64] + 68
        mem[_704 + 32] = 0x70a0823100000000000000000000000000000000000000000000000000000000 or mem[_704 + 36 len 28]
        _707 = mem[_704]
        t = _704 + 32
        u = mem[64]
        s = mem[_704]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_704])] = mem[_704 + floor32(mem[_704]) + -(mem[_704] % 32) + 64 len mem[_704] % 32] or Mask(8 * -(mem[_704] % 32) + 32, -(8 * -(mem[_704] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_704])])
        staticcall address(_675).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len _707 + _703 + -mem[64] + 64]
        if not return_data.size:
            if not ext_call.success:
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                require idx < mem[96]
                _1364 = mem[(32 * idx) + 128]
                _1398 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_1398 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_1398 + 36 len 28]
                if mem[_1398] < 32:
                    mem[_1398 + 36] = Mask(-(8 * -mem[_1398] + 32) + 256, 0, mem[_1398 + 32]) or Mask(8 * -mem[_1398] + 32, -(8 * -mem[_1398] + 32) + 256, 4)
                    staticcall address(_1364).mem[_1398 + 36 len 4] with:
                            gas gas_remaining wei
                           args mem[_1398 + 40 len mem[_1398] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require mem[96] >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                    else:
                        mem[64] = _1398 + ceil32(return_data.size) + 37
                        mem[_1398 + 36] = return_data.size
                        mem[_1398 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require return_data.size >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1398 + 68]
                else:
                    mem[_1398 + 36] = mem[_1398 + 32]
                    t = _1398 + 64
                    u = _1398 + 68
                    s = mem[_1398] - 32
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1398 + floor32(mem[_1398] - 32) + 68] = mem[_1398 + (2 * floor32(mem[_1398] - 32)) + -mem[_1398] + 128 len mem[_1398] + -floor32(mem[_1398] - 32) - 32] or Mask(8 * -mem[_1398] + floor32(mem[_1398] - 32) + 64, -(8 * -mem[_1398] + floor32(mem[_1398] - 32) + 64) + 256, mem[_1398 + floor32(mem[_1398] - 32) + 68])
                    staticcall address(_1364).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_1398] + _1398 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require mem[96] >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                    else:
                        _1948 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1948] = return_data.size
                        mem[_1948 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require return_data.size >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1948 + 32]
            else:
                require mem[96] >= 32
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = mem[128]
                require idx < mem[96]
                _1442 = mem[(32 * idx) + 128]
                _1479 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_1479 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_1479 + 36 len 28]
                if mem[_1479] < 32:
                    mem[_1479 + 36] = Mask(-(8 * -mem[_1479] + 32) + 256, 0, mem[_1479 + 32]) or Mask(8 * -mem[_1479] + 32, -(8 * -mem[_1479] + 32) + 256, 4)
                    staticcall address(_1442).mem[_1479 + 36 len 4] with:
                            gas gas_remaining wei
                           args mem[_1479 + 40 len mem[_1479] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require mem[96] >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                    else:
                        mem[64] = _1479 + ceil32(return_data.size) + 37
                        mem[_1479 + 36] = return_data.size
                        mem[_1479 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require return_data.size >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1479 + 68]
                else:
                    mem[_1479 + 36] = mem[_1479 + 32]
                    t = _1479 + 64
                    u = _1479 + 68
                    s = mem[_1479] - 32
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1479 + floor32(mem[_1479] - 32) + 68] = mem[_1479 + (2 * floor32(mem[_1479] - 32)) + -mem[_1479] + 128 len mem[_1479] + -floor32(mem[_1479] - 32) - 32] or Mask(8 * -mem[_1479] + floor32(mem[_1479] - 32) + 64, -(8 * -mem[_1479] + floor32(mem[_1479] - 32) + 64) + 256, mem[_1479 + floor32(mem[_1479] - 32) + 68])
                    staticcall address(_1442).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_1479] + _1479 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require mem[96] >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                    else:
                        _1949 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1949] = return_data.size
                        mem[_1949 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require return_data.size >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1949 + 32]
        else:
            _1311 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_1311] = return_data.size
            mem[_1311 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                require idx < mem[96]
                _1366 = mem[(32 * idx) + 128]
                _1403 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_1403 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_1403 + 36 len 28]
                if mem[_1403] < 32:
                    mem[_1403 + 36] = Mask(-(8 * -mem[_1403] + 32) + 256, 0, mem[_1403 + 32]) or Mask(8 * -mem[_1403] + 32, -(8 * -mem[_1403] + 32) + 256, 4)
                    staticcall address(_1366).mem[_1403 + 36 len 4] with:
                            gas gas_remaining wei
                           args mem[_1403 + 40 len mem[_1403] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require mem[96] >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                    else:
                        mem[64] = _1403 + ceil32(return_data.size) + 37
                        mem[_1403 + 36] = return_data.size
                        mem[_1403 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require return_data.size >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1403 + 68]
                else:
                    mem[_1403 + 36] = mem[_1403 + 32]
                    t = _1403 + 64
                    u = _1403 + 68
                    s = mem[_1403] - 32
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1403 + floor32(mem[_1403] - 32) + 68] = mem[_1403 + (2 * floor32(mem[_1403] - 32)) + -mem[_1403] + 128 len mem[_1403] + -floor32(mem[_1403] - 32) - 32] or Mask(8 * -mem[_1403] + floor32(mem[_1403] - 32) + 64, -(8 * -mem[_1403] + floor32(mem[_1403] - 32) + 64) + 256, mem[_1403 + floor32(mem[_1403] - 32) + 68])
                    staticcall address(_1366).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_1403] + _1403 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require mem[96] >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                    else:
                        _1950 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1950] = return_data.size
                        mem[_1950 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require return_data.size >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1950 + 32]
            else:
                require return_data.size >= 32
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_1311 + 32]
                require idx < mem[96]
                _1447 = mem[(32 * idx) + 128]
                _1484 = mem[64]
                mem[mem[64]] = 4
                mem[64] = mem[64] + 36
                mem[_1484 + 32] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_1484 + 36 len 28]
                if mem[_1484] < 32:
                    mem[_1484 + 36] = Mask(-(8 * -mem[_1484] + 32) + 256, 0, mem[_1484 + 32]) or Mask(8 * -mem[_1484] + 32, -(8 * -mem[_1484] + 32) + 256, 4)
                    staticcall address(_1447).mem[_1484 + 36 len 4] with:
                            gas gas_remaining wei
                           args mem[_1484 + 40 len mem[_1484] - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require mem[96] >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                    else:
                        mem[64] = _1484 + ceil32(return_data.size) + 37
                        mem[_1484 + 36] = return_data.size
                        mem[_1484 + 68 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require return_data.size >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1484 + 68]
                else:
                    mem[_1484 + 36] = mem[_1484 + 32]
                    t = _1484 + 64
                    u = _1484 + 68
                    s = mem[_1484] - 32
                    while s >= 32:
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s - 32
                        continue 
                    mem[_1484 + floor32(mem[_1484] - 32) + 68] = mem[_1484 + (2 * floor32(mem[_1484] - 32)) + -mem[_1484] + 128 len mem[_1484] + -floor32(mem[_1484] - 32) - 32] or Mask(8 * -mem[_1484] + floor32(mem[_1484] - 32) + 64, -(8 * -mem[_1484] + floor32(mem[_1484] - 32) + 64) + 256, mem[_1484 + floor32(mem[_1484] - 32) + 68])
                    staticcall address(_1447).mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len mem[_1484] + _1484 + -mem[64] + 32]
                    if not return_data.size:
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require mem[96] >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                    else:
                        _1951 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1951] = return_data.size
                        mem[_1951 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require return_data.size >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_1951 + 32]
        idx = idx + 1
        continue 
    _667 = mem[64]
    mem[mem[64] + 64] = block.number
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[(32 * arg1.length) + 128]
    _669 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 128 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    mem[mem[64] + 32] = (32 * _669) + 128
    mem[(32 * _669) + _667 + 128] = mem[(64 * arg1.length) + 160]
    _1302 = mem[(64 * arg1.length) + 160]
    mem[(32 * _669) + _667 + 160 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
    return memory
      from mem[64]
       len (32 * _1302) + (32 * _669) + _667 + -mem[64] + 160
}



}
