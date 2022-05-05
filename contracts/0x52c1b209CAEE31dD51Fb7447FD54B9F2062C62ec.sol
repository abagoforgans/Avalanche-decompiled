contract main {




// =====================  Runtime code  =====================


address stor0;
array of address stor1;

function _fallback() payable {
    revert
}

function updateRouter(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'caller is not the owner'
    require arg1 < 3
    stor1[arg1] = arg2
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
    call arg2.0xa9059cbb with:
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
                call address(s).0xa9059cbb with:
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
                call address(s).0xa9059cbb with:
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
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
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
                call address(s).0xa9059cbb with:
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
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
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
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
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
                call address(s).0xa9059cbb with:
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
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
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

function fs(uint256[] arg1, address[] arg2) {
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
            _1037 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1037] == mem[_1037 + 18 len 14]
            require mem[_1037 + 32] == mem[_1037 + 50 len 14]
            require mem[_1037 + 64] == mem[_1037 + 92 len 4]
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_1037 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_1037 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if not mem[_1037 + 18 len 14]:
                            if 10000 * mem[_1037 + 50 len 14] / 10000 != mem[_1037 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_1037 + 50 len 14] < 10000 * mem[_1037 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if 10000 * mem[_1037 + 50 len 14]:
                                if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_1037 + 50 len 14]
                                    if idx < mem[(32 * arg1.length) + 128]:
                                        idx = idx + 1
                                        s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        continue 
                        else:
                            if mem[_1037 + 18 len 14]:
                                if 0 / mem[_1037 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1037 + 50 len 14] / 10000 != mem[_1037 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1037 + 50 len 14] < 10000 * mem[_1037 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 10000 * mem[_1037 + 50 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_1037 + 50 len 14]
                                        if idx < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            continue 
            else:
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_1037 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_1037 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if not mem[_1037 + 50 len 14]:
                            if 10000 * mem[_1037 + 18 len 14] / 10000 != mem[_1037 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_1037 + 18 len 14] < 10000 * mem[_1037 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if 10000 * mem[_1037 + 18 len 14]:
                                if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_1037 + 18 len 14]
                                    if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                        idx = idx + 1
                                        s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                        continue 
                        else:
                            if mem[_1037 + 50 len 14]:
                                if 0 / mem[_1037 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1037 + 18 len 14] / 10000 != mem[_1037 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1037 + 18 len 14] < 10000 * mem[_1037 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 10000 * mem[_1037 + 18 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_1037 + 18 len 14]
                                        if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                            continue 
            revert
        require arg1.length - 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        if mem[(32 * arg1.length - 1) + (32 * arg1.length) + (32 * arg2.length) + 192] > 0:
            _1036 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_1036 + 32 len 64] = call.data[calldata.size len 64]
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < arg1.length - 1:
                require idx < mem[96]
                if Mask(76, 0, mem[(32 * idx) + 128]) >> 180 <= 0:
                    require idx < mem[96]
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _1368 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64] + 36] = _1368
                    require ext_code.size(address(s))
                    call address(s).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1368
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1434 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1434] == bool(mem[_1434])
                    require idx < mem[(32 * arg1.length) + 128]
                    if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                        if idx < mem[96]:
                            _1458 = mem[(32 * idx) + 128]
                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                _1466 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                                _1470 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1470 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1470 + 36] = _1466
                                mem[_1470 + 68] = 0
                                mem[_1470 + 100] = this.address
                                mem[_1470 + 132] = 128
                                mem[_1470 + 164] = mem[_1470]
                                s = 0
                                while s < mem[_1470]:
                                    mem[_1470 + s + 196] = mem[_1470 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1470]) > mem[_1470]:
                                    mem[_1470 + mem[_1470] + 196] = 0
                                require ext_code.size(address(_1458))
                                call address(_1458).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1466, 0, address(this.address), 128, mem[_1470], mem[_1470 + 196 len ceil32(mem[_1470])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[(32 * arg1.length) + 128]:
                                    idx = idx + 1
                                    s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    continue 
                    else:
                        if idx < mem[96]:
                            _1460 = mem[(32 * idx) + 128]
                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                _1467 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                                _1471 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1471 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1471 + 36] = 0
                                mem[_1471 + 68] = _1467
                                mem[_1471 + 100] = this.address
                                mem[_1471 + 132] = 128
                                mem[_1471 + 164] = mem[_1471]
                                s = 0
                                while s < mem[_1471]:
                                    mem[_1471 + s + 196] = mem[_1471 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1471]) > mem[_1471]:
                                    mem[_1471 + mem[_1471] + 196] = 0
                                require ext_code.size(address(_1460))
                                call address(_1460).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1467, address(this.address), 128, mem[_1471], mem[_1471 + 196 len ceil32(mem[_1471])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                    idx = idx + 1
                                    s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                    continue 
                    revert
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                    require idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]
                    require 0 < mem[_1036]
                    mem[_1036 + 32] = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 172 len 20]
                    require idx < mem[(32 * arg1.length) + 128]
                    require 1 < mem[_1036]
                    mem[_1036 + 64] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                    require idx < mem[(32 * arg1.length) + 128]
                    _1400 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    require idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]
                    _1408 = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                    require idx < mem[96]
                    require Mask(76, 0, mem[(32 * idx) + 128]) >> 180 < 3
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _1424 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64] + 4] = stor1[Mask(76, 0, mem[(32 * idx) + 128]) >> 180]
                    mem[mem[64] + 36] = _1424
                    require ext_code.size(address(_1408))
                    call address(_1408).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1424
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1442 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1442] == bool(mem[_1442])
                    require idx < mem[96]
                    _1482 = mem[(32 * idx) + 128]
                    require Mask(76, 0, mem[(32 * idx) + 128]) >> 180 < 3
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _1490 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    _1491 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1490
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1498 = mem[_1036]
                    mem[mem[64] + 164] = mem[_1036]
                    s = 0
                    t = _1036 + 32
                    u = mem[64] + 196
                    while s < _1498:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1491 + 100] = this.address
                    mem[_1491 + 132] = 1915901246
                    require ext_code.size(stor1[Mask(76, 0, _1482) >> 180])
                    call stor1[Mask(76, 0, _1482) >> 180].mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1491 + (32 * _1498) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1598 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1602 = mem[_1598]
                    require mem[_1598] <= test266151307()
                    require _1598 + mem[_1598] + 31 < _1598 + return_data.size
                    _1606 = mem[_1598 + mem[_1598]]
                    require mem[_1598 + mem[_1598]] <= test266151307()
                    require _1598 + ceil32(return_data.size) + (32 * mem[_1598 + mem[_1598]]) + 32 <= test266151307() and (32 * mem[_1598 + mem[_1598]]) + 32 >= 0
                    mem[64] = _1598 + ceil32(return_data.size) + (32 * mem[_1598 + mem[_1598]]) + 32
                    mem[_1598 + ceil32(return_data.size)] = _1606
                    require _1602 + (32 * _1606) + 32 <= return_data.size
                    s = 0
                    t = _1598 + _1602 + 32
                    u = _1598 + ceil32(return_data.size) + 32
                    while s < _1606:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    idx = idx + 1
                    s = _1400
                    continue 
                require idx < mem[(32 * arg1.length) + 128]
                require 0 < mem[_1036]
                mem[_1036 + 32] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                require idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]
                require 1 < mem[_1036]
                mem[_1036 + 64] = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 172 len 20]
                require idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]
                _1402 = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                require idx < mem[(32 * arg1.length) + 128]
                _1410 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx < mem[96]
                require Mask(76, 0, mem[(32 * idx) + 128]) >> 180 < 3
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                _1426 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                mem[mem[64] + 4] = stor1[Mask(76, 0, mem[(32 * idx) + 128]) >> 180]
                mem[mem[64] + 36] = _1426
                require ext_code.size(address(_1410))
                call address(_1410).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1426
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1443 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1443] == bool(mem[_1443])
                require idx < mem[96]
                _1483 = mem[(32 * idx) + 128]
                require Mask(76, 0, mem[(32 * idx) + 128]) >> 180 < 3
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                _1492 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                _1493 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1492
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1499 = mem[_1036]
                mem[mem[64] + 164] = mem[_1036]
                s = 0
                t = _1036 + 32
                u = mem[64] + 196
                while s < _1499:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1493 + 100] = this.address
                mem[_1493 + 132] = 1915901246
                require ext_code.size(stor1[Mask(76, 0, _1483) >> 180])
                call stor1[Mask(76, 0, _1483) >> 180].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1493 + (32 * _1499) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1599 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1603 = mem[_1599]
                require mem[_1599] <= test266151307()
                require _1599 + mem[_1599] + 31 < _1599 + return_data.size
                _1607 = mem[_1599 + mem[_1599]]
                require mem[_1599 + mem[_1599]] <= test266151307()
                require _1599 + ceil32(return_data.size) + (32 * mem[_1599 + mem[_1599]]) + 32 <= test266151307() and (32 * mem[_1599 + mem[_1599]]) + 32 >= 0
                mem[64] = _1599 + ceil32(return_data.size) + (32 * mem[_1599 + mem[_1599]]) + 32
                mem[_1599 + ceil32(return_data.size)] = _1607
                require _1603 + (32 * _1607) + 32 <= return_data.size
                s = 0
                t = _1599 + _1603 + 32
                u = _1599 + ceil32(return_data.size) + 32
                while s < _1607:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                idx = idx + 1
                s = _1402
                continue 
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
            _1039 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1039] == mem[_1039 + 18 len 14]
            require mem[_1039 + 32] == mem[_1039 + 50 len 14]
            require mem[_1039 + 64] == mem[_1039 + 92 len 4]
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_1039 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_1039 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if not mem[_1039 + 18 len 14]:
                            if 10000 * mem[_1039 + 50 len 14] / 10000 != mem[_1039 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_1039 + 50 len 14] < 10000 * mem[_1039 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if 10000 * mem[_1039 + 50 len 14]:
                                if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_1039 + 50 len 14]
                                    if idx < mem[(32 * arg1.length) + 128]:
                                        idx = idx + 1
                                        s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        continue 
                        else:
                            if mem[_1039 + 18 len 14]:
                                if 0 / mem[_1039 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1039 + 50 len 14] / 10000 != mem[_1039 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1039 + 50 len 14] < 10000 * mem[_1039 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 10000 * mem[_1039 + 50 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_1039 + 50 len 14]
                                        if idx < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            continue 
            else:
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_1039 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_1039 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if not mem[_1039 + 50 len 14]:
                            if 10000 * mem[_1039 + 18 len 14] / 10000 != mem[_1039 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_1039 + 18 len 14] < 10000 * mem[_1039 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if 10000 * mem[_1039 + 18 len 14]:
                                if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_1039 + 18 len 14]
                                    if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                        idx = idx + 1
                                        s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                        continue 
                        else:
                            if mem[_1039 + 50 len 14]:
                                if 0 / mem[_1039 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1039 + 18 len 14] / 10000 != mem[_1039 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1039 + 18 len 14] < 10000 * mem[_1039 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 10000 * mem[_1039 + 18 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_1039 + 18 len 14]
                                        if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                            continue 
            revert
        require arg1.length - 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        if mem[(32 * arg1.length - 1) + (32 * arg1.length) + (32 * arg2.length) + 192] > 0:
            _1038 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_1038 + 32 len 64] = call.data[calldata.size len 64]
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < arg1.length - 1:
                require idx < mem[96]
                if Mask(76, 0, mem[(32 * idx) + 128]) >> 180 <= 0:
                    require idx < mem[96]
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _1372 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64] + 36] = _1372
                    require ext_code.size(address(s))
                    call address(s).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1372
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1435 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1435] == bool(mem[_1435])
                    require idx < mem[(32 * arg1.length) + 128]
                    if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                        if idx < mem[96]:
                            _1462 = mem[(32 * idx) + 128]
                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                _1468 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                                _1472 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1472 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1472 + 36] = _1468
                                mem[_1472 + 68] = 0
                                mem[_1472 + 100] = this.address
                                mem[_1472 + 132] = 128
                                mem[_1472 + 164] = mem[_1472]
                                s = 0
                                while s < mem[_1472]:
                                    mem[_1472 + s + 196] = mem[_1472 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1472]) > mem[_1472]:
                                    mem[_1472 + mem[_1472] + 196] = 0
                                require ext_code.size(address(_1462))
                                call address(_1462).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1468, 0, address(this.address), 128, mem[_1472], mem[_1472 + 196 len ceil32(mem[_1472])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[(32 * arg1.length) + 128]:
                                    idx = idx + 1
                                    s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    continue 
                    else:
                        if idx < mem[96]:
                            _1464 = mem[(32 * idx) + 128]
                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                _1469 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                                _1473 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1473 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1473 + 36] = 0
                                mem[_1473 + 68] = _1469
                                mem[_1473 + 100] = this.address
                                mem[_1473 + 132] = 128
                                mem[_1473 + 164] = mem[_1473]
                                s = 0
                                while s < mem[_1473]:
                                    mem[_1473 + s + 196] = mem[_1473 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1473]) > mem[_1473]:
                                    mem[_1473 + mem[_1473] + 196] = 0
                                require ext_code.size(address(_1464))
                                call address(_1464).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1469, address(this.address), 128, mem[_1473], mem[_1473 + 196 len ceil32(mem[_1473])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                    idx = idx + 1
                                    s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                    continue 
                    revert
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                    require idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]
                    require 0 < mem[_1038]
                    mem[_1038 + 32] = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 172 len 20]
                    require idx < mem[(32 * arg1.length) + 128]
                    require 1 < mem[_1038]
                    mem[_1038 + 64] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                    require idx < mem[(32 * arg1.length) + 128]
                    _1404 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    require idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]
                    _1412 = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                    require idx < mem[96]
                    require Mask(76, 0, mem[(32 * idx) + 128]) >> 180 < 3
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _1428 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64] + 4] = stor1[Mask(76, 0, mem[(32 * idx) + 128]) >> 180]
                    mem[mem[64] + 36] = _1428
                    require ext_code.size(address(_1412))
                    call address(_1412).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1428
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1444 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1444] == bool(mem[_1444])
                    require idx < mem[96]
                    _1484 = mem[(32 * idx) + 128]
                    require Mask(76, 0, mem[(32 * idx) + 128]) >> 180 < 3
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _1494 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    _1495 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1494
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1500 = mem[_1038]
                    mem[mem[64] + 164] = mem[_1038]
                    s = 0
                    t = _1038 + 32
                    u = mem[64] + 196
                    while s < _1500:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1495 + 100] = this.address
                    mem[_1495 + 132] = 1915901246
                    require ext_code.size(stor1[Mask(76, 0, _1484) >> 180])
                    call stor1[Mask(76, 0, _1484) >> 180].mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1495 + (32 * _1500) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1600 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1604 = mem[_1600]
                    require mem[_1600] <= test266151307()
                    require _1600 + mem[_1600] + 31 < _1600 + return_data.size
                    _1608 = mem[_1600 + mem[_1600]]
                    require mem[_1600 + mem[_1600]] <= test266151307()
                    require _1600 + ceil32(return_data.size) + (32 * mem[_1600 + mem[_1600]]) + 32 <= test266151307() and (32 * mem[_1600 + mem[_1600]]) + 32 >= 0
                    mem[64] = _1600 + ceil32(return_data.size) + (32 * mem[_1600 + mem[_1600]]) + 32
                    mem[_1600 + ceil32(return_data.size)] = _1608
                    require _1604 + (32 * _1608) + 32 <= return_data.size
                    s = 0
                    t = _1600 + _1604 + 32
                    u = _1600 + ceil32(return_data.size) + 32
                    while s < _1608:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    idx = idx + 1
                    s = _1404
                    continue 
                require idx < mem[(32 * arg1.length) + 128]
                require 0 < mem[_1038]
                mem[_1038 + 32] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                require idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]
                require 1 < mem[_1038]
                mem[_1038 + 64] = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 172 len 20]
                require idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]
                _1406 = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                require idx < mem[(32 * arg1.length) + 128]
                _1414 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx < mem[96]
                require Mask(76, 0, mem[(32 * idx) + 128]) >> 180 < 3
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                _1430 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                mem[mem[64] + 4] = stor1[Mask(76, 0, mem[(32 * idx) + 128]) >> 180]
                mem[mem[64] + 36] = _1430
                require ext_code.size(address(_1414))
                call address(_1414).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1430
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1445 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1445] == bool(mem[_1445])
                require idx < mem[96]
                _1485 = mem[(32 * idx) + 128]
                require Mask(76, 0, mem[(32 * idx) + 128]) >> 180 < 3
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                _1496 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                _1497 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1496
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1501 = mem[_1038]
                mem[mem[64] + 164] = mem[_1038]
                s = 0
                t = _1038 + 32
                u = mem[64] + 196
                while s < _1501:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1497 + 100] = this.address
                mem[_1497 + 132] = 1915901246
                require ext_code.size(stor1[Mask(76, 0, _1485) >> 180])
                call stor1[Mask(76, 0, _1485) >> 180].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1497 + (32 * _1501) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1601 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1605 = mem[_1601]
                require mem[_1601] <= test266151307()
                require _1601 + mem[_1601] + 31 < _1601 + return_data.size
                _1609 = mem[_1601 + mem[_1601]]
                require mem[_1601 + mem[_1601]] <= test266151307()
                require _1601 + ceil32(return_data.size) + (32 * mem[_1601 + mem[_1601]]) + 32 <= test266151307() and (32 * mem[_1601 + mem[_1601]]) + 32 >= 0
                mem[64] = _1601 + ceil32(return_data.size) + (32 * mem[_1601 + mem[_1601]]) + 32
                mem[_1601 + ceil32(return_data.size)] = _1609
                require _1605 + (32 * _1609) + 32 <= return_data.size
                s = 0
                t = _1601 + _1605 + 32
                u = _1601 + ceil32(return_data.size) + 32
                while s < _1609:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                idx = idx + 1
                s = _1406
                continue 
}

