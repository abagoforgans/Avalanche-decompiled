contract main {




// =====================  Runtime code  =====================


#
#  - sub_c6c5fb76(?)
#
function _fallback() payable {
    revert
}

function sub_cbc46ac9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ef968176(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = ('cd', 4).length
        mem[64] = ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _175 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_175] == mem[_175 + 18 len 14]
                _195 = mem[_175 + 32]
                require mem[_175 + 32] == mem[_175 + 50 len 14]
                require mem[_175 + 64] == mem[_175 + 92 len 4]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_175 + 18 len 14]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = Mask(112, 0, _195)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _158 = mem[64]
            mem[mem[64]] = 64
            _174 = mem[ceil32(32 * ('cd', 4).length) + 97]
            mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 4).length) + 97]
            mem[mem[64] + 96 len 32 * _174] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _174]
            mem[mem[64] + 32] = (32 * _174) + 96
            _222 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            mem[_158 + (32 * _174) + 96] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            mem[_158 + (32 * _174) + 128 len 32 * _222] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161 len 32 * _222]
            return memory
              from mem[64]
               len _158 + (32 * _174) + (32 * _222) + -mem[64] + 128
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _177 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_177] == mem[_177 + 18 len 14]
            _197 = mem[_177 + 32]
            require mem[_177 + 32] == mem[_177 + 50 len 14]
            require mem[_177 + 64] == mem[_177 + 92 len 4]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_177 + 18 len 14]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = Mask(112, 0, _197)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _162 = mem[64]
        mem[mem[64]] = 64
        _176 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 96 len 32 * _176] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _176]
        mem[mem[64] + 32] = (32 * _176) + 96
        _223 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        mem[_162 + (32 * _176) + 96] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        mem[_162 + (32 * _176) + 128 len 32 * _223] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161 len 32 * _223]
        return memory
          from mem[64]
           len _162 + (32 * _176) + (32 * _223) + -mem[64] + 128
    mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _179 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_179] == mem[_179 + 18 len 14]
            _199 = mem[_179 + 32]
            require mem[_179 + 32] == mem[_179 + 50 len 14]
            require mem[_179 + 64] == mem[_179 + 92 len 4]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_179 + 18 len 14]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = Mask(112, 0, _199)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _166 = mem[64]
        mem[mem[64]] = 64
        _178 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 96 len 32 * _178] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _178]
        mem[mem[64] + 32] = (32 * _178) + 96
        _224 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        mem[_166 + (32 * _178) + 96] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        mem[_166 + (32 * _178) + 128 len 32 * _224] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161 len 32 * _224]
        return memory
          from mem[64]
           len _166 + (32 * _178) + (32 * _224) + -mem[64] + 128
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _181 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_181] == mem[_181 + 18 len 14]
        _201 = mem[_181 + 32]
        require mem[_181 + 32] == mem[_181 + 50 len 14]
        require mem[_181 + 64] == mem[_181 + 92 len 4]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_181 + 18 len 14]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = Mask(112, 0, _201)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _170 = mem[64]
    mem[mem[64]] = 64
    _180 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 96 len 32 * _180] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * _180]
    mem[mem[64] + 32] = (32 * _180) + 96
    _225 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
    mem[_170 + (32 * _180) + 96] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
    mem[_170 + (32 * _180) + 128 len 32 * _225] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161 len 32 * _225]
    return memory
      from mem[64]
       len _170 + (32 * _180) + (32 * _225) + -mem[64] + 128
}

