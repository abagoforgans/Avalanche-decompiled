contract main {




// =====================  Runtime code  =====================


#
#  - sub_3d6b71f4(?)
#
function _fallback() payable {
    revert
}

function sub_6bd58166(?) payable {
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

function sub_d683f6d5(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).allPairsLength() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 36).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97] = ('cd', 36).length
    if not ('cd', 36).length:
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129] = ('cd', 36).length
        mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= mem[96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _167 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _178 = mem[_167]
                require mem[_167] == mem[_167 + 18 len 14]
                require mem[_167 + 32] == mem[_167 + 50 len 14]
                require mem[_167 + 64] == mem[_167 + 92 len 4]
                if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161] = mem[_167 + 50 len 14]
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = Mask(112, 0, _178)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _150 = mem[64]
            mem[mem[64]] = 160
            _166 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
            mem[mem[64] + 160] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
            mem[mem[64] + 192 len 32 * _166] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129 len 32 * _166]
            mem[mem[64] + 32] = (32 * _166) + 192
            _214 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
            mem[mem[64] + (32 * _166) + 192] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
            mem[mem[64] + (32 * _166) + 224 len 32 * _214] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161 len 32 * _214]
            mem[mem[64] + 64] = block.number
            mem[_150 + 96] = ext_call.return_data[0]
            mem[_150 + 128] = block.timestamp
            return memory
              from mem[64]
               len _150 + (32 * _166) + (32 * _214) + -mem[64] + 224
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _169 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _179 = mem[_169]
            require mem[_169] == mem[_169 + 18 len 14]
            require mem[_169 + 32] == mem[_169 + 50 len 14]
            require mem[_169 + 64] == mem[_169 + 92 len 4]
            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                revert with 0, 50
            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161] = mem[_169 + 50 len 14]
            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = Mask(112, 0, _179)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _154 = mem[64]
        mem[mem[64]] = 160
        _168 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
        mem[mem[64] + 160] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
        mem[mem[64] + 192 len 32 * _168] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129 len 32 * _168]
        mem[mem[64] + 32] = (32 * _168) + 192
        _215 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
        mem[mem[64] + (32 * _168) + 192] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
        mem[mem[64] + (32 * _168) + 224 len 32 * _215] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161 len 32 * _215]
        mem[mem[64] + 64] = block.number
        mem[_154 + 96] = ext_call.return_data[0]
        mem[_154 + 128] = block.timestamp
        return memory
          from mem[64]
           len _154 + (32 * _168) + (32 * _215) + -mem[64] + 224
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129] = ('cd', 36).length
    mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _171 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _180 = mem[_171]
            require mem[_171] == mem[_171 + 18 len 14]
            require mem[_171 + 32] == mem[_171 + 50 len 14]
            require mem[_171 + 64] == mem[_171 + 92 len 4]
            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                revert with 0, 50
            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161] = mem[_171 + 50 len 14]
            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = Mask(112, 0, _180)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _158 = mem[64]
        mem[mem[64]] = 160
        _170 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
        mem[mem[64] + 160] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
        mem[mem[64] + 192 len 32 * _170] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129 len 32 * _170]
        mem[mem[64] + 32] = (32 * _170) + 192
        _216 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
        mem[mem[64] + (32 * _170) + 192] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
        mem[mem[64] + (32 * _170) + 224 len 32 * _216] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161 len 32 * _216]
        mem[mem[64] + 64] = block.number
        mem[_158 + 96] = ext_call.return_data[0]
        mem[_158 + 128] = block.timestamp
        return memory
          from mem[64]
           len _158 + (32 * _170) + (32 * _216) + -mem[64] + 224
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _173 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _181 = mem[_173]
        require mem[_173] == mem[_173 + 18 len 14]
        require mem[_173 + 32] == mem[_173 + 50 len 14]
        require mem[_173 + 64] == mem[_173 + 92 len 4]
        if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
            revert with 0, 50
        if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161] = mem[_173 + 50 len 14]
        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = Mask(112, 0, _181)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _162 = mem[64]
    mem[mem[64]] = 160
    _172 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
    mem[mem[64] + 160] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
    mem[mem[64] + 192 len 32 * _172] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129 len 32 * _172]
    mem[mem[64] + 32] = (32 * _172) + 192
    _217 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
    mem[mem[64] + (32 * _172) + 192] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
    mem[mem[64] + (32 * _172) + 224 len 32 * _217] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161 len 32 * _217]
    mem[mem[64] + 64] = block.number
    mem[_162 + 96] = ext_call.return_data[0]
    mem[_162 + 128] = block.timestamp
    return memory
      from mem[64]
       len _162 + (32 * _172) + (32 * _217) + -mem[64] + 224
}

function sub_9308368e(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 1:
        revert with 0, 17
    if arg3 <= ext_call.return_data[0] - 1:
        if arg3 < arg2:
            mem[ceil32(return_data.size) + 96] = 96
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 224 len 32 * ext_call.return_data[0]] = mem[128 len 32 * ext_call.return_data[0]]
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
            return 96, 
                   (32 * ext_call.return_data[0]) + 128,
                   0,
                   ext_call.return_data[0],
                   mem[ceil32(return_data.size) + 224 len (64 * ext_call.return_data[0]) + 32]
        if 1 > !(arg3 - arg2):
            revert with 0, 17
        if arg3 + -arg2 + 1 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + 96] = arg3 + -arg2 + 1
        if not arg3 + -arg2 + 1:
            if arg3 + -arg2 + 1 > test266151307():
                revert with 0, 65
            mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128] = arg3 + -arg2 + 1
            mem[64] = ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160
            if not arg3 + -arg2 + 1:
                idx = arg2
                while idx <= arg3:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _203 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_203] == mem[_203 + 12 len 20]
                    require ext_code.size(mem[_203 + 12 len 20])
                    staticcall mem[_203 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _276 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _299 = mem[_276]
                    require mem[_276] == mem[_276 + 18 len 14]
                    require mem[_276 + 32] == mem[_276 + 50 len 14]
                    require mem[_276 + 64] == mem[_276 + 92 len 4]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]:
                        revert with 0, 50
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160] = mem[_276 + 50 len 14]
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _299)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _202 = mem[64]
                mem[mem[64]] = 96
                _220 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 128 len 32 * _220] = mem[ceil32(return_data.size) + 128 len 32 * _220]
                mem[_202 + 32] = (32 * _220) + 128
                _350 = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
                mem[_202 + (32 * _220) + 128] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
                mem[_202 + (32 * _220) + 160 len 32 * _350] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160 len 32 * _350]
                mem[_202 + 64] = block.number
                return memory
                  from mem[64]
                   len _202 + (32 * _220) + (32 * _350) + -mem[64] + 160
            mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
            idx = arg2
            while idx <= arg3:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _205 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_205] == mem[_205 + 12 len 20]
                require ext_code.size(mem[_205 + 12 len 20])
                staticcall mem[_205 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _278 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _300 = mem[_278]
                require mem[_278] == mem[_278 + 18 len 14]
                require mem[_278 + 32] == mem[_278 + 50 len 14]
                require mem[_278 + 64] == mem[_278 + 92 len 4]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160] = mem[_278 + 50 len 14]
                mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _300)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _204 = mem[64]
            mem[mem[64]] = 96
            _222 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 128 len 32 * _222] = mem[ceil32(return_data.size) + 128 len 32 * _222]
            mem[_204 + 32] = (32 * _222) + 128
            _351 = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
            mem[_204 + (32 * _222) + 128] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
            mem[_204 + (32 * _222) + 160 len 32 * _351] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160 len 32 * _351]
            mem[_204 + 64] = block.number
            return memory
              from mem[64]
               len _204 + (32 * _222) + (32 * _351) + -mem[64] + 160
        mem[ceil32(return_data.size) + 128 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
        if arg3 + -arg2 + 1 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128] = arg3 + -arg2 + 1
        mem[64] = ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160
        if not arg3 + -arg2 + 1:
            idx = arg2
            while idx <= arg3:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _207 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_207] == mem[_207 + 12 len 20]
                require ext_code.size(mem[_207 + 12 len 20])
                staticcall mem[_207 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _280 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _301 = mem[_280]
                require mem[_280] == mem[_280 + 18 len 14]
                require mem[_280 + 32] == mem[_280 + 50 len 14]
                require mem[_280 + 64] == mem[_280 + 92 len 4]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160] = mem[_280 + 50 len 14]
                mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _301)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _206 = mem[64]
            mem[mem[64]] = 96
            _224 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 128 len 32 * _224] = mem[ceil32(return_data.size) + 128 len 32 * _224]
            mem[_206 + 32] = (32 * _224) + 128
            _352 = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
            mem[_206 + (32 * _224) + 128] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
            mem[_206 + (32 * _224) + 160 len 32 * _352] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160 len 32 * _352]
            mem[_206 + 64] = block.number
            return memory
              from mem[64]
               len _206 + (32 * _224) + (32 * _352) + -mem[64] + 160
        mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
        idx = arg2
        while idx <= arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _209 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_209] == mem[_209 + 12 len 20]
            require ext_code.size(mem[_209 + 12 len 20])
            staticcall mem[_209 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _282 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _302 = mem[_282]
            require mem[_282] == mem[_282 + 18 len 14]
            require mem[_282 + 32] == mem[_282 + 50 len 14]
            require mem[_282 + 64] == mem[_282 + 92 len 4]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]:
                revert with 0, 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160] = mem[_282 + 50 len 14]
            mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _302)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _208 = mem[64]
        mem[mem[64]] = 96
        _226 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 128 len 32 * _226] = mem[ceil32(return_data.size) + 128 len 32 * _226]
        mem[_208 + 32] = (32 * _226) + 128
        _353 = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
        mem[_208 + (32 * _226) + 128] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
        mem[_208 + (32 * _226) + 160 len 32 * _353] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160 len 32 * _353]
        mem[_208 + 64] = block.number
        return memory
          from mem[64]
           len _208 + (32 * _226) + (32 * _353) + -mem[64] + 160
    if ext_call.return_data[0] < 1:
        revert with 0, 17
    if ext_call.return_data[0] - 1 < arg2:
        mem[ceil32(return_data.size) + 96] = 96
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 224 len 32 * ext_call.return_data[0]] = mem[128 len 32 * ext_call.return_data[0]]
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
        return 96, 
               (32 * ext_call.return_data[0]) + 128,
               0,
               ext_call.return_data[0],
               mem[ceil32(return_data.size) + 224 len (64 * ext_call.return_data[0]) + 32]
    if 1 > !(ext_call.return_data[0] + -arg2 - 1):
        revert with 0, 17
    if ext_call.return_data[0] - arg2 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg2
    if not ext_call.return_data[0] - arg2:
        if ext_call.return_data[0] - arg2 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = ext_call.return_data[0] - arg2
        mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160
        if not ext_call.return_data[0] - arg2:
            idx = arg2
            while idx <= ext_call.return_data[0] - 1:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _212 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_212] == mem[_212 + 12 len 20]
                require ext_code.size(mem[_212 + 12 len 20])
                staticcall mem[_212 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _284 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _303 = mem[_284]
                require mem[_284] == mem[_284 + 18 len 14]
                require mem[_284 + 32] == mem[_284 + 50 len 14]
                require mem[_284 + 64] == mem[_284 + 92 len 4]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = mem[_284 + 50 len 14]
                mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _303)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _211 = mem[64]
            mem[mem[64]] = 96
            _229 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 128 len 32 * _229] = mem[ceil32(return_data.size) + 128 len 32 * _229]
            mem[_211 + 32] = (32 * _229) + 128
            _355 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
            mem[_211 + (32 * _229) + 128] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
            mem[_211 + (32 * _229) + 160 len 32 * _355] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160 len 32 * _355]
            mem[_211 + 64] = block.number
            return memory
              from mem[64]
               len _211 + (32 * _229) + (32 * _355) + -mem[64] + 160
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
        idx = arg2
        while idx <= ext_call.return_data[0] - 1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _214 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_214] == mem[_214 + 12 len 20]
            require ext_code.size(mem[_214 + 12 len 20])
            staticcall mem[_214 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _286 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _304 = mem[_286]
            require mem[_286] == mem[_286 + 18 len 14]
            require mem[_286 + 32] == mem[_286 + 50 len 14]
            require mem[_286 + 64] == mem[_286 + 92 len 4]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]:
                revert with 0, 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = mem[_286 + 50 len 14]
            mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _304)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _213 = mem[64]
        mem[mem[64]] = 96
        _231 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 128 len 32 * _231] = mem[ceil32(return_data.size) + 128 len 32 * _231]
        mem[_213 + 32] = (32 * _231) + 128
        _356 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
        mem[_213 + (32 * _231) + 128] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
        mem[_213 + (32 * _231) + 160 len 32 * _356] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160 len 32 * _356]
        mem[_213 + 64] = block.number
        return memory
          from mem[64]
           len _213 + (32 * _231) + (32 * _356) + -mem[64] + 160
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
    if ext_call.return_data[0] - arg2 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = ext_call.return_data[0] - arg2
    mem[64] = ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160
    if not ext_call.return_data[0] - arg2:
        idx = arg2
        while idx <= ext_call.return_data[0] - 1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _216 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_216] == mem[_216 + 12 len 20]
            require ext_code.size(mem[_216 + 12 len 20])
            staticcall mem[_216 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _288 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _305 = mem[_288]
            require mem[_288] == mem[_288 + 18 len 14]
            require mem[_288 + 32] == mem[_288 + 50 len 14]
            require mem[_288 + 64] == mem[_288 + 92 len 4]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]:
                revert with 0, 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = mem[_288 + 50 len 14]
            mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _305)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _215 = mem[64]
        mem[mem[64]] = 96
        _233 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 128 len 32 * _233] = mem[ceil32(return_data.size) + 128 len 32 * _233]
        mem[_215 + 32] = (32 * _233) + 128
        _357 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
        mem[_215 + (32 * _233) + 128] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
        mem[_215 + (32 * _233) + 160 len 32 * _357] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160 len 32 * _357]
        mem[_215 + 64] = block.number
        return memory
          from mem[64]
           len _215 + (32 * _233) + (32 * _357) + -mem[64] + 160
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
    idx = arg2
    while idx <= ext_call.return_data[0] - 1:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _218 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_218] == mem[_218 + 12 len 20]
        require ext_code.size(mem[_218 + 12 len 20])
        staticcall mem[_218 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _290 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _306 = mem[_290]
        require mem[_290] == mem[_290 + 18 len 14]
        require mem[_290 + 32] == mem[_290 + 50 len 14]
        require mem[_290 + 64] == mem[_290 + 92 len 4]
        if idx < arg2:
            revert with 0, 17
        if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if idx < arg2:
            revert with 0, 17
        if idx - arg2 >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]:
            revert with 0, 50
        mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = mem[_290 + 50 len 14]
        mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _306)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _217 = mem[64]
    mem[mem[64]] = 96
    _235 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 128 len 32 * _235] = mem[ceil32(return_data.size) + 128 len 32 * _235]
    mem[_217 + 32] = (32 * _235) + 128
    _358 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
    mem[_217 + (32 * _235) + 128] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
    mem[_217 + (32 * _235) + 160 len 32 * _358] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160 len 32 * _358]
    mem[_217 + 64] = block.number
    return memory
      from mem[64]
       len _217 + (32 * _235) + (32 * _358) + -mem[64] + 160
}