function fl(uint256[] arg1, address[] arg2) {
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
            _1106 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1106] == mem[_1106 + 18 len 14]
            require mem[_1106 + 32] == mem[_1106 + 50 len 14]
            require mem[_1106 + 64] == mem[_1106 + 92 len 4]
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_1106 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_1106 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if not mem[_1106 + 18 len 14]:
                            if 10000 * mem[_1106 + 50 len 14] / 10000 != mem[_1106 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_1106 + 50 len 14] < 10000 * mem[_1106 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if 10000 * mem[_1106 + 50 len 14]:
                                if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_1106 + 50 len 14]
                                    if idx < mem[(32 * arg1.length) + 128]:
                                        idx = idx + 1
                                        s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        continue 
                        else:
                            if mem[_1106 + 18 len 14]:
                                if 0 / mem[_1106 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1106 + 50 len 14] / 10000 != mem[_1106 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1106 + 50 len 14] < 10000 * mem[_1106 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 10000 * mem[_1106 + 50 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_1106 + 50 len 14]
                                        if idx < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            continue 
            else:
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_1106 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_1106 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if not mem[_1106 + 50 len 14]:
                            if 10000 * mem[_1106 + 18 len 14] / 10000 != mem[_1106 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_1106 + 18 len 14] < 10000 * mem[_1106 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if 10000 * mem[_1106 + 18 len 14]:
                                if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_1106 + 18 len 14]
                                    if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                        idx = idx + 1
                                        s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                        continue 
                        else:
                            if mem[_1106 + 50 len 14]:
                                if 0 / mem[_1106 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1106 + 18 len 14] / 10000 != mem[_1106 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1106 + 18 len 14] < 10000 * mem[_1106 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 10000 * mem[_1106 + 18 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_1106 + 18 len 14]
                                        if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                            continue 
            revert
        require 0 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        require arg1.length - 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        if mem[(32 * arg1.length - 1) + (32 * arg1.length) + (32 * arg2.length) + 192] > mem[(32 * arg1.length) + (32 * arg2.length) + 192]:
            _1108 = mem[64]
            mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
            mem[mem[64] + 100] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64] + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < arg1.length - 1:
                require idx < mem[96]
                if Mask(76, 0, mem[(32 * idx) + 128]) >> 180 <= 0:
                    require idx < mem[96]
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _1460 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64] + 36] = _1460
                    require ext_code.size(address(s))
                    call address(s).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1460
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1532 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1532] == bool(mem[_1532])
                    require idx < mem[(32 * arg1.length) + 128]
                    if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                        if idx < mem[96]:
                            _1560 = mem[(32 * idx) + 128]
                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                _1568 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                                _1572 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1572 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1572 + 36] = _1568
                                mem[_1572 + 68] = 0
                                mem[_1572 + 100] = this.address
                                mem[_1572 + 132] = 128
                                mem[_1572 + 164] = mem[_1572]
                                s = 0
                                while s < mem[_1572]:
                                    mem[_1572 + s + 196] = mem[_1572 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1572]) > mem[_1572]:
                                    mem[_1572 + mem[_1572] + 196] = 0
                                require ext_code.size(address(_1560))
                                call address(_1560).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1568, 0, address(this.address), 128, mem[_1572], mem[_1572 + 196 len ceil32(mem[_1572])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[(32 * arg1.length) + 128]:
                                    idx = idx + 1
                                    s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    continue 
                    else:
                        if idx < mem[96]:
                            _1562 = mem[(32 * idx) + 128]
                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                _1569 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                                _1573 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1573 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1573 + 36] = 0
                                mem[_1573 + 68] = _1569
                                mem[_1573 + 100] = this.address
                                mem[_1573 + 132] = 128
                                mem[_1573 + 164] = mem[_1573]
                                s = 0
                                while s < mem[_1573]:
                                    mem[_1573 + s + 196] = mem[_1573 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1573]) > mem[_1573]:
                                    mem[_1573 + mem[_1573] + 196] = 0
                                require ext_code.size(address(_1562))
                                call address(_1562).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1569, address(this.address), 128, mem[_1573], mem[_1573 + 196 len ceil32(mem[_1573])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                    idx = idx + 1
                                    s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                    continue 
                    revert
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                    require idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]
                    require 0 < mem[_1108]
                    mem[_1108 + 32] = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 172 len 20]
                    require idx < mem[(32 * arg1.length) + 128]
                    require 1 < mem[_1108]
                    mem[_1108 + 64] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                    require idx < mem[(32 * arg1.length) + 128]
                    _1492 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    require idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]
                    _1500 = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                    require idx < mem[96]
                    require Mask(76, 0, mem[(32 * idx) + 128]) >> 180 < 3
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _1518 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64] + 4] = stor1[Mask(76, 0, mem[(32 * idx) + 128]) >> 180]
                    mem[mem[64] + 36] = _1518
                    require ext_code.size(address(_1500))
                    call address(_1500).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1518
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1542 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1542] == bool(mem[_1542])
                    require idx < mem[96]
                    _1584 = mem[(32 * idx) + 128]
                    require Mask(76, 0, mem[(32 * idx) + 128]) >> 180 < 3
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _1592 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    _1593 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1592
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1600 = mem[_1108]
                    mem[mem[64] + 164] = mem[_1108]
                    s = 0
                    t = _1108 + 32
                    u = mem[64] + 196
                    while s < _1600:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1593 + 100] = this.address
                    mem[_1593 + 132] = 1915901246
                    require ext_code.size(stor1[Mask(76, 0, _1584) >> 180])
                    call stor1[Mask(76, 0, _1584) >> 180].mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1593 + (32 * _1600) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1700 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1704 = mem[_1700]
                    require mem[_1700] <= test266151307()
                    require _1700 + mem[_1700] + 31 < _1700 + return_data.size
                    _1708 = mem[_1700 + mem[_1700]]
                    require mem[_1700 + mem[_1700]] <= test266151307()
                    require _1700 + ceil32(return_data.size) + (32 * mem[_1700 + mem[_1700]]) + 32 <= test266151307() and (32 * mem[_1700 + mem[_1700]]) + 32 >= 0
                    mem[64] = _1700 + ceil32(return_data.size) + (32 * mem[_1700 + mem[_1700]]) + 32
                    mem[_1700 + ceil32(return_data.size)] = _1708
                    require _1704 + (32 * _1708) + 32 <= return_data.size
                    s = 0
                    t = _1700 + _1704 + 32
                    u = _1700 + ceil32(return_data.size) + 32
                    while s < _1708:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    idx = idx + 1
                    s = _1492
                    continue 
                require idx < mem[(32 * arg1.length) + 128]
                require 0 < mem[_1108]
                mem[_1108 + 32] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                require idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]
                require 1 < mem[_1108]
                mem[_1108 + 64] = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 172 len 20]
                require idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]
                _1494 = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                require idx < mem[(32 * arg1.length) + 128]
                _1502 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx < mem[96]
                require Mask(76, 0, mem[(32 * idx) + 128]) >> 180 < 3
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                _1520 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                mem[mem[64] + 4] = stor1[Mask(76, 0, mem[(32 * idx) + 128]) >> 180]
                mem[mem[64] + 36] = _1520
                require ext_code.size(address(_1502))
                call address(_1502).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1520
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1543 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1543] == bool(mem[_1543])
                require idx < mem[96]
                _1585 = mem[(32 * idx) + 128]
                require Mask(76, 0, mem[(32 * idx) + 128]) >> 180 < 3
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                _1594 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                _1595 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1594
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1601 = mem[_1108]
                mem[mem[64] + 164] = mem[_1108]
                s = 0
                t = _1108 + 32
                u = mem[64] + 196
                while s < _1601:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1595 + 100] = this.address
                mem[_1595 + 132] = 1915901246
                require ext_code.size(stor1[Mask(76, 0, _1585) >> 180])
                call stor1[Mask(76, 0, _1585) >> 180].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1595 + (32 * _1601) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1701 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1705 = mem[_1701]
                require mem[_1701] <= test266151307()
                require _1701 + mem[_1701] + 31 < _1701 + return_data.size
                _1709 = mem[_1701 + mem[_1701]]
                require mem[_1701 + mem[_1701]] <= test266151307()
                require _1701 + ceil32(return_data.size) + (32 * mem[_1701 + mem[_1701]]) + 32 <= test266151307() and (32 * mem[_1701 + mem[_1701]]) + 32 >= 0
                mem[64] = _1701 + ceil32(return_data.size) + (32 * mem[_1701 + mem[_1701]]) + 32
                mem[_1701 + ceil32(return_data.size)] = _1709
                require _1705 + (32 * _1709) + 32 <= return_data.size
                s = 0
                t = _1701 + _1705 + 32
                u = _1701 + ceil32(return_data.size) + 32
                while s < _1709:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                idx = idx + 1
                s = _1494
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1526 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1526] == mem[_1526]
            if mem[_1526] < ext_call.return_data[0]:
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
            _1107 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_1107] == mem[_1107 + 18 len 14]
            require mem[_1107 + 32] == mem[_1107 + 50 len 14]
            require mem[_1107 + 64] == mem[_1107 + 92 len 4]
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_1107 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_1107 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if not mem[_1107 + 18 len 14]:
                            if 10000 * mem[_1107 + 50 len 14] / 10000 != mem[_1107 + 50 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_1107 + 50 len 14] < 10000 * mem[_1107 + 50 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if 10000 * mem[_1107 + 50 len 14]:
                                if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_1107 + 50 len 14]
                                    if idx < mem[(32 * arg1.length) + 128]:
                                        idx = idx + 1
                                        s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                        continue 
                        else:
                            if mem[_1107 + 18 len 14]:
                                if 0 / mem[_1107 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1107 + 50 len 14] / 10000 != mem[_1107 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1107 + 50 len 14] < 10000 * mem[_1107 + 50 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 10000 * mem[_1107 + 50 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_1107 + 50 len 14]
                                        if idx < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                            continue 
            else:
                if idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                    if idx < mem[96]:
                        if mem[_1107 + 18 len 14] <= 0:
                            revert with 0, 's'
                        if mem[_1107 + 50 len 14] <= 0:
                            revert with 0, 's'
                        if not mem[_1107 + 50 len 14]:
                            if 10000 * mem[_1107 + 18 len 14] / 10000 != mem[_1107 + 18 len 14]:
                                revert with 0, 'ds-math-mul-overflow'
                            if 10000 * mem[_1107 + 18 len 14] < 10000 * mem[_1107 + 18 len 14]:
                                revert with 0, 'ds-math-add-overflow'
                            if 10000 * mem[_1107 + 18 len 14]:
                                if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                    mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_1107 + 18 len 14]
                                    if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                        idx = idx + 1
                                        s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                        continue 
                        else:
                            if mem[_1107 + 50 len 14]:
                                if 0 / mem[_1107 + 50 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1107 + 18 len 14] / 10000 != mem[_1107 + 18 len 14]:
                                    revert with 0, 'ds-math-mul-overflow'
                                if 10000 * mem[_1107 + 18 len 14] < 10000 * mem[_1107 + 18 len 14]:
                                    revert with 0, 'ds-math-add-overflow'
                                if 10000 * mem[_1107 + 18 len 14]:
                                    if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                        mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192] = 0 / 10000 * mem[_1107 + 18 len 14]
                                        if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                            idx = idx + 1
                                            s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                            continue 
            revert
        require 0 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        require arg1.length - 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        if mem[(32 * arg1.length - 1) + (32 * arg1.length) + (32 * arg2.length) + 192] > mem[(32 * arg1.length) + (32 * arg2.length) + 192]:
            _1109 = mem[64]
            mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
            mem[mem[64] + 100] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64] + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            idx = 0
            s = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7
            while idx < arg1.length - 1:
                require idx < mem[96]
                if Mask(76, 0, mem[(32 * idx) + 128]) >> 180 <= 0:
                    require idx < mem[96]
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _1464 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64] + 36] = _1464
                    require ext_code.size(address(s))
                    call address(s).0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1464
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1533 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1533] == bool(mem[_1533])
                    require idx < mem[(32 * arg1.length) + 128]
                    if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                        if idx < mem[96]:
                            _1564 = mem[(32 * idx) + 128]
                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                _1570 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                                _1574 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1574 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1574 + 36] = _1570
                                mem[_1574 + 68] = 0
                                mem[_1574 + 100] = this.address
                                mem[_1574 + 132] = 128
                                mem[_1574 + 164] = mem[_1574]
                                s = 0
                                while s < mem[_1574]:
                                    mem[_1574 + s + 196] = mem[_1574 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1574]) > mem[_1574]:
                                    mem[_1574 + mem[_1574] + 196] = 0
                                require ext_code.size(address(_1564))
                                call address(_1564).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _1570, 0, address(this.address), 128, mem[_1574], mem[_1574 + 196 len ceil32(mem[_1574])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[(32 * arg1.length) + 128]:
                                    idx = idx + 1
                                    s = mem[(32 * idx) + (32 * arg1.length) + 160]
                                    continue 
                    else:
                        if idx < mem[96]:
                            _1566 = mem[(32 * idx) + 128]
                            if idx + 1 < mem[(32 * arg1.length) + (32 * arg2.length) + 160]:
                                _1571 = mem[(32 * idx + 1) + (32 * arg1.length) + (32 * arg2.length) + 192]
                                _1575 = mem[64]
                                mem[64] = mem[64] + 32
                                mem[_1575 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[_1575 + 36] = 0
                                mem[_1575 + 68] = _1571
                                mem[_1575 + 100] = this.address
                                mem[_1575 + 132] = 128
                                mem[_1575 + 164] = mem[_1575]
                                s = 0
                                while s < mem[_1575]:
                                    mem[_1575 + s + 196] = mem[_1575 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(mem[_1575]) > mem[_1575]:
                                    mem[_1575 + mem[_1575] + 196] = 0
                                require ext_code.size(address(_1566))
                                call address(_1566).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _1571, address(this.address), 128, mem[_1575], mem[_1575 + 196 len ceil32(mem[_1575])]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]:
                                    idx = idx + 1
                                    s = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                                    continue 
                    revert
                require idx < mem[(32 * arg1.length) + 128]
                if mem[(32 * idx) + (32 * arg1.length) + 172 len 20] != address(s):
                    require idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]
                    require 0 < mem[_1109]
                    mem[_1109 + 32] = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 172 len 20]
                    require idx < mem[(32 * arg1.length) + 128]
                    require 1 < mem[_1109]
                    mem[_1109 + 64] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                    require idx < mem[(32 * arg1.length) + 128]
                    _1496 = mem[(32 * idx) + (32 * arg1.length) + 160]
                    require idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]
                    _1504 = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                    require idx < mem[96]
                    require Mask(76, 0, mem[(32 * idx) + 128]) >> 180 < 3
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _1522 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    mem[mem[64] + 4] = stor1[Mask(76, 0, mem[(32 * idx) + 128]) >> 180]
                    mem[mem[64] + 36] = _1522
                    require ext_code.size(address(_1504))
                    call address(_1504).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], _1522
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1544 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1544] == bool(mem[_1544])
                    require idx < mem[96]
                    _1586 = mem[(32 * idx) + 128]
                    require Mask(76, 0, mem[(32 * idx) + 128]) >> 180 < 3
                    require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                    _1596 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                    _1597 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1596
                    mem[mem[64] + 36] = 0
                    mem[mem[64] + 68] = 160
                    _1602 = mem[_1109]
                    mem[mem[64] + 164] = mem[_1109]
                    s = 0
                    t = _1109 + 32
                    u = mem[64] + 196
                    while s < _1602:
                        mem[u] = mem[t + 12 len 20]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_1597 + 100] = this.address
                    mem[_1597 + 132] = 1915901246
                    require ext_code.size(stor1[Mask(76, 0, _1586) >> 180])
                    call stor1[Mask(76, 0, _1586) >> 180].mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1597 + (32 * _1602) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1702 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1706 = mem[_1702]
                    require mem[_1702] <= test266151307()
                    require _1702 + mem[_1702] + 31 < _1702 + return_data.size
                    _1710 = mem[_1702 + mem[_1702]]
                    require mem[_1702 + mem[_1702]] <= test266151307()
                    require _1702 + ceil32(return_data.size) + (32 * mem[_1702 + mem[_1702]]) + 32 <= test266151307() and (32 * mem[_1702 + mem[_1702]]) + 32 >= 0
                    mem[64] = _1702 + ceil32(return_data.size) + (32 * mem[_1702 + mem[_1702]]) + 32
                    mem[_1702 + ceil32(return_data.size)] = _1710
                    require _1706 + (32 * _1710) + 32 <= return_data.size
                    s = 0
                    t = _1702 + _1706 + 32
                    u = _1702 + ceil32(return_data.size) + 32
                    while s < _1710:
                        require mem[t] == mem[t]
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    idx = idx + 1
                    s = _1496
                    continue 
                require idx < mem[(32 * arg1.length) + 128]
                require 0 < mem[_1109]
                mem[_1109 + 32] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
                require idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]
                require 1 < mem[_1109]
                mem[_1109 + 64] = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 172 len 20]
                require idx + arg1.length - 1 < mem[(32 * arg1.length) + 128]
                _1498 = mem[(32 * idx + arg1.length - 1) + (32 * arg1.length) + 160]
                require idx < mem[(32 * arg1.length) + 128]
                _1506 = mem[(32 * idx) + (32 * arg1.length) + 160]
                require idx < mem[96]
                require Mask(76, 0, mem[(32 * idx) + 128]) >> 180 < 3
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                _1524 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                mem[mem[64] + 4] = stor1[Mask(76, 0, mem[(32 * idx) + 128]) >> 180]
                mem[mem[64] + 36] = _1524
                require ext_code.size(address(_1506))
                call address(_1506).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], _1524
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1545 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1545] == bool(mem[_1545])
                require idx < mem[96]
                _1587 = mem[(32 * idx) + 128]
                require Mask(76, 0, mem[(32 * idx) + 128]) >> 180 < 3
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                _1598 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                _1599 = mem[64]
                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1598
                mem[mem[64] + 36] = 0
                mem[mem[64] + 68] = 160
                _1603 = mem[_1109]
                mem[mem[64] + 164] = mem[_1109]
                s = 0
                t = _1109 + 32
                u = mem[64] + 196
                while s < _1603:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_1599 + 100] = this.address
                mem[_1599 + 132] = 1915901246
                require ext_code.size(stor1[Mask(76, 0, _1587) >> 180])
                call stor1[Mask(76, 0, _1587) >> 180].mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1599 + (32 * _1603) + -mem[64] + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1703 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1707 = mem[_1703]
                require mem[_1703] <= test266151307()
                require _1703 + mem[_1703] + 31 < _1703 + return_data.size
                _1711 = mem[_1703 + mem[_1703]]
                require mem[_1703 + mem[_1703]] <= test266151307()
                require _1703 + ceil32(return_data.size) + (32 * mem[_1703 + mem[_1703]]) + 32 <= test266151307() and (32 * mem[_1703 + mem[_1703]]) + 32 >= 0
                mem[64] = _1703 + ceil32(return_data.size) + (32 * mem[_1703 + mem[_1703]]) + 32
                mem[_1703 + ceil32(return_data.size)] = _1711
                require _1707 + (32 * _1711) + 32 <= return_data.size
                s = 0
                t = _1703 + _1707 + 32
                u = _1703 + ceil32(return_data.size) + 32
                while s < _1711:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                idx = idx + 1
                s = _1498
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
            staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1527 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1527] == mem[_1527]
            if mem[_1527] < ext_call.return_data[0]:
                revert with 0, 'n'
}



}
