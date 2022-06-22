contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getReserves(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    mem[64] = (64 * arg1.length) + 160
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _103 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _107 = mem[_103]
            require mem[_103] == mem[_103 + 18 len 14]
            _118 = mem[_103 + 32]
            require mem[_103 + 32] == mem[_103 + 50 len 14]
            _124 = mem[_103 + 64]
            require mem[_103 + 64] == mem[_103 + 92 len 4]
            _129 = mem[64]
            mem[64] = mem[64] + 160
            require idx < mem[96]
            mem[_129] = mem[(32 * idx) + 140 len 20]
            mem[_129 + 32] = Mask(112, 0, _107)
            mem[_129 + 64] = Mask(112, 0, _118)
            mem[_129 + 96] = block.number
            mem[_129 + 128] = uint32(_124)
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = _129
            idx = idx + 1
            continue 
        _99 = mem[64]
        mem[mem[64]] = 32
        _104 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = (32 * arg1.length) + 160
        t = mem[64] + 64
        while idx < _104:
            _142 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_142 + 50 len 14]
            mem[t + 64] = mem[_142 + 82 len 14]
            mem[t + 96] = mem[_142 + 96]
            mem[t + 128] = mem[_142 + 156 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _99 + (160 * _104) + -mem[64] + 64
    mem[64] = (64 * arg1.length) + 320
    mem[(64 * arg1.length) + 160] = 0
    mem[(64 * arg1.length) + 192] = 0
    mem[(64 * arg1.length) + 224] = 0
    mem[(64 * arg1.length) + 256] = 0
    mem[(64 * arg1.length) + 288] = 0
    mem[arg1.length] = (64 * arg1.length) + 160
    s = arg1.length
    idx = arg1 + (32 * arg1.length) + 36
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(64 * arg1.length) + 160] = 0
        mem[(64 * arg1.length) + 192] = 0
        mem[(64 * arg1.length) + 224] = 0
        mem[(64 * arg1.length) + 256] = 0
        mem[(64 * arg1.length) + 288] = 0
        mem[s + 32] = (64 * arg1.length) + 160
        s = s + 32
        idx = idx - 1
        continue 
    _171 = mem[96]
    idx = 0
    while idx < _171:
        require idx < mem[96]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _177 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _179 = mem[_177]
        require mem[_177] == mem[_177 + 18 len 14]
        _183 = mem[_177 + 32]
        require mem[_177 + 32] == mem[_177 + 50 len 14]
        _185 = mem[_177 + 64]
        require mem[_177 + 64] == mem[_177 + 92 len 4]
        _188 = mem[64]
        mem[64] = mem[64] + 160
        require idx < mem[96]
        mem[_188] = mem[(32 * idx) + 140 len 20]
        mem[_188 + 32] = Mask(112, 0, _179)
        mem[_188 + 64] = Mask(112, 0, _183)
        mem[_188 + 96] = block.number
        mem[_188 + 128] = uint32(_185)
        require idx < mem[(32 * arg1.length) + 128]
        mem[(32 * idx) + (32 * arg1.length) + 160] = _188
        _171 = mem[96]
        idx = idx + 1
        continue 
    _173 = mem[64]
    mem[mem[64]] = 32
    _178 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
    idx = 0
    s = (32 * arg1.length) + 160
    t = mem[64] + 64
    while idx < _178:
        _193 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_193 + 50 len 14]
        mem[t + 64] = mem[_193 + 82 len 14]
        mem[t + 96] = mem[_193 + 96]
        mem[t + 128] = mem[_193 + 156 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _173 + (160 * _178) + -mem[64] + 64
}

function getBalances(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 <= test266151307() and (32 * arg2.length) + 128 >= 96
    mem[96] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = 128
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2.length <= test266151307()
    mem[(32 * arg2.length) + 128] = arg2.length
    mem[64] = (64 * arg2.length) + 160
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require idx < mem[96]
            if mem[(32 * idx) + 140 len 20] == stor0:
                _111 = mem[64]
                mem[64] = mem[64] + 96
                require idx < mem[96]
                mem[_111] = mem[(32 * idx) + 140 len 20]
                mem[_111 + 32] = eth.balance(arg1)
                mem[_111 + 64] = block.number
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = _111
            else:
                _109 = mem[64]
                mem[64] = mem[64] + 96
                require idx < mem[96]
                mem[_109] = mem[(32 * idx) + 140 len 20]
                require idx < mem[96]
                _118 = mem[(32 * idx) + 128]
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(_118))
                staticcall address(_118).0x70a08231 with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _139 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_139] == mem[_139]
                mem[_109 + 32] = mem[_139]
                mem[_109 + 64] = block.number
                require idx < mem[(32 * arg2.length) + 128]
                mem[(32 * idx) + (32 * arg2.length) + 160] = _109
            idx = idx + 1
            continue 
        _107 = mem[64]
        mem[mem[64]] = 32
        _117 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
        idx = 0
        s = (32 * arg2.length) + 160
        t = mem[64] + 64
        while idx < _117:
            _154 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_154 + 32]
            mem[t + 64] = mem[_154 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _107 + (96 * _117) + -mem[64] + 64
    mem[64] = (64 * arg2.length) + 256
    mem[(64 * arg2.length) + 160] = 0
    mem[(64 * arg2.length) + 192] = 0
    mem[(64 * arg2.length) + 224] = 0
    mem[arg2.length] = (64 * arg2.length) + 160
    s = arg2.length
    idx = arg2 + (32 * arg2.length) + 36
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(64 * arg2.length) + 160] = 0
        mem[(64 * arg2.length) + 192] = 0
        mem[(64 * arg2.length) + 224] = 0
        mem[s + 32] = (64 * arg2.length) + 160
        s = s + 32
        idx = idx - 1
        continue 
    _183 = mem[96]
    idx = 0
    while idx < _183:
        require idx < mem[96]
        if mem[(32 * idx) + 140 len 20] == stor0:
            _189 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[96]
            mem[_189] = mem[(32 * idx) + 140 len 20]
            mem[_189 + 32] = eth.balance(arg1)
            mem[_189 + 64] = block.number
            require idx < mem[(32 * arg2.length) + 128]
            mem[(32 * idx) + (32 * arg2.length) + 160] = _189
        else:
            _187 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[96]
            mem[_187] = mem[(32 * idx) + 140 len 20]
            require idx < mem[96]
            _196 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = arg1
            require ext_code.size(address(_196))
            staticcall address(_196).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _202 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_202] == mem[_202]
            mem[_187 + 32] = mem[_202]
            mem[_187 + 64] = block.number
            require idx < mem[(32 * arg2.length) + 128]
            mem[(32 * idx) + (32 * arg2.length) + 160] = _187
        _183 = mem[96]
        idx = idx + 1
        continue 
    _185 = mem[64]
    mem[mem[64]] = 32
    _195 = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
    idx = 0
    s = (32 * arg2.length) + 160
    t = mem[64] + 64
    while idx < _195:
        _207 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_207 + 32]
        mem[t + 64] = mem[_207 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _185 + (96 * _195) + -mem[64] + 64
}



}