function sub_54d4f940(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).allPairsLength() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 36).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97] = ('cd', 36).length
    if not ('cd', 36).length:
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129] = ('cd', 36).length
        if not ('cd', 36).length:
            if ('cd', 36).length > test266151307():
                revert with 0, 65
            mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161] = ('cd', 36).length
            mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (98 * ('cd', 36).length) + 193
            if not ('cd', 36).length:
                idx = 0
                while idx < ('cd', 36).length:
                    if idx >= mem[96]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _371 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _394 = mem[_371]
                    require mem[_371] == mem[_371 + 18 len 14]
                    _411 = mem[_371 + 32]
                    require mem[_371 + 32] == mem[_371 + 50 len 14]
                    require mem[_371 + 64] == mem[_371 + 92 len 4]
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                        revert with 0, 50
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]:
                        revert with 0, 50
                    if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 193] = mem[_371 + 92 len 4]
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161] = Mask(112, 0, _411)
                    mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = Mask(112, 0, _394)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _338 = mem[64]
                mem[mem[64]] = 192
                _370 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
                mem[mem[64] + 192] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
                mem[mem[64] + 224 len 32 * _370] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129 len 32 * _370]
                mem[mem[64] + 32] = (32 * _370) + 224
                _490 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
                mem[mem[64] + (32 * _370) + 224] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
                mem[mem[64] + (32 * _370) + 256 len 32 * _490] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161 len 32 * _490]
                mem[mem[64] + 64] = (32 * _370) + (32 * _490) + 256
                _538 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]
                mem[_338 + (32 * _370) + (32 * _490) + 256] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]
                mem[_338 + (32 * _370) + (32 * _490) + 288 len 32 * _538] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 193 len 32 * _538]
                mem[_338 + 96] = block.number
                mem[_338 + 128] = ext_call.return_data[0]
                mem[_338 + 160] = block.timestamp
                return memory
                  from mem[64]
                   len _338 + (32 * _370) + (32 * _490) + (32 * _538) + -mem[64] + 288
            mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 193 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= mem[96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _373 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _395 = mem[_373]
                require mem[_373] == mem[_373 + 18 len 14]
                _413 = mem[_373 + 32]
                require mem[_373 + 32] == mem[_373 + 50 len 14]
                require mem[_373 + 64] == mem[_373 + 92 len 4]
                if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 193] = mem[_373 + 92 len 4]
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161] = Mask(112, 0, _413)
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = Mask(112, 0, _395)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _342 = mem[64]
            mem[mem[64]] = 192
            _372 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
            mem[mem[64] + 192] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
            mem[mem[64] + 224 len 32 * _372] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129 len 32 * _372]
            mem[mem[64] + 32] = (32 * _372) + 224
            _491 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
            mem[mem[64] + (32 * _372) + 224] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
            mem[mem[64] + (32 * _372) + 256 len 32 * _491] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161 len 32 * _491]
            mem[mem[64] + 64] = (32 * _372) + (32 * _491) + 256
            _539 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]
            mem[_342 + (32 * _372) + (32 * _491) + 256] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]
            mem[_342 + (32 * _372) + (32 * _491) + 288 len 32 * _539] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 193 len 32 * _539]
            mem[_342 + 96] = block.number
            mem[_342 + 128] = ext_call.return_data[0]
            mem[_342 + 160] = block.timestamp
            return memory
              from mem[64]
               len _342 + (32 * _372) + (32 * _491) + (32 * _539) + -mem[64] + 288
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161] = ('cd', 36).length
        mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (98 * ('cd', 36).length) + 193
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= mem[96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _375 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _396 = mem[_375]
                require mem[_375] == mem[_375 + 18 len 14]
                _415 = mem[_375 + 32]
                require mem[_375 + 32] == mem[_375 + 50 len 14]
                require mem[_375 + 64] == mem[_375 + 92 len 4]
                if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 193] = mem[_375 + 92 len 4]
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161] = Mask(112, 0, _415)
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = Mask(112, 0, _396)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _346 = mem[64]
            mem[mem[64]] = 192
            _374 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
            mem[mem[64] + 192] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
            mem[mem[64] + 224 len 32 * _374] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129 len 32 * _374]
            mem[mem[64] + 32] = (32 * _374) + 224
            _492 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
            mem[mem[64] + (32 * _374) + 224] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
            mem[mem[64] + (32 * _374) + 256 len 32 * _492] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161 len 32 * _492]
            mem[mem[64] + 64] = (32 * _374) + (32 * _492) + 256
            _540 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]
            mem[_346 + (32 * _374) + (32 * _492) + 256] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]
            mem[_346 + (32 * _374) + (32 * _492) + 288 len 32 * _540] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 193 len 32 * _540]
            mem[_346 + 96] = block.number
            mem[_346 + 128] = ext_call.return_data[0]
            mem[_346 + 160] = block.timestamp
            return memory
              from mem[64]
               len _346 + (32 * _374) + (32 * _492) + (32 * _540) + -mem[64] + 288
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 193 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _377 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _397 = mem[_377]
            require mem[_377] == mem[_377 + 18 len 14]
            _417 = mem[_377 + 32]
            require mem[_377 + 32] == mem[_377 + 50 len 14]
            require mem[_377 + 64] == mem[_377 + 92 len 4]
            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                revert with 0, 50
            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]:
                revert with 0, 50
            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 193] = mem[_377 + 92 len 4]
            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161] = Mask(112, 0, _417)
            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = Mask(112, 0, _397)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _350 = mem[64]
        mem[mem[64]] = 192
        _376 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
        mem[mem[64] + 192] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
        mem[mem[64] + 224 len 32 * _376] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129 len 32 * _376]
        mem[mem[64] + 32] = (32 * _376) + 224
        _493 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
        mem[mem[64] + (32 * _376) + 224] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
        mem[mem[64] + (32 * _376) + 256 len 32 * _493] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161 len 32 * _493]
        mem[mem[64] + 64] = (32 * _376) + (32 * _493) + 256
        _541 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]
        mem[_350 + (32 * _376) + (32 * _493) + 256] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]
        mem[_350 + (32 * _376) + (32 * _493) + 288 len 32 * _541] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 193 len 32 * _541]
        mem[_350 + 96] = block.number
        mem[_350 + 128] = ext_call.return_data[0]
        mem[_350 + 160] = block.timestamp
        return memory
          from mem[64]
           len _350 + (32 * _376) + (32 * _493) + (32 * _541) + -mem[64] + 288
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129] = ('cd', 36).length
    if not ('cd', 36).length:
        if ('cd', 36).length > test266151307():
            revert with 0, 65
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161] = ('cd', 36).length
        mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (98 * ('cd', 36).length) + 193
        if not ('cd', 36).length:
            idx = 0
            while idx < ('cd', 36).length:
                if idx >= mem[96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _379 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _398 = mem[_379]
                require mem[_379] == mem[_379 + 18 len 14]
                _419 = mem[_379 + 32]
                require mem[_379 + 32] == mem[_379 + 50 len 14]
                require mem[_379 + 64] == mem[_379 + 92 len 4]
                if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 193] = mem[_379 + 92 len 4]
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161] = Mask(112, 0, _419)
                mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = Mask(112, 0, _398)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _354 = mem[64]
            mem[mem[64]] = 192
            _378 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
            mem[mem[64] + 192] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
            mem[mem[64] + 224 len 32 * _378] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129 len 32 * _378]
            mem[mem[64] + 32] = (32 * _378) + 224
            _494 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
            mem[mem[64] + (32 * _378) + 224] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
            mem[mem[64] + (32 * _378) + 256 len 32 * _494] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161 len 32 * _494]
            mem[mem[64] + 64] = (32 * _378) + (32 * _494) + 256
            _542 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]
            mem[_354 + (32 * _378) + (32 * _494) + 256] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]
            mem[_354 + (32 * _378) + (32 * _494) + 288 len 32 * _542] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 193 len 32 * _542]
            mem[_354 + 96] = block.number
            mem[_354 + 128] = ext_call.return_data[0]
            mem[_354 + 160] = block.timestamp
            return memory
              from mem[64]
               len _354 + (32 * _378) + (32 * _494) + (32 * _542) + -mem[64] + 288
        mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 193 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _381 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _399 = mem[_381]
            require mem[_381] == mem[_381 + 18 len 14]
            _421 = mem[_381 + 32]
            require mem[_381 + 32] == mem[_381 + 50 len 14]
            require mem[_381 + 64] == mem[_381 + 92 len 4]
            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                revert with 0, 50
            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]:
                revert with 0, 50
            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 193] = mem[_381 + 92 len 4]
            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161] = Mask(112, 0, _421)
            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = Mask(112, 0, _399)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _358 = mem[64]
        mem[mem[64]] = 192
        _380 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
        mem[mem[64] + 192] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
        mem[mem[64] + 224 len 32 * _380] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129 len 32 * _380]
        mem[mem[64] + 32] = (32 * _380) + 224
        _495 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
        mem[mem[64] + (32 * _380) + 224] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
        mem[mem[64] + (32 * _380) + 256 len 32 * _495] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161 len 32 * _495]
        mem[mem[64] + 64] = (32 * _380) + (32 * _495) + 256
        _543 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]
        mem[_358 + (32 * _380) + (32 * _495) + 256] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]
        mem[_358 + (32 * _380) + (32 * _495) + 288 len 32 * _543] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 193 len 32 * _543]
        mem[_358 + 96] = block.number
        mem[_358 + 128] = ext_call.return_data[0]
        mem[_358 + 160] = block.timestamp
        return memory
          from mem[64]
           len _358 + (32 * _380) + (32 * _495) + (32 * _543) + -mem[64] + 288
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161] = ('cd', 36).length
    mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (98 * ('cd', 36).length) + 193
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= mem[96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _383 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _400 = mem[_383]
            require mem[_383] == mem[_383 + 18 len 14]
            _423 = mem[_383 + 32]
            require mem[_383 + 32] == mem[_383 + 50 len 14]
            require mem[_383 + 64] == mem[_383 + 92 len 4]
            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
                revert with 0, 50
            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]:
                revert with 0, 50
            if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 193] = mem[_383 + 92 len 4]
            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161] = Mask(112, 0, _423)
            mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = Mask(112, 0, _400)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _362 = mem[64]
        mem[mem[64]] = 192
        _382 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
        mem[mem[64] + 192] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
        mem[mem[64] + 224 len 32 * _382] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129 len 32 * _382]
        mem[mem[64] + 32] = (32 * _382) + 224
        _496 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
        mem[mem[64] + (32 * _382) + 224] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
        mem[mem[64] + (32 * _382) + 256 len 32 * _496] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161 len 32 * _496]
        mem[mem[64] + 64] = (32 * _382) + (32 * _496) + 256
        _544 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]
        mem[_362 + (32 * _382) + (32 * _496) + 256] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]
        mem[_362 + (32 * _382) + (32 * _496) + 288 len 32 * _544] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 193 len 32 * _544]
        mem[_362 + 96] = block.number
        mem[_362 + 128] = ext_call.return_data[0]
        mem[_362 + 160] = block.timestamp
        return memory
          from mem[64]
           len _362 + (32 * _382) + (32 * _496) + (32 * _544) + -mem[64] + 288
    mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 193 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _385 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _401 = mem[_385]
        require mem[_385] == mem[_385 + 18 len 14]
        _425 = mem[_385 + 32]
        require mem[_385 + 32] == mem[_385 + 50 len 14]
        require mem[_385 + 64] == mem[_385 + 92 len 4]
        if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]:
            revert with 0, 50
        if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]:
            revert with 0, 50
        if idx >= mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 193] = mem[_385 + 92 len 4]
        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161] = Mask(112, 0, _425)
        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129] = Mask(112, 0, _401)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _366 = mem[64]
    mem[mem[64]] = 192
    _384 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
    mem[mem[64] + 192] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 97]
    mem[mem[64] + 224 len 32 * _384] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + 129 len 32 * _384]
    mem[mem[64] + 32] = (32 * _384) + 224
    _497 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
    mem[mem[64] + (32 * _384) + 224] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 129]
    mem[mem[64] + (32 * _384) + 256 len 32 * _497] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (32 * ('cd', 36).length) + 161 len 32 * _497]
    mem[mem[64] + 64] = (32 * _384) + (32 * _497) + 256
    _545 = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]
    mem[_366 + (32 * _384) + (32 * _497) + 256] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 161]
    mem[_366 + (32 * _384) + (32 * _497) + 288 len 32 * _545] = mem[ceil32(32 * ('cd', 36).length) + ceil32(return_data.size) + (64 * ('cd', 36).length) + 193 len 32 * _545]
    var49001 = _545
    mem[_366 + 96] = block.number
    mem[_366 + 128] = ext_call.return_data[0]
    mem[_366 + 160] = block.timestamp
    return memory
      from mem[64]
       len _366 + (32 * _384) + (32 * _497) + (32 * _545) + -mem[64] + 288
}