function sub_e797e9ef(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = ('cd', 4).length
        mem[64] = ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _175 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _191 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_191] == mem[_191 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_191 + 12 len 20]
                require ext_code.size(address(_175))
                staticcall address(_175).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _230 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_230] == mem[_230 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_230 + 12 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _174 = mem[64]
            mem[mem[64]] = 64
            _190 = mem[ceil32(32 * ('cd', 4).length) + 97]
            mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 4).length) + 97]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 129
            t = mem[64] + 96
            while idx < _190:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_174 + 32] = (32 * _190) + 96
            _246 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            mem[_174 + (32 * _190) + 96] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
            t = _174 + (32 * _190) + 128
            while idx < _246:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _174 + (32 * _190) + (32 * _246) + -mem[64] + 128
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _179 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _193 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_193] == mem[_193 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_193 + 12 len 20]
            require ext_code.size(address(_179))
            staticcall address(_179).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _231 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_231] == mem[_231 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_231 + 12 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _178 = mem[64]
        mem[mem[64]] = 64
        _192 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 96
        while idx < _192:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_178 + 32] = (32 * _192) + 96
        _247 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        mem[_178 + (32 * _192) + 96] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
        t = _178 + (32 * _192) + 128
        while idx < _247:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _178 + (32 * _192) + (32 * _247) + -mem[64] + 128
    mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _183 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _195 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_195] == mem[_195 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_195 + 12 len 20]
            require ext_code.size(address(_183))
            staticcall address(_183).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _232 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_232] == mem[_232 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_232 + 12 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _182 = mem[64]
        mem[mem[64]] = 64
        _194 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 96
        while idx < _194:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_182 + 32] = (32 * _194) + 96
        _248 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        mem[_182 + (32 * _194) + 96] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
        t = _182 + (32 * _194) + 128
        while idx < _248:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _182 + (32 * _194) + (32 * _248) + -mem[64] + 128
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _187 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _197 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_197] == mem[_197 + 12 len 20]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_197 + 12 len 20]
        require ext_code.size(address(_187))
        staticcall address(_187).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _233 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_233] == mem[_233 + 12 len 20]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_233 + 12 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _186 = mem[64]
    mem[mem[64]] = 64
    _196 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 64] = mem[ceil32(32 * ('cd', 4).length) + 97]
    idx = 0
    s = ceil32(32 * ('cd', 4).length) + 129
    t = mem[64] + 96
    while idx < _196:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_186 + 32] = (32 * _196) + 96
    _249 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
    mem[_186 + (32 * _196) + 96] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
    idx = 0
    s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
    t = _186 + (32 * _196) + 128
    while idx < _249:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _186 + (32 * _196) + (32 * _249) + -mem[64] + 128
}

