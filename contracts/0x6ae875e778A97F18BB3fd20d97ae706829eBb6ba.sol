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
                u = _679 + 68
                s = mem[_680]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_679 + floor32(mem[_680]) + 68] = mem[_680 + -(mem[_680] % 32) + floor32(mem[_680]) + 64 len mem[_680] % 32] or Mask(8 * -(mem[_680] % 32) + 32, -(8 * -(mem[_680] % 32) + 32) + 256, mem[_679 + floor32(mem[_680]) + 68])
                staticcall address(_672).mem[_679 + 68 len 4] with:
                        gas gas_remaining wei
                       args mem[_679 + 72 len _683 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                        require idx < mem[96]
                        _1352 = mem[(32 * idx) + 128]
                        mem[_679 + 68] = 4
                        mem[64] = _679 + 104
                        mem[_679 + 100] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_679 + 104 len 28]
                        mem[_679 + 104] = mem[_679 + 128 len 4] or Mask(224, 32, mem[_679 + 104])
                        staticcall address(_1352).mem[_679 + 104 len 4] with:
                                gas gas_remaining wei
                    else:
                        require mem[96] >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = mem[128]
                        require idx < mem[96]
                        _1412 = mem[(32 * idx) + 128]
                        mem[_679 + 68] = 4
                        mem[64] = _679 + 104
                        mem[_679 + 100] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_679 + 104 len 28]
                        mem[_679 + 104] = mem[_679 + 128 len 4] or Mask(224, 32, mem[_679 + 104])
                        staticcall address(_1412).mem[_679 + 104 len 4] with:
                                gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require mem[96] >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                    else:
                        mem[64] = _679 + ceil32(return_data.size) + 105
                        mem[_679 + 104] = return_data.size
                        mem[_679 + 136 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require return_data.size >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_679 + 136]
                else:
                    mem[64] = _679 + ceil32(return_data.size) + 69
                    mem[_679 + 68] = return_data.size
                    mem[_679 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                        require idx < mem[96]
                        _1354 = mem[(32 * idx) + 128]
                        mem[_679 + ceil32(return_data.size) + 69] = 4
                        mem[64] = _679 + ceil32(return_data.size) + 105
                        mem[_679 + ceil32(return_data.size) + 101] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_679 + ceil32(return_data.size) + 105 len 28]
                        mem[_679 + ceil32(return_data.size) + 105] = mem[_679 + ceil32(return_data.size) + 129 len 4] or Mask(224, 32, mem[_679 + ceil32(return_data.size) + 105])
                        staticcall address(_1354).mem[_679 + ceil32(return_data.size) + 105 len 4] with:
                                gas gas_remaining wei
                    else:
                        require return_data.size >= 32
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_679 + 100]
                        require idx < mem[96]
                        _1417 = mem[(32 * idx) + 128]
                        mem[_679 + ceil32(return_data.size) + 69] = 4
                        mem[64] = _679 + ceil32(return_data.size) + 105
                        mem[_679 + ceil32(return_data.size) + 101] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_679 + ceil32(return_data.size) + 105 len 28]
                        mem[_679 + ceil32(return_data.size) + 105] = mem[_679 + ceil32(return_data.size) + 129 len 4] or Mask(224, 32, mem[_679 + ceil32(return_data.size) + 105])
                        staticcall address(_1417).mem[_679 + ceil32(return_data.size) + 105 len 4] with:
                                gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require mem[96] >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                    else:
                        mem[64] = _679 + (2 * ceil32(return_data.size)) + 106
                        mem[_679 + ceil32(return_data.size) + 105] = return_data.size
                        mem[_679 + ceil32(return_data.size) + 137 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                        else:
                            require return_data.size >= 32
                            require idx < mem[(64 * arg1.length) + 160]
                            mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_679 + ceil32(return_data.size) + 137]
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
            u = _687 + 68
            s = mem[_688]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_687 + floor32(mem[_688]) + 68] = mem[_688 + -(mem[_688] % 32) + floor32(mem[_688]) + 64 len mem[_688] % 32] or Mask(8 * -(mem[_688] % 32) + 32, -(8 * -(mem[_688] % 32) + 32) + 256, mem[_687 + floor32(mem[_688]) + 68])
            staticcall address(_673).mem[_687 + 68 len 4] with:
                    gas gas_remaining wei
                   args mem[_687 + 72 len _691 - 4]
            if not return_data.size:
                if not ext_call.success:
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    require idx < mem[96]
                    _1356 = mem[(32 * idx) + 128]
                    mem[_687 + 68] = 4
                    mem[64] = _687 + 104
                    mem[_687 + 100] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_687 + 104 len 28]
                    mem[_687 + 104] = mem[_687 + 128 len 4] or Mask(224, 32, mem[_687 + 104])
                    staticcall address(_1356).mem[_687 + 104 len 4] with:
                            gas gas_remaining wei
                else:
                    require mem[96] >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = mem[128]
                    require idx < mem[96]
                    _1422 = mem[(32 * idx) + 128]
                    mem[_687 + 68] = 4
                    mem[64] = _687 + 104
                    mem[_687 + 100] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_687 + 104 len 28]
                    mem[_687 + 104] = mem[_687 + 128 len 4] or Mask(224, 32, mem[_687 + 104])
                    staticcall address(_1422).mem[_687 + 104 len 4] with:
                            gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                    else:
                        require mem[96] >= 32
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                else:
                    mem[64] = _687 + ceil32(return_data.size) + 105
                    mem[_687 + 104] = return_data.size
                    mem[_687 + 136 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                    else:
                        require return_data.size >= 32
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_687 + 136]
            else:
                mem[64] = _687 + ceil32(return_data.size) + 69
                mem[_687 + 68] = return_data.size
                mem[_687 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    require idx < mem[96]
                    _1358 = mem[(32 * idx) + 128]
                    mem[_687 + ceil32(return_data.size) + 69] = 4
                    mem[64] = _687 + ceil32(return_data.size) + 105
                    mem[_687 + ceil32(return_data.size) + 101] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_687 + ceil32(return_data.size) + 105 len 28]
                    mem[_687 + ceil32(return_data.size) + 105] = mem[_687 + ceil32(return_data.size) + 129 len 4] or Mask(224, 32, mem[_687 + ceil32(return_data.size) + 105])
                    staticcall address(_1358).mem[_687 + ceil32(return_data.size) + 105 len 4] with:
                            gas gas_remaining wei
                else:
                    require return_data.size >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_687 + 100]
                    require idx < mem[96]
                    _1427 = mem[(32 * idx) + 128]
                    mem[_687 + ceil32(return_data.size) + 69] = 4
                    mem[64] = _687 + ceil32(return_data.size) + 105
                    mem[_687 + ceil32(return_data.size) + 101] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_687 + ceil32(return_data.size) + 105 len 28]
                    mem[_687 + ceil32(return_data.size) + 105] = mem[_687 + ceil32(return_data.size) + 129 len 4] or Mask(224, 32, mem[_687 + ceil32(return_data.size) + 105])
                    staticcall address(_1427).mem[_687 + ceil32(return_data.size) + 105 len 4] with:
                            gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                    else:
                        require mem[96] >= 32
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                else:
                    mem[64] = _687 + (2 * ceil32(return_data.size)) + 106
                    mem[_687 + ceil32(return_data.size) + 105] = return_data.size
                    mem[_687 + ceil32(return_data.size) + 137 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                    else:
                        require return_data.size >= 32
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_687 + ceil32(return_data.size) + 137]
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
            u = _695 + 68
            s = mem[_696]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_695 + floor32(mem[_696]) + 68] = mem[_696 + -(mem[_696] % 32) + floor32(mem[_696]) + 64 len mem[_696] % 32] or Mask(8 * -(mem[_696] % 32) + 32, -(8 * -(mem[_696] % 32) + 32) + 256, mem[_695 + floor32(mem[_696]) + 68])
            staticcall address(_674).mem[_695 + 68 len 4] with:
                    gas gas_remaining wei
                   args mem[_695 + 72 len _699 - 4]
            if not return_data.size:
                if not ext_call.success:
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    require idx < mem[96]
                    _1360 = mem[(32 * idx) + 128]
                    mem[_695 + 68] = 4
                    mem[64] = _695 + 104
                    mem[_695 + 100] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_695 + 104 len 28]
                    mem[_695 + 104] = mem[_695 + 128 len 4] or Mask(224, 32, mem[_695 + 104])
                    staticcall address(_1360).mem[_695 + 104 len 4] with:
                            gas gas_remaining wei
                else:
                    require mem[96] >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = mem[128]
                    require idx < mem[96]
                    _1432 = mem[(32 * idx) + 128]
                    mem[_695 + 68] = 4
                    mem[64] = _695 + 104
                    mem[_695 + 100] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_695 + 104 len 28]
                    mem[_695 + 104] = mem[_695 + 128 len 4] or Mask(224, 32, mem[_695 + 104])
                    staticcall address(_1432).mem[_695 + 104 len 4] with:
                            gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                    else:
                        require mem[96] >= 32
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                else:
                    mem[64] = _695 + ceil32(return_data.size) + 105
                    mem[_695 + 104] = return_data.size
                    mem[_695 + 136 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                    else:
                        require return_data.size >= 32
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_695 + 136]
            else:
                mem[64] = _695 + ceil32(return_data.size) + 69
                mem[_695 + 68] = return_data.size
                mem[_695 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                    require idx < mem[96]
                    _1362 = mem[(32 * idx) + 128]
                    mem[_695 + ceil32(return_data.size) + 69] = 4
                    mem[64] = _695 + ceil32(return_data.size) + 105
                    mem[_695 + ceil32(return_data.size) + 101] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_695 + ceil32(return_data.size) + 105 len 28]
                    mem[_695 + ceil32(return_data.size) + 105] = mem[_695 + ceil32(return_data.size) + 129 len 4] or Mask(224, 32, mem[_695 + ceil32(return_data.size) + 105])
                    staticcall address(_1362).mem[_695 + ceil32(return_data.size) + 105 len 4] with:
                            gas gas_remaining wei
                else:
                    require return_data.size >= 32
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_695 + 100]
                    require idx < mem[96]
                    _1437 = mem[(32 * idx) + 128]
                    mem[_695 + ceil32(return_data.size) + 69] = 4
                    mem[64] = _695 + ceil32(return_data.size) + 105
                    mem[_695 + ceil32(return_data.size) + 101] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_695 + ceil32(return_data.size) + 105 len 28]
                    mem[_695 + ceil32(return_data.size) + 105] = mem[_695 + ceil32(return_data.size) + 129 len 4] or Mask(224, 32, mem[_695 + ceil32(return_data.size) + 105])
                    staticcall address(_1437).mem[_695 + ceil32(return_data.size) + 105 len 4] with:
                            gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                    else:
                        require mem[96] >= 32
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
                else:
                    mem[64] = _695 + (2 * ceil32(return_data.size)) + 106
                    mem[_695 + ceil32(return_data.size) + 105] = return_data.size
                    mem[_695 + ceil32(return_data.size) + 137 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                    else:
                        require return_data.size >= 32
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_695 + ceil32(return_data.size) + 137]
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
        u = _703 + 68
        s = mem[_704]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_703 + floor32(mem[_704]) + 68] = mem[_704 + -(mem[_704] % 32) + floor32(mem[_704]) + 64 len mem[_704] % 32] or Mask(8 * -(mem[_704] % 32) + 32, -(8 * -(mem[_704] % 32) + 32) + 256, mem[_703 + floor32(mem[_704]) + 68])
        staticcall address(_675).mem[_703 + 68 len 4] with:
                gas gas_remaining wei
               args mem[_703 + 72 len _707 - 4]
        if not return_data.size:
            if not ext_call.success:
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                require idx < mem[96]
                _1364 = mem[(32 * idx) + 128]
                mem[_703 + 68] = 4
                mem[64] = _703 + 104
                mem[_703 + 100] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_703 + 104 len 28]
                mem[_703 + 104] = mem[_703 + 128 len 4] or Mask(224, 32, mem[_703 + 104])
                staticcall address(_1364).mem[_703 + 104 len 4] with:
                        gas gas_remaining wei
            else:
                require mem[96] >= 32
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = mem[128]
                require idx < mem[96]
                _1442 = mem[(32 * idx) + 128]
                mem[_703 + 68] = 4
                mem[64] = _703 + 104
                mem[_703 + 100] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_703 + 104 len 28]
                mem[_703 + 104] = mem[_703 + 128 len 4] or Mask(224, 32, mem[_703 + 104])
                staticcall address(_1442).mem[_703 + 104 len 4] with:
                        gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                else:
                    require mem[96] >= 32
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
            else:
                mem[64] = _703 + ceil32(return_data.size) + 105
                mem[_703 + 104] = return_data.size
                mem[_703 + 136 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                else:
                    require return_data.size >= 32
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_703 + 136]
        else:
            mem[64] = _703 + ceil32(return_data.size) + 69
            mem[_703 + 68] = return_data.size
            mem[_703 + 100 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = 0
                require idx < mem[96]
                _1366 = mem[(32 * idx) + 128]
                mem[_703 + ceil32(return_data.size) + 69] = 4
                mem[64] = _703 + ceil32(return_data.size) + 105
                mem[_703 + ceil32(return_data.size) + 101] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_703 + ceil32(return_data.size) + 105 len 28]
                mem[_703 + ceil32(return_data.size) + 105] = mem[_703 + ceil32(return_data.size) + 129 len 4] or Mask(224, 32, mem[_703 + ceil32(return_data.size) + 105])
                staticcall address(_1366).mem[_703 + ceil32(return_data.size) + 105 len 4] with:
                        gas gas_remaining wei
            else:
                require return_data.size >= 32
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_703 + 100]
                require idx < mem[96]
                _1447 = mem[(32 * idx) + 128]
                mem[_703 + ceil32(return_data.size) + 69] = 4
                mem[64] = _703 + ceil32(return_data.size) + 105
                mem[_703 + ceil32(return_data.size) + 101] = 0x18160ddd00000000000000000000000000000000000000000000000000000000 or mem[_703 + ceil32(return_data.size) + 105 len 28]
                mem[_703 + ceil32(return_data.size) + 105] = mem[_703 + ceil32(return_data.size) + 129 len 4] or Mask(224, 32, mem[_703 + ceil32(return_data.size) + 105])
                staticcall address(_1447).mem[_703 + ceil32(return_data.size) + 105 len 4] with:
                        gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                else:
                    require mem[96] >= 32
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[128]
            else:
                mem[64] = _703 + (2 * ceil32(return_data.size)) + 106
                mem[_703 + ceil32(return_data.size) + 105] = return_data.size
                mem[_703 + ceil32(return_data.size) + 137 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = 0
                else:
                    require return_data.size >= 32
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = mem[_703 + ceil32(return_data.size) + 137]
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