function sub_ba4e21ff(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] > test266151307():
                revert with 0, 65
            mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
            mem[64] = ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192
            if not ext_call.return_data[0]:
                idx = 0
                while idx < ext_call.return_data[0]:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _252 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_252] == mem[_252 + 12 len 20]
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_252 + 12 len 20]
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                    staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _348 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_348] == mem[_348 + 12 len 20]
                    if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_348 + 12 len 20]
                    if idx >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                    staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _420 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_420] == mem[_420 + 12 len 20]
                    if idx >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = mem[_420 + 12 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _244 = mem[64]
                mem[mem[64]] = 96
                _260 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 128
                while idx < _260:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_244 + 32] = (32 * _260) + 128
                _452 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                mem[_244 + (32 * _260) + 128] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
                t = _244 + (32 * _260) + 160
                while idx < _452:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_244 + 64] = (32 * _260) + (32 * _452) + 160
                _500 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                mem[_244 + (32 * _260) + (32 * _452) + 160] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
                idx = 0
                s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192
                t = _244 + (32 * _260) + (32 * _452) + 192
                while idx < _500:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _244 + (32 * _260) + (32 * _452) + (32 * _500) + -mem[64] + 192
            mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _253 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_253] == mem[_253 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_253 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _349 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_349] == mem[_349 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_349 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _421 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_421] == mem[_421 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = mem[_421 + 12 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _245 = mem[64]
            mem[mem[64]] = 96
            _261 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 128
            while idx < _261:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_245 + 32] = (32 * _261) + 128
            _453 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[_245 + (32 * _261) + 128] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
            t = _245 + (32 * _261) + 160
            while idx < _453:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_245 + 64] = (32 * _261) + (32 * _453) + 160
            _501 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            mem[_245 + (32 * _261) + (32 * _453) + 160] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            idx = 0
            s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192
            t = _245 + (32 * _261) + (32 * _453) + 192
            while idx < _501:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _245 + (32 * _261) + (32 * _453) + (32 * _501) + -mem[64] + 192
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        if ext_call.return_data[0] > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        mem[64] = ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _254 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_254] == mem[_254 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_254 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _350 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_350] == mem[_350 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_350 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _422 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_422] == mem[_422 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = mem[_422 + 12 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _246 = mem[64]
            mem[mem[64]] = 96
            _262 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 128
            while idx < _262:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_246 + 32] = (32 * _262) + 128
            _454 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[_246 + (32 * _262) + 128] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
            t = _246 + (32 * _262) + 160
            while idx < _454:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_246 + 64] = (32 * _262) + (32 * _454) + 160
            _502 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            mem[_246 + (32 * _262) + (32 * _454) + 160] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            idx = 0
            s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192
            t = _246 + (32 * _262) + (32 * _454) + 192
            while idx < _502:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _246 + (32 * _262) + (32 * _454) + (32 * _502) + -mem[64] + 192
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _255 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_255] == mem[_255 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_255 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _351 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_351] == mem[_351 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_351 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _423 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_423] == mem[_423 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = mem[_423 + 12 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _247 = mem[64]
        mem[mem[64]] = 96
        _263 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 128
        while idx < _263:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_247 + 32] = (32 * _263) + 128
        _455 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[_247 + (32 * _263) + 128] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        idx = 0
        s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
        t = _247 + (32 * _263) + 160
        while idx < _455:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_247 + 64] = (32 * _263) + (32 * _455) + 160
        _503 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        mem[_247 + (32 * _263) + (32 * _455) + 160] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        idx = 0
        s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192
        t = _247 + (32 * _263) + (32 * _455) + 192
        while idx < _503:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _247 + (32 * _263) + (32 * _455) + (32 * _503) + -mem[64] + 192
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    if ext_call.return_data[0] > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128] = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
        mem[64] = ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192
        if not ext_call.return_data[0]:
            idx = 0
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _256 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_256] == mem[_256 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_256 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _352 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_352] == mem[_352 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_352 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _424 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_424] == mem[_424 + 12 len 20]
                if idx >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = mem[_424 + 12 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _248 = mem[64]
            mem[mem[64]] = 96
            _264 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 128
            while idx < _264:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_248 + 32] = (32 * _264) + 128
            _456 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            mem[_248 + (32 * _264) + 128] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
            t = _248 + (32 * _264) + 160
            while idx < _456:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_248 + 64] = (32 * _264) + (32 * _456) + 160
            _504 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            mem[_248 + (32 * _264) + (32 * _456) + 160] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
            idx = 0
            s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192
            t = _248 + (32 * _264) + (32 * _456) + 192
            while idx < _504:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _248 + (32 * _264) + (32 * _456) + (32 * _504) + -mem[64] + 192
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _257 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_257] == mem[_257 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_257 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _353 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_353] == mem[_353 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_353 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _425 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_425] == mem[_425 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = mem[_425 + 12 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _249 = mem[64]
        mem[mem[64]] = 96
        _265 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 128
        while idx < _265:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_249 + 32] = (32 * _265) + 128
        _457 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[_249 + (32 * _265) + 128] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        idx = 0
        s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
        t = _249 + (32 * _265) + 160
        while idx < _457:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_249 + 64] = (32 * _265) + (32 * _457) + 160
        _505 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        mem[_249 + (32 * _265) + (32 * _457) + 160] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        idx = 0
        s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192
        t = _249 + (32 * _265) + (32 * _457) + 192
        while idx < _505:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _249 + (32 * _265) + (32 * _457) + (32 * _505) + -mem[64] + 192
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    if ext_call.return_data[0] > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160] = ext_call.return_data[0]
    mem[64] = ceil32(return_data.size) + (98 * ext_call.return_data[0]) + 192
    if not ext_call.return_data[0]:
        idx = 0
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_258] == mem[_258 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_258 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _354 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_354] == mem[_354 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_354 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _426 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_426] == mem[_426 + 12 len 20]
            if idx >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = mem[_426 + 12 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _250 = mem[64]
        mem[mem[64]] = 96
        _266 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 128
        while idx < _266:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_250 + 32] = (32 * _266) + 128
        _458 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        mem[_250 + (32 * _266) + 128] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
        idx = 0
        s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
        t = _250 + (32 * _266) + 160
        while idx < _458:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_250 + 64] = (32 * _266) + (32 * _458) + 160
        _506 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        mem[_250 + (32 * _266) + (32 * _458) + 160] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
        idx = 0
        s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192
        t = _250 + (32 * _266) + (32 * _458) + 192
        while idx < _506:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _250 + (32 * _266) + (32 * _458) + (32 * _506) + -mem[64] + 192
    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192 len 32 * ext_call.return_data[0]] = call.data[calldata.size len 32 * ext_call.return_data[0]]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _259 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_259] == mem[_259 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_259 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _355 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_355] == mem[_355 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160] = mem[_355 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        require ext_code.size(mem[(32 * idx) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _427 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_427] == mem[_427 + 12 len 20]
        if idx >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192] = mem[_427 + 12 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _251 = mem[64]
    mem[mem[64]] = 96
    _267 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 128
    while idx < _267:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_251 + 32] = (32 * _267) + 128
    _459 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
    mem[_251 + (32 * _267) + 128] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 128]
    idx = 0
    s = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 160
    t = _251 + (32 * _267) + 160
    while idx < _459:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_251 + 64] = (32 * _267) + (32 * _459) + 160
    _507 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
    mem[_251 + (32 * _267) + (32 * _459) + 160] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 160]
    idx = 0
    s = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 192
    t = _251 + (32 * _267) + (32 * _459) + 192
    while idx < _507:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _251 + (32 * _267) + (32 * _459) + (32 * _507) + -mem[64] + 192
}

