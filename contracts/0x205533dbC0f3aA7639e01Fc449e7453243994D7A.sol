contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_92e2ce22(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args 10^6, 10^12, 10^12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > -101:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + 100 < ext_call.return_data[0] + 100 % 100:
        revert with 'NH{q', 17
    if 10^6 < ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100:
        revert with 'NH{q', 17
    return -ext_call.return_data[0] + (ext_call.return_data[0] + 100 % 100) + 999900 / 100, 
           ext_call.return_data[0],
           ext_call.return_data[0] + 100,
           ext_call.return_data[0] + -(ext_call.return_data[0] + 100 % 100) + 100
}

function sub_d05a8f27(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 36).length) + 97] = ('cd', 36).length
    mem[64] = floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 129
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _144 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^6
            mem[mem[64] + 36] = 10^12
            mem[mem[64] + 68] = 10^12
            require ext_code.size(address(_144))
            staticcall address(_144).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^6, 10^12, 10^12
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _158 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _162 = mem[_158]
            require mem[_158] == mem[_158]
            if mem[_158] > -101:
                revert with 'NH{q', 17
            if mem[_158] + 100 < mem[_158] + 100 % 100:
                revert with 'NH{q', 17
            if 10^6 < mem[_158] + -(mem[_158] + 100 % 100) + 100:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _175 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _177 = mem[_175]
            require mem[_175] == mem[_175 + 12 len 20]
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = address(cd[4])
            require ext_code.size(address(_177))
            staticcall address(_177).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args stor0, address(cd[4])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _186 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _187 = mem[_186]
            require mem[_186] == mem[_186 + 12 len 20]
            require ext_code.size(mem[_186 + 12 len 20])
            staticcall mem[_186 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _193 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _194 = mem[_193]
            require mem[_193] == mem[_193 + 18 len 14]
            _199 = mem[_193 + 32]
            require mem[_193 + 32] == mem[_193 + 50 len 14]
            require mem[_193 + 64] == mem[_193 + 92 len 4]
            _203 = mem[64]
            mem[64] = mem[64] + 128
            mem[_203] = address(_187)
            mem[_203 + 32] = Mask(112, 0, _194)
            mem[_203 + 64] = Mask(112, 0, _199)
            mem[_203 + 96] = -_162 + (_162 + 100 % 100) + 999900 / 100
            if idx >= mem[floor32(('cd', 36).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _203
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _143 = mem[64]
        mem[mem[64]] = 32
        _146 = mem[floor32(('cd', 36).length) + 97]
        mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
        idx = 0
        s = floor32(('cd', 36).length) + 129
        t = mem[64] + 64
        while idx < _146:
            _208 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_208 + 32]
            mem[t + 64] = mem[_208 + 64]
            mem[t + 96] = mem[_208 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _143 + (128 * _146) + -mem[64] + 64
    mem[64] = floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 257
    mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 129] = 0
    mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 0
    mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 193] = 0
    mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 225] = 0
    mem[var42001] = floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 129
    s = var42001
    idx = var42002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 129] = 0
        mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 161] = 0
        mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 193] = 0
        mem[floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 225] = 0
        mem[s + 32] = floor32(('cd', 36).length) + (32 * ('cd', 36).length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _247 = mem[96]
    idx = 0
    while idx < _247:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _250 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = 10^6
        mem[mem[64] + 36] = 10^12
        mem[mem[64] + 68] = 10^12
        require ext_code.size(address(_250))
        staticcall address(_250).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 10^6, 10^12, 10^12
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _257 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _259 = mem[_257]
        require mem[_257] == mem[_257]
        if mem[_257] > -101:
            revert with 'NH{q', 17
        if mem[_257] + 100 < mem[_257] + 100 % 100:
            revert with 'NH{q', 17
        if 10^6 < mem[_257] + -(mem[_257] + 100 % 100) + 100:
            revert with 'NH{q', 17
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _266 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _267 = mem[_266]
        require mem[_266] == mem[_266 + 12 len 20]
        mem[mem[64] + 4] = stor0
        mem[mem[64] + 36] = address(cd[4])
        require ext_code.size(address(_267))
        staticcall address(_267).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args stor0, address(cd[4])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _270 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _271 = mem[_270]
        require mem[_270] == mem[_270 + 12 len 20]
        require ext_code.size(mem[_270 + 12 len 20])
        staticcall mem[_270 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _274 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _275 = mem[_274]
        require mem[_274] == mem[_274 + 18 len 14]
        _276 = mem[_274 + 32]
        require mem[_274 + 32] == mem[_274 + 50 len 14]
        require mem[_274 + 64] == mem[_274 + 92 len 4]
        _278 = mem[64]
        mem[64] = mem[64] + 128
        mem[_278] = address(_271)
        mem[_278 + 32] = Mask(112, 0, _275)
        mem[_278 + 64] = Mask(112, 0, _276)
        mem[_278 + 96] = -_259 + (_259 + 100 % 100) + 999900 / 100
        if idx >= mem[floor32(('cd', 36).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 36).length) + 129] = _278
        if idx == -1:
            revert with 'NH{q', 17
        _247 = mem[96]
        idx = idx + 1
        continue 
    _249 = mem[64]
    mem[mem[64]] = 32
    _252 = mem[floor32(('cd', 36).length) + 97]
    mem[mem[64] + 32] = mem[floor32(('cd', 36).length) + 97]
    idx = 0
    s = floor32(('cd', 36).length) + 129
    t = mem[64] + 64
    while idx < _252:
        _280 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_280 + 32]
        mem[t + 64] = mem[_280 + 64]
        mem[t + 96] = mem[_280 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _249 + (128 * _252) + -mem[64] + 64
}