function sub_a8893212(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = ('cd', 4).length
        if not ('cd', 4).length:
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161] = ('cd', 4).length
            if not ('cd', 4).length:
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193] = ('cd', 4).length
                mem[64] = ceil32(32 * ('cd', 4).length) + (131 * ('cd', 4).length) + 225
                if not ('cd', 4).length:
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1087 = mem[(32 * idx) + 128]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1151 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1198 = mem[_1151]
                        require mem[_1151] == mem[_1151 + 18 len 14]
                        _1231 = mem[_1151 + 32]
                        require mem[_1151 + 32] == mem[_1151 + 50 len 14]
                        require mem[_1151 + 64] == mem[_1151 + 92 len 4]
                        require ext_code.size(address(_1087))
                        staticcall address(_1087).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1343 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1343] == mem[_1343 + 12 len 20]
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1343 + 12 len 20]
                        require ext_code.size(address(_1087))
                        staticcall address(_1087).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1470 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1470] == mem[_1470 + 12 len 20]
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1470 + 12 len 20]
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1198)
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1231)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _1086 = mem[64]
                    mem[mem[64]] = 128
                    _1150 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + 129
                    t = mem[64] + 160
                    while idx < _1150:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1086 + 32] = (32 * _1150) + 160
                    _1566 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                    mem[_1086 + (32 * _1150) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
                    t = _1086 + (32 * _1150) + 192
                    while idx < _1566:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1086 + 64] = (32 * _1150) + (32 * _1566) + 192
                    _1694 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                    mem[_1086 + (32 * _1150) + (32 * _1566) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                    mem[_1086 + (32 * _1150) + (32 * _1566) + 224 len 32 * _1694] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1694]
                    mem[_1086 + 96] = (32 * _1150) + (32 * _1566) + (32 * _1694) + 224
                    _1790 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
                    mem[_1086 + (32 * _1150) + (32 * _1566) + (32 * _1694) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
                    mem[_1086 + (32 * _1150) + (32 * _1566) + (32 * _1694) + 256 len 32 * _1790] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1790]
                    return memory
                      from mem[64]
                       len _1086 + (32 * _1150) + (32 * _1566) + (32 * _1694) + (32 * _1790) + -mem[64] + 256
                mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1091 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1153 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1199 = mem[_1153]
                    require mem[_1153] == mem[_1153 + 18 len 14]
                    _1233 = mem[_1153 + 32]
                    require mem[_1153 + 32] == mem[_1153 + 50 len 14]
                    require mem[_1153 + 64] == mem[_1153 + 92 len 4]
                    require ext_code.size(address(_1091))
                    staticcall address(_1091).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1345 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1345] == mem[_1345 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1345 + 12 len 20]
                    require ext_code.size(address(_1091))
                    staticcall address(_1091).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1471 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1471] == mem[_1471 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1471 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1199)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1233)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1090 = mem[64]
                mem[mem[64]] = 128
                _1152 = mem[ceil32(32 * ('cd', 4).length) + 97]
                mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + 129
                t = mem[64] + 160
                while idx < _1152:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1090 + 32] = (32 * _1152) + 160
                _1567 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                mem[_1090 + (32 * _1152) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
                t = _1090 + (32 * _1152) + 192
                while idx < _1567:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1090 + 64] = (32 * _1152) + (32 * _1567) + 192
                _1695 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_1090 + (32 * _1152) + (32 * _1567) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_1090 + (32 * _1152) + (32 * _1567) + 224 len 32 * _1695] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1695]
                mem[_1090 + 96] = (32 * _1152) + (32 * _1567) + (32 * _1695) + 224
                _1791 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
                mem[_1090 + (32 * _1152) + (32 * _1567) + (32 * _1695) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
                mem[_1090 + (32 * _1152) + (32 * _1567) + (32 * _1695) + 256 len 32 * _1791] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1791]
                return memory
                  from mem[64]
                   len _1090 + (32 * _1152) + (32 * _1567) + (32 * _1695) + (32 * _1791) + -mem[64] + 256
            mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193] = ('cd', 4).length
            mem[64] = ceil32(32 * ('cd', 4).length) + (131 * ('cd', 4).length) + 225
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1095 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1155 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1200 = mem[_1155]
                    require mem[_1155] == mem[_1155 + 18 len 14]
                    _1235 = mem[_1155 + 32]
                    require mem[_1155 + 32] == mem[_1155 + 50 len 14]
                    require mem[_1155 + 64] == mem[_1155 + 92 len 4]
                    require ext_code.size(address(_1095))
                    staticcall address(_1095).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1347 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1347] == mem[_1347 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1347 + 12 len 20]
                    require ext_code.size(address(_1095))
                    staticcall address(_1095).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1472 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1472] == mem[_1472 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1472 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1200)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1235)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1094 = mem[64]
                mem[mem[64]] = 128
                _1154 = mem[ceil32(32 * ('cd', 4).length) + 97]
                mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + 129
                t = mem[64] + 160
                while idx < _1154:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _1154) + 160
                _1568 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                mem[mem[64] + (32 * _1154) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
                t = mem[64] + (32 * _1154) + 192
                while idx < _1568:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1094 + 64] = (32 * _1154) + (32 * _1568) + 192
                _1696 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_1094 + (32 * _1154) + (32 * _1568) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_1094 + (32 * _1154) + (32 * _1568) + 224 len 32 * _1696] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1696]
                mem[_1094 + 96] = (32 * _1154) + (32 * _1568) + (32 * _1696) + 224
                _1792 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
                mem[_1094 + (32 * _1154) + (32 * _1568) + (32 * _1696) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
                mem[_1094 + (32 * _1154) + (32 * _1568) + (32 * _1696) + 256 len 32 * _1792] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1792]
                return memory
                  from mem[64]
                   len _1094 + (32 * _1154) + (32 * _1568) + (32 * _1696) + (32 * _1792) + -mem[64] + 256
            mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1099 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1157 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1201 = mem[_1157]
                require mem[_1157] == mem[_1157 + 18 len 14]
                _1237 = mem[_1157 + 32]
                require mem[_1157 + 32] == mem[_1157 + 50 len 14]
                require mem[_1157 + 64] == mem[_1157 + 92 len 4]
                require ext_code.size(address(_1099))
                staticcall address(_1099).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1349 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1349] == mem[_1349 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1349 + 12 len 20]
                require ext_code.size(address(_1099))
                staticcall address(_1099).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1473 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1473] == mem[_1473 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1473 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1201)
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1237)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1098 = mem[64]
            mem[mem[64]] = 128
            _1156 = mem[ceil32(32 * ('cd', 4).length) + 97]
            mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 129
            t = mem[64] + 160
            while idx < _1156:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _1156) + 160
            _1569 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            mem[mem[64] + (32 * _1156) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
            t = mem[64] + (32 * _1156) + 192
            while idx < _1569:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1098 + 64] = (32 * _1156) + (32 * _1569) + 192
            _1697 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1098 + (32 * _1156) + (32 * _1569) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1098 + (32 * _1156) + (32 * _1569) + 224 len 32 * _1697] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1697]
            mem[_1098 + 96] = (32 * _1156) + (32 * _1569) + (32 * _1697) + 224
            _1793 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1098 + (32 * _1156) + (32 * _1569) + (32 * _1697) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1098 + (32 * _1156) + (32 * _1569) + (32 * _1697) + 256 len 32 * _1793] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1793]
            return memory
              from mem[64]
               len _1098 + (32 * _1156) + (32 * _1569) + (32 * _1697) + (32 * _1793) + -mem[64] + 256
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161] = ('cd', 4).length
        if not ('cd', 4).length:
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193] = ('cd', 4).length
            mem[64] = ceil32(32 * ('cd', 4).length) + (131 * ('cd', 4).length) + 225
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1103 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1159 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1202 = mem[_1159]
                    require mem[_1159] == mem[_1159 + 18 len 14]
                    _1239 = mem[_1159 + 32]
                    require mem[_1159 + 32] == mem[_1159 + 50 len 14]
                    require mem[_1159 + 64] == mem[_1159 + 92 len 4]
                    require ext_code.size(address(_1103))
                    staticcall address(_1103).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1351 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1351] == mem[_1351 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1351 + 12 len 20]
                    require ext_code.size(address(_1103))
                    staticcall address(_1103).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1474 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1474] == mem[_1474 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1474 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1202)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1239)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1102 = mem[64]
                mem[mem[64]] = 128
                _1158 = mem[ceil32(32 * ('cd', 4).length) + 97]
                mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + 129
                t = mem[64] + 160
                while idx < _1158:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1102 + 32] = (32 * _1158) + 160
                _1570 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                mem[_1102 + (32 * _1158) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
                t = _1102 + (32 * _1158) + 192
                while idx < _1570:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1102 + 64] = (32 * _1158) + (32 * _1570) + 192
                _1698 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_1102 + (32 * _1158) + (32 * _1570) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_1102 + (32 * _1158) + (32 * _1570) + 224 len 32 * _1698] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1698]
                mem[_1102 + 96] = (32 * _1158) + (32 * _1570) + (32 * _1698) + 224
                _1794 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
                mem[_1102 + (32 * _1158) + (32 * _1570) + (32 * _1698) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
                mem[_1102 + (32 * _1158) + (32 * _1570) + (32 * _1698) + 256 len 32 * _1794] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1794]
                return memory
                  from mem[64]
                   len _1102 + (32 * _1158) + (32 * _1570) + (32 * _1698) + (32 * _1794) + -mem[64] + 256
            mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1107 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1161 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1203 = mem[_1161]
                require mem[_1161] == mem[_1161 + 18 len 14]
                _1241 = mem[_1161 + 32]
                require mem[_1161 + 32] == mem[_1161 + 50 len 14]
                require mem[_1161 + 64] == mem[_1161 + 92 len 4]
                require ext_code.size(address(_1107))
                staticcall address(_1107).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1353 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1353] == mem[_1353 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1353 + 12 len 20]
                require ext_code.size(address(_1107))
                staticcall address(_1107).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1475 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1475] == mem[_1475 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1475 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1203)
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1241)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1106 = mem[64]
            mem[mem[64]] = 128
            _1160 = mem[ceil32(32 * ('cd', 4).length) + 97]
            mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 129
            t = mem[64] + 160
            while idx < _1160:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _1160) + 160
            _1571 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            mem[mem[64] + (32 * _1160) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
            t = mem[64] + (32 * _1160) + 192
            while idx < _1571:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1106 + 64] = (32 * _1160) + (32 * _1571) + 192
            _1699 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1106 + (32 * _1160) + (32 * _1571) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1106 + (32 * _1160) + (32 * _1571) + 224 len 32 * _1699] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1699]
            mem[_1106 + 96] = (32 * _1160) + (32 * _1571) + (32 * _1699) + 224
            _1795 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1106 + (32 * _1160) + (32 * _1571) + (32 * _1699) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1106 + (32 * _1160) + (32 * _1571) + (32 * _1699) + 256 len 32 * _1795] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1795]
            return memory
              from mem[64]
               len _1106 + (32 * _1160) + (32 * _1571) + (32 * _1699) + (32 * _1795) + -mem[64] + 256
        mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193] = ('cd', 4).length
        mem[64] = ceil32(32 * ('cd', 4).length) + (131 * ('cd', 4).length) + 225
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1111 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1163 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1204 = mem[_1163]
                require mem[_1163] == mem[_1163 + 18 len 14]
                _1243 = mem[_1163 + 32]
                require mem[_1163 + 32] == mem[_1163 + 50 len 14]
                require mem[_1163 + 64] == mem[_1163 + 92 len 4]
                require ext_code.size(address(_1111))
                staticcall address(_1111).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1355 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1355] == mem[_1355 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1355 + 12 len 20]
                require ext_code.size(address(_1111))
                staticcall address(_1111).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1476 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1476] == mem[_1476 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1476 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1204)
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1243)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1110 = mem[64]
            mem[mem[64]] = 128
            _1162 = mem[ceil32(32 * ('cd', 4).length) + 97]
            mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 129
            t = mem[64] + 160
            while idx < _1162:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _1162) + 160
            _1572 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            mem[mem[64] + (32 * _1162) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
            t = mem[64] + (32 * _1162) + 192
            while idx < _1572:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1110 + 64] = (32 * _1162) + (32 * _1572) + 192
            _1700 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1110 + (32 * _1162) + (32 * _1572) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1110 + (32 * _1162) + (32 * _1572) + 224 len 32 * _1700] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1700]
            mem[_1110 + 96] = (32 * _1162) + (32 * _1572) + (32 * _1700) + 224
            _1796 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1110 + (32 * _1162) + (32 * _1572) + (32 * _1700) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1110 + (32 * _1162) + (32 * _1572) + (32 * _1700) + 256 len 32 * _1796] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1796]
            return memory
              from mem[64]
               len _1110 + (32 * _1162) + (32 * _1572) + (32 * _1700) + (32 * _1796) + -mem[64] + 256
        mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1115 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1165 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1205 = mem[_1165]
            require mem[_1165] == mem[_1165 + 18 len 14]
            _1245 = mem[_1165 + 32]
            require mem[_1165 + 32] == mem[_1165 + 50 len 14]
            require mem[_1165 + 64] == mem[_1165 + 92 len 4]
            require ext_code.size(address(_1115))
            staticcall address(_1115).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1357] == mem[_1357 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1357 + 12 len 20]
            require ext_code.size(address(_1115))
            staticcall address(_1115).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1477 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1477] == mem[_1477 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1477 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1205)
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1245)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1114 = mem[64]
        mem[mem[64]] = 128
        _1164 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 160
        while idx < _1164:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1114 + 32] = (32 * _1164) + 160
        _1573 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        mem[_1114 + (32 * _1164) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
        t = _1114 + (32 * _1164) + 192
        while idx < _1573:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1114 + 64] = (32 * _1164) + (32 * _1573) + 192
        _1701 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
        mem[_1114 + (32 * _1164) + (32 * _1573) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
        mem[_1114 + (32 * _1164) + (32 * _1573) + 224 len 32 * _1701] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1701]
        mem[_1114 + 96] = (32 * _1164) + (32 * _1573) + (32 * _1701) + 224
        _1797 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
        mem[_1114 + (32 * _1164) + (32 * _1573) + (32 * _1701) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
        mem[_1114 + (32 * _1164) + (32 * _1573) + (32 * _1701) + 256 len 32 * _1797] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1797]
        return memory
          from mem[64]
           len _1114 + (32 * _1164) + (32 * _1573) + (32 * _1701) + (32 * _1797) + -mem[64] + 256
    mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161] = ('cd', 4).length
        if not ('cd', 4).length:
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193] = ('cd', 4).length
            mem[64] = ceil32(32 * ('cd', 4).length) + (131 * ('cd', 4).length) + 225
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1119 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1167 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1206 = mem[_1167]
                    require mem[_1167] == mem[_1167 + 18 len 14]
                    _1247 = mem[_1167 + 32]
                    require mem[_1167 + 32] == mem[_1167 + 50 len 14]
                    require mem[_1167 + 64] == mem[_1167 + 92 len 4]
                    require ext_code.size(address(_1119))
                    staticcall address(_1119).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1359 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1359] == mem[_1359 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1359 + 12 len 20]
                    require ext_code.size(address(_1119))
                    staticcall address(_1119).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1478 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1478] == mem[_1478 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1478 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1206)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1247)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1118 = mem[64]
                mem[mem[64]] = 128
                _1166 = mem[ceil32(32 * ('cd', 4).length) + 97]
                mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + 129
                t = mem[64] + 160
                while idx < _1166:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1118 + 32] = (32 * _1166) + 160
                _1574 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                mem[_1118 + (32 * _1166) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
                t = _1118 + (32 * _1166) + 192
                while idx < _1574:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1118 + 64] = (32 * _1166) + (32 * _1574) + 192
                _1702 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_1118 + (32 * _1166) + (32 * _1574) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_1118 + (32 * _1166) + (32 * _1574) + 224 len 32 * _1702] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1702]
                mem[_1118 + 96] = (32 * _1166) + (32 * _1574) + (32 * _1702) + 224
                _1798 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
                mem[_1118 + (32 * _1166) + (32 * _1574) + (32 * _1702) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
                mem[_1118 + (32 * _1166) + (32 * _1574) + (32 * _1702) + 256 len 32 * _1798] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1798]
                return memory
                  from mem[64]
                   len _1118 + (32 * _1166) + (32 * _1574) + (32 * _1702) + (32 * _1798) + -mem[64] + 256
            mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1123 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1169 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1207 = mem[_1169]
                require mem[_1169] == mem[_1169 + 18 len 14]
                _1249 = mem[_1169 + 32]
                require mem[_1169 + 32] == mem[_1169 + 50 len 14]
                require mem[_1169 + 64] == mem[_1169 + 92 len 4]
                require ext_code.size(address(_1123))
                staticcall address(_1123).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1361 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1361] == mem[_1361 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1361 + 12 len 20]
                require ext_code.size(address(_1123))
                staticcall address(_1123).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1479 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1479] == mem[_1479 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1479 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1207)
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1249)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            _1168 = mem[ceil32(32 * ('cd', 4).length) + 97]
            mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 129
            t = mem[64] + 160
            while idx < _1168:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _1168) + 160
            _1575 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            mem[mem[64] + (32 * _1168) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
            t = mem[64] + (32 * _1168) + 192
            while idx < _1575:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 64] = (32 * _1168) + (32 * _1575) + 192
            _1703 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[mem[64] + (32 * _1168) + (32 * _1575) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[mem[64] + (32 * _1168) + (32 * _1575) + 224 len 32 * _1703] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1703]
            mem[mem[64] + 96] = (32 * _1168) + (32 * _1575) + (32 * _1703) + 224
            _1799 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[mem[64] + (32 * _1168) + (32 * _1575) + (32 * _1703) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[mem[64] + (32 * _1168) + (32 * _1575) + (32 * _1703) + 256 len 32 * _1799] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1799]
            return 128, 
                   (32 * _1168) + 160,
                   (32 * _1168) + (32 * _1575) + 192,
                   (32 * _1168) + (32 * _1575) + (32 * _1703) + 224,
                   mem[mem[64] + 128 len (32 * _1168) + (32 * _1575) + (32 * _1703) + (32 * _1799) + 128]
        mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193] = ('cd', 4).length
        mem[64] = ceil32(32 * ('cd', 4).length) + (131 * ('cd', 4).length) + 225
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1127 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1171 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1208 = mem[_1171]
                require mem[_1171] == mem[_1171 + 18 len 14]
                _1251 = mem[_1171 + 32]
                require mem[_1171 + 32] == mem[_1171 + 50 len 14]
                require mem[_1171 + 64] == mem[_1171 + 92 len 4]
                require ext_code.size(address(_1127))
                staticcall address(_1127).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1363 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1363] == mem[_1363 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1363 + 12 len 20]
                require ext_code.size(address(_1127))
                staticcall address(_1127).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1480 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1480] == mem[_1480 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1480 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1208)
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1251)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1126 = mem[64]
            mem[mem[64]] = 128
            _1170 = mem[ceil32(32 * ('cd', 4).length) + 97]
            mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 129
            t = mem[64] + 160
            while idx < _1170:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _1170) + 160
            _1576 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            mem[mem[64] + (32 * _1170) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
            t = mem[64] + (32 * _1170) + 192
            while idx < _1576:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1126 + 64] = (32 * _1170) + (32 * _1576) + 192
            _1704 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1126 + (32 * _1170) + (32 * _1576) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1126 + (32 * _1170) + (32 * _1576) + 224 len 32 * _1704] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1704]
            mem[_1126 + 96] = (32 * _1170) + (32 * _1576) + (32 * _1704) + 224
            _1800 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1126 + (32 * _1170) + (32 * _1576) + (32 * _1704) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1126 + (32 * _1170) + (32 * _1576) + (32 * _1704) + 256 len 32 * _1800] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1800]
            return memory
              from mem[64]
               len _1126 + (32 * _1170) + (32 * _1576) + (32 * _1704) + (32 * _1800) + -mem[64] + 256
        mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1131 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1173 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1209 = mem[_1173]
            require mem[_1173] == mem[_1173 + 18 len 14]
            _1253 = mem[_1173 + 32]
            require mem[_1173 + 32] == mem[_1173 + 50 len 14]
            require mem[_1173 + 64] == mem[_1173 + 92 len 4]
            require ext_code.size(address(_1131))
            staticcall address(_1131).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1365 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1365] == mem[_1365 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1365 + 12 len 20]
            require ext_code.size(address(_1131))
            staticcall address(_1131).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1481 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1481] == mem[_1481 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1481 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1209)
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1253)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1130 = mem[64]
        mem[mem[64]] = 128
        _1172 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 160
        while idx < _1172:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _1172) + 160
        _1577 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        mem[mem[64] + (32 * _1172) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
        t = mem[64] + (32 * _1172) + 192
        while idx < _1577:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1130 + 64] = (32 * _1172) + (32 * _1577) + 192
        _1705 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
        mem[_1130 + (32 * _1172) + (32 * _1577) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
        mem[_1130 + (32 * _1172) + (32 * _1577) + 224 len 32 * _1705] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1705]
        mem[_1130 + 96] = (32 * _1172) + (32 * _1577) + (32 * _1705) + 224
        _1801 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
        mem[_1130 + (32 * _1172) + (32 * _1577) + (32 * _1705) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
        mem[_1130 + (32 * _1172) + (32 * _1577) + (32 * _1705) + 256 len 32 * _1801] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1801]
        return memory
          from mem[64]
           len _1130 + (32 * _1172) + (32 * _1577) + (32 * _1705) + (32 * _1801) + -mem[64] + 256
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193] = ('cd', 4).length
        mem[64] = ceil32(32 * ('cd', 4).length) + (131 * ('cd', 4).length) + 225
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1135 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1175 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1210 = mem[_1175]
                require mem[_1175] == mem[_1175 + 18 len 14]
                _1255 = mem[_1175 + 32]
                require mem[_1175 + 32] == mem[_1175 + 50 len 14]
                require mem[_1175 + 64] == mem[_1175 + 92 len 4]
                require ext_code.size(address(_1135))
                staticcall address(_1135).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1367 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1367] == mem[_1367 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1367 + 12 len 20]
                require ext_code.size(address(_1135))
                staticcall address(_1135).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1482 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1482] == mem[_1482 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1482 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1210)
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1255)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1134 = mem[64]
            mem[mem[64]] = 128
            _1174 = mem[ceil32(32 * ('cd', 4).length) + 97]
            mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 129
            t = mem[64] + 160
            while idx < _1174:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1134 + 32] = (32 * _1174) + 160
            _1578 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            mem[_1134 + (32 * _1174) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
            t = _1134 + (32 * _1174) + 192
            while idx < _1578:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1134 + 64] = (32 * _1174) + (32 * _1578) + 192
            _1706 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1134 + (32 * _1174) + (32 * _1578) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1134 + (32 * _1174) + (32 * _1578) + 224 len 32 * _1706] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1706]
            mem[_1134 + 96] = (32 * _1174) + (32 * _1578) + (32 * _1706) + 224
            _1802 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1134 + (32 * _1174) + (32 * _1578) + (32 * _1706) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1134 + (32 * _1174) + (32 * _1578) + (32 * _1706) + 256 len 32 * _1802] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1802]
            return memory
              from mem[64]
               len _1134 + (32 * _1174) + (32 * _1578) + (32 * _1706) + (32 * _1802) + -mem[64] + 256
        mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1139 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1177 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1211 = mem[_1177]
            require mem[_1177] == mem[_1177 + 18 len 14]
            _1257 = mem[_1177 + 32]
            require mem[_1177 + 32] == mem[_1177 + 50 len 14]
            require mem[_1177 + 64] == mem[_1177 + 92 len 4]
            require ext_code.size(address(_1139))
            staticcall address(_1139).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1369 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1369] == mem[_1369 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1369 + 12 len 20]
            require ext_code.size(address(_1139))
            staticcall address(_1139).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1483 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1483] == mem[_1483 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1483 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1211)
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1257)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1138 = mem[64]
        mem[mem[64]] = 128
        _1176 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 160
        while idx < _1176:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1138 + 32] = (32 * _1176) + 160
        _1579 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        mem[_1138 + (32 * _1176) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
        t = _1138 + (32 * _1176) + 192
        while idx < _1579:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1138 + 64] = (32 * _1176) + (32 * _1579) + 192
        _1707 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
        mem[_1138 + (32 * _1176) + (32 * _1579) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
        mem[_1138 + (32 * _1176) + (32 * _1579) + 224 len 32 * _1707] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1707]
        mem[_1138 + 96] = (32 * _1176) + (32 * _1579) + (32 * _1707) + 224
        _1803 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
        mem[_1138 + (32 * _1176) + (32 * _1579) + (32 * _1707) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
        mem[_1138 + (32 * _1176) + (32 * _1579) + (32 * _1707) + 256 len 32 * _1803] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1803]
        return memory
          from mem[64]
           len _1138 + (32 * _1176) + (32 * _1579) + (32 * _1707) + (32 * _1803) + -mem[64] + 256
    mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (131 * ('cd', 4).length) + 225
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1143 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1179 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1212 = mem[_1179]
            require mem[_1179] == mem[_1179 + 18 len 14]
            _1259 = mem[_1179 + 32]
            require mem[_1179 + 32] == mem[_1179 + 50 len 14]
            require mem[_1179 + 64] == mem[_1179 + 92 len 4]
            require ext_code.size(address(_1143))
            staticcall address(_1143).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1371 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1371] == mem[_1371 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1371 + 12 len 20]
            require ext_code.size(address(_1143))
            staticcall address(_1143).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1484 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1484] == mem[_1484 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1484 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1212)
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1259)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1142 = mem[64]
        mem[mem[64]] = 128
        _1178 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 160
        while idx < _1178:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1142 + 32] = (32 * _1178) + 160
        _1580 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        mem[_1142 + (32 * _1178) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
        t = _1142 + (32 * _1178) + 192
        while idx < _1580:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1142 + 64] = (32 * _1178) + (32 * _1580) + 192
        _1708 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
        mem[_1142 + (32 * _1178) + (32 * _1580) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
        mem[_1142 + (32 * _1178) + (32 * _1580) + 224 len 32 * _1708] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1708]
        mem[_1142 + 96] = (32 * _1178) + (32 * _1580) + (32 * _1708) + 224
        _1804 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
        mem[_1142 + (32 * _1178) + (32 * _1580) + (32 * _1708) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
        mem[_1142 + (32 * _1178) + (32 * _1580) + (32 * _1708) + 256 len 32 * _1804] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1804]
        return memory
          from mem[64]
           len _1142 + (32 * _1178) + (32 * _1580) + (32 * _1708) + (32 * _1804) + -mem[64] + 256
    mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1147 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1181 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1213 = mem[_1181]
        require mem[_1181] == mem[_1181 + 18 len 14]
        _1261 = mem[_1181 + 32]
        require mem[_1181 + 32] == mem[_1181 + 50 len 14]
        require mem[_1181 + 64] == mem[_1181 + 92 len 4]
        require ext_code.size(address(_1147))
        staticcall address(_1147).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1373 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1373] == mem[_1373 + 12 len 20]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1373 + 12 len 20]
        require ext_code.size(address(_1147))
        staticcall address(_1147).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1485 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1485] == mem[_1485 + 12 len 20]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1485 + 12 len 20]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1213)
        if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1261)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _1146 = mem[64]
    mem[mem[64]] = 128
    _1180 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
    idx = 0
    s = ceil32(32 * ('cd', 4).length) + 129
    t = mem[64] + 160
    while idx < _1180:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1146 + 32] = (32 * _1180) + 160
    _1581 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
    mem[_1146 + (32 * _1180) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
    idx = 0
    s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
    t = _1146 + (32 * _1180) + 192
    while idx < _1581:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1146 + 64] = (32 * _1180) + (32 * _1581) + 192
    _1709 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
    mem[_1146 + (32 * _1180) + (32 * _1581) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
    mem[_1146 + (32 * _1180) + (32 * _1581) + 224 len 32 * _1709] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1709]
    mem[_1146 + 96] = (32 * _1180) + (32 * _1581) + (32 * _1709) + 224
    _1805 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
    mem[_1146 + (32 * _1180) + (32 * _1581) + (32 * _1709) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
    mem[_1146 + (32 * _1180) + (32 * _1581) + (32 * _1709) + 256 len 32 * _1805] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1805]
    return memory
      from mem[64]
       len _1146 + (32 * _1180) + (32 * _1581) + (32 * _1709) + (32 * _1805) + -mem[64] + 256
}



}