function sub_2b8c8319(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 1:
        revert with 0, 17
    if arg3 <= ext_call.return_data[0] - 1:
        if arg3 < arg2:
            mem[ceil32(return_data.size) + 96] = 128
            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 256 len 32 * ext_call.return_data[0]] = mem[128 len 32 * ext_call.return_data[0]]
            mem[ceil32(return_data.size) + 128] = (32 * ext_call.return_data[0]) + 160
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288 len 32 * ext_call.return_data[0]] = mem[128 len 32 * ext_call.return_data[0]]
            mem[ceil32(return_data.size) + 160] = (64 * ext_call.return_data[0]) + 192
            mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 288] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 320 len 32 * ext_call.return_data[0]] = mem[128 len 32 * ext_call.return_data[0]]
            return 128, 
                   (32 * ext_call.return_data[0]) + 160,
                   (64 * ext_call.return_data[0]) + 192,
                   0,
                   ext_call.return_data[0],
                   mem[ceil32(return_data.size) + 256 len (98 * ext_call.return_data[0]) + 64]
        if 1 > !(arg3 - arg2):
            revert with 0, 17
        if arg3 + -arg2 + 1 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + 96] = arg3 + -arg2 + 1
        if not arg3 + -arg2 + 1:
            if arg3 + -arg2 + 1 > test266151307():
                revert with 0, 65
            mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128] = arg3 + -arg2 + 1
            if not arg3 + -arg2 + 1:
                if arg3 + -arg2 + 1 > test266151307():
                    revert with 0, 65
                mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160] = arg3 + -arg2 + 1
                mem[64] = ceil32(return_data.size) + (98 * arg3) + (-98 * arg2) + 290
                if not arg3 + -arg2 + 1:
                    idx = arg2
                    while idx <= arg3:
                        mem[mem[64] + 4] = idx
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).allPairs(uint256 arg1) with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _451 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_451] == mem[_451 + 12 len 20]
                        require ext_code.size(mem[_451 + 12 len 20])
                        staticcall mem[_451 + 12 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _593 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _649 = mem[_593]
                        require mem[_593] == mem[_593 + 18 len 14]
                        _684 = mem[_593 + 32]
                        require mem[_593 + 32] == mem[_593 + 50 len 14]
                        require mem[_593 + 64] == mem[_593 + 92 len 4]
                        if idx < arg2:
                            revert with 0, 17
                        if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        if idx < arg2:
                            revert with 0, 17
                        if idx - arg2 >= mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]:
                            revert with 0, 50
                        if idx < arg2:
                            revert with 0, 17
                        if idx - arg2 >= mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]:
                            revert with 0, 50
                        mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192] = mem[_593 + 92 len 4]
                        mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160] = Mask(112, 0, _684)
                        mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _649)
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _450 = mem[64]
                    mem[mem[64]] = 128
                    _484 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 160 len 32 * _484] = mem[ceil32(return_data.size) + 128 len 32 * _484]
                    mem[mem[64] + 32] = (32 * _484) + 160
                    _798 = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
                    mem[mem[64] + (32 * _484) + 160] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
                    mem[mem[64] + (32 * _484) + 192 len 32 * _798] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160 len 32 * _798]
                    mem[mem[64] + 64] = (32 * _484) + (32 * _798) + 192
                    _906 = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
                    mem[_450 + (32 * _484) + (32 * _798) + 192] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
                    mem[_450 + (32 * _484) + (32 * _798) + 224 len 32 * _906] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192 len 32 * _906]
                    mem[_450 + 96] = block.number
                    return memory
                      from mem[64]
                       len _450 + (32 * _484) + (32 * _798) + (32 * _906) + -mem[64] + 224
                mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
                idx = arg2
                while idx <= arg3:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _453 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_453] == mem[_453 + 12 len 20]
                    require ext_code.size(mem[_453 + 12 len 20])
                    staticcall mem[_453 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _595 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _650 = mem[_595]
                    require mem[_595] == mem[_595 + 18 len 14]
                    _686 = mem[_595 + 32]
                    require mem[_595 + 32] == mem[_595 + 50 len 14]
                    require mem[_595 + 64] == mem[_595 + 92 len 4]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]:
                        revert with 0, 50
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]:
                        revert with 0, 50
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192] = mem[_595 + 92 len 4]
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160] = Mask(112, 0, _686)
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _650)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _452 = mem[64]
                mem[mem[64]] = 128
                _486 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 160 len 32 * _486] = mem[ceil32(return_data.size) + 128 len 32 * _486]
                mem[mem[64] + 32] = (32 * _486) + 160
                _799 = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
                mem[mem[64] + (32 * _486) + 160] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
                mem[mem[64] + (32 * _486) + 192 len 32 * _799] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160 len 32 * _799]
                mem[mem[64] + 64] = (32 * _486) + (32 * _799) + 192
                _907 = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
                mem[_452 + (32 * _486) + (32 * _799) + 192] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
                mem[_452 + (32 * _486) + (32 * _799) + 224 len 32 * _907] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192 len 32 * _907]
                mem[_452 + 96] = block.number
                return memory
                  from mem[64]
                   len _452 + (32 * _486) + (32 * _799) + (32 * _907) + -mem[64] + 224
            mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
            if arg3 + -arg2 + 1 > test266151307():
                revert with 0, 65
            mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160] = arg3 + -arg2 + 1
            mem[64] = ceil32(return_data.size) + (98 * arg3) + (-98 * arg2) + 290
            if not arg3 + -arg2 + 1:
                idx = arg2
                while idx <= arg3:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _455 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_455] == mem[_455 + 12 len 20]
                    require ext_code.size(mem[_455 + 12 len 20])
                    staticcall mem[_455 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _597 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _651 = mem[_597]
                    require mem[_597] == mem[_597 + 18 len 14]
                    _688 = mem[_597 + 32]
                    require mem[_597 + 32] == mem[_597 + 50 len 14]
                    require mem[_597 + 64] == mem[_597 + 92 len 4]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]:
                        revert with 0, 50
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]:
                        revert with 0, 50
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192] = mem[_597 + 92 len 4]
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160] = Mask(112, 0, _688)
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _651)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _454 = mem[64]
                mem[mem[64]] = 128
                _488 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 160 len 32 * _488] = mem[ceil32(return_data.size) + 128 len 32 * _488]
                mem[mem[64] + 32] = (32 * _488) + 160
                _800 = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
                mem[mem[64] + (32 * _488) + 160] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
                mem[mem[64] + (32 * _488) + 192 len 32 * _800] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160 len 32 * _800]
                mem[mem[64] + 64] = (32 * _488) + (32 * _800) + 192
                _908 = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
                mem[_454 + (32 * _488) + (32 * _800) + 192] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
                mem[_454 + (32 * _488) + (32 * _800) + 224 len 32 * _908] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192 len 32 * _908]
                mem[_454 + 96] = block.number
                return memory
                  from mem[64]
                   len _454 + (32 * _488) + (32 * _800) + (32 * _908) + -mem[64] + 224
            mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
            idx = arg2
            while idx <= arg3:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _457 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_457] == mem[_457 + 12 len 20]
                require ext_code.size(mem[_457 + 12 len 20])
                staticcall mem[_457 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _599 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _652 = mem[_599]
                require mem[_599] == mem[_599 + 18 len 14]
                _690 = mem[_599 + 32]
                require mem[_599 + 32] == mem[_599 + 50 len 14]
                require mem[_599 + 64] == mem[_599 + 92 len 4]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]:
                    revert with 0, 50
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192] = mem[_599 + 92 len 4]
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160] = Mask(112, 0, _690)
                mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _652)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _456 = mem[64]
            mem[mem[64]] = 128
            _490 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 160 len 32 * _490] = mem[ceil32(return_data.size) + 128 len 32 * _490]
            mem[mem[64] + 32] = (32 * _490) + 160
            _801 = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
            mem[mem[64] + (32 * _490) + 160] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
            mem[mem[64] + (32 * _490) + 192 len 32 * _801] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160 len 32 * _801]
            mem[mem[64] + 64] = (32 * _490) + (32 * _801) + 192
            _909 = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
            mem[_456 + (32 * _490) + (32 * _801) + 192] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
            mem[_456 + (32 * _490) + (32 * _801) + 224 len 32 * _909] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192 len 32 * _909]
            mem[_456 + 96] = block.number
            return memory
              from mem[64]
               len _456 + (32 * _490) + (32 * _801) + (32 * _909) + -mem[64] + 224
        mem[ceil32(return_data.size) + 128 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
        if arg3 + -arg2 + 1 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128] = arg3 + -arg2 + 1
        if not arg3 + -arg2 + 1:
            if arg3 + -arg2 + 1 > test266151307():
                revert with 0, 65
            mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160] = arg3 + -arg2 + 1
            mem[64] = ceil32(return_data.size) + (98 * arg3) + (-98 * arg2) + 290
            if not arg3 + -arg2 + 1:
                idx = arg2
                while idx <= arg3:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _459 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_459] == mem[_459 + 12 len 20]
                    require ext_code.size(mem[_459 + 12 len 20])
                    staticcall mem[_459 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _601 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _653 = mem[_601]
                    require mem[_601] == mem[_601 + 18 len 14]
                    _692 = mem[_601 + 32]
                    require mem[_601 + 32] == mem[_601 + 50 len 14]
                    require mem[_601 + 64] == mem[_601 + 92 len 4]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]:
                        revert with 0, 50
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]:
                        revert with 0, 50
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192] = mem[_601 + 92 len 4]
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160] = Mask(112, 0, _692)
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _653)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _458 = mem[64]
                mem[mem[64]] = 128
                _492 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 160 len 32 * _492] = mem[ceil32(return_data.size) + 128 len 32 * _492]
                mem[mem[64] + 32] = (32 * _492) + 160
                _802 = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
                mem[mem[64] + (32 * _492) + 160] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
                mem[mem[64] + (32 * _492) + 192 len 32 * _802] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160 len 32 * _802]
                mem[mem[64] + 64] = (32 * _492) + (32 * _802) + 192
                _910 = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
                mem[_458 + (32 * _492) + (32 * _802) + 192] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
                mem[_458 + (32 * _492) + (32 * _802) + 224 len 32 * _910] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192 len 32 * _910]
                mem[_458 + 96] = block.number
                return memory
                  from mem[64]
                   len _458 + (32 * _492) + (32 * _802) + (32 * _910) + -mem[64] + 224
            mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
            idx = arg2
            while idx <= arg3:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _461 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_461] == mem[_461 + 12 len 20]
                require ext_code.size(mem[_461 + 12 len 20])
                staticcall mem[_461 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _603 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _654 = mem[_603]
                require mem[_603] == mem[_603 + 18 len 14]
                _694 = mem[_603 + 32]
                require mem[_603 + 32] == mem[_603 + 50 len 14]
                require mem[_603 + 64] == mem[_603 + 92 len 4]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]:
                    revert with 0, 50
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192] = mem[_603 + 92 len 4]
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160] = Mask(112, 0, _694)
                mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _654)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _460 = mem[64]
            mem[mem[64]] = 128
            _494 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 160 len 32 * _494] = mem[ceil32(return_data.size) + 128 len 32 * _494]
            mem[mem[64] + 32] = (32 * _494) + 160
            _803 = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
            mem[mem[64] + (32 * _494) + 160] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
            mem[mem[64] + (32 * _494) + 192 len 32 * _803] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160 len 32 * _803]
            mem[mem[64] + 64] = (32 * _494) + (32 * _803) + 192
            _911 = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
            mem[_460 + (32 * _494) + (32 * _803) + 192] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
            mem[_460 + (32 * _494) + (32 * _803) + 224 len 32 * _911] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192 len 32 * _911]
            mem[_460 + 96] = block.number
            return memory
              from mem[64]
               len _460 + (32 * _494) + (32 * _803) + (32 * _911) + -mem[64] + 224
        mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
        if arg3 + -arg2 + 1 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160] = arg3 + -arg2 + 1
        mem[64] = ceil32(return_data.size) + (98 * arg3) + (-98 * arg2) + 290
        if not arg3 + -arg2 + 1:
            idx = arg2
            while idx <= arg3:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _463 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_463] == mem[_463 + 12 len 20]
                require ext_code.size(mem[_463 + 12 len 20])
                staticcall mem[_463 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _605 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _655 = mem[_605]
                require mem[_605] == mem[_605 + 18 len 14]
                _696 = mem[_605 + 32]
                require mem[_605 + 32] == mem[_605 + 50 len 14]
                require mem[_605 + 64] == mem[_605 + 92 len 4]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]:
                    revert with 0, 50
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192] = mem[_605 + 92 len 4]
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160] = Mask(112, 0, _696)
                mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _655)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _462 = mem[64]
            mem[mem[64]] = 128
            _496 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 160 len 32 * _496] = mem[ceil32(return_data.size) + 128 len 32 * _496]
            mem[mem[64] + 32] = (32 * _496) + 160
            _804 = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
            mem[mem[64] + (32 * _496) + 160] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
            mem[mem[64] + (32 * _496) + 192 len 32 * _804] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160 len 32 * _804]
            mem[mem[64] + 64] = (32 * _496) + (32 * _804) + 192
            _912 = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
            mem[_462 + (32 * _496) + (32 * _804) + 192] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
            mem[_462 + (32 * _496) + (32 * _804) + 224 len 32 * _912] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192 len 32 * _912]
            mem[_462 + 96] = block.number
            return memory
              from mem[64]
               len _462 + (32 * _496) + (32 * _804) + (32 * _912) + -mem[64] + 224
        mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
        idx = arg2
        while idx <= arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _465 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_465] == mem[_465 + 12 len 20]
            require ext_code.size(mem[_465 + 12 len 20])
            staticcall mem[_465 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _607 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _656 = mem[_607]
            require mem[_607] == mem[_607 + 18 len 14]
            _698 = mem[_607 + 32]
            require mem[_607 + 32] == mem[_607 + 50 len 14]
            require mem[_607 + 64] == mem[_607 + 92 len 4]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]:
                revert with 0, 50
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]:
                revert with 0, 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192] = mem[_607 + 92 len 4]
            mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160] = Mask(112, 0, _698)
            mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _656)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _464 = mem[64]
        mem[mem[64]] = 128
        _498 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 160 len 32 * _498] = mem[ceil32(return_data.size) + 128 len 32 * _498]
        mem[mem[64] + 32] = (32 * _498) + 160
        _805 = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
        mem[mem[64] + (32 * _498) + 160] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
        mem[mem[64] + (32 * _498) + 192 len 32 * _805] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160 len 32 * _805]
        mem[mem[64] + 64] = (32 * _498) + (32 * _805) + 192
        _913 = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
        mem[_464 + (32 * _498) + (32 * _805) + 192] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
        mem[_464 + (32 * _498) + (32 * _805) + 224 len 32 * _913] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192 len 32 * _913]
        mem[_464 + 96] = block.number
        return memory
          from mem[64]
           len _464 + (32 * _498) + (32 * _805) + (32 * _913) + -mem[64] + 224
    if ext_call.return_data[0] < 1:
        revert with 0, 17
    if ext_call.return_data[0] - 1 < arg2:
        mem[ceil32(return_data.size) + 96] = 128
        mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 256 len 32 * ext_call.return_data[0]] = mem[128 len 32 * ext_call.return_data[0]]
        mem[ceil32(return_data.size) + 128] = (32 * ext_call.return_data[0]) + 160
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 288 len 32 * ext_call.return_data[0]] = mem[128 len 32 * ext_call.return_data[0]]
        mem[ceil32(return_data.size) + 160] = (64 * ext_call.return_data[0]) + 192
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 288] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 320 len 32 * ext_call.return_data[0]] = mem[128 len 32 * ext_call.return_data[0]]
        return 128, 
               (32 * ext_call.return_data[0]) + 160,
               (64 * ext_call.return_data[0]) + 192,
               0,
               ext_call.return_data[0],
               mem[ceil32(return_data.size) + 256 len (98 * ext_call.return_data[0]) + 64]
    if 1 > !(ext_call.return_data[0] + -arg2 - 1):
        revert with 0, 17
    if ext_call.return_data[0] - arg2 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg2
    if not ext_call.return_data[0] - arg2:
        if ext_call.return_data[0] - arg2 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = ext_call.return_data[0] - arg2
        if not ext_call.return_data[0] - arg2:
            if ext_call.return_data[0] - arg2 > test266151307():
                revert with 0, 65
            mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160] = ext_call.return_data[0] - arg2
            mem[64] = ceil32(return_data.size) + (98 * ext_call.return_data[0]) + (-98 * arg2) + 192
            if not ext_call.return_data[0] - arg2:
                idx = arg2
                while idx <= ext_call.return_data[0] - 1:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _468 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_468] == mem[_468 + 12 len 20]
                    require ext_code.size(mem[_468 + 12 len 20])
                    staticcall mem[_468 + 12 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _612 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _657 = mem[_612]
                    require mem[_612] == mem[_612 + 18 len 14]
                    _700 = mem[_612 + 32]
                    require mem[_612 + 32] == mem[_612 + 50 len 14]
                    require mem[_612 + 64] == mem[_612 + 92 len 4]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]:
                        revert with 0, 50
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]:
                        revert with 0, 50
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192] = mem[_612 + 92 len 4]
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = Mask(112, 0, _700)
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _657)
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _467 = mem[64]
                mem[mem[64]] = 128
                _501 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 160 len 32 * _501] = mem[ceil32(return_data.size) + 128 len 32 * _501]
                mem[mem[64] + 32] = (32 * _501) + 160
                _807 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
                mem[mem[64] + (32 * _501) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
                mem[mem[64] + (32 * _501) + 192 len 32 * _807] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160 len 32 * _807]
                mem[mem[64] + 64] = (32 * _501) + (32 * _807) + 192
                _915 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
                mem[_467 + (32 * _501) + (32 * _807) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
                mem[_467 + (32 * _501) + (32 * _807) + 224 len 32 * _915] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192 len 32 * _915]
                mem[_467 + 96] = block.number
                return memory
                  from mem[64]
                   len _467 + (32 * _501) + (32 * _807) + (32 * _915) + -mem[64] + 224
            mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
            idx = arg2
            while idx <= ext_call.return_data[0] - 1:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _470 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_470] == mem[_470 + 12 len 20]
                require ext_code.size(mem[_470 + 12 len 20])
                staticcall mem[_470 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _614 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _658 = mem[_614]
                require mem[_614] == mem[_614 + 18 len 14]
                _702 = mem[_614 + 32]
                require mem[_614 + 32] == mem[_614 + 50 len 14]
                require mem[_614 + 64] == mem[_614 + 92 len 4]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]:
                    revert with 0, 50
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192] = mem[_614 + 92 len 4]
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = Mask(112, 0, _702)
                mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _658)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _469 = mem[64]
            mem[mem[64]] = 128
            _503 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 160 len 32 * _503] = mem[ceil32(return_data.size) + 128 len 32 * _503]
            mem[mem[64] + 32] = (32 * _503) + 160
            _808 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
            mem[mem[64] + (32 * _503) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
            mem[mem[64] + (32 * _503) + 192 len 32 * _808] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160 len 32 * _808]
            mem[mem[64] + 64] = (32 * _503) + (32 * _808) + 192
            _916 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
            mem[_469 + (32 * _503) + (32 * _808) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
            mem[_469 + (32 * _503) + (32 * _808) + 224 len 32 * _916] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192 len 32 * _916]
            mem[_469 + 96] = block.number
            return memory
              from mem[64]
               len _469 + (32 * _503) + (32 * _808) + (32 * _916) + -mem[64] + 224
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
        if ext_call.return_data[0] - arg2 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160] = ext_call.return_data[0] - arg2
        mem[64] = ceil32(return_data.size) + (98 * ext_call.return_data[0]) + (-98 * arg2) + 192
        if not ext_call.return_data[0] - arg2:
            idx = arg2
            while idx <= ext_call.return_data[0] - 1:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _472 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_472] == mem[_472 + 12 len 20]
                require ext_code.size(mem[_472 + 12 len 20])
                staticcall mem[_472 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _616 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _659 = mem[_616]
                require mem[_616] == mem[_616 + 18 len 14]
                _704 = mem[_616 + 32]
                require mem[_616 + 32] == mem[_616 + 50 len 14]
                require mem[_616 + 64] == mem[_616 + 92 len 4]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]:
                    revert with 0, 50
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192] = mem[_616 + 92 len 4]
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = Mask(112, 0, _704)
                mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _659)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _471 = mem[64]
            mem[mem[64]] = 128
            _505 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 160 len 32 * _505] = mem[ceil32(return_data.size) + 128 len 32 * _505]
            mem[mem[64] + 32] = (32 * _505) + 160
            _809 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
            mem[mem[64] + (32 * _505) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
            mem[mem[64] + (32 * _505) + 192 len 32 * _809] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160 len 32 * _809]
            mem[mem[64] + 64] = (32 * _505) + (32 * _809) + 192
            _917 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
            mem[_471 + (32 * _505) + (32 * _809) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
            mem[_471 + (32 * _505) + (32 * _809) + 224 len 32 * _917] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192 len 32 * _917]
            mem[_471 + 96] = block.number
            return memory
              from mem[64]
               len _471 + (32 * _505) + (32 * _809) + (32 * _917) + -mem[64] + 224
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
        idx = arg2
        while idx <= ext_call.return_data[0] - 1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _474 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_474] == mem[_474 + 12 len 20]
            require ext_code.size(mem[_474 + 12 len 20])
            staticcall mem[_474 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _618 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _660 = mem[_618]
            require mem[_618] == mem[_618 + 18 len 14]
            _706 = mem[_618 + 32]
            require mem[_618 + 32] == mem[_618 + 50 len 14]
            require mem[_618 + 64] == mem[_618 + 92 len 4]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]:
                revert with 0, 50
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]:
                revert with 0, 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192] = mem[_618 + 92 len 4]
            mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = Mask(112, 0, _706)
            mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _660)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _473 = mem[64]
        mem[mem[64]] = 128
        _507 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 160 len 32 * _507] = mem[ceil32(return_data.size) + 128 len 32 * _507]
        mem[mem[64] + 32] = (32 * _507) + 160
        _810 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
        mem[mem[64] + (32 * _507) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
        mem[mem[64] + (32 * _507) + 192 len 32 * _810] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160 len 32 * _810]
        mem[mem[64] + 64] = (32 * _507) + (32 * _810) + 192
        _918 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
        mem[_473 + (32 * _507) + (32 * _810) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
        mem[_473 + (32 * _507) + (32 * _810) + 224 len 32 * _918] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192 len 32 * _918]
        mem[_473 + 96] = block.number
        return memory
          from mem[64]
           len _473 + (32 * _507) + (32 * _810) + (32 * _918) + -mem[64] + 224
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
    if ext_call.return_data[0] - arg2 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = ext_call.return_data[0] - arg2
    if not ext_call.return_data[0] - arg2:
        if ext_call.return_data[0] - arg2 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160] = ext_call.return_data[0] - arg2
        mem[64] = ceil32(return_data.size) + (98 * ext_call.return_data[0]) + (-98 * arg2) + 192
        if not ext_call.return_data[0] - arg2:
            idx = arg2
            while idx <= ext_call.return_data[0] - 1:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _476 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_476] == mem[_476 + 12 len 20]
                require ext_code.size(mem[_476 + 12 len 20])
                staticcall mem[_476 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _620 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _661 = mem[_620]
                require mem[_620] == mem[_620 + 18 len 14]
                _708 = mem[_620 + 32]
                require mem[_620 + 32] == mem[_620 + 50 len 14]
                require mem[_620 + 64] == mem[_620 + 92 len 4]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]:
                    revert with 0, 50
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192] = mem[_620 + 92 len 4]
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = Mask(112, 0, _708)
                mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _661)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _475 = mem[64]
            mem[mem[64]] = 128
            _509 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 160 len 32 * _509] = mem[ceil32(return_data.size) + 128 len 32 * _509]
            mem[mem[64] + 32] = (32 * _509) + 160
            _811 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
            mem[mem[64] + (32 * _509) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
            mem[mem[64] + (32 * _509) + 192 len 32 * _811] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160 len 32 * _811]
            mem[mem[64] + 64] = (32 * _509) + (32 * _811) + 192
            _919 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
            mem[_475 + (32 * _509) + (32 * _811) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
            mem[_475 + (32 * _509) + (32 * _811) + 224 len 32 * _919] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192 len 32 * _919]
            mem[_475 + 96] = block.number
            return memory
              from mem[64]
               len _475 + (32 * _509) + (32 * _811) + (32 * _919) + -mem[64] + 224
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
        idx = arg2
        while idx <= ext_call.return_data[0] - 1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _478 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_478] == mem[_478 + 12 len 20]
            require ext_code.size(mem[_478 + 12 len 20])
            staticcall mem[_478 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _622 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _662 = mem[_622]
            require mem[_622] == mem[_622 + 18 len 14]
            _710 = mem[_622 + 32]
            require mem[_622 + 32] == mem[_622 + 50 len 14]
            require mem[_622 + 64] == mem[_622 + 92 len 4]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]:
                revert with 0, 50
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]:
                revert with 0, 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192] = mem[_622 + 92 len 4]
            mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = Mask(112, 0, _710)
            mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _662)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _477 = mem[64]
        mem[mem[64]] = 128
        _511 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 160 len 32 * _511] = mem[ceil32(return_data.size) + 128 len 32 * _511]
        mem[mem[64] + 32] = (32 * _511) + 160
        _812 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
        mem[mem[64] + (32 * _511) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
        mem[mem[64] + (32 * _511) + 192 len 32 * _812] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160 len 32 * _812]
        mem[mem[64] + 64] = (32 * _511) + (32 * _812) + 192
        _920 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
        mem[_477 + (32 * _511) + (32 * _812) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
        mem[_477 + (32 * _511) + (32 * _812) + 224 len 32 * _920] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192 len 32 * _920]
        mem[_477 + 96] = block.number
        return memory
          from mem[64]
           len _477 + (32 * _511) + (32 * _812) + (32 * _920) + -mem[64] + 224
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
    if ext_call.return_data[0] - arg2 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160] = ext_call.return_data[0] - arg2
    mem[64] = ceil32(return_data.size) + (98 * ext_call.return_data[0]) + (-98 * arg2) + 192
    if not ext_call.return_data[0] - arg2:
        idx = arg2
        while idx <= ext_call.return_data[0] - 1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _480 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_480] == mem[_480 + 12 len 20]
            require ext_code.size(mem[_480 + 12 len 20])
            staticcall mem[_480 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _624 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _663 = mem[_624]
            require mem[_624] == mem[_624 + 18 len 14]
            _712 = mem[_624 + 32]
            require mem[_624 + 32] == mem[_624 + 50 len 14]
            require mem[_624 + 64] == mem[_624 + 92 len 4]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]:
                revert with 0, 50
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]:
                revert with 0, 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192] = mem[_624 + 92 len 4]
            mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = Mask(112, 0, _712)
            mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _663)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _479 = mem[64]
        mem[mem[64]] = 128
        _513 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 160 len 32 * _513] = mem[ceil32(return_data.size) + 128 len 32 * _513]
        mem[mem[64] + 32] = (32 * _513) + 160
        _813 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
        mem[mem[64] + (32 * _513) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
        mem[mem[64] + (32 * _513) + 192 len 32 * _813] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160 len 32 * _813]
        mem[mem[64] + 64] = (32 * _513) + (32 * _813) + 192
        _921 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
        mem[_479 + (32 * _513) + (32 * _813) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
        mem[_479 + (32 * _513) + (32 * _813) + 224 len 32 * _921] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192 len 32 * _921]
        mem[_479 + 96] = block.number
        return memory
          from mem[64]
           len _479 + (32 * _513) + (32 * _813) + (32 * _921) + -mem[64] + 224
    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
    idx = arg2
    while idx <= ext_call.return_data[0] - 1:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _482 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_482] == mem[_482 + 12 len 20]
        require ext_code.size(mem[_482 + 12 len 20])
        staticcall mem[_482 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _626 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _664 = mem[_626]
        require mem[_626] == mem[_626 + 18 len 14]
        _714 = mem[_626 + 32]
        require mem[_626 + 32] == mem[_626 + 50 len 14]
        require mem[_626 + 64] == mem[_626 + 92 len 4]
        if idx < arg2:
            revert with 0, 17
        if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        if idx < arg2:
            revert with 0, 17
        if idx - arg2 >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]:
            revert with 0, 50
        if idx < arg2:
            revert with 0, 17
        if idx - arg2 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]:
            revert with 0, 50
        mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192] = mem[_626 + 92 len 4]
        mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = Mask(112, 0, _714)
        mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = Mask(112, 0, _664)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _481 = mem[64]
    mem[mem[64]] = 128
    _515 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 128] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 160 len 32 * _515] = mem[ceil32(return_data.size) + 128 len 32 * _515]
    mem[mem[64] + 32] = (32 * _515) + 160
    _814 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
    mem[mem[64] + (32 * _515) + 160] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
    mem[mem[64] + (32 * _515) + 192 len 32 * _814] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160 len 32 * _814]
    mem[mem[64] + 64] = (32 * _515) + (32 * _814) + 192
    _922 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
    mem[_481 + (32 * _515) + (32 * _814) + 192] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
    mem[_481 + (32 * _515) + (32 * _814) + 224 len 32 * _922] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192 len 32 * _922]
    mem[_481 + 96] = block.number
    return memory
      from mem[64]
       len _481 + (32 * _515) + (32 * _814) + (32 * _922) + -mem[64] + 224
}

