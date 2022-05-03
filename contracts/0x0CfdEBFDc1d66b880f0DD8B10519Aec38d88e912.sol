contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function bk_eth(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function bk(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner'
    require ext_code.size(arg2)
    call arg2.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'n'
    return bool(ext_call.return_data[0])
}

function mulEth(uint256 arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 <= test266151307() and (32 * arg2.length) + 128 >= 96
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
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner'
    idx = 0
    while uint32(idx) < arg2.length:
        require uint32(idx) < arg2.length
        call mem[(32 * uint32(idx)) + 140 len 20] with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function approve(address[] arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[64] = (32 * arg1.length) + 128
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
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner'
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _22 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = -1
        require ext_code.size(address(_22))
        call address(_22).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_25] == bool(mem[_25])
        idx = idx + 1
        continue 
}

function getReserves(address[] arg1) {
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
            _95 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_95] == mem[_95 + 18 len 14]
            _109 = mem[_95 + 32]
            require mem[_95 + 32] == mem[_95 + 50 len 14]
            _113 = mem[_95 + 64]
            require mem[_95 + 64] == mem[_95 + 92 len 4]
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160]] = mem[_95 + 18 len 14]
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160] + 32] = Mask(112, 0, _109)
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160] + 64] = uint32(_113)
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _96 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = (32 * arg1.length) + 160
        t = mem[64] + 64
        while idx < _96:
            u = 0
            v = mem[s]
            w = t
            while u < 3:
                mem[w] = mem[v + 18 len 14]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
    else:
        mem[64] = (64 * arg1.length) + 256
        mem[(64 * arg1.length) + 160 len 96] = call.data[calldata.size len 96]
        mem[var28001] = (64 * arg1.length) + 160
        s = var28001
        idx = var28002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(64 * arg1.length) + 160 len 96] = call.data[calldata.size len 96]
            mem[s + 32] = (64 * arg1.length) + 160
            s = s + 32
            idx = idx - 1
            continue 
        _151 = mem[96]
        idx = 0
        while idx < _151:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _159 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_159] == mem[_159 + 18 len 14]
            _165 = mem[_159 + 32]
            require mem[_159 + 32] == mem[_159 + 50 len 14]
            _166 = mem[_159 + 64]
            require mem[_159 + 64] == mem[_159 + 92 len 4]
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160]] = mem[_159 + 18 len 14]
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160] + 32] = Mask(112, 0, _165)
            require idx < mem[(32 * arg1.length) + 128]
            mem[mem[(32 * idx) + (32 * arg1.length) + 160] + 64] = uint32(_166)
            _151 = mem[96]
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _160 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = (32 * arg1.length) + 160
        t = mem[64] + 64
        while idx < _160:
            u = 0
            v = mem[s]
            w = t
            while u < 3:
                mem[w] = mem[v + 18 len 14]
                u = u + 1
                v = v + 32
                w = w + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function ps(uint256[] arg1, address[] arg2) {
    require calldata.size - 4 >= 64
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
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307() and (32 * arg2.length) + 160 >= 128
    mem[(32 * arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner'
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    mem[64] = (64 * arg1.length) + (32 * arg2.length) + 192
    if not arg1.length:
        require arg1.length - 1 < arg1.length
        require 0 < arg1.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * arg1.length - 1) + 128]
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < arg1.length - 1:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _850 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_850] == mem[_850 + 18 len 14]
            require mem[_850 + 32] == mem[_850 + 50 len 14]
            require mem[_850 + 64] == mem[_850 + 92 len 4]
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_850 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_850 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if not Mask(256, -160, mem[(32 * idx) + 128]):
                            if not mem[_850 + 18 len 14]:
                                if 10000 * mem[_850 + 50 len 14] / 10000 != mem[_850 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_850 + 50 len 14] < 10000 * mem[_850 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 10000 * mem[_850 + 50 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_850 + 50 len 14]
                                        if idx < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            continue 
                            else:
                                if mem[_850 + 18 len 14]:
                                    if 0 / mem[_850 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_850 + 50 len 14] / 10000 != mem[_850 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_850 + 50 len 14] < 10000 * mem[_850 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if 10000 * mem[_850 + 50 len 14]:
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_850 + 50 len 14]
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                continue 
                        else:
                            if Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / Mask(96, 0, mem[(32 * idx) + 128]) >> 160 != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_850 + 18 len 14]:
                                    if 10000 * mem[_850 + 50 len 14] / 10000 != mem[_850 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (10000 * mem[_850 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 10000 * mem[_850 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (10000 * mem[_850 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (10000 * mem[_850 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                continue 
                                else:
                                    if mem[_850 + 18 len 14]:
                                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_850 + 18 len 14] / mem[_850 + 18 len 14] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_850 + 50 len 14] / 10000 != mem[_850 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (10000 * mem[_850 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 10000 * mem[_850 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (10000 * mem[_850 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_850 + 18 len 14] / (10000 * mem[_850 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                                if idx < mem[(32 * arg1.length) + 128]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    continue 
            else:
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_850 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_850 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if not Mask(256, -160, mem[(32 * idx) + 128]):
                            if not mem[_850 + 50 len 14]:
                                if 10000 * mem[_850 + 18 len 14] / 10000 != mem[_850 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_850 + 18 len 14] < 10000 * mem[_850 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 10000 * mem[_850 + 18 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_850 + 18 len 14]
                                        if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                            continue 
                            else:
                                if mem[_850 + 50 len 14]:
                                    if 0 / mem[_850 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_850 + 18 len 14] / 10000 != mem[_850 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_850 + 18 len 14] < 10000 * mem[_850 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if 10000 * mem[_850 + 18 len 14]:
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_850 + 18 len 14]
                                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                continue 
                        else:
                            if Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / Mask(96, 0, mem[(32 * idx) + 128]) >> 160 != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_850 + 50 len 14]:
                                    if 10000 * mem[_850 + 18 len 14] / 10000 != mem[_850 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (10000 * mem[_850 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 10000 * mem[_850 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (10000 * mem[_850 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (10000 * mem[_850 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                continue 
                                else:
                                    if mem[_850 + 50 len 14]:
                                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_850 + 50 len 14] / mem[_850 + 50 len 14] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_850 + 18 len 14] / 10000 != mem[_850 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (10000 * mem[_850 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 10000 * mem[_850 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (10000 * mem[_850 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_850 + 50 len 14] / (10000 * mem[_850 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                                if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                    continue 
            revert
        require arg1.length - 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        if mem[(32 * arg1.length - 1) + (32 * arg1.length) + (32 * arg2.length) + 192] > 0:
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < arg1.length - 1:
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                _1112 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = _1112
                require ext_code.size(address(s))
                call address(s).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1112
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1118 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1118] == bool(mem[_1118])
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                    if idx < mem[96]:
                        _1130 = mem[(32 * idx) + 128]
                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            _1138 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            _1142 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1142 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1142 + 36] = _1138
                            mem[_1142 + 68] = 0
                            mem[_1142 + 100] = this.address
                            mem[_1142 + 132] = 128
                            mem[_1142 + 164] = mem[_1142]
                            s = 0
                            while s < mem[_1142]:
                                mem[_1142 + s + 196] = mem[_1142 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1142]) > mem[_1142]:
                                mem[_1142 + mem[_1142] + 196] = 0
                            require ext_code.size(address(_1130))
                            call address(_1130).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1138, 0, address(this.address), 128, mem[_1142], mem[_1142 + 196 len ceil32(mem[_1142])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx < mem[(32 * arg1.length) + 128]:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                continue 
                else:
                    if idx < mem[96]:
                        _1132 = mem[(32 * idx) + 128]
                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            _1139 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            _1143 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1143 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1143 + 36] = 0
                            mem[_1143 + 68] = _1139
                            mem[_1143 + 100] = this.address
                            mem[_1143 + 132] = 128
                            mem[_1143 + 164] = mem[_1143]
                            s = 0
                            while s < mem[_1143]:
                                mem[_1143 + s + 196] = mem[_1143 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1143]) > mem[_1143]:
                                mem[_1143 + mem[_1143] + 196] = 0
                            require ext_code.size(address(_1132))
                            call address(_1132).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1139, address(this.address), 128, mem[_1143], mem[_1143 + 196 len ceil32(mem[_1143])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                idx = idx + 1
                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                continue 
                revert
    else:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        require arg1.length - 1 < arg1.length
        require 0 < arg1.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * arg1.length - 1) + 128]
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < arg1.length - 1:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _851 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_851] == mem[_851 + 18 len 14]
            require mem[_851 + 32] == mem[_851 + 50 len 14]
            require mem[_851 + 64] == mem[_851 + 92 len 4]
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_851 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_851 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if not Mask(256, -160, mem[(32 * idx) + 128]):
                            if not mem[_851 + 18 len 14]:
                                if 10000 * mem[_851 + 50 len 14] / 10000 != mem[_851 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_851 + 50 len 14] < 10000 * mem[_851 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 10000 * mem[_851 + 50 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_851 + 50 len 14]
                                        if idx < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            continue 
                            else:
                                if mem[_851 + 18 len 14]:
                                    if 0 / mem[_851 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_851 + 50 len 14] / 10000 != mem[_851 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_851 + 50 len 14] < 10000 * mem[_851 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if 10000 * mem[_851 + 50 len 14]:
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_851 + 50 len 14]
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                continue 
                        else:
                            if Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / Mask(96, 0, mem[(32 * idx) + 128]) >> 160 != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_851 + 18 len 14]:
                                    if 10000 * mem[_851 + 50 len 14] / 10000 != mem[_851 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (10000 * mem[_851 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 10000 * mem[_851 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (10000 * mem[_851 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (10000 * mem[_851 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                continue 
                                else:
                                    if mem[_851 + 18 len 14]:
                                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_851 + 18 len 14] / mem[_851 + 18 len 14] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_851 + 50 len 14] / 10000 != mem[_851 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (10000 * mem[_851 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 10000 * mem[_851 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (10000 * mem[_851 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_851 + 18 len 14] / (10000 * mem[_851 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                                if idx < mem[(32 * arg1.length) + 128]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    continue 
            else:
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_851 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_851 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if not Mask(256, -160, mem[(32 * idx) + 128]):
                            if not mem[_851 + 50 len 14]:
                                if 10000 * mem[_851 + 18 len 14] / 10000 != mem[_851 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_851 + 18 len 14] < 10000 * mem[_851 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 10000 * mem[_851 + 18 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_851 + 18 len 14]
                                        if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                            continue 
                            else:
                                if mem[_851 + 50 len 14]:
                                    if 0 / mem[_851 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_851 + 18 len 14] / 10000 != mem[_851 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_851 + 18 len 14] < 10000 * mem[_851 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if 10000 * mem[_851 + 18 len 14]:
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_851 + 18 len 14]
                                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                continue 
                        else:
                            if Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / Mask(96, 0, mem[(32 * idx) + 128]) >> 160 != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_851 + 50 len 14]:
                                    if 10000 * mem[_851 + 18 len 14] / 10000 != mem[_851 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (10000 * mem[_851 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 10000 * mem[_851 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (10000 * mem[_851 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (10000 * mem[_851 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                continue 
                                else:
                                    if mem[_851 + 50 len 14]:
                                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_851 + 50 len 14] / mem[_851 + 50 len 14] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_851 + 18 len 14] / 10000 != mem[_851 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (10000 * mem[_851 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 10000 * mem[_851 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (10000 * mem[_851 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_851 + 50 len 14] / (10000 * mem[_851 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                                if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                    continue 
            revert
        require arg1.length - 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        if mem[(32 * arg1.length - 1) + (32 * arg1.length) + (32 * arg2.length) + 192] > 0:
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < arg1.length - 1:
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                _1114 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = _1114
                require ext_code.size(address(s))
                call address(s).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1114
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1119 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1119] == bool(mem[_1119])
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                    if idx < mem[96]:
                        _1134 = mem[(32 * idx) + 128]
                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            _1140 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            _1144 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1144 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1144 + 36] = _1140
                            mem[_1144 + 68] = 0
                            mem[_1144 + 100] = this.address
                            mem[_1144 + 132] = 128
                            mem[_1144 + 164] = mem[_1144]
                            s = 0
                            while s < mem[_1144]:
                                mem[_1144 + s + 196] = mem[_1144 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1144]) > mem[_1144]:
                                mem[_1144 + mem[_1144] + 196] = 0
                            require ext_code.size(address(_1134))
                            call address(_1134).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1140, 0, address(this.address), 128, mem[_1144], mem[_1144 + 196 len ceil32(mem[_1144])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx < mem[(32 * arg1.length) + 128]:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                continue 
                else:
                    if idx < mem[96]:
                        _1136 = mem[(32 * idx) + 128]
                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            _1141 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            _1145 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1145 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1145 + 36] = 0
                            mem[_1145 + 68] = _1141
                            mem[_1145 + 100] = this.address
                            mem[_1145 + 132] = 128
                            mem[_1145 + 164] = mem[_1145]
                            s = 0
                            while s < mem[_1145]:
                                mem[_1145 + s + 196] = mem[_1145 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1145]) > mem[_1145]:
                                mem[_1145 + mem[_1145] + 196] = 0
                            require ext_code.size(address(_1136))
                            call address(_1136).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1141, address(this.address), 128, mem[_1145], mem[_1145 + 196 len ceil32(mem[_1145])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                idx = idx + 1
                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                continue 
                revert
}

function pl(uint256[] arg1, address[] arg2) {
    require calldata.size - 4 >= 64
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
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307() and (32 * arg2.length) + 160 >= 128
    mem[(32 * arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    mem[64] = (64 * arg1.length) + (32 * arg2.length) + 192
    if not arg1.length:
        require arg1.length - 1 < arg1.length
        require 0 < arg1.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * arg1.length - 1) + 128]
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < arg1.length - 1:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _921 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_921] == mem[_921 + 18 len 14]
            require mem[_921 + 32] == mem[_921 + 50 len 14]
            require mem[_921 + 64] == mem[_921 + 92 len 4]
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_921 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_921 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if not Mask(256, -160, mem[(32 * idx) + 128]):
                            if not mem[_921 + 18 len 14]:
                                if 10000 * mem[_921 + 50 len 14] / 10000 != mem[_921 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_921 + 50 len 14] < 10000 * mem[_921 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 10000 * mem[_921 + 50 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_921 + 50 len 14]
                                        if idx < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            continue 
                            else:
                                if mem[_921 + 18 len 14]:
                                    if 0 / mem[_921 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_921 + 50 len 14] / 10000 != mem[_921 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_921 + 50 len 14] < 10000 * mem[_921 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if 10000 * mem[_921 + 50 len 14]:
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_921 + 50 len 14]
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                continue 
                        else:
                            if Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / Mask(96, 0, mem[(32 * idx) + 128]) >> 160 != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_921 + 18 len 14]:
                                    if 10000 * mem[_921 + 50 len 14] / 10000 != mem[_921 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (10000 * mem[_921 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 10000 * mem[_921 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (10000 * mem[_921 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (10000 * mem[_921 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                continue 
                                else:
                                    if mem[_921 + 18 len 14]:
                                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_921 + 18 len 14] / mem[_921 + 18 len 14] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_921 + 50 len 14] / 10000 != mem[_921 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (10000 * mem[_921 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 10000 * mem[_921 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (10000 * mem[_921 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_921 + 18 len 14] / (10000 * mem[_921 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                                if idx < mem[(32 * arg1.length) + 128]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    continue 
            else:
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_921 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_921 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if not Mask(256, -160, mem[(32 * idx) + 128]):
                            if not mem[_921 + 50 len 14]:
                                if 10000 * mem[_921 + 18 len 14] / 10000 != mem[_921 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_921 + 18 len 14] < 10000 * mem[_921 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 10000 * mem[_921 + 18 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_921 + 18 len 14]
                                        if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                            continue 
                            else:
                                if mem[_921 + 50 len 14]:
                                    if 0 / mem[_921 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_921 + 18 len 14] / 10000 != mem[_921 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_921 + 18 len 14] < 10000 * mem[_921 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if 10000 * mem[_921 + 18 len 14]:
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_921 + 18 len 14]
                                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                continue 
                        else:
                            if Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / Mask(96, 0, mem[(32 * idx) + 128]) >> 160 != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_921 + 50 len 14]:
                                    if 10000 * mem[_921 + 18 len 14] / 10000 != mem[_921 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (10000 * mem[_921 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 10000 * mem[_921 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (10000 * mem[_921 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (10000 * mem[_921 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                continue 
                                else:
                                    if mem[_921 + 50 len 14]:
                                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_921 + 50 len 14] / mem[_921 + 50 len 14] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_921 + 18 len 14] / 10000 != mem[_921 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (10000 * mem[_921 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 10000 * mem[_921 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (10000 * mem[_921 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_921 + 50 len 14] / (10000 * mem[_921 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                                if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                    continue 
            revert
        require 0 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        require arg1.length - 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        if mem[(32 * arg1.length - 1) + (32 * arg1.length) + (32 * arg2.length) + 192] > mem[(32 * arg1.length) + (32 * arg2.length) + 192]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _930 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _932 = mem[_930]
            require mem[_930] == mem[_930]
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < arg1.length - 1:
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                _1204 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = _1204
                require ext_code.size(address(s))
                call address(s).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1204
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1216 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1216] == bool(mem[_1216])
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                    if idx < mem[96]:
                        _1232 = mem[(32 * idx) + 128]
                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            _1240 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            _1244 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1244 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1244 + 36] = _1240
                            mem[_1244 + 68] = 0
                            mem[_1244 + 100] = this.address
                            mem[_1244 + 132] = 128
                            mem[_1244 + 164] = mem[_1244]
                            s = 0
                            while s < mem[_1244]:
                                mem[_1244 + s + 196] = mem[_1244 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1244]) > mem[_1244]:
                                mem[_1244 + mem[_1244] + 196] = 0
                            require ext_code.size(address(_1232))
                            call address(_1232).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1240, 0, address(this.address), 128, mem[_1244], mem[_1244 + 196 len ceil32(mem[_1244])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx < mem[(32 * arg1.length) + 128]:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                continue 
                else:
                    if idx < mem[96]:
                        _1234 = mem[(32 * idx) + 128]
                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            _1241 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            _1245 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1245 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1245 + 36] = 0
                            mem[_1245 + 68] = _1241
                            mem[_1245 + 100] = this.address
                            mem[_1245 + 132] = 128
                            mem[_1245 + 164] = mem[_1245]
                            s = 0
                            while s < mem[_1245]:
                                mem[_1245 + s + 196] = mem[_1245 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1245]) > mem[_1245]:
                                mem[_1245 + mem[_1245] + 196] = 0
                            require ext_code.size(address(_1234))
                            call address(_1234).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1241, address(this.address), 128, mem[_1245], mem[_1245 + 196 len ceil32(mem[_1245])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                idx = idx + 1
                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                continue 
                revert
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1210 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1210] == mem[_1210]
            if mem[_1210] < _932:
                revert with 0, 'n'
    else:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        require arg1.length - 1 < arg1.length
        require 0 < arg1.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * arg1.length - 1) + 128]
        idx = 0
        s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
        while idx < arg1.length - 1:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _923 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_923] == mem[_923 + 18 len 14]
            require mem[_923 + 32] == mem[_923 + 50 len 14]
            require mem[_923 + 64] == mem[_923 + 92 len 4]
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_923 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_923 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if not Mask(256, -160, mem[(32 * idx) + 128]):
                            if not mem[_923 + 18 len 14]:
                                if 10000 * mem[_923 + 50 len 14] / 10000 != mem[_923 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_923 + 50 len 14] < 10000 * mem[_923 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 10000 * mem[_923 + 50 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_923 + 50 len 14]
                                        if idx < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            continue 
                            else:
                                if mem[_923 + 18 len 14]:
                                    if 0 / mem[_923 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_923 + 50 len 14] / 10000 != mem[_923 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_923 + 50 len 14] < 10000 * mem[_923 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if 10000 * mem[_923 + 50 len 14]:
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_923 + 50 len 14]
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                continue 
                        else:
                            if Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / Mask(96, 0, mem[(32 * idx) + 128]) >> 160 != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_923 + 18 len 14]:
                                    if 10000 * mem[_923 + 50 len 14] / 10000 != mem[_923 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (10000 * mem[_923 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 10000 * mem[_923 + 50 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (10000 * mem[_923 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (10000 * mem[_923 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                            if idx < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                continue 
                                else:
                                    if mem[_923 + 18 len 14]:
                                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_923 + 18 len 14] / mem[_923 + 18 len 14] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_923 + 50 len 14] / 10000 != mem[_923 + 50 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (10000 * mem[_923 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 10000 * mem[_923 + 50 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (10000 * mem[_923 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_923 + 18 len 14] / (10000 * mem[_923 + 50 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                                if idx < mem[(32 * arg1.length) + 128]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                                    continue 
            else:
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_923 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_923 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if not Mask(256, -160, mem[(32 * idx) + 128]):
                            if not mem[_923 + 50 len 14]:
                                if 10000 * mem[_923 + 18 len 14] / 10000 != mem[_923 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_923 + 18 len 14] < 10000 * mem[_923 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 10000 * mem[_923 + 18 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_923 + 18 len 14]
                                        if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                            continue 
                            else:
                                if mem[_923 + 50 len 14]:
                                    if 0 / mem[_923 + 50 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_923 + 18 len 14] / 10000 != mem[_923 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if 10000 * mem[_923 + 18 len 14] < 10000 * mem[_923 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if 10000 * mem[_923 + 18 len 14]:
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_923 + 18 len 14]
                                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                continue 
                        else:
                            if Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 / Mask(96, 0, mem[(32 * idx) + 128]) >> 160 != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if not mem[_923 + 50 len 14]:
                                    if 10000 * mem[_923 + 18 len 14] / 10000 != mem[_923 + 18 len 14]:
                                        revert with 0, 'ds-math-mul-overflow'
                                    if (10000 * mem[_923 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 10000 * mem[_923 + 18 len 14]:
                                        revert with 0, 'ds-math-add-overflow'
                                    if (10000 * mem[_923 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                            mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / (10000 * mem[_923 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                idx = idx + 1
                                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                continue 
                                else:
                                    if mem[_923 + 50 len 14]:
                                        if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_923 + 50 len 14] / mem[_923 + 50 len 14] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if 10000 * mem[_923 + 18 len 14] / 10000 != mem[_923 + 18 len 14]:
                                            revert with 0, 'ds-math-mul-overflow'
                                        if (10000 * mem[_923 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160) < 10000 * mem[_923 + 18 len 14]:
                                            revert with 0, 'ds-math-add-overflow'
                                        if (10000 * mem[_923 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160):
                                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                                mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160 * mem[_923 + 50 len 14] / (10000 * mem[_923 + 18 len 14]) + (mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] * Mask(96, 0, mem[(32 * idx) + 128]) >> 160)
                                                if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                                    idx = idx + 1
                                                    s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                                    continue 
            revert
        require 0 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        require arg1.length - 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        if mem[(32 * arg1.length - 1) + (32 * arg1.length) + (32 * arg2.length) + 192] > mem[(32 * arg1.length) + (32 * arg2.length) + 192]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _931 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _934 = mem[_931]
            require mem[_931] == mem[_931]
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < arg1.length - 1:
                require idx < mem[96]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                _1206 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                mem[mem[64] + 36] = _1206
                require ext_code.size(address(s))
                call address(s).transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1206
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1217 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1217] == bool(mem[_1217])
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                    if idx < mem[96]:
                        _1236 = mem[(32 * idx) + 128]
                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            _1242 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            _1246 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1246 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1246 + 36] = _1242
                            mem[_1246 + 68] = 0
                            mem[_1246 + 100] = this.address
                            mem[_1246 + 132] = 128
                            mem[_1246 + 164] = mem[_1246]
                            s = 0
                            while s < mem[_1246]:
                                mem[_1246 + s + 196] = mem[_1246 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1246]) > mem[_1246]:
                                mem[_1246 + mem[_1246] + 196] = 0
                            require ext_code.size(address(_1236))
                            call address(_1236).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _1242, 0, address(this.address), 128, mem[_1246], mem[_1246 + 196 len ceil32(mem[_1246])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx < mem[(32 * arg1.length) + 128]:
                                idx = idx + 1
                                s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                continue 
                else:
                    if idx < mem[96]:
                        _1238 = mem[(32 * idx) + 128]
                        if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                            _1243 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                            _1247 = mem[64]
                            mem[64] = mem[64] + 32
                            mem[_1247 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_1247 + 36] = 0
                            mem[_1247 + 68] = _1243
                            mem[_1247 + 100] = this.address
                            mem[_1247 + 132] = 128
                            mem[_1247 + 164] = mem[_1247]
                            s = 0
                            while s < mem[_1247]:
                                mem[_1247 + s + 196] = mem[_1247 + s + 32]
                                s = s + 32
                                continue 
                            if ceil32(mem[_1247]) > mem[_1247]:
                                mem[_1247 + mem[_1247] + 196] = 0
                            require ext_code.size(address(_1238))
                            call address(_1238).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _1243, address(this.address), 128, mem[_1247], mem[_1247 + 196 len ceil32(mem[_1247])]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                idx = idx + 1
                                s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                continue 
                revert
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1211 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1211] == mem[_1211]
            if mem[_1211] < _934:
                revert with 0, 'n'
}



}