function sub_c0ce5053(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 68).length) + 97 > test266151307() or floor32(('cd', 68).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = 128
    while idx < ('cd', 68).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(('cd', 68).length) + 97] = ('cd', 68).length
    if not ('cd', 68).length:
        if ('cd', 68).length > test266151307():
            revert with 'NH{q', 65
        mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 129] = ('cd', 68).length
        mem[64] = floor32(('cd', 68).length) + (64 * ('cd', 68).length) + 161
        if not ('cd', 68).length:
            idx = 0
            while idx < ('cd', 68).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _598 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = 10^6
                mem[mem[64] + 36] = 10^12
                mem[mem[64] + 68] = 10^12
                require ext_code.size(address(_598))
                staticcall address(_598).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args 10^6, 10^12, 10^12
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _629 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _636 = mem[_629]
                require mem[_629] == mem[_629]
                if mem[_629] > -101:
                    revert with 'NH{q', 17
                if mem[_629] + 100 < mem[_629] + 100 % 100:
                    revert with 'NH{q', 17
                if 10^6 < mem[_629] + -(mem[_629] + 100 % 100) + 100:
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _686 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _691 = mem[_686]
                require mem[_686] == mem[_686 + 12 len 20]
                mem[mem[64] + 4] = address(cd[4])
                mem[mem[64] + 36] = stor0
                require ext_code.size(address(_691))
                staticcall address(_691).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(cd[4]), stor0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _711 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _713 = mem[_711]
                require mem[_711] == mem[_711 + 12 len 20]
                require ext_code.size(mem[_711 + 12 len 20])
                staticcall mem[_711 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _723 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _727 = mem[_723]
                require mem[_723] == mem[_723 + 18 len 14]
                _736 = mem[_723 + 32]
                require mem[_723 + 32] == mem[_723 + 50 len 14]
                require mem[_723 + 64] == mem[_723 + 92 len 4]
                _745 = mem[64]
                mem[64] = mem[64] + 128
                mem[_745] = address(_713)
                mem[_745 + 32] = Mask(112, 0, _727)
                mem[_745 + 64] = Mask(112, 0, _736)
                mem[_745 + 96] = -_636 + (_636 + 100 % 100) + 999900 / 100
                if idx >= mem[floor32(('cd', 68).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 68).length) + 129] = _745
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].factory() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _751 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _761 = mem[_751]
                require mem[_751] == mem[_751 + 12 len 20]
                mem[mem[64] + 4] = address(cd[36])
                mem[mem[64] + 36] = stor0
                require ext_code.size(address(_761))
                staticcall address(_761).getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(cd[36]), stor0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _783 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _785 = mem[_783]
                require mem[_783] == mem[_783 + 12 len 20]
                require ext_code.size(mem[_783 + 12 len 20])
                staticcall mem[_783 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _795 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _799 = mem[_795]
                require mem[_795] == mem[_795 + 18 len 14]
                _808 = mem[_795 + 32]
                require mem[_795 + 32] == mem[_795 + 50 len 14]
                require mem[_795 + 64] == mem[_795 + 92 len 4]
                _824 = mem[64]
                mem[64] = mem[64] + 128
                mem[_824] = address(_785)
                mem[_824 + 32] = Mask(112, 0, _799)
                mem[_824 + 64] = Mask(112, 0, _808)
                mem[_824 + 96] = -_636 + (_636 + 100 % 100) + 999900 / 100
                if idx >= mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 161] = _824
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _597 = mem[64]
            mem[mem[64]] = 64
            _603 = mem[floor32(('cd', 68).length) + 97]
            mem[mem[64] + 64] = mem[floor32(('cd', 68).length) + 97]
            idx = 0
            s = floor32(('cd', 68).length) + 129
            t = mem[64] + 96
            while idx < _603:
                _814 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_814 + 32]
                mem[t + 64] = mem[_814 + 64]
                mem[t + 96] = mem[_814 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            mem[_597 + 32] = (128 * _603) + 96
            _823 = mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 129]
            mem[_597 + (128 * _603) + 96] = mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 129]
            idx = 0
            s = floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 161
            t = _597 + (128 * _603) + 128
            while idx < _823:
                _916 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_916 + 32]
                mem[t + 64] = mem[_916 + 64]
                mem[t + 96] = mem[_916 + 96]
                idx = idx + 1
                s = s + 32
                t = t + 128
                continue 
            return memory
              from mem[64]
               len _597 + (128 * _603) + (128 * _823) + -mem[64] + 128
        mem[64] = floor32(('cd', 68).length) + (64 * ('cd', 68).length) + 289
        mem[floor32(('cd', 68).length) + (64 * ('cd', 68).length) + 161] = 0
        mem[floor32(('cd', 68).length) + (64 * ('cd', 68).length) + 193] = 0
        mem[floor32(('cd', 68).length) + (64 * ('cd', 68).length) + 225] = 0
        mem[floor32(('cd', 68).length) + (64 * ('cd', 68).length) + 257] = 0
        mem[var53001] = floor32(('cd', 68).length) + (64 * ('cd', 68).length) + 161
        s = var53001
        idx = var53002
        while idx - 1:
            mem[64] = mem[64] + 128
            mem[floor32(('cd', 68).length) + (64 * ('cd', 68).length) + 161] = 0
            mem[floor32(('cd', 68).length) + (64 * ('cd', 68).length) + 193] = 0
            mem[floor32(('cd', 68).length) + (64 * ('cd', 68).length) + 225] = 0
            mem[floor32(('cd', 68).length) + (64 * ('cd', 68).length) + 257] = 0
            mem[s + 32] = floor32(('cd', 68).length) + (64 * ('cd', 68).length) + 161
            s = s + 32
            idx = idx - 1
            continue 
        _913 = mem[96]
        idx = 0
        while idx < _913:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _920 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^6
            mem[mem[64] + 36] = 10^12
            mem[mem[64] + 68] = 10^12
            require ext_code.size(address(_920))
            staticcall address(_920).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^6, 10^12, 10^12
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _948 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _955 = mem[_948]
            require mem[_948] == mem[_948]
            if mem[_948] > -101:
                revert with 'NH{q', 17
            if mem[_948] + 100 < mem[_948] + 100 % 100:
                revert with 'NH{q', 17
            if 10^6 < mem[_948] + -(mem[_948] + 100 % 100) + 100:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _991 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _997 = mem[_991]
            require mem[_991] == mem[_991 + 12 len 20]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = stor0
            require ext_code.size(address(_997))
            staticcall address(_997).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), stor0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1006 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1009 = mem[_1006]
            require mem[_1006] == mem[_1006 + 12 len 20]
            require ext_code.size(mem[_1006 + 12 len 20])
            staticcall mem[_1006 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1017 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1021 = mem[_1017]
            require mem[_1017] == mem[_1017 + 18 len 14]
            _1025 = mem[_1017 + 32]
            require mem[_1017 + 32] == mem[_1017 + 50 len 14]
            require mem[_1017 + 64] == mem[_1017 + 92 len 4]
            _1031 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1031] = address(_1009)
            mem[_1031 + 32] = Mask(112, 0, _1021)
            mem[_1031 + 64] = Mask(112, 0, _1025)
            mem[_1031 + 96] = -_955 + (_955 + 100 % 100) + 999900 / 100
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 68).length) + 129] = _1031
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1043 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1051 = mem[_1043]
            require mem[_1043] == mem[_1043 + 12 len 20]
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = stor0
            require ext_code.size(address(_1051))
            staticcall address(_1051).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(cd[36]), stor0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1060 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1063 = mem[_1060]
            require mem[_1060] == mem[_1060 + 12 len 20]
            require ext_code.size(mem[_1060 + 12 len 20])
            staticcall mem[_1060 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1071 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1075 = mem[_1071]
            require mem[_1071] == mem[_1071 + 18 len 14]
            _1079 = mem[_1071 + 32]
            require mem[_1071 + 32] == mem[_1071 + 50 len 14]
            require mem[_1071 + 64] == mem[_1071 + 92 len 4]
            _1092 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1092] = address(_1063)
            mem[_1092 + 32] = Mask(112, 0, _1075)
            mem[_1092 + 64] = Mask(112, 0, _1079)
            mem[_1092 + 96] = -_955 + (_955 + 100 % 100) + 999900 / 100
            if idx >= mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 161] = _1092
            if idx == -1:
                revert with 'NH{q', 17
            _913 = mem[96]
            idx = idx + 1
            continue 
        _919 = mem[64]
        mem[mem[64]] = 64
        _928 = mem[floor32(('cd', 68).length) + 97]
        mem[mem[64] + 64] = mem[floor32(('cd', 68).length) + 97]
        idx = 0
        s = floor32(('cd', 68).length) + 129
        t = mem[64] + 96
        while idx < _928:
            _1084 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1084 + 32]
            mem[t + 64] = mem[_1084 + 64]
            mem[t + 96] = mem[_1084 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        mem[_919 + 32] = (128 * _928) + 96
        _1091 = mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 129]
        mem[_919 + (128 * _928) + 96] = mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 129]
        idx = 0
        s = floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 161
        t = _919 + (128 * _928) + 128
        while idx < _1091:
            _1128 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1128 + 32]
            mem[t + 64] = mem[_1128 + 64]
            mem[t + 96] = mem[_1128 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _919 + (128 * _928) + (128 * _1091) + -mem[64] + 128
    mem[64] = floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 257
    mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 129] = 0
    mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 161] = 0
    mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 193] = 0
    mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 225] = 0
    mem[var51001] = floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 129
    s = var51001
    idx = var51002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 129] = 0
        mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 161] = 0
        mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 193] = 0
        mem[floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 225] = 0
        mem[s + 32] = floor32(('cd', 68).length) + (32 * ('cd', 68).length) + 129
        s = s + 32
        idx = idx - 1
        continue 
    _600 = mem[96]
    if mem[96] > test266151307():
        revert with 'NH{q', 65
    _602 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _600) + 32
    if not _600:
        _914 = mem[96]
        idx = 0
        while idx < _914:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _922 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = 10^6
            mem[mem[64] + 36] = 10^12
            mem[mem[64] + 68] = 10^12
            require ext_code.size(address(_922))
            staticcall address(_922).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args 10^6, 10^12, 10^12
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _949 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _957 = mem[_949]
            require mem[_949] == mem[_949]
            if mem[_949] > -101:
                revert with 'NH{q', 17
            if mem[_949] + 100 < mem[_949] + 100 % 100:
                revert with 'NH{q', 17
            if 10^6 < mem[_949] + -(mem[_949] + 100 % 100) + 100:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _992 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _998 = mem[_992]
            require mem[_992] == mem[_992 + 12 len 20]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = stor0
            require ext_code.size(address(_998))
            staticcall address(_998).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(cd[4]), stor0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1007 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1010 = mem[_1007]
            require mem[_1007] == mem[_1007 + 12 len 20]
            require ext_code.size(mem[_1007 + 12 len 20])
            staticcall mem[_1007 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1018 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1022 = mem[_1018]
            require mem[_1018] == mem[_1018 + 18 len 14]
            _1026 = mem[_1018 + 32]
            require mem[_1018 + 32] == mem[_1018 + 50 len 14]
            require mem[_1018 + 64] == mem[_1018 + 92 len 4]
            _1033 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1033] = address(_1010)
            mem[_1033 + 32] = Mask(112, 0, _1022)
            mem[_1033 + 64] = Mask(112, 0, _1026)
            mem[_1033 + 96] = -_957 + (_957 + 100 % 100) + 999900 / 100
            if idx >= mem[floor32(('cd', 68).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + floor32(('cd', 68).length) + 129] = _1033
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1044 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1052 = mem[_1044]
            require mem[_1044] == mem[_1044 + 12 len 20]
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = stor0
            require ext_code.size(address(_1052))
            staticcall address(_1052).getPair(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args address(cd[36]), stor0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1061 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1064 = mem[_1061]
            require mem[_1061] == mem[_1061 + 12 len 20]
            require ext_code.size(mem[_1061 + 12 len 20])
            staticcall mem[_1061 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1072 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1076 = mem[_1072]
            require mem[_1072] == mem[_1072 + 18 len 14]
            _1080 = mem[_1072 + 32]
            require mem[_1072 + 32] == mem[_1072 + 50 len 14]
            require mem[_1072 + 64] == mem[_1072 + 92 len 4]
            _1095 = mem[64]
            mem[64] = mem[64] + 128
            mem[_1095] = address(_1064)
            mem[_1095 + 32] = Mask(112, 0, _1076)
            mem[_1095 + 64] = Mask(112, 0, _1080)
            mem[_1095 + 96] = -_957 + (_957 + 100 % 100) + 999900 / 100
            if idx >= mem[_602]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _602 + 32] = _1095
            if idx == -1:
                revert with 'NH{q', 17
            _914 = mem[96]
            idx = idx + 1
            continue 
        _921 = mem[64]
        mem[mem[64]] = 64
        _929 = mem[floor32(('cd', 68).length) + 97]
        mem[mem[64] + 64] = mem[floor32(('cd', 68).length) + 97]
        idx = 0
        s = floor32(('cd', 68).length) + 129
        t = mem[64] + 96
        while idx < _929:
            _1085 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1085 + 32]
            mem[t + 64] = mem[_1085 + 64]
            mem[t + 96] = mem[_1085 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        mem[_921 + 32] = (128 * _929) + 96
        _1094 = mem[_602]
        mem[_921 + (128 * _929) + 96] = mem[_602]
        idx = 0
        s = _602 + 32
        t = _921 + (128 * _929) + 128
        while idx < _1094:
            _1129 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1129 + 32]
            mem[t + 64] = mem[_1129 + 64]
            mem[t + 96] = mem[_1129 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _921 + (128 * _929) + (128 * _1094) + -mem[64] + 128
    mem[64] = _602 + (32 * _600) + 160
    mem[_602 + (32 * _600) + 32] = 0
    mem[_602 + (32 * _600) + 64] = 0
    mem[_602 + (32 * _600) + 96] = 0
    mem[_602 + (32 * _600) + 128] = 0
    mem[var60001] = _602 + (32 * _600) + 32
    s = var60001
    idx = var60002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[_602 + (32 * _600) + 32] = 0
        mem[_602 + (32 * _600) + 64] = 0
        mem[_602 + (32 * _600) + 96] = 0
        mem[_602 + (32 * _600) + 128] = 0
        mem[s + 32] = _602 + (32 * _600) + 32
        s = s + 32
        idx = idx - 1
        continue 
    _1127 = mem[96]
    idx = 0
    while idx < _1127:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1132 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = 10^6
        mem[mem[64] + 36] = 10^12
        mem[mem[64] + 68] = 10^12
        require ext_code.size(address(_1132))
        staticcall address(_1132).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args 10^6, 10^12, 10^12
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1149 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1152 = mem[_1149]
        require mem[_1149] == mem[_1149]
        if mem[_1149] > -101:
            revert with 'NH{q', 17
        if mem[_1149] + 100 < mem[_1149] + 100 % 100:
            revert with 'NH{q', 17
        if 10^6 < mem[_1149] + -(mem[_1149] + 100 % 100) + 100:
            revert with 'NH{q', 17
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1164 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1165 = mem[_1164]
        require mem[_1164] == mem[_1164 + 12 len 20]
        mem[mem[64] + 4] = address(cd[4])
        mem[mem[64] + 36] = stor0
        require ext_code.size(address(_1165))
        staticcall address(_1165).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(cd[4]), stor0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1168 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1169 = mem[_1168]
        require mem[_1168] == mem[_1168 + 12 len 20]
        require ext_code.size(mem[_1168 + 12 len 20])
        staticcall mem[_1168 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1172 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1173 = mem[_1172]
        require mem[_1172] == mem[_1172 + 18 len 14]
        _1174 = mem[_1172 + 32]
        require mem[_1172 + 32] == mem[_1172 + 50 len 14]
        require mem[_1172 + 64] == mem[_1172 + 92 len 4]
        _1176 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1176] = address(_1169)
        mem[_1176 + 32] = Mask(112, 0, _1173)
        mem[_1176 + 64] = Mask(112, 0, _1174)
        mem[_1176 + 96] = -_1152 + (_1152 + 100 % 100) + 999900 / 100
        if idx >= mem[floor32(('cd', 68).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + floor32(('cd', 68).length) + 129] = _1176
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1182 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1183 = mem[_1182]
        require mem[_1182] == mem[_1182 + 12 len 20]
        mem[mem[64] + 4] = address(cd[36])
        mem[mem[64] + 36] = stor0
        require ext_code.size(address(_1183))
        staticcall address(_1183).getPair(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(cd[36]), stor0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1186 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1187 = mem[_1186]
        require mem[_1186] == mem[_1186 + 12 len 20]
        require ext_code.size(mem[_1186 + 12 len 20])
        staticcall mem[_1186 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1190 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1191 = mem[_1190]
        require mem[_1190] == mem[_1190 + 18 len 14]
        _1192 = mem[_1190 + 32]
        require mem[_1190 + 32] == mem[_1190 + 50 len 14]
        require mem[_1190 + 64] == mem[_1190 + 92 len 4]
        _1197 = mem[64]
        mem[64] = mem[64] + 128
        mem[_1197] = address(_1187)
        mem[_1197 + 32] = Mask(112, 0, _1191)
        mem[_1197 + 64] = Mask(112, 0, _1192)
        mem[_1197 + 96] = -_1152 + (_1152 + 100 % 100) + 999900 / 100
        if idx >= mem[_602]:
            revert with 'NH{q', 50
        mem[(32 * idx) + _602 + 32] = _1197
        if idx == -1:
            revert with 'NH{q', 17
        _1127 = mem[96]
        idx = idx + 1
        continue 
    _1131 = mem[64]
    mem[mem[64]] = 64
    _1138 = mem[floor32(('cd', 68).length) + 97]
    mem[mem[64] + 64] = mem[floor32(('cd', 68).length) + 97]
    idx = 0
    s = floor32(('cd', 68).length) + 129
    t = mem[64] + 96
    while idx < _1138:
        _1194 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_1194 + 32]
        mem[t + 64] = mem[_1194 + 64]
        mem[t + 96] = mem[_1194 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    mem[_1131 + 32] = (128 * _1138) + 96
    _1196 = mem[_602]
    mem[_1131 + (128 * _1138) + 96] = mem[_602]
    idx = 0
    s = _602 + 32
    t = _1131 + (128 * _1138) + 128
    while idx < _1196:
        _1208 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_1208 + 32]
        mem[t + 64] = mem[_1208 + 64]
        mem[t + 96] = mem[_1208 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _1131 + (128 * _1138) + (128 * _1196) + -mem[64] + 128
}



}