function sub_79856892(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 1:
        revert with 0, 17
    if arg3 <= ext_call.return_data[0] - 1:
        if arg3 < arg2:
            mem[ceil32(return_data.size) + 96] = 96
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            idx = 0
            s = 128
            t = ceil32(return_data.size) + 224
            while idx < ext_call.return_data[0]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 128] = (32 * ext_call.return_data[0]) + 128
            mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
            idx = 0
            s = 128
            t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256
            while idx < ext_call.return_data[0]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(return_data.size) + 160] = (64 * ext_call.return_data[0]) + 160
            mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
            idx = 0
            s = 128
            t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 288
            while idx < ext_call.return_data[0]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return Array(len=ext_call.return_data[0], data=mem[ceil32(return_data.size) + 224 len (98 * ext_call.return_data[0]) + 64]), 
                   (32 * ext_call.return_data[0]) + 128,
                   (64 * ext_call.return_data[0]) + 160
        if 1 > !(arg3 - arg2):
            revert with 0, 17
        if arg3 + -arg2 + 1 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + 96] = arg3 + -arg2 + 1
        if not arg3 + -arg2 + 1:
            if arg3 + -arg2 + 1 > test266151307():
                revert with 0, 65
            mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128] = arg3 + -arg2 + 1
            if not arg3 + -arg2 + 1:
                if arg3 + -arg2 + 1 > test266151307():
                    revert with 0, 65
                mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160] = arg3 + -arg2 + 1
                mem[64] = ceil32(return_data.size) + (98 * arg3) + (-98 * arg2) + 290
                if not arg3 + -arg2 + 1:
                    idx = arg2
                    while idx <= arg3:
                        mem[mem[64] + 4] = idx
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).allPairs(uint256 arg1) with:
                                gas gas_remaining wei
                               args idx
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _547 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_547] == mem[_547 + 12 len 20]
                        if idx < arg2:
                            revert with 0, 17
                        if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = mem[_547 + 12 len 20]
                        if idx < arg2:
                            revert with 0, 17
                        if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                        staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _811 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_811] == mem[_811 + 12 len 20]
                        if idx < arg2:
                            revert with 0, 17
                        if idx - arg2 >= mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]:
                            revert with 0, 50
                        mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160] = mem[_811 + 12 len 20]
                        if idx < arg2:
                            revert with 0, 17
                        if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                            revert with 0, 50
                        require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                        staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _923 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_923] == mem[_923 + 12 len 20]
                        if idx < arg2:
                            revert with 0, 17
                        if idx - arg2 >= mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]:
                            revert with 0, 50
                        mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192] = mem[_923 + 12 len 20]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _546 = mem[64]
                    mem[mem[64]] = 96
                    _580 = mem[ceil32(return_data.size) + 96]
                    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
                    idx = 0
                    s = ceil32(return_data.size) + 128
                    t = mem[64] + 128
                    while idx < _580:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_546 + 32] = (32 * _580) + 128
                    _990 = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
                    mem[_546 + (32 * _580) + 128] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
                    idx = 0
                    s = ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160
                    t = _546 + (32 * _580) + 160
                    while idx < _990:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_546 + 64] = (32 * _580) + (32 * _990) + 160
                    _1098 = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
                    mem[_546 + (32 * _580) + (32 * _990) + 160] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
                    idx = 0
                    s = ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192
                    t = _546 + (32 * _580) + (32 * _990) + 192
                    while idx < _1098:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _546 + (32 * _580) + (32 * _990) + (32 * _1098) + -mem[64] + 192
                mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
                idx = arg2
                while idx <= arg3:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _549 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_549] == mem[_549 + 12 len 20]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = mem[_549 + 12 len 20]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                    staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _812 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_812] == mem[_812 + 12 len 20]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]:
                        revert with 0, 50
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160] = mem[_812 + 12 len 20]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                    staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _924 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_924] == mem[_924 + 12 len 20]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]:
                        revert with 0, 50
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192] = mem[_924 + 12 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _548 = mem[64]
                mem[mem[64]] = 96
                _582 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 128
                while idx < _582:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_548 + 32] = (32 * _582) + 128
                _991 = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
                mem[_548 + (32 * _582) + 128] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160
                t = _548 + (32 * _582) + 160
                while idx < _991:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_548 + 64] = (32 * _582) + (32 * _991) + 160
                _1099 = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
                mem[_548 + (32 * _582) + (32 * _991) + 160] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
                idx = 0
                s = ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192
                t = _548 + (32 * _582) + (32 * _991) + 192
                while idx < _1099:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _548 + (32 * _582) + (32 * _991) + (32 * _1099) + -mem[64] + 192
            mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
            if arg3 + -arg2 + 1 > test266151307():
                revert with 0, 65
            mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160] = arg3 + -arg2 + 1
            mem[64] = ceil32(return_data.size) + (98 * arg3) + (-98 * arg2) + 290
            if not arg3 + -arg2 + 1:
                idx = arg2
                while idx <= arg3:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _551 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_551] == mem[_551 + 12 len 20]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = mem[_551 + 12 len 20]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                    staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _813 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_813] == mem[_813 + 12 len 20]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]:
                        revert with 0, 50
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160] = mem[_813 + 12 len 20]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                    staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _925 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_925] == mem[_925 + 12 len 20]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]:
                        revert with 0, 50
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192] = mem[_925 + 12 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _550 = mem[64]
                mem[mem[64]] = 96
                _584 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 128
                while idx < _584:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_550 + 32] = (32 * _584) + 128
                _992 = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
                mem[_550 + (32 * _584) + 128] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160
                t = _550 + (32 * _584) + 160
                while idx < _992:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_550 + 64] = (32 * _584) + (32 * _992) + 160
                _1100 = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
                mem[_550 + (32 * _584) + (32 * _992) + 160] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
                idx = 0
                s = ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192
                t = _550 + (32 * _584) + (32 * _992) + 192
                while idx < _1100:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _550 + (32 * _584) + (32 * _992) + (32 * _1100) + -mem[64] + 192
            mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
            idx = arg2
            while idx <= arg3:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _553 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_553] == mem[_553 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = mem[_553 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _814 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_814] == mem[_814 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160] = mem[_814 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _926 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_926] == mem[_926 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192] = mem[_926 + 12 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _552 = mem[64]
            mem[mem[64]] = 96
            _586 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 128
            while idx < _586:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_552 + 32] = (32 * _586) + 128
            _993 = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
            mem[_552 + (32 * _586) + 128] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160
            t = _552 + (32 * _586) + 160
            while idx < _993:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_552 + 64] = (32 * _586) + (32 * _993) + 160
            _1101 = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
            mem[_552 + (32 * _586) + (32 * _993) + 160] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
            idx = 0
            s = ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192
            t = _552 + (32 * _586) + (32 * _993) + 192
            while idx < _1101:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _552 + (32 * _586) + (32 * _993) + (32 * _1101) + -mem[64] + 192
        mem[ceil32(return_data.size) + 128 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
        if arg3 + -arg2 + 1 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128] = arg3 + -arg2 + 1
        if not arg3 + -arg2 + 1:
            if arg3 + -arg2 + 1 > test266151307():
                revert with 0, 65
            mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160] = arg3 + -arg2 + 1
            mem[64] = ceil32(return_data.size) + (98 * arg3) + (-98 * arg2) + 290
            if not arg3 + -arg2 + 1:
                idx = arg2
                while idx <= arg3:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _555 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_555] == mem[_555 + 12 len 20]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = mem[_555 + 12 len 20]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                    staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _815 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_815] == mem[_815 + 12 len 20]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]:
                        revert with 0, 50
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160] = mem[_815 + 12 len 20]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                    staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _927 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_927] == mem[_927 + 12 len 20]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]:
                        revert with 0, 50
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192] = mem[_927 + 12 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _554 = mem[64]
                mem[mem[64]] = 96
                _588 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 128
                while idx < _588:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_554 + 32] = (32 * _588) + 128
                _994 = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
                mem[_554 + (32 * _588) + 128] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160
                t = _554 + (32 * _588) + 160
                while idx < _994:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_554 + 64] = (32 * _588) + (32 * _994) + 160
                _1102 = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
                mem[_554 + (32 * _588) + (32 * _994) + 160] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
                idx = 0
                s = ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192
                t = _554 + (32 * _588) + (32 * _994) + 192
                while idx < _1102:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _554 + (32 * _588) + (32 * _994) + (32 * _1102) + -mem[64] + 192
            mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
            idx = arg2
            while idx <= arg3:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _557 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_557] == mem[_557 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = mem[_557 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _816 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_816] == mem[_816 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160] = mem[_816 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _928 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_928] == mem[_928 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192] = mem[_928 + 12 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _556 = mem[64]
            mem[mem[64]] = 96
            _590 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 128
            while idx < _590:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_556 + 32] = (32 * _590) + 128
            _995 = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
            mem[_556 + (32 * _590) + 128] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160
            t = _556 + (32 * _590) + 160
            while idx < _995:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_556 + 64] = (32 * _590) + (32 * _995) + 160
            _1103 = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
            mem[_556 + (32 * _590) + (32 * _995) + 160] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
            idx = 0
            s = ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192
            t = _556 + (32 * _590) + (32 * _995) + 192
            while idx < _1103:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _556 + (32 * _590) + (32 * _995) + (32 * _1103) + -mem[64] + 192
        mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
        if arg3 + -arg2 + 1 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160] = arg3 + -arg2 + 1
        mem[64] = ceil32(return_data.size) + (98 * arg3) + (-98 * arg2) + 290
        if not arg3 + -arg2 + 1:
            idx = arg2
            while idx <= arg3:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _559 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_559] == mem[_559 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = mem[_559 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _817 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_817] == mem[_817 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160] = mem[_817 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _929 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_929] == mem[_929 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192] = mem[_929 + 12 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _558 = mem[64]
            mem[mem[64]] = 96
            _592 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 128
            while idx < _592:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_558 + 32] = (32 * _592) + 128
            _996 = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
            mem[_558 + (32 * _592) + 128] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160
            t = _558 + (32 * _592) + 160
            while idx < _996:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_558 + 64] = (32 * _592) + (32 * _996) + 160
            _1104 = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
            mem[_558 + (32 * _592) + (32 * _996) + 160] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
            idx = 0
            s = ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192
            t = _558 + (32 * _592) + (32 * _996) + 192
            while idx < _1104:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _558 + (32 * _592) + (32 * _996) + (32 * _1104) + -mem[64] + 192
        mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192 len 32 * arg3 + -arg2 + 1] = call.data[calldata.size len 32 * arg3 + -arg2 + 1]
        idx = arg2
        while idx <= arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _561 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_561] == mem[_561 + 12 len 20]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = mem[_561 + 12 len 20]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _818 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_818] == mem[_818 + 12 len 20]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]:
                revert with 0, 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160] = mem[_818 + 12 len 20]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _930 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_930] == mem[_930 + 12 len 20]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]:
                revert with 0, 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192] = mem[_930 + 12 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _560 = mem[64]
        mem[mem[64]] = 96
        _594 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 128
        while idx < _594:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_560 + 32] = (32 * _594) + 128
        _997 = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
        mem[_560 + (32 * _594) + 128] = mem[ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 128]
        idx = 0
        s = ceil32(return_data.size) + (32 * arg3 + -arg2 + 1) + 160
        t = _560 + (32 * _594) + 160
        while idx < _997:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_560 + 64] = (32 * _594) + (32 * _997) + 160
        _1105 = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
        mem[_560 + (32 * _594) + (32 * _997) + 160] = mem[ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 160]
        idx = 0
        s = ceil32(return_data.size) + (64 * arg3 + -arg2 + 1) + 192
        t = _560 + (32 * _594) + (32 * _997) + 192
        while idx < _1105:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _560 + (32 * _594) + (32 * _997) + (32 * _1105) + -mem[64] + 192
    if ext_call.return_data[0] < 1:
        revert with 0, 17
    if ext_call.return_data[0] - 1 < arg2:
        mem[ceil32(return_data.size) + 96] = 96
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 224
        while idx < ext_call.return_data[0]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 128] = (32 * ext_call.return_data[0]) + 128
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 224] = ext_call.return_data[0]
        idx = 0
        s = 128
        t = ceil32(return_data.size) + (32 * ext_call.return_data[0]) + 256
        while idx < ext_call.return_data[0]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(return_data.size) + 160] = (64 * ext_call.return_data[0]) + 160
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 256] = ext_call.return_data[0]
        idx = 0
        s = 128
        t = ceil32(return_data.size) + (64 * ext_call.return_data[0]) + 288
        while idx < ext_call.return_data[0]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return Array(len=ext_call.return_data[0], data=mem[ceil32(return_data.size) + 224 len (98 * ext_call.return_data[0]) + 64]), 
               (32 * ext_call.return_data[0]) + 128,
               (64 * ext_call.return_data[0]) + 160
    if 1 > !(ext_call.return_data[0] + -arg2 - 1):
        revert with 0, 17
    if ext_call.return_data[0] - arg2 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg2
    if not ext_call.return_data[0] - arg2:
        if ext_call.return_data[0] - arg2 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = ext_call.return_data[0] - arg2
        if not ext_call.return_data[0] - arg2:
            if ext_call.return_data[0] - arg2 > test266151307():
                revert with 0, 65
            mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160] = ext_call.return_data[0] - arg2
            mem[64] = ceil32(return_data.size) + (98 * ext_call.return_data[0]) + (-98 * arg2) + 192
            if not ext_call.return_data[0] - arg2:
                idx = arg2
                while idx <= ext_call.return_data[0] - 1:
                    mem[mem[64] + 4] = idx
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).allPairs(uint256 arg1) with:
                            gas gas_remaining wei
                           args idx
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _564 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_564] == mem[_564 + 12 len 20]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = mem[_564 + 12 len 20]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                    staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _819 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_819] == mem[_819 + 12 len 20]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]:
                        revert with 0, 50
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = mem[_819 + 12 len 20]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                        revert with 0, 50
                    require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                    staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _931 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_931] == mem[_931 + 12 len 20]
                    if idx < arg2:
                        revert with 0, 17
                    if idx - arg2 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]:
                        revert with 0, 50
                    mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192] = mem[_931 + 12 len 20]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _563 = mem[64]
                mem[mem[64]] = 96
                _597 = mem[ceil32(return_data.size) + 96]
                mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
                idx = 0
                s = ceil32(return_data.size) + 128
                t = mem[64] + 128
                while idx < _597:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_563 + 32] = (32 * _597) + 128
                _999 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
                mem[_563 + (32 * _597) + 128] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
                idx = 0
                s = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160
                t = _563 + (32 * _597) + 160
                while idx < _999:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_563 + 64] = (32 * _597) + (32 * _999) + 160
                _1107 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
                mem[_563 + (32 * _597) + (32 * _999) + 160] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
                idx = 0
                s = ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192
                t = _563 + (32 * _597) + (32 * _999) + 192
                while idx < _1107:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _563 + (32 * _597) + (32 * _999) + (32 * _1107) + -mem[64] + 192
            mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
            idx = arg2
            while idx <= ext_call.return_data[0] - 1:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _566 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_566] == mem[_566 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = mem[_566 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _820 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_820] == mem[_820 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = mem[_820 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _932 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_932] == mem[_932 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192] = mem[_932 + 12 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _565 = mem[64]
            mem[mem[64]] = 96
            _599 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 128
            while idx < _599:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_565 + 32] = (32 * _599) + 128
            _1000 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
            mem[_565 + (32 * _599) + 128] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160
            t = _565 + (32 * _599) + 160
            while idx < _1000:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_565 + 64] = (32 * _599) + (32 * _1000) + 160
            _1108 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
            mem[_565 + (32 * _599) + (32 * _1000) + 160] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
            idx = 0
            s = ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192
            t = _565 + (32 * _599) + (32 * _1000) + 192
            while idx < _1108:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _565 + (32 * _599) + (32 * _1000) + (32 * _1108) + -mem[64] + 192
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
        if ext_call.return_data[0] - arg2 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160] = ext_call.return_data[0] - arg2
        mem[64] = ceil32(return_data.size) + (98 * ext_call.return_data[0]) + (-98 * arg2) + 192
        if not ext_call.return_data[0] - arg2:
            idx = arg2
            while idx <= ext_call.return_data[0] - 1:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _568 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_568] == mem[_568 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = mem[_568 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _821 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_821] == mem[_821 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = mem[_821 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _933 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_933] == mem[_933 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192] = mem[_933 + 12 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _567 = mem[64]
            mem[mem[64]] = 96
            _601 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 128
            while idx < _601:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_567 + 32] = (32 * _601) + 128
            _1001 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
            mem[_567 + (32 * _601) + 128] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160
            t = _567 + (32 * _601) + 160
            while idx < _1001:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_567 + 64] = (32 * _601) + (32 * _1001) + 160
            _1109 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
            mem[_567 + (32 * _601) + (32 * _1001) + 160] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
            idx = 0
            s = ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192
            t = _567 + (32 * _601) + (32 * _1001) + 192
            while idx < _1109:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _567 + (32 * _601) + (32 * _1001) + (32 * _1109) + -mem[64] + 192
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
        idx = arg2
        while idx <= ext_call.return_data[0] - 1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _570 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_570] == mem[_570 + 12 len 20]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = mem[_570 + 12 len 20]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _822 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_822] == mem[_822 + 12 len 20]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]:
                revert with 0, 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = mem[_822 + 12 len 20]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _934 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_934] == mem[_934 + 12 len 20]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]:
                revert with 0, 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192] = mem[_934 + 12 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _569 = mem[64]
        mem[mem[64]] = 96
        _603 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 128
        while idx < _603:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_569 + 32] = (32 * _603) + 128
        _1002 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
        mem[_569 + (32 * _603) + 128] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
        idx = 0
        s = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160
        t = _569 + (32 * _603) + 160
        while idx < _1002:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_569 + 64] = (32 * _603) + (32 * _1002) + 160
        _1110 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
        mem[_569 + (32 * _603) + (32 * _1002) + 160] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
        idx = 0
        s = ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192
        t = _569 + (32 * _603) + (32 * _1002) + 192
        while idx < _1110:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _569 + (32 * _603) + (32 * _1002) + (32 * _1110) + -mem[64] + 192
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
    if ext_call.return_data[0] - arg2 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = ext_call.return_data[0] - arg2
    if not ext_call.return_data[0] - arg2:
        if ext_call.return_data[0] - arg2 > test266151307():
            revert with 0, 65
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160] = ext_call.return_data[0] - arg2
        mem[64] = ceil32(return_data.size) + (98 * ext_call.return_data[0]) + (-98 * arg2) + 192
        if not ext_call.return_data[0] - arg2:
            idx = arg2
            while idx <= ext_call.return_data[0] - 1:
                mem[mem[64] + 4] = idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).allPairs(uint256 arg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _572 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_572] == mem[_572 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = mem[_572 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _823 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_823] == mem[_823 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = mem[_823 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 0, 50
                require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
                staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _935 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_935] == mem[_935 + 12 len 20]
                if idx < arg2:
                    revert with 0, 17
                if idx - arg2 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]:
                    revert with 0, 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192] = mem[_935 + 12 len 20]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _571 = mem[64]
            mem[mem[64]] = 96
            _605 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 128
            while idx < _605:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_571 + 32] = (32 * _605) + 128
            _1003 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
            mem[_571 + (32 * _605) + 128] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
            idx = 0
            s = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160
            t = _571 + (32 * _605) + 160
            while idx < _1003:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_571 + 64] = (32 * _605) + (32 * _1003) + 160
            _1111 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
            mem[_571 + (32 * _605) + (32 * _1003) + 160] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
            idx = 0
            s = ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192
            t = _571 + (32 * _605) + (32 * _1003) + 192
            while idx < _1111:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _571 + (32 * _605) + (32 * _1003) + (32 * _1111) + -mem[64] + 192
        mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
        idx = arg2
        while idx <= ext_call.return_data[0] - 1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _574 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_574] == mem[_574 + 12 len 20]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = mem[_574 + 12 len 20]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _824 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_824] == mem[_824 + 12 len 20]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]:
                revert with 0, 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = mem[_824 + 12 len 20]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _936 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_936] == mem[_936 + 12 len 20]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]:
                revert with 0, 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192] = mem[_936 + 12 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _573 = mem[64]
        mem[mem[64]] = 96
        _607 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 128
        while idx < _607:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_573 + 32] = (32 * _607) + 128
        _1004 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
        mem[_573 + (32 * _607) + 128] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
        idx = 0
        s = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160
        t = _573 + (32 * _607) + 160
        while idx < _1004:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_573 + 64] = (32 * _607) + (32 * _1004) + 160
        _1112 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
        mem[_573 + (32 * _607) + (32 * _1004) + 160] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
        idx = 0
        s = ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192
        t = _573 + (32 * _607) + (32 * _1004) + 192
        while idx < _1112:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _573 + (32 * _607) + (32 * _1004) + (32 * _1112) + -mem[64] + 192
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
    if ext_call.return_data[0] - arg2 > test266151307():
        revert with 0, 65
    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160] = ext_call.return_data[0] - arg2
    mem[64] = ceil32(return_data.size) + (98 * ext_call.return_data[0]) + (-98 * arg2) + 192
    if not ext_call.return_data[0] - arg2:
        idx = arg2
        while idx <= ext_call.return_data[0] - 1:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).allPairs(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _576 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_576] == mem[_576 + 12 len 20]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = mem[_576 + 12 len 20]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _825 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_825] == mem[_825 + 12 len 20]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]:
                revert with 0, 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = mem[_825 + 12 len 20]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
            staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _937 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_937] == mem[_937 + 12 len 20]
            if idx < arg2:
                revert with 0, 17
            if idx - arg2 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]:
                revert with 0, 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192] = mem[_937 + 12 len 20]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _575 = mem[64]
        mem[mem[64]] = 96
        _609 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 128
        while idx < _609:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_575 + 32] = (32 * _609) + 128
        _1005 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
        mem[_575 + (32 * _609) + 128] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
        idx = 0
        s = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160
        t = _575 + (32 * _609) + 160
        while idx < _1005:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_575 + 64] = (32 * _609) + (32 * _1005) + 160
        _1113 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
        mem[_575 + (32 * _609) + (32 * _1005) + 160] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
        idx = 0
        s = ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192
        t = _575 + (32 * _609) + (32 * _1005) + 192
        while idx < _1113:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _575 + (32 * _609) + (32 * _1005) + (32 * _1113) + -mem[64] + 192
    mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
    idx = arg2
    while idx <= ext_call.return_data[0] - 1:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).allPairs(uint256 arg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _578 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_578] == mem[_578 + 12 len 20]
        if idx < arg2:
            revert with 0, 17
        if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = mem[_578 + 12 len 20]
        if idx < arg2:
            revert with 0, 17
        if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _826 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_826] == mem[_826 + 12 len 20]
        if idx < arg2:
            revert with 0, 17
        if idx - arg2 >= mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]:
            revert with 0, 50
        mem[(32 * idx - arg2) + ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = mem[_826 + 12 len 20]
        if idx < arg2:
            revert with 0, 17
        if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        require ext_code.size(mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20])
        staticcall mem[(32 * idx - arg2) + ceil32(return_data.size) + 140 len 20].0xd21220a7 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _938 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_938] == mem[_938 + 12 len 20]
        if idx < arg2:
            revert with 0, 17
        if idx - arg2 >= mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]:
            revert with 0, 50
        mem[(32 * idx - arg2) + ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192] = mem[_938 + 12 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _577 = mem[64]
    mem[mem[64]] = 96
    _611 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 128
    while idx < _611:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_577 + 32] = (32 * _611) + 128
    _1006 = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
    mem[_577 + (32 * _611) + 128] = mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128]
    idx = 0
    s = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160
    t = _577 + (32 * _611) + 160
    while idx < _1006:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_577 + 64] = (32 * _611) + (32 * _1006) + 160
    _1114 = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
    mem[_577 + (32 * _611) + (32 * _1006) + 160] = mem[ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 160]
    idx = 0
    s = ceil32(return_data.size) + (64 * ext_call.return_data[0] - arg2) + 192
    t = _577 + (32 * _611) + (32 * _1006) + 192
    while idx < _1114:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _577 + (32 * _611) + (32 * _1006) + (32 * _1114) + -mem[64] + 192
}



}
