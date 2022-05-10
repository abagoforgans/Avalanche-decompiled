contract main {




// =====================  Runtime code  =====================


#
#  - batchFetchDetails(address[] arg1, address[] arg2)
#
function _fallback() payable {
    revert
}

function batchFetchBalancesOf(address[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg1.length <= test266151307()
    if arg1.length:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        mem[(32 * arg1.length) + 132] = address(cd[((32 * idx) + arg2 + 36)])
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + arg2 + 36)])
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        mem[(32 * idx) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[128 len 32 * arg1.length])
}

function batchFetchAllowances(address[] arg1, address[] arg2, address[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg1.length <= test266151307()
    if arg1.length:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg3.length
        mem[(32 * arg1.length) + 132] = address(cd[((32 * idx) + arg2 + 36)])
        mem[(32 * arg1.length) + 164] = address(cd[((32 * idx) + arg3 + 36)])
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).0xdd62ed3e with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + arg2 + 36)]), address(cd[((32 * idx) + arg3 + 36)])
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < arg1.length
        mem[(32 * idx) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[128 len 32 * arg1.length])
}

function batchFetchManagers(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
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
            staticcall mem[(32 * idx) + 140 len 20].0x481c6a75 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _66 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_66] == mem[_66 + 12 len 20]
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_66 + 12 len 20]
            idx = idx + 1
            continue 
        _64 = mem[64]
        mem[mem[64]] = 32
        _68 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = (32 * arg1.length) + 160
        t = mem[64] + 64
        while idx < _68:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _64 + (32 * _68) + -mem[64] + 64
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].0x481c6a75 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_67] == mem[_67 + 12 len 20]
        require idx < mem[(32 * arg1.length) + 128]
        mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_67 + 12 len 20]
        idx = idx + 1
        continue 
    _65 = mem[64]
    mem[mem[64]] = 32
    _69 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
    idx = 0
    s = (32 * arg1.length) + 160
    t = mem[64] + 64
    while idx < _69:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _65 + (32 * _69) + -mem[64] + 64
}

function batchFetchStreamingFeeInfo(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 128 >= 96 and (32 * arg2.length) + 128 <= test266151307()
    mem[96] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
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
            require ext_code.size(arg1)
            staticcall arg1.feeStates(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _134 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _139 = mem[64]
            require mem[64] + 128 <= test266151307() and mem[64] + 128 >= mem[64]
            mem[64] = mem[64] + 128
            require mem[_134] == mem[_134 + 12 len 20]
            mem[_139] = mem[_134]
            mem[_139 + 32] = mem[_134 + 32]
            mem[_139 + 64] = mem[_134 + 64]
            mem[_139 + 96] = mem[_134 + 96]
            require idx < mem[96]
            _154 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(arg1)
            staticcall arg1.getFee(address arg1) with:
                    gas gas_remaining wei
                   args address(_154)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _161 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _165 = mem[_161]
            _166 = mem[64]
            mem[64] = mem[64] + 96
            mem[_166] = mem[_139 + 12 len 20]
            mem[_166 + 32] = mem[_139 + 64]
            mem[_166 + 64] = _165
            require idx < mem[(32 * arg2.length) + 128]
            mem[(32 * idx) + (32 * arg2.length) + 160] = _166
            idx = idx + 1
            continue 
        _123 = mem[64]
        mem[mem[64]] = 32
        _126 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
        idx = 0
        s = (32 * arg2.length) + 160
        t = mem[64] + 64
        while idx < _126:
            _178 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_178 + 32]
            mem[t + 64] = mem[_178 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _123 + (96 * _126) + -mem[64] + 64
    mem[64] = (64 * arg2.length) + 256
    mem[(64 * arg2.length) + 160] = 0
    mem[(64 * arg2.length) + 192] = 0
    mem[(64 * arg2.length) + 224] = 0
    mem[var28001] = (64 * arg2.length) + 160
    s = var28001
    idx = var28002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(64 * arg2.length) + 160] = 0
        mem[(64 * arg2.length) + 192] = 0
        mem[(64 * arg2.length) + 224] = 0
        mem[s + 32] = (64 * arg2.length) + 160
        s = s + 32
        idx = idx - 1
        continue 
    _211 = mem[96]
    idx = 0
    while idx < _211:
        require idx < mem[96]
        require ext_code.size(arg1)
        staticcall arg1.feeStates(address arg1) with:
                gas gas_remaining wei
               args address(mem[(32 * idx) + 128])
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _223 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _224 = mem[64]
        require mem[64] + 128 <= test266151307() and mem[64] + 128 >= mem[64]
        mem[64] = mem[64] + 128
        require mem[_223] == mem[_223 + 12 len 20]
        mem[_224] = mem[_223]
        mem[_224 + 32] = mem[_223 + 32]
        mem[_224 + 64] = mem[_223 + 64]
        mem[_224 + 96] = mem[_223 + 96]
        require idx < mem[96]
        _230 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(arg1)
        staticcall arg1.getFee(address arg1) with:
                gas gas_remaining wei
               args address(_230)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _233 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _234 = mem[_233]
        _235 = mem[64]
        mem[64] = mem[64] + 96
        mem[_235] = mem[_224 + 12 len 20]
        mem[_235 + 32] = mem[_224 + 64]
        mem[_235 + 64] = _234
        require idx < mem[(32 * arg2.length) + 128]
        mem[(32 * idx) + (32 * arg2.length) + 160] = _235
        _211 = mem[96]
        idx = idx + 1
        continue 
    _213 = mem[64]
    mem[mem[64]] = 32
    _216 = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
    idx = 0
    s = (32 * arg2.length) + 160
    t = mem[64] + 64
    while idx < _216:
        _239 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_239 + 32]
        mem[t + 64] = mem[_239 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _213 + (96 * _216) + -mem[64] + 64
}

function batchFetchModuleStates(address[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
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
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    mem[64] = (64 * arg1.length) + 160
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require arg2.length <= test266151307()
            _104 = mem[64]
            mem[mem[64]] = arg2.length
            mem[64] = mem[64] + (32 * arg2.length) + 32
            if not arg2.length:
                s = 0
                while s < arg2.length:
                    require idx < mem[96]
                    _158 = mem[(32 * idx) + 128]
                    require s < arg2.length
                    require cd[((32 * s) + arg2 + 36)] == address(cd[((32 * s) + arg2 + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * s) + arg2 + 36)])
                    require ext_code.size(address(_158))
                    staticcall address(_158).moduleStates(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * s) + arg2 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _178 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_178] < 3
                    require s < mem[_104]
                    require mem[_178] <= 2
                    mem[(32 * s) + _104 + 32] = mem[_178]
                    s = s + 1
                    continue 
            else:
                mem[_104 + 32 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
                s = 0
                while s < arg2.length:
                    require idx < mem[96]
                    _159 = mem[(32 * idx) + 128]
                    require s < arg2.length
                    require cd[((32 * s) + arg2 + 36)] == address(cd[((32 * s) + arg2 + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * s) + arg2 + 36)])
                    require ext_code.size(address(_159))
                    staticcall address(_159).moduleStates(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * s) + arg2 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _179 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_179] < 3
                    require s < mem[_104]
                    require mem[_179] <= 2
                    mem[(32 * s) + _104 + 32] = mem[_179]
                    s = s + 1
                    continue 
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = _104
            idx = idx + 1
            continue 
        _103 = mem[64]
        mem[mem[64]] = 32
        _105 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = (32 * arg1.length) + 160
        t = mem[64] + 64
        u = mem[64] + (32 * _105) + 64
        while idx < _105:
            mem[t] = u + -_103 - 64
            _151 = mem[s]
            _157 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = _151 + 32
            x = u + 32
            while v < _157:
                require mem[w] < 3
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _157) + 32
            continue 
    else:
        mem[(32 * arg1.length) + 160] = 96
        s = (32 * arg1.length) + 160
        idx = arg1.length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        _150 = mem[96]
        idx = 0
        while idx < _150:
            require arg2.length <= test266151307()
            _161 = mem[64]
            mem[mem[64]] = arg2.length
            mem[64] = mem[64] + (32 * arg2.length) + 32
            if not arg2.length:
                s = 0
                while s < arg2.length:
                    require idx < mem[96]
                    _202 = mem[(32 * idx) + 128]
                    require s < arg2.length
                    require cd[((32 * s) + arg2 + 36)] == address(cd[((32 * s) + arg2 + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * s) + arg2 + 36)])
                    require ext_code.size(address(_202))
                    staticcall address(_202).moduleStates(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * s) + arg2 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _209 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_209] < 3
                    require s < mem[_161]
                    require mem[_209] <= 2
                    mem[(32 * s) + _161 + 32] = mem[_209]
                    _150 = mem[96]
                    s = s + 1
                    continue 
            else:
                mem[_161 + 32 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
                s = 0
                while s < arg2.length:
                    require idx < mem[96]
                    _203 = mem[(32 * idx) + 128]
                    require s < arg2.length
                    require cd[((32 * s) + arg2 + 36)] == address(cd[((32 * s) + arg2 + 36)])
                    mem[mem[64] + 4] = address(cd[((32 * s) + arg2 + 36)])
                    require ext_code.size(address(_203))
                    staticcall address(_203).moduleStates(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((32 * s) + arg2 + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _210 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_210] < 3
                    require s < mem[_161]
                    require mem[_210] <= 2
                    mem[(32 * s) + _161 + 32] = mem[_210]
                    _150 = mem[96]
                    s = s + 1
                    continue 
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = _161
            _150 = mem[96]
            idx = idx + 1
            continue 
        _160 = mem[64]
        mem[mem[64]] = 32
        _162 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = (32 * arg1.length) + 160
        t = mem[64] + 64
        u = mem[64] + (32 * _162) + 64
        while idx < _162:
            mem[t] = u + -_160 - 64
            _195 = mem[s]
            _201 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = _195 + 32
            x = u + 32
            while v < _201:
                require mem[w] < 3
                mem[x] = mem[w]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _201) + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_f93d3af4(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    mem[96] = 96
    mem[128] = 96
    mem[160] = 0
    mem[192] = 96
    mem[224] = 96
    mem[256] = 96
    mem[288] = 0
    mem[320] = 1
    mem[352] = address(cd[4])
    mem[384] = 1
    mem[64] = 448
    mem[416] = 96
    s = 416
    idx = mem[320]
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    _2083 = mem[320]
    idx = 0
    while idx < _2083:
        require ('cd', 36).length <= test266151307()
        _2097 = mem[64]
        mem[mem[64]] = ('cd', 36).length
        mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
        if not ('cd', 36).length:
            s = 0
            while s < ('cd', 36).length:
                require idx < mem[320]
                _3130 = mem[(32 * idx) + 352]
                require s < ('cd', 36).length
                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                require ext_code.size(address(_3130))
                staticcall address(_3130).moduleStates(address arg1) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + cd[36] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3201 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3201] < 3
                require s < mem[_2097]
                require mem[_3201] <= 2
                mem[(32 * s) + _2097 + 32] = mem[_3201]
                s = s + 1
                continue 
        else:
            mem[_2097 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            s = 0
            while s < ('cd', 36).length:
                require idx < mem[320]
                _3131 = mem[(32 * idx) + 352]
                require s < ('cd', 36).length
                require cd[((32 * s) + cd[36] + 36)] == address(cd[((32 * s) + cd[36] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * s) + cd[36] + 36)])
                require ext_code.size(address(_3131))
                staticcall address(_3131).moduleStates(address arg1) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + cd[36] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3202 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3202] < 3
                require s < mem[_2097]
                require mem[_3202] <= 2
                mem[(32 * s) + _2097 + 32] = mem[_3202]
                s = s + 1
                continue 
        require idx < mem[384]
        mem[(32 * idx) + 416] = _2097
        idx = idx + 1
        continue 
    _2096 = mem[320]
    require mem[320] <= test266151307()
    _2099 = mem[64]
    mem[mem[64]] = mem[320]
    mem[64] = mem[64] + (32 * _2096) + 32
    if not _2096:
        _3117 = mem[320]
        idx = 0
        while idx < _3117:
            require idx < mem[320]
            _3126 = mem[(32 * idx) + 352]
            _3127 = mem[64]
            mem[64] = mem[64] + 224
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_3126))
            staticcall address(_3126).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3136 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3151 = mem[_3136]
            require mem[_3136] <= test266151307()
            require _3136 + return_data.size > _3136 + mem[_3136] + 31
            _3165 = mem[_3136 + mem[_3136]]
            require mem[_3136 + mem[_3136]] <= test266151307()
            require ceil32(mem[_3136 + mem[_3136]]) + 32 >= 0 and _3136 + ceil32(return_data.size) + ceil32(mem[_3136 + mem[_3136]]) + 32 <= test266151307()
            mem[64] = _3136 + ceil32(return_data.size) + ceil32(mem[_3136 + mem[_3136]]) + 32
            mem[_3136 + ceil32(return_data.size)] = _3165
            require _3151 + _3165 + 32 <= return_data.size
            s = 0
            while s < _3165:
                mem[s + _3136 + ceil32(return_data.size) + 32] = mem[s + _3136 + _3151 + 32]
                s = s + 32
                continue 
            if ceil32(_3165) <= _3165:
                mem[_3127] = _3136 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_3126))
                staticcall address(_3126).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4172 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4193 = mem[_4172]
                require mem[_4172] <= test266151307()
                require _4172 + return_data.size > _4172 + mem[_4172] + 31
                _4207 = mem[_4172 + mem[_4172]]
                require mem[_4172 + mem[_4172]] <= test266151307()
                require ceil32(mem[_4172 + mem[_4172]]) + 32 >= 0 and _4172 + ceil32(return_data.size) + ceil32(mem[_4172 + mem[_4172]]) + 32 <= test266151307()
                mem[64] = _4172 + ceil32(return_data.size) + ceil32(mem[_4172 + mem[_4172]]) + 32
                mem[_4172 + ceil32(return_data.size)] = _4207
                require _4193 + _4207 + 32 <= return_data.size
                s = 0
                while s < _4207:
                    mem[s + _4172 + ceil32(return_data.size) + 32] = mem[s + _4172 + _4193 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4207) <= _4207:
                    mem[_3127 + 32] = _4172 + ceil32(return_data.size)
                    require ext_code.size(address(_3126))
                    staticcall address(_3126).0x481c6a75 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5164 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5164] == mem[_5164 + 12 len 20]
                    mem[_3127 + 64] = mem[_5164 + 12 len 20]
                    mem[mem[64]] = 0xb2494df300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_3126))
                    staticcall address(_3126).0xb2494df3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5311 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5335 = mem[_5311]
                    require mem[_5311] <= test266151307()
                    require _5311 + return_data.size > _5311 + mem[_5311] + 31
                    _5363 = mem[_5311 + mem[_5311]]
                    require mem[_5311 + mem[_5311]] <= test266151307()
                    require (32 * mem[_5311 + mem[_5311]]) + 32 >= 0 and _5311 + ceil32(return_data.size) + (32 * mem[_5311 + mem[_5311]]) + 32 <= test266151307()
                    mem[64] = _5311 + ceil32(return_data.size) + (32 * mem[_5311 + mem[_5311]]) + 32
                    mem[_5311 + ceil32(return_data.size)] = _5363
                    require return_data.size >= _5335 + (32 * _5363) + 32
                    t = _5311 + _5335 + 32
                    u = _5311 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _5363:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    mem[_3127 + 96] = _5311 + ceil32(return_data.size)
                    require idx < mem[384]
                    mem[_3127 + 128] = mem[(32 * idx) + 416]
                    mem[mem[64]] = 0x8027586000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_3126))
                    staticcall address(_3126).getPositions() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6048 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6089 = mem[_6048]
                    require mem[_6048] <= test266151307()
                    require _6048 + mem[_6048] + 31 < _6048 + return_data.size
                    _6148 = mem[_6048 + mem[_6048]]
                    require mem[_6048 + mem[_6048]] <= test266151307()
                    require (32 * mem[_6048 + mem[_6048]]) + 32 >= 0 and _6048 + ceil32(return_data.size) + (32 * mem[_6048 + mem[_6048]]) + 32 <= test266151307()
                    mem[64] = _6048 + ceil32(return_data.size) + (32 * mem[_6048 + mem[_6048]]) + 32
                    mem[_6048 + ceil32(return_data.size)] = _6148
                    s = 0
                    t = _6048 + _6089 + 32
                    u = _6048 + ceil32(return_data.size) + 32
                    while s < _6148:
                        _6689 = mem[t]
                        require return_data.size + -_6089 + -mem[t] - 32 >= 160
                        _6719 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require mem[_6048 + _6089 + _6689 + 32] == mem[_6048 + _6089 + _6689 + 44 len 20]
                        mem[_6719] = mem[_6048 + _6089 + _6689 + 32]
                        require mem[_6048 + _6089 + _6689 + 64] == mem[_6048 + _6089 + _6689 + 76 len 20]
                        mem[_6719 + 32] = mem[_6048 + _6089 + _6689 + 64]
                        mem[_6719 + 64] = mem[_6048 + _6089 + _6689 + 96]
                        require mem[_6048 + _6089 + _6689 + 128] == mem[_6048 + _6089 + _6689 + 159 len 1]
                        mem[_6719 + 96] = mem[_6048 + _6089 + _6689 + 128]
                        _6981 = mem[_6048 + _6089 + _6689 + 160]
                        require mem[_6048 + _6089 + _6689 + 160] <= test266151307()
                        require _6048 + _6089 + _6689 + mem[_6048 + _6089 + _6689 + 160] + 63 < _6048 + return_data.size
                        _7015 = mem[_6048 + _6089 + _6689 + mem[_6048 + _6089 + _6689 + 160] + 32]
                        require mem[_6048 + _6089 + _6689 + mem[_6048 + _6089 + _6689 + 160] + 32] <= test266151307()
                        _7037 = mem[64]
                        require mem[64] + ceil32(mem[_6048 + _6089 + _6689 + mem[_6048 + _6089 + _6689 + 160] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_6048 + _6089 + _6689 + mem[_6048 + _6089 + _6689 + 160] + 32]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[_6048 + _6089 + _6689 + mem[_6048 + _6089 + _6689 + 160] + 32]) + 32
                        mem[_7037] = _7015
                        require _6089 + _6689 + _6981 + _7015 + 64 <= return_data.size
                        idx = 0
                        while idx < _7015:
                            mem[idx + _7037 + 32] = mem[idx + _6048 + _6089 + _6689 + _6981 + 64]
                            idx = idx + 32
                            continue 
                        if ceil32(_7015) > _7015:
                            mem[_7037 + _7015 + 32] = 0
                        mem[_6719 + 128] = _7037
                        mem[u] = _6719
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_3127 + 160] = _6048 + ceil32(return_data.size)
                    require ext_code.size(address(_3126))
                    staticcall address(_3126).0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6777 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_3127 + 192] = mem[_6777]
                else:
                    mem[_4172 + ceil32(return_data.size) + _4207 + 32] = 0
                    mem[_3127 + 32] = _4172 + ceil32(return_data.size)
                    require ext_code.size(address(_3126))
                    staticcall address(_3126).0x481c6a75 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5201 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5201] == mem[_5201 + 12 len 20]
                    mem[_3127 + 64] = mem[_5201 + 12 len 20]
                    mem[mem[64]] = 0xb2494df300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_3126))
                    staticcall address(_3126).0xb2494df3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5323 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5354 = mem[_5323]
                    require mem[_5323] <= test266151307()
                    require _5323 + return_data.size > _5323 + mem[_5323] + 31
                    _5380 = mem[_5323 + mem[_5323]]
                    require mem[_5323 + mem[_5323]] <= test266151307()
                    require (32 * mem[_5323 + mem[_5323]]) + 32 >= 0 and _5323 + ceil32(return_data.size) + (32 * mem[_5323 + mem[_5323]]) + 32 <= test266151307()
                    mem[64] = _5323 + ceil32(return_data.size) + (32 * mem[_5323 + mem[_5323]]) + 32
                    mem[_5323 + ceil32(return_data.size)] = _5380
                    require return_data.size >= _5354 + (32 * _5380) + 32
                    t = _5323 + _5354 + 32
                    u = _5323 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _5380:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    mem[_3127 + 96] = _5323 + ceil32(return_data.size)
                    require idx < mem[384]
                    mem[_3127 + 128] = mem[(32 * idx) + 416]
                    mem[mem[64]] = 0x8027586000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_3126))
                    staticcall address(_3126).getPositions() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6049 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6090 = mem[_6049]
                    require mem[_6049] <= test266151307()
                    require _6049 + mem[_6049] + 31 < _6049 + return_data.size
                    _6149 = mem[_6049 + mem[_6049]]
                    require mem[_6049 + mem[_6049]] <= test266151307()
                    require (32 * mem[_6049 + mem[_6049]]) + 32 >= 0 and _6049 + ceil32(return_data.size) + (32 * mem[_6049 + mem[_6049]]) + 32 <= test266151307()
                    mem[64] = _6049 + ceil32(return_data.size) + (32 * mem[_6049 + mem[_6049]]) + 32
                    mem[_6049 + ceil32(return_data.size)] = _6149
                    s = 0
                    t = _6049 + _6090 + 32
                    u = _6049 + ceil32(return_data.size) + 32
                    while s < _6149:
                        _6690 = mem[t]
                        require return_data.size + -_6090 + -mem[t] - 32 >= 160
                        _6722 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require mem[_6049 + _6090 + _6690 + 32] == mem[_6049 + _6090 + _6690 + 44 len 20]
                        mem[_6722] = mem[_6049 + _6090 + _6690 + 32]
                        require mem[_6049 + _6090 + _6690 + 64] == mem[_6049 + _6090 + _6690 + 76 len 20]
                        mem[_6722 + 32] = mem[_6049 + _6090 + _6690 + 64]
                        mem[_6722 + 64] = mem[_6049 + _6090 + _6690 + 96]
                        require mem[_6049 + _6090 + _6690 + 128] == mem[_6049 + _6090 + _6690 + 159 len 1]
                        mem[_6722 + 96] = mem[_6049 + _6090 + _6690 + 128]
                        _6982 = mem[_6049 + _6090 + _6690 + 160]
                        require mem[_6049 + _6090 + _6690 + 160] <= test266151307()
                        require _6049 + _6090 + _6690 + mem[_6049 + _6090 + _6690 + 160] + 63 < _6049 + return_data.size
                        _7016 = mem[_6049 + _6090 + _6690 + mem[_6049 + _6090 + _6690 + 160] + 32]
                        require mem[_6049 + _6090 + _6690 + mem[_6049 + _6090 + _6690 + 160] + 32] <= test266151307()
                        _7038 = mem[64]
                        require mem[64] + ceil32(mem[_6049 + _6090 + _6690 + mem[_6049 + _6090 + _6690 + 160] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_6049 + _6090 + _6690 + mem[_6049 + _6090 + _6690 + 160] + 32]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[_6049 + _6090 + _6690 + mem[_6049 + _6090 + _6690 + 160] + 32]) + 32
                        mem[_7038] = _7016
                        require _6090 + _6690 + _6982 + _7016 + 64 <= return_data.size
                        idx = 0
                        while idx < _7016:
                            mem[idx + _7038 + 32] = mem[idx + _6049 + _6090 + _6690 + _6982 + 64]
                            idx = idx + 32
                            continue 
                        if ceil32(_7016) > _7016:
                            mem[_7038 + _7016 + 32] = 0
                        mem[_6722 + 128] = _7038
                        mem[u] = _6722
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_3127 + 160] = _6049 + ceil32(return_data.size)
                    require ext_code.size(address(_3126))
                    staticcall address(_3126).0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6779 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_3127 + 192] = mem[_6779]
            else:
                mem[_3136 + ceil32(return_data.size) + _3165 + 32] = 0
                mem[_3127] = _3136 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_3126))
                staticcall address(_3126).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4183 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4199 = mem[_4183]
                require mem[_4183] <= test266151307()
                require _4183 + return_data.size > _4183 + mem[_4183] + 31
                _4220 = mem[_4183 + mem[_4183]]
                require mem[_4183 + mem[_4183]] <= test266151307()
                require ceil32(mem[_4183 + mem[_4183]]) + 32 >= 0 and _4183 + ceil32(return_data.size) + ceil32(mem[_4183 + mem[_4183]]) + 32 <= test266151307()
                mem[64] = _4183 + ceil32(return_data.size) + ceil32(mem[_4183 + mem[_4183]]) + 32
                mem[_4183 + ceil32(return_data.size)] = _4220
                require _4199 + _4220 + 32 <= return_data.size
                s = 0
                while s < _4220:
                    mem[s + _4183 + ceil32(return_data.size) + 32] = mem[s + _4183 + _4199 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4220) <= _4220:
                    mem[_3127 + 32] = _4183 + ceil32(return_data.size)
                    require ext_code.size(address(_3126))
                    staticcall address(_3126).0x481c6a75 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5165 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5165] == mem[_5165 + 12 len 20]
                    mem[_3127 + 64] = mem[_5165 + 12 len 20]
                    mem[mem[64]] = 0xb2494df300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_3126))
                    staticcall address(_3126).0xb2494df3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5312 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5336 = mem[_5312]
                    require mem[_5312] <= test266151307()
                    require _5312 + return_data.size > _5312 + mem[_5312] + 31
                    _5364 = mem[_5312 + mem[_5312]]
                    require mem[_5312 + mem[_5312]] <= test266151307()
                    require (32 * mem[_5312 + mem[_5312]]) + 32 >= 0 and _5312 + ceil32(return_data.size) + (32 * mem[_5312 + mem[_5312]]) + 32 <= test266151307()
                    mem[64] = _5312 + ceil32(return_data.size) + (32 * mem[_5312 + mem[_5312]]) + 32
                    mem[_5312 + ceil32(return_data.size)] = _5364
                    require return_data.size >= _5336 + (32 * _5364) + 32
                    t = _5312 + _5336 + 32
                    u = _5312 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _5364:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    mem[_3127 + 96] = _5312 + ceil32(return_data.size)
                    require idx < mem[384]
                    mem[_3127 + 128] = mem[(32 * idx) + 416]
                    mem[mem[64]] = 0x8027586000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_3126))
                    staticcall address(_3126).getPositions() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6050 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6091 = mem[_6050]
                    require mem[_6050] <= test266151307()
                    require _6050 + mem[_6050] + 31 < _6050 + return_data.size
                    _6150 = mem[_6050 + mem[_6050]]
                    require mem[_6050 + mem[_6050]] <= test266151307()
                    require (32 * mem[_6050 + mem[_6050]]) + 32 >= 0 and _6050 + ceil32(return_data.size) + (32 * mem[_6050 + mem[_6050]]) + 32 <= test266151307()
                    mem[64] = _6050 + ceil32(return_data.size) + (32 * mem[_6050 + mem[_6050]]) + 32
                    mem[_6050 + ceil32(return_data.size)] = _6150
                    s = 0
                    t = _6050 + _6091 + 32
                    u = _6050 + ceil32(return_data.size) + 32
                    while s < _6150:
                        _6691 = mem[t]
                        require return_data.size + -_6091 + -mem[t] - 32 >= 160
                        _6725 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require mem[_6050 + _6091 + _6691 + 32] == mem[_6050 + _6091 + _6691 + 44 len 20]
                        mem[_6725] = mem[_6050 + _6091 + _6691 + 32]
                        require mem[_6050 + _6091 + _6691 + 64] == mem[_6050 + _6091 + _6691 + 76 len 20]
                        mem[_6725 + 32] = mem[_6050 + _6091 + _6691 + 64]
                        mem[_6725 + 64] = mem[_6050 + _6091 + _6691 + 96]
                        require mem[_6050 + _6091 + _6691 + 128] == mem[_6050 + _6091 + _6691 + 159 len 1]
                        mem[_6725 + 96] = mem[_6050 + _6091 + _6691 + 128]
                        _6983 = mem[_6050 + _6091 + _6691 + 160]
                        require mem[_6050 + _6091 + _6691 + 160] <= test266151307()
                        require _6050 + _6091 + _6691 + mem[_6050 + _6091 + _6691 + 160] + 63 < _6050 + return_data.size
                        _7017 = mem[_6050 + _6091 + _6691 + mem[_6050 + _6091 + _6691 + 160] + 32]
                        require mem[_6050 + _6091 + _6691 + mem[_6050 + _6091 + _6691 + 160] + 32] <= test266151307()
                        _7039 = mem[64]
                        require mem[64] + ceil32(mem[_6050 + _6091 + _6691 + mem[_6050 + _6091 + _6691 + 160] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_6050 + _6091 + _6691 + mem[_6050 + _6091 + _6691 + 160] + 32]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[_6050 + _6091 + _6691 + mem[_6050 + _6091 + _6691 + 160] + 32]) + 32
                        mem[_7039] = _7017
                        require _6091 + _6691 + _6983 + _7017 + 64 <= return_data.size
                        idx = 0
                        while idx < _7017:
                            mem[idx + _7039 + 32] = mem[idx + _6050 + _6091 + _6691 + _6983 + 64]
                            idx = idx + 32
                            continue 
                        if ceil32(_7017) > _7017:
                            mem[_7039 + _7017 + 32] = 0
                        mem[_6725 + 128] = _7039
                        mem[u] = _6725
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_3127 + 160] = _6050 + ceil32(return_data.size)
                    require ext_code.size(address(_3126))
                    staticcall address(_3126).0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6781 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_3127 + 192] = mem[_6781]
                else:
                    mem[_4183 + ceil32(return_data.size) + _4220 + 32] = 0
                    mem[_3127 + 32] = _4183 + ceil32(return_data.size)
                    require ext_code.size(address(_3126))
                    staticcall address(_3126).0x481c6a75 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5202 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5202] == mem[_5202 + 12 len 20]
                    mem[_3127 + 64] = mem[_5202 + 12 len 20]
                    mem[mem[64]] = 0xb2494df300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_3126))
                    staticcall address(_3126).0xb2494df3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5324 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5355 = mem[_5324]
                    require mem[_5324] <= test266151307()
                    require _5324 + return_data.size > _5324 + mem[_5324] + 31
                    _5381 = mem[_5324 + mem[_5324]]
                    require mem[_5324 + mem[_5324]] <= test266151307()
                    require (32 * mem[_5324 + mem[_5324]]) + 32 >= 0 and _5324 + ceil32(return_data.size) + (32 * mem[_5324 + mem[_5324]]) + 32 <= test266151307()
                    mem[64] = _5324 + ceil32(return_data.size) + (32 * mem[_5324 + mem[_5324]]) + 32
                    mem[_5324 + ceil32(return_data.size)] = _5381
                    require return_data.size >= _5355 + (32 * _5381) + 32
                    t = _5324 + _5355 + 32
                    u = _5324 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _5381:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    mem[_3127 + 96] = _5324 + ceil32(return_data.size)
                    require idx < mem[384]
                    mem[_3127 + 128] = mem[(32 * idx) + 416]
                    mem[mem[64]] = 0x8027586000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_3126))
                    staticcall address(_3126).getPositions() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6051 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6092 = mem[_6051]
                    require mem[_6051] <= test266151307()
                    require _6051 + mem[_6051] + 31 < _6051 + return_data.size
                    _6151 = mem[_6051 + mem[_6051]]
                    require mem[_6051 + mem[_6051]] <= test266151307()
                    require (32 * mem[_6051 + mem[_6051]]) + 32 >= 0 and _6051 + ceil32(return_data.size) + (32 * mem[_6051 + mem[_6051]]) + 32 <= test266151307()
                    mem[64] = _6051 + ceil32(return_data.size) + (32 * mem[_6051 + mem[_6051]]) + 32
                    mem[_6051 + ceil32(return_data.size)] = _6151
                    s = 0
                    t = _6051 + _6092 + 32
                    u = _6051 + ceil32(return_data.size) + 32
                    while s < _6151:
                        _6692 = mem[t]
                        require return_data.size + -_6092 + -mem[t] - 32 >= 160
                        _6728 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require mem[_6051 + _6092 + _6692 + 32] == mem[_6051 + _6092 + _6692 + 44 len 20]
                        mem[_6728] = mem[_6051 + _6092 + _6692 + 32]
                        require mem[_6051 + _6092 + _6692 + 64] == mem[_6051 + _6092 + _6692 + 76 len 20]
                        mem[_6728 + 32] = mem[_6051 + _6092 + _6692 + 64]
                        mem[_6728 + 64] = mem[_6051 + _6092 + _6692 + 96]
                        require mem[_6051 + _6092 + _6692 + 128] == mem[_6051 + _6092 + _6692 + 159 len 1]
                        mem[_6728 + 96] = mem[_6051 + _6092 + _6692 + 128]
                        _6984 = mem[_6051 + _6092 + _6692 + 160]
                        require mem[_6051 + _6092 + _6692 + 160] <= test266151307()
                        require _6051 + _6092 + _6692 + mem[_6051 + _6092 + _6692 + 160] + 63 < _6051 + return_data.size
                        _7018 = mem[_6051 + _6092 + _6692 + mem[_6051 + _6092 + _6692 + 160] + 32]
                        require mem[_6051 + _6092 + _6692 + mem[_6051 + _6092 + _6692 + 160] + 32] <= test266151307()
                        _7040 = mem[64]
                        require mem[64] + ceil32(mem[_6051 + _6092 + _6692 + mem[_6051 + _6092 + _6692 + 160] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_6051 + _6092 + _6692 + mem[_6051 + _6092 + _6692 + 160] + 32]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[_6051 + _6092 + _6692 + mem[_6051 + _6092 + _6692 + 160] + 32]) + 32
                        mem[_7040] = _7018
                        require _6092 + _6692 + _6984 + _7018 + 64 <= return_data.size
                        idx = 0
                        while idx < _7018:
                            mem[idx + _7040 + 32] = mem[idx + _6051 + _6092 + _6692 + _6984 + 64]
                            idx = idx + 32
                            continue 
                        if ceil32(_7018) > _7018:
                            mem[_7040 + _7018 + 32] = 0
                        mem[_6728 + 128] = _7040
                        mem[u] = _6728
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_3127 + 160] = _6051 + ceil32(return_data.size)
                    require ext_code.size(address(_3126))
                    staticcall address(_3126).0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6783 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_3127 + 192] = mem[_6783]
            require idx < mem[_2099]
            mem[(32 * idx) + _2099 + 32] = _3127
            idx = idx + 1
            continue 
        require 0 < mem[_2099]
        _3135 = mem[_2099 + 32]
        _3142 = mem[64]
        mem[mem[64]] = 32
        _3155 = mem[_3135]
        mem[mem[64] + 32] = 224
        _3164 = mem[_3155]
        mem[mem[64] + 256] = mem[_3155]
        mem[mem[64] + 288 len ceil32(_3164)] = mem[_3155 + 32 len ceil32(_3164)]
        if ceil32(_3164) <= _3164:
            _4135 = mem[_3135 + 32]
            mem[mem[64] + 64] = ceil32(_3164) + 256
            _4148 = mem[_4135]
            mem[ceil32(_3164) + mem[64] + 288] = mem[_4135]
            mem[ceil32(_3164) + mem[64] + 320 len ceil32(_4148)] = mem[_4135 + 32 len ceil32(_4148)]
            if ceil32(_4148) <= _4148:
                mem[mem[64] + 96] = mem[_3135 + 76 len 20]
                _5111 = mem[_3135 + 96]
                mem[mem[64] + 128] = ceil32(_4148) + ceil32(_3164) + 288
                _5128 = mem[_5111]
                mem[ceil32(_4148) + ceil32(_3164) + mem[64] + 320] = mem[_5111]
                idx = 0
                s = _5111 + 32
                t = ceil32(_4148) + ceil32(_3164) + mem[64] + 352
                while idx < _5128:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _5965 = mem[_3135 + 128]
                mem[_3142 + 160] = ceil32(_4148) + ceil32(_3164) + (32 * _5128) + 320
                _5973 = mem[_5965]
                mem[ceil32(_4148) + ceil32(_3164) + _3142 + (32 * _5128) + 352] = mem[_5965]
                idx = 0
                s = _5965 + 32
                t = ceil32(_4148) + ceil32(_3164) + _3142 + (32 * _5128) + 384
                while idx < _5973:
                    require mem[s] < 3
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6709 = mem[_3135 + 160]
                mem[_3142 + 192] = ceil32(_4148) + ceil32(_3164) + (32 * _5128) + (32 * _5973) + 352
                _6710 = mem[_6709]
                mem[ceil32(_4148) + ceil32(_3164) + _3142 + (32 * _5128) + (32 * _5973) + 384] = mem[_6709]
                idx = 0
                s = ceil32(_4148) + ceil32(_3164) + _3142 + (32 * _5128) + (32 * _5973) + (32 * _6710) + 416
                t = ceil32(_4148) + ceil32(_3164) + _3142 + (32 * _5128) + (32 * _5973) + 416
                u = _6709 + 32
                while idx < _6710:
                    mem[t] = s + -ceil32(_4148) + -ceil32(_3164) + -_3142 + -(32 * _5128) + -(32 * _5973) - 416
                    _7190 = mem[u]
                    mem[s] = mem[mem[u] + 12 len 20]
                    mem[s + 32] = mem[_7190 + 44 len 20]
                    mem[s + 64] = mem[_7190 + 64]
                    mem[s + 96] = mem[_7190 + 127 len 1]
                    _7195 = mem[_7190 + 128]
                    mem[s + 128] = 160
                    _7249 = mem[_7195]
                    mem[s + 160] = mem[_7195]
                    v = 0
                    while v < _7249:
                        mem[v + s + 192] = mem[v + _7195 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7249) > _7249:
                        mem[s + _7249 + 192] = 0
                    idx = idx + 1
                    s = ceil32(_7249) + s + 192
                    t = t + 32
                    u = u + 32
                    continue 
            else:
                mem[ceil32(_3164) + mem[64] + _4148 + 320] = 0
                mem[mem[64] + 96] = mem[_3135 + 76 len 20]
                _5130 = mem[_3135 + 96]
                mem[mem[64] + 128] = ceil32(_4148) + ceil32(_3164) + 288
                _5150 = mem[_5130]
                mem[ceil32(_4148) + ceil32(_3164) + mem[64] + 320] = mem[_5130]
                idx = 0
                s = _5130 + 32
                t = ceil32(_4148) + ceil32(_3164) + mem[64] + 352
                while idx < _5150:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _5966 = mem[_3135 + 128]
                mem[mem[64] + 160] = ceil32(_4148) + ceil32(_3164) + (32 * _5150) + 320
                _5974 = mem[_5966]
                mem[ceil32(_4148) + ceil32(_3164) + mem[64] + (32 * _5150) + 352] = mem[_5966]
                idx = 0
                s = _5966 + 32
                t = ceil32(_4148) + ceil32(_3164) + mem[64] + (32 * _5150) + 384
                while idx < _5974:
                    require mem[s] < 3
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6711 = mem[_3135 + 160]
                mem[_3142 + 192] = ceil32(_4148) + ceil32(_3164) + (32 * _5150) + (32 * _5974) + 352
                _6712 = mem[_6711]
                mem[ceil32(_4148) + ceil32(_3164) + _3142 + (32 * _5150) + (32 * _5974) + 384] = mem[_6711]
                idx = 0
                s = ceil32(_4148) + ceil32(_3164) + _3142 + (32 * _5150) + (32 * _5974) + (32 * _6712) + 416
                t = ceil32(_4148) + ceil32(_3164) + _3142 + (32 * _5150) + (32 * _5974) + 416
                u = _6711 + 32
                while idx < _6712:
                    mem[t] = s + -ceil32(_4148) + -ceil32(_3164) + -_3142 + -(32 * _5150) + -(32 * _5974) - 416
                    _7197 = mem[u]
                    mem[s] = mem[mem[u] + 12 len 20]
                    mem[s + 32] = mem[_7197 + 44 len 20]
                    mem[s + 64] = mem[_7197 + 64]
                    mem[s + 96] = mem[_7197 + 127 len 1]
                    _7202 = mem[_7197 + 128]
                    mem[s + 128] = 160
                    _7250 = mem[_7202]
                    mem[s + 160] = mem[_7202]
                    v = 0
                    while v < _7250:
                        mem[v + s + 192] = mem[v + _7202 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7250) > _7250:
                        mem[s + _7250 + 192] = 0
                    idx = idx + 1
                    s = ceil32(_7250) + s + 192
                    t = t + 32
                    u = u + 32
                    continue 
        else:
            mem[mem[64] + _3164 + 288] = 0
            _4149 = mem[_3135 + 32]
            mem[mem[64] + 64] = ceil32(_3164) + 256
            _4160 = mem[_4149]
            mem[ceil32(_3164) + mem[64] + 288] = mem[_4149]
            mem[ceil32(_3164) + mem[64] + 320 len ceil32(_4160)] = mem[_4149 + 32 len ceil32(_4160)]
            if ceil32(_4160) <= _4160:
                mem[mem[64] + 96] = mem[_3135 + 76 len 20]
                _5113 = mem[_3135 + 96]
                mem[mem[64] + 128] = ceil32(_4160) + ceil32(_3164) + 288
                _5131 = mem[_5113]
                mem[ceil32(_4160) + ceil32(_3164) + mem[64] + 320] = mem[_5113]
                idx = 0
                s = _5113 + 32
                t = ceil32(_4160) + ceil32(_3164) + mem[64] + 352
                while idx < _5131:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _5967 = mem[_3135 + 128]
                mem[_3142 + 160] = ceil32(_4160) + ceil32(_3164) + (32 * _5131) + 320
                _5975 = mem[_5967]
                mem[ceil32(_4160) + ceil32(_3164) + _3142 + (32 * _5131) + 352] = mem[_5967]
                idx = 0
                s = _5967 + 32
                t = ceil32(_4160) + ceil32(_3164) + _3142 + (32 * _5131) + 384
                while idx < _5975:
                    require mem[s] < 3
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6713 = mem[_3135 + 160]
                mem[_3142 + 192] = ceil32(_4160) + ceil32(_3164) + (32 * _5131) + (32 * _5975) + 352
                _6714 = mem[_6713]
                mem[ceil32(_4160) + ceil32(_3164) + _3142 + (32 * _5131) + (32 * _5975) + 384] = mem[_6713]
                idx = 0
                s = ceil32(_4160) + ceil32(_3164) + _3142 + (32 * _5131) + (32 * _5975) + (32 * _6714) + 416
                t = ceil32(_4160) + ceil32(_3164) + _3142 + (32 * _5131) + (32 * _5975) + 416
                u = _6713 + 32
                while idx < _6714:
                    mem[t] = s + -ceil32(_4160) + -ceil32(_3164) + -_3142 + -(32 * _5131) + -(32 * _5975) - 416
                    _7204 = mem[u]
                    mem[s] = mem[mem[u] + 12 len 20]
                    mem[s + 32] = mem[_7204 + 44 len 20]
                    mem[s + 64] = mem[_7204 + 64]
                    mem[s + 96] = mem[_7204 + 127 len 1]
                    _7209 = mem[_7204 + 128]
                    mem[s + 128] = 160
                    _7251 = mem[_7209]
                    mem[s + 160] = mem[_7209]
                    v = 0
                    while v < _7251:
                        mem[v + s + 192] = mem[v + _7209 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7251) > _7251:
                        mem[s + _7251 + 192] = 0
                    idx = idx + 1
                    s = ceil32(_7251) + s + 192
                    t = t + 32
                    u = u + 32
                    continue 
            else:
                mem[ceil32(_3164) + mem[64] + _4160 + 320] = 0
                mem[mem[64] + 96] = mem[_3135 + 76 len 20]
                _5133 = mem[_3135 + 96]
                mem[mem[64] + 128] = ceil32(_4160) + ceil32(_3164) + 288
                _5151 = mem[_5133]
                mem[ceil32(_4160) + ceil32(_3164) + mem[64] + 320] = mem[_5133]
                idx = 0
                s = _5133 + 32
                t = ceil32(_4160) + ceil32(_3164) + mem[64] + 352
                while idx < _5151:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _5968 = mem[_3135 + 128]
                mem[_3142 + 160] = ceil32(_4160) + ceil32(_3164) + (32 * _5151) + 320
                _5976 = mem[_5968]
                mem[ceil32(_4160) + ceil32(_3164) + _3142 + (32 * _5151) + 352] = mem[_5968]
                idx = 0
                s = _5968 + 32
                t = ceil32(_4160) + ceil32(_3164) + _3142 + (32 * _5151) + 384
                while idx < _5976:
                    require mem[s] < 3
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6715 = mem[_3135 + 160]
                mem[_3142 + 192] = ceil32(_4160) + ceil32(_3164) + (32 * _5151) + (32 * _5976) + 352
                _6716 = mem[_6715]
                mem[ceil32(_4160) + ceil32(_3164) + _3142 + (32 * _5151) + (32 * _5976) + 384] = mem[_6715]
                idx = 0
                s = ceil32(_4160) + ceil32(_3164) + _3142 + (32 * _5151) + (32 * _5976) + (32 * _6716) + 416
                t = ceil32(_4160) + ceil32(_3164) + _3142 + (32 * _5151) + (32 * _5976) + 416
                u = _6715 + 32
                while idx < _6716:
                    mem[t] = s + -ceil32(_4160) + -ceil32(_3164) + -_3142 + -(32 * _5151) + -(32 * _5976) - 416
                    _7211 = mem[u]
                    mem[s] = mem[mem[u] + 12 len 20]
                    mem[s + 32] = mem[_7211 + 44 len 20]
                    mem[s + 64] = mem[_7211 + 64]
                    mem[s + 96] = mem[_7211 + 127 len 1]
                    _7216 = mem[_7211 + 128]
                    mem[s + 128] = 160
                    _7252 = mem[_7216]
                    mem[s + 160] = mem[_7216]
                    v = 0
                    while v < _7252:
                        mem[v + s + 192] = mem[v + _7216 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7252) > _7252:
                        mem[s + _7252 + 192] = 0
                    idx = idx + 1
                    s = ceil32(_7252) + s + 192
                    t = t + 32
                    u = u + 32
                    continue 
        mem[_3142 + 224] = mem[_3135 + 192]
    else:
        mem[64] = _2099 + (32 * _2096) + 256
        mem[_2099 + (32 * _2096) + 32] = 96
        mem[_2099 + (32 * _2096) + 64] = 96
        mem[_2099 + (32 * _2096) + 96] = 0
        mem[_2099 + (32 * _2096) + 128] = 96
        mem[_2099 + (32 * _2096) + 160] = 96
        mem[_2099 + (32 * _2096) + 192] = 96
        mem[_2099 + (32 * _2096) + 224] = 0
        mem[var35001] = _2099 + (32 * _2096) + 32
        s = var35001
        idx = var35002
        while idx - 1:
            mem[64] = mem[64] + 224
            mem[_2099 + (32 * _2096) + 32] = 96
            mem[_2099 + (32 * _2096) + 64] = 96
            mem[_2099 + (32 * _2096) + 96] = 0
            mem[_2099 + (32 * _2096) + 128] = 96
            mem[_2099 + (32 * _2096) + 160] = 96
            mem[_2099 + (32 * _2096) + 192] = 96
            mem[_2099 + (32 * _2096) + 224] = 0
            mem[s + 32] = _2099 + (32 * _2096) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _5064 = mem[320]
        idx = 0
        while idx < _5064:
            require idx < mem[320]
            _5088 = mem[(32 * idx) + 352]
            _5089 = mem[64]
            mem[64] = mem[64] + 224
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_5088))
            staticcall address(_5088).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5115 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5156 = mem[_5115]
            require mem[_5115] <= test266151307()
            require _5115 + return_data.size > _5115 + mem[_5115] + 31
            _5204 = mem[_5115 + mem[_5115]]
            require mem[_5115 + mem[_5115]] <= test266151307()
            require ceil32(mem[_5115 + mem[_5115]]) + 32 >= 0 and _5115 + ceil32(return_data.size) + ceil32(mem[_5115 + mem[_5115]]) + 32 <= test266151307()
            mem[64] = _5115 + ceil32(return_data.size) + ceil32(mem[_5115 + mem[_5115]]) + 32
            mem[_5115 + ceil32(return_data.size)] = _5204
            require _5156 + _5204 + 32 <= return_data.size
            s = 0
            while s < _5204:
                mem[s + _5115 + ceil32(return_data.size) + 32] = mem[s + _5115 + _5156 + 32]
                s = s + 32
                continue 
            if ceil32(_5204) <= _5204:
                mem[_5089] = _5115 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_5088))
                staticcall address(_5088).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6093 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6153 = mem[_6093]
                require mem[_6093] <= test266151307()
                require _6093 + return_data.size > _6093 + mem[_6093] + 31
                _6167 = mem[_6093 + mem[_6093]]
                require mem[_6093 + mem[_6093]] <= test266151307()
                require ceil32(mem[_6093 + mem[_6093]]) + 32 >= 0 and _6093 + ceil32(return_data.size) + ceil32(mem[_6093 + mem[_6093]]) + 32 <= test266151307()
                mem[64] = _6093 + ceil32(return_data.size) + ceil32(mem[_6093 + mem[_6093]]) + 32
                mem[_6093 + ceil32(return_data.size)] = _6167
                require _6153 + _6167 + 32 <= return_data.size
                s = 0
                while s < _6167:
                    mem[s + _6093 + ceil32(return_data.size) + 32] = mem[s + _6093 + _6153 + 32]
                    s = s + 32
                    continue 
                if ceil32(_6167) <= _6167:
                    mem[_5089 + 32] = _6093 + ceil32(return_data.size)
                    require ext_code.size(address(_5088))
                    staticcall address(_5088).0x481c6a75 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6847 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6847] == mem[_6847 + 12 len 20]
                    mem[_5089 + 64] = mem[_6847 + 12 len 20]
                    mem[mem[64]] = 0xb2494df300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_5088))
                    staticcall address(_5088).0xb2494df3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6979 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6997 = mem[_6979]
                    require mem[_6979] <= test266151307()
                    require _6979 + return_data.size > _6979 + mem[_6979] + 31
                    _7021 = mem[_6979 + mem[_6979]]
                    require mem[_6979 + mem[_6979]] <= test266151307()
                    require (32 * mem[_6979 + mem[_6979]]) + 32 >= 0 and _6979 + ceil32(return_data.size) + (32 * mem[_6979 + mem[_6979]]) + 32 <= test266151307()
                    mem[64] = _6979 + ceil32(return_data.size) + (32 * mem[_6979 + mem[_6979]]) + 32
                    mem[_6979 + ceil32(return_data.size)] = _7021
                    require return_data.size >= _6997 + (32 * _7021) + 32
                    t = _6979 + _6997 + 32
                    u = _6979 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _7021:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    mem[_5089 + 96] = _6979 + ceil32(return_data.size)
                    require idx < mem[384]
                    mem[_5089 + 128] = mem[(32 * idx) + 416]
                    mem[mem[64]] = 0x8027586000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_5088))
                    staticcall address(_5088).getPositions() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7329 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7353 = mem[_7329]
                    require mem[_7329] <= test266151307()
                    require _7329 + mem[_7329] + 31 < _7329 + return_data.size
                    _7397 = mem[_7329 + mem[_7329]]
                    require mem[_7329 + mem[_7329]] <= test266151307()
                    require (32 * mem[_7329 + mem[_7329]]) + 32 >= 0 and _7329 + ceil32(return_data.size) + (32 * mem[_7329 + mem[_7329]]) + 32 <= test266151307()
                    mem[64] = _7329 + ceil32(return_data.size) + (32 * mem[_7329 + mem[_7329]]) + 32
                    mem[_7329 + ceil32(return_data.size)] = _7397
                    s = 0
                    t = _7329 + _7353 + 32
                    u = _7329 + ceil32(return_data.size) + 32
                    while s < _7397:
                        _7537 = mem[t]
                        require return_data.size + -_7353 + -mem[t] - 32 >= 160
                        _7555 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require mem[_7329 + _7353 + _7537 + 32] == mem[_7329 + _7353 + _7537 + 44 len 20]
                        mem[_7555] = mem[_7329 + _7353 + _7537 + 32]
                        require mem[_7329 + _7353 + _7537 + 64] == mem[_7329 + _7353 + _7537 + 76 len 20]
                        mem[_7555 + 32] = mem[_7329 + _7353 + _7537 + 64]
                        mem[_7555 + 64] = mem[_7329 + _7353 + _7537 + 96]
                        require mem[_7329 + _7353 + _7537 + 128] == mem[_7329 + _7353 + _7537 + 159 len 1]
                        mem[_7555 + 96] = mem[_7329 + _7353 + _7537 + 128]
                        _7641 = mem[_7329 + _7353 + _7537 + 160]
                        require mem[_7329 + _7353 + _7537 + 160] <= test266151307()
                        require _7329 + _7353 + _7537 + mem[_7329 + _7353 + _7537 + 160] + 63 < _7329 + return_data.size
                        _7645 = mem[_7329 + _7353 + _7537 + mem[_7329 + _7353 + _7537 + 160] + 32]
                        require mem[_7329 + _7353 + _7537 + mem[_7329 + _7353 + _7537 + 160] + 32] <= test266151307()
                        _7649 = mem[64]
                        require mem[64] + ceil32(mem[_7329 + _7353 + _7537 + mem[_7329 + _7353 + _7537 + 160] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_7329 + _7353 + _7537 + mem[_7329 + _7353 + _7537 + 160] + 32]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[_7329 + _7353 + _7537 + mem[_7329 + _7353 + _7537 + 160] + 32]) + 32
                        mem[_7649] = _7645
                        require _7353 + _7537 + _7641 + _7645 + 64 <= return_data.size
                        idx = 0
                        while idx < _7645:
                            mem[idx + _7649 + 32] = mem[idx + _7329 + _7353 + _7537 + _7641 + 64]
                            idx = idx + 32
                            continue 
                        if ceil32(_7645) > _7645:
                            mem[_7649 + _7645 + 32] = 0
                        mem[_7555 + 128] = _7649
                        mem[u] = _7555
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_5089 + 160] = _7329 + ceil32(return_data.size)
                    require ext_code.size(address(_5088))
                    staticcall address(_5088).0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7597 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_5089 + 192] = mem[_7597]
                else:
                    mem[_6093 + ceil32(return_data.size) + _6167 + 32] = 0
                    mem[_5089 + 32] = _6093 + ceil32(return_data.size)
                    require ext_code.size(address(_5088))
                    staticcall address(_5088).0x481c6a75 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6885 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6885] == mem[_6885 + 12 len 20]
                    mem[_5089 + 64] = mem[_6885 + 12 len 20]
                    mem[mem[64]] = 0xb2494df300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_5088))
                    staticcall address(_5088).0xb2494df3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6989 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7013 = mem[_6989]
                    require mem[_6989] <= test266151307()
                    require _6989 + return_data.size > _6989 + mem[_6989] + 31
                    _7031 = mem[_6989 + mem[_6989]]
                    require mem[_6989 + mem[_6989]] <= test266151307()
                    require (32 * mem[_6989 + mem[_6989]]) + 32 >= 0 and _6989 + ceil32(return_data.size) + (32 * mem[_6989 + mem[_6989]]) + 32 <= test266151307()
                    mem[64] = _6989 + ceil32(return_data.size) + (32 * mem[_6989 + mem[_6989]]) + 32
                    mem[_6989 + ceil32(return_data.size)] = _7031
                    require return_data.size >= _7013 + (32 * _7031) + 32
                    t = _6989 + _7013 + 32
                    u = _6989 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _7031:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    mem[_5089 + 96] = _6989 + ceil32(return_data.size)
                    require idx < mem[384]
                    mem[_5089 + 128] = mem[(32 * idx) + 416]
                    mem[mem[64]] = 0x8027586000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_5088))
                    staticcall address(_5088).getPositions() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7330 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7354 = mem[_7330]
                    require mem[_7330] <= test266151307()
                    require _7330 + mem[_7330] + 31 < _7330 + return_data.size
                    _7398 = mem[_7330 + mem[_7330]]
                    require mem[_7330 + mem[_7330]] <= test266151307()
                    require (32 * mem[_7330 + mem[_7330]]) + 32 >= 0 and _7330 + ceil32(return_data.size) + (32 * mem[_7330 + mem[_7330]]) + 32 <= test266151307()
                    mem[64] = _7330 + ceil32(return_data.size) + (32 * mem[_7330 + mem[_7330]]) + 32
                    mem[_7330 + ceil32(return_data.size)] = _7398
                    s = 0
                    t = _7330 + _7354 + 32
                    u = _7330 + ceil32(return_data.size) + 32
                    while s < _7398:
                        _7538 = mem[t]
                        require return_data.size + -_7354 + -mem[t] - 32 >= 160
                        _7558 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require mem[_7330 + _7354 + _7538 + 32] == mem[_7330 + _7354 + _7538 + 44 len 20]
                        mem[_7558] = mem[_7330 + _7354 + _7538 + 32]
                        require mem[_7330 + _7354 + _7538 + 64] == mem[_7330 + _7354 + _7538 + 76 len 20]
                        mem[_7558 + 32] = mem[_7330 + _7354 + _7538 + 64]
                        mem[_7558 + 64] = mem[_7330 + _7354 + _7538 + 96]
                        require mem[_7330 + _7354 + _7538 + 128] == mem[_7330 + _7354 + _7538 + 159 len 1]
                        mem[_7558 + 96] = mem[_7330 + _7354 + _7538 + 128]
                        _7642 = mem[_7330 + _7354 + _7538 + 160]
                        require mem[_7330 + _7354 + _7538 + 160] <= test266151307()
                        require _7330 + _7354 + _7538 + mem[_7330 + _7354 + _7538 + 160] + 63 < _7330 + return_data.size
                        _7646 = mem[_7330 + _7354 + _7538 + mem[_7330 + _7354 + _7538 + 160] + 32]
                        require mem[_7330 + _7354 + _7538 + mem[_7330 + _7354 + _7538 + 160] + 32] <= test266151307()
                        _7650 = mem[64]
                        require mem[64] + ceil32(mem[_7330 + _7354 + _7538 + mem[_7330 + _7354 + _7538 + 160] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_7330 + _7354 + _7538 + mem[_7330 + _7354 + _7538 + 160] + 32]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[_7330 + _7354 + _7538 + mem[_7330 + _7354 + _7538 + 160] + 32]) + 32
                        mem[_7650] = _7646
                        require _7354 + _7538 + _7642 + _7646 + 64 <= return_data.size
                        idx = 0
                        while idx < _7646:
                            mem[idx + _7650 + 32] = mem[idx + _7330 + _7354 + _7538 + _7642 + 64]
                            idx = idx + 32
                            continue 
                        if ceil32(_7646) > _7646:
                            mem[_7650 + _7646 + 32] = 0
                        mem[_7558 + 128] = _7650
                        mem[u] = _7558
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_5089 + 160] = _7330 + ceil32(return_data.size)
                    require ext_code.size(address(_5088))
                    staticcall address(_5088).0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7599 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_5089 + 192] = mem[_7599]
            else:
                mem[_5115 + ceil32(return_data.size) + _5204 + 32] = 0
                mem[_5089] = _5115 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_5088))
                staticcall address(_5088).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6133 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6162 = mem[_6133]
                require mem[_6133] <= test266151307()
                require _6133 + return_data.size > _6133 + mem[_6133] + 31
                _6183 = mem[_6133 + mem[_6133]]
                require mem[_6133 + mem[_6133]] <= test266151307()
                require ceil32(mem[_6133 + mem[_6133]]) + 32 >= 0 and _6133 + ceil32(return_data.size) + ceil32(mem[_6133 + mem[_6133]]) + 32 <= test266151307()
                mem[64] = _6133 + ceil32(return_data.size) + ceil32(mem[_6133 + mem[_6133]]) + 32
                mem[_6133 + ceil32(return_data.size)] = _6183
                require _6162 + _6183 + 32 <= return_data.size
                s = 0
                while s < _6183:
                    mem[s + _6133 + ceil32(return_data.size) + 32] = mem[s + _6133 + _6162 + 32]
                    s = s + 32
                    continue 
                if ceil32(_6183) <= _6183:
                    mem[_5089 + 32] = _6133 + ceil32(return_data.size)
                    require ext_code.size(address(_5088))
                    staticcall address(_5088).0x481c6a75 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6848 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6848] == mem[_6848 + 12 len 20]
                    mem[_5089 + 64] = mem[_6848 + 12 len 20]
                    mem[mem[64]] = 0xb2494df300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_5088))
                    staticcall address(_5088).0xb2494df3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6980 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6998 = mem[_6980]
                    require mem[_6980] <= test266151307()
                    require _6980 + return_data.size > _6980 + mem[_6980] + 31
                    _7022 = mem[_6980 + mem[_6980]]
                    require mem[_6980 + mem[_6980]] <= test266151307()
                    require (32 * mem[_6980 + mem[_6980]]) + 32 >= 0 and _6980 + ceil32(return_data.size) + (32 * mem[_6980 + mem[_6980]]) + 32 <= test266151307()
                    mem[64] = _6980 + ceil32(return_data.size) + (32 * mem[_6980 + mem[_6980]]) + 32
                    mem[_6980 + ceil32(return_data.size)] = _7022
                    require return_data.size >= _6998 + (32 * _7022) + 32
                    t = _6980 + _6998 + 32
                    u = _6980 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _7022:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    mem[_5089 + 96] = _6980 + ceil32(return_data.size)
                    require idx < mem[384]
                    mem[_5089 + 128] = mem[(32 * idx) + 416]
                    mem[mem[64]] = 0x8027586000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_5088))
                    staticcall address(_5088).getPositions() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7331 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7355 = mem[_7331]
                    require mem[_7331] <= test266151307()
                    require _7331 + mem[_7331] + 31 < _7331 + return_data.size
                    _7399 = mem[_7331 + mem[_7331]]
                    require mem[_7331 + mem[_7331]] <= test266151307()
                    require (32 * mem[_7331 + mem[_7331]]) + 32 >= 0 and _7331 + ceil32(return_data.size) + (32 * mem[_7331 + mem[_7331]]) + 32 <= test266151307()
                    mem[64] = _7331 + ceil32(return_data.size) + (32 * mem[_7331 + mem[_7331]]) + 32
                    mem[_7331 + ceil32(return_data.size)] = _7399
                    s = 0
                    t = _7331 + _7355 + 32
                    u = _7331 + ceil32(return_data.size) + 32
                    while s < _7399:
                        _7539 = mem[t]
                        require return_data.size + -_7355 + -mem[t] - 32 >= 160
                        _7561 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require mem[_7331 + _7355 + _7539 + 32] == mem[_7331 + _7355 + _7539 + 44 len 20]
                        mem[_7561] = mem[_7331 + _7355 + _7539 + 32]
                        require mem[_7331 + _7355 + _7539 + 64] == mem[_7331 + _7355 + _7539 + 76 len 20]
                        mem[_7561 + 32] = mem[_7331 + _7355 + _7539 + 64]
                        mem[_7561 + 64] = mem[_7331 + _7355 + _7539 + 96]
                        require mem[_7331 + _7355 + _7539 + 128] == mem[_7331 + _7355 + _7539 + 159 len 1]
                        mem[_7561 + 96] = mem[_7331 + _7355 + _7539 + 128]
                        _7643 = mem[_7331 + _7355 + _7539 + 160]
                        require mem[_7331 + _7355 + _7539 + 160] <= test266151307()
                        require _7331 + _7355 + _7539 + mem[_7331 + _7355 + _7539 + 160] + 63 < _7331 + return_data.size
                        _7647 = mem[_7331 + _7355 + _7539 + mem[_7331 + _7355 + _7539 + 160] + 32]
                        require mem[_7331 + _7355 + _7539 + mem[_7331 + _7355 + _7539 + 160] + 32] <= test266151307()
                        _7651 = mem[64]
                        require mem[64] + ceil32(mem[_7331 + _7355 + _7539 + mem[_7331 + _7355 + _7539 + 160] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_7331 + _7355 + _7539 + mem[_7331 + _7355 + _7539 + 160] + 32]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[_7331 + _7355 + _7539 + mem[_7331 + _7355 + _7539 + 160] + 32]) + 32
                        mem[_7651] = _7647
                        require _7355 + _7539 + _7643 + _7647 + 64 <= return_data.size
                        idx = 0
                        while idx < _7647:
                            mem[idx + _7651 + 32] = mem[idx + _7331 + _7355 + _7539 + _7643 + 64]
                            idx = idx + 32
                            continue 
                        if ceil32(_7647) > _7647:
                            mem[_7651 + _7647 + 32] = 0
                        mem[_7561 + 128] = _7651
                        mem[u] = _7561
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_5089 + 160] = _7331 + ceil32(return_data.size)
                    require ext_code.size(address(_5088))
                    staticcall address(_5088).0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7601 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_5089 + 192] = mem[_7601]
                else:
                    mem[_6133 + ceil32(return_data.size) + _6183 + 32] = 0
                    mem[_5089 + 32] = _6133 + ceil32(return_data.size)
                    require ext_code.size(address(_5088))
                    staticcall address(_5088).0x481c6a75 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6886 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6886] == mem[_6886 + 12 len 20]
                    mem[_5089 + 64] = mem[_6886 + 12 len 20]
                    mem[mem[64]] = 0xb2494df300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_5088))
                    staticcall address(_5088).0xb2494df3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6990 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7014 = mem[_6990]
                    require mem[_6990] <= test266151307()
                    require _6990 + return_data.size > _6990 + mem[_6990] + 31
                    _7032 = mem[_6990 + mem[_6990]]
                    require mem[_6990 + mem[_6990]] <= test266151307()
                    require (32 * mem[_6990 + mem[_6990]]) + 32 >= 0 and _6990 + ceil32(return_data.size) + (32 * mem[_6990 + mem[_6990]]) + 32 <= test266151307()
                    mem[64] = _6990 + ceil32(return_data.size) + (32 * mem[_6990 + mem[_6990]]) + 32
                    mem[_6990 + ceil32(return_data.size)] = _7032
                    require return_data.size >= _7014 + (32 * _7032) + 32
                    t = _6990 + _7014 + 32
                    u = _6990 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _7032:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    mem[_5089 + 96] = _6990 + ceil32(return_data.size)
                    require idx < mem[384]
                    mem[_5089 + 128] = mem[(32 * idx) + 416]
                    mem[mem[64]] = 0x8027586000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_5088))
                    staticcall address(_5088).getPositions() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7332 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7356 = mem[_7332]
                    require mem[_7332] <= test266151307()
                    require _7332 + mem[_7332] + 31 < _7332 + return_data.size
                    _7400 = mem[_7332 + mem[_7332]]
                    require mem[_7332 + mem[_7332]] <= test266151307()
                    require (32 * mem[_7332 + mem[_7332]]) + 32 >= 0 and _7332 + ceil32(return_data.size) + (32 * mem[_7332 + mem[_7332]]) + 32 <= test266151307()
                    mem[64] = _7332 + ceil32(return_data.size) + (32 * mem[_7332 + mem[_7332]]) + 32
                    mem[_7332 + ceil32(return_data.size)] = _7400
                    s = 0
                    t = _7332 + _7356 + 32
                    u = _7332 + ceil32(return_data.size) + 32
                    while s < _7400:
                        _7540 = mem[t]
                        require return_data.size + -_7356 + -mem[t] - 32 >= 160
                        _7564 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require mem[_7332 + _7356 + _7540 + 32] == mem[_7332 + _7356 + _7540 + 44 len 20]
                        mem[_7564] = mem[_7332 + _7356 + _7540 + 32]
                        require mem[_7332 + _7356 + _7540 + 64] == mem[_7332 + _7356 + _7540 + 76 len 20]
                        mem[_7564 + 32] = mem[_7332 + _7356 + _7540 + 64]
                        mem[_7564 + 64] = mem[_7332 + _7356 + _7540 + 96]
                        require mem[_7332 + _7356 + _7540 + 128] == mem[_7332 + _7356 + _7540 + 159 len 1]
                        mem[_7564 + 96] = mem[_7332 + _7356 + _7540 + 128]
                        _7644 = mem[_7332 + _7356 + _7540 + 160]
                        require mem[_7332 + _7356 + _7540 + 160] <= test266151307()
                        require _7332 + _7356 + _7540 + mem[_7332 + _7356 + _7540 + 160] + 63 < _7332 + return_data.size
                        _7648 = mem[_7332 + _7356 + _7540 + mem[_7332 + _7356 + _7540 + 160] + 32]
                        require mem[_7332 + _7356 + _7540 + mem[_7332 + _7356 + _7540 + 160] + 32] <= test266151307()
                        _7652 = mem[64]
                        require mem[64] + ceil32(mem[_7332 + _7356 + _7540 + mem[_7332 + _7356 + _7540 + 160] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_7332 + _7356 + _7540 + mem[_7332 + _7356 + _7540 + 160] + 32]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[_7332 + _7356 + _7540 + mem[_7332 + _7356 + _7540 + 160] + 32]) + 32
                        mem[_7652] = _7648
                        require _7356 + _7540 + _7644 + _7648 + 64 <= return_data.size
                        idx = 0
                        while idx < _7648:
                            mem[idx + _7652 + 32] = mem[idx + _7332 + _7356 + _7540 + _7644 + 64]
                            idx = idx + 32
                            continue 
                        if ceil32(_7648) > _7648:
                            mem[_7652 + _7648 + 32] = 0
                        mem[_7564 + 128] = _7652
                        mem[u] = _7564
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_5089 + 160] = _7332 + ceil32(return_data.size)
                    require ext_code.size(address(_5088))
                    staticcall address(_5088).0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7603 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_5089 + 192] = mem[_7603]
            require idx < mem[_2099]
            mem[(32 * idx) + _2099 + 32] = _5089
            idx = idx + 1
            continue 
        require 0 < mem[_2099]
        _5114 = mem[_2099 + 32]
        _5138 = mem[64]
        mem[mem[64]] = 32
        _5166 = mem[_5114]
        mem[mem[64] + 32] = 224
        _5203 = mem[_5166]
        mem[mem[64] + 256] = mem[_5166]
        mem[mem[64] + 288 len ceil32(_5203)] = mem[_5166 + 32 len ceil32(_5203)]
        if ceil32(_5203) <= _5203:
            _6029 = mem[_5114 + 32]
            mem[mem[64] + 64] = ceil32(_5203) + 256
            _6052 = mem[_6029]
            mem[ceil32(_5203) + mem[64] + 288] = mem[_6029]
            mem[ceil32(_5203) + mem[64] + 320 len ceil32(_6052)] = mem[_6029 + 32 len ceil32(_6052)]
            if ceil32(_6052) <= _6052:
                mem[mem[64] + 96] = mem[_5114 + 76 len 20]
                _6786 = mem[_5114 + 96]
                mem[mem[64] + 128] = ceil32(_6052) + ceil32(_5203) + 288
                _6805 = mem[_6786]
                mem[ceil32(_6052) + ceil32(_5203) + mem[64] + 320] = mem[_6786]
                idx = 0
                s = _6786 + 32
                t = ceil32(_6052) + ceil32(_5203) + mem[64] + 352
                while idx < _6805:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7253 = mem[_5114 + 128]
                mem[_5138 + 160] = ceil32(_6052) + ceil32(_5203) + (32 * _6805) + 320
                _7265 = mem[_7253]
                mem[ceil32(_6052) + ceil32(_5203) + _5138 + (32 * _6805) + 352] = mem[_7253]
                idx = 0
                s = _7253 + 32
                t = ceil32(_6052) + ceil32(_5203) + _5138 + (32 * _6805) + 384
                while idx < _7265:
                    require mem[s] < 3
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7545 = mem[_5114 + 160]
                mem[_5138 + 192] = ceil32(_6052) + ceil32(_5203) + (32 * _6805) + (32 * _7265) + 352
                _7546 = mem[_7545]
                mem[ceil32(_6052) + ceil32(_5203) + _5138 + (32 * _6805) + (32 * _7265) + 384] = mem[_7545]
                idx = 0
                s = ceil32(_6052) + ceil32(_5203) + _5138 + (32 * _6805) + (32 * _7265) + (32 * _7546) + 416
                t = ceil32(_6052) + ceil32(_5203) + _5138 + (32 * _6805) + (32 * _7265) + 416
                u = _7545 + 32
                while idx < _7546:
                    mem[t] = s + -ceil32(_6052) + -ceil32(_5203) + -_5138 + -(32 * _6805) + -(32 * _7265) - 416
                    _7662 = mem[u]
                    mem[s] = mem[mem[u] + 12 len 20]
                    mem[s + 32] = mem[_7662 + 44 len 20]
                    mem[s + 64] = mem[_7662 + 64]
                    mem[s + 96] = mem[_7662 + 127 len 1]
                    _7667 = mem[_7662 + 128]
                    mem[s + 128] = 160
                    _7693 = mem[_7667]
                    mem[s + 160] = mem[_7667]
                    v = 0
                    while v < _7693:
                        mem[v + s + 192] = mem[v + _7667 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7693) > _7693:
                        mem[s + _7693 + 192] = 0
                    idx = idx + 1
                    s = ceil32(_7693) + s + 192
                    t = t + 32
                    u = u + 32
                    continue 
            else:
                mem[ceil32(_5203) + mem[64] + _6052 + 320] = 0
                mem[mem[64] + 96] = mem[_5114 + 76 len 20]
                _6807 = mem[_5114 + 96]
                mem[mem[64] + 128] = ceil32(_6052) + ceil32(_5203) + 288
                _6831 = mem[_6807]
                mem[ceil32(_6052) + ceil32(_5203) + mem[64] + 320] = mem[_6807]
                idx = 0
                s = _6807 + 32
                t = ceil32(_6052) + ceil32(_5203) + mem[64] + 352
                while idx < _6831:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7254 = mem[_5114 + 128]
                mem[_5138 + 160] = ceil32(_6052) + ceil32(_5203) + (32 * _6831) + 320
                _7266 = mem[_7254]
                mem[ceil32(_6052) + ceil32(_5203) + _5138 + (32 * _6831) + 352] = mem[_7254]
                idx = 0
                s = _7254 + 32
                t = ceil32(_6052) + ceil32(_5203) + _5138 + (32 * _6831) + 384
                while idx < _7266:
                    require mem[s] < 3
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7547 = mem[_5114 + 160]
                mem[_5138 + 192] = ceil32(_6052) + ceil32(_5203) + (32 * _6831) + (32 * _7266) + 352
                _7548 = mem[_7547]
                mem[ceil32(_6052) + ceil32(_5203) + _5138 + (32 * _6831) + (32 * _7266) + 384] = mem[_7547]
                idx = 0
                s = ceil32(_6052) + ceil32(_5203) + _5138 + (32 * _6831) + (32 * _7266) + (32 * _7548) + 416
                t = ceil32(_6052) + ceil32(_5203) + _5138 + (32 * _6831) + (32 * _7266) + 416
                u = _7547 + 32
                while idx < _7548:
                    mem[t] = s + -ceil32(_6052) + -ceil32(_5203) + -_5138 + -(32 * _6831) + -(32 * _7266) - 416
                    _7669 = mem[u]
                    mem[s] = mem[mem[u] + 12 len 20]
                    mem[s + 32] = mem[_7669 + 44 len 20]
                    mem[s + 64] = mem[_7669 + 64]
                    mem[s + 96] = mem[_7669 + 127 len 1]
                    _7674 = mem[_7669 + 128]
                    mem[s + 128] = 160
                    _7694 = mem[_7674]
                    mem[s + 160] = mem[_7674]
                    v = 0
                    while v < _7694:
                        mem[v + s + 192] = mem[v + _7674 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7694) > _7694:
                        mem[s + _7694 + 192] = 0
                    idx = idx + 1
                    s = ceil32(_7694) + s + 192
                    t = t + 32
                    u = u + 32
                    continue 
        else:
            mem[mem[64] + _5203 + 288] = 0
            _6053 = mem[_5114 + 32]
            mem[mem[64] + 64] = ceil32(_5203) + 256
            _6078 = mem[_6053]
            mem[ceil32(_5203) + mem[64] + 288] = mem[_6053]
            mem[ceil32(_5203) + mem[64] + 320 len ceil32(_6078)] = mem[_6053 + 32 len ceil32(_6078)]
            if ceil32(_6078) <= _6078:
                mem[mem[64] + 96] = mem[_5114 + 76 len 20]
                _6788 = mem[_5114 + 96]
                mem[mem[64] + 128] = ceil32(_6078) + ceil32(_5203) + 288
                _6808 = mem[_6788]
                mem[ceil32(_6078) + ceil32(_5203) + mem[64] + 320] = mem[_6788]
                idx = 0
                s = _6788 + 32
                t = ceil32(_6078) + ceil32(_5203) + mem[64] + 352
                while idx < _6808:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7255 = mem[_5114 + 128]
                mem[_5138 + 160] = ceil32(_6078) + ceil32(_5203) + (32 * _6808) + 320
                _7267 = mem[_7255]
                mem[ceil32(_6078) + ceil32(_5203) + _5138 + (32 * _6808) + 352] = mem[_7255]
                idx = 0
                s = _7255 + 32
                t = ceil32(_6078) + ceil32(_5203) + _5138 + (32 * _6808) + 384
                while idx < _7267:
                    require mem[s] < 3
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7549 = mem[_5114 + 160]
                mem[_5138 + 192] = ceil32(_6078) + ceil32(_5203) + (32 * _6808) + (32 * _7267) + 352
                _7550 = mem[_7549]
                mem[ceil32(_6078) + ceil32(_5203) + _5138 + (32 * _6808) + (32 * _7267) + 384] = mem[_7549]
                idx = 0
                s = ceil32(_6078) + ceil32(_5203) + _5138 + (32 * _6808) + (32 * _7267) + (32 * _7550) + 416
                t = ceil32(_6078) + ceil32(_5203) + _5138 + (32 * _6808) + (32 * _7267) + 416
                u = _7549 + 32
                while idx < _7550:
                    mem[t] = s + -ceil32(_6078) + -ceil32(_5203) + -_5138 + -(32 * _6808) + -(32 * _7267) - 416
                    _7676 = mem[u]
                    mem[s] = mem[mem[u] + 12 len 20]
                    mem[s + 32] = mem[_7676 + 44 len 20]
                    mem[s + 64] = mem[_7676 + 64]
                    mem[s + 96] = mem[_7676 + 127 len 1]
                    _7681 = mem[_7676 + 128]
                    mem[s + 128] = 160
                    _7695 = mem[_7681]
                    mem[s + 160] = mem[_7681]
                    v = 0
                    while v < _7695:
                        mem[v + s + 192] = mem[v + _7681 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7695) > _7695:
                        mem[s + _7695 + 192] = 0
                    idx = idx + 1
                    s = ceil32(_7695) + s + 192
                    t = t + 32
                    u = u + 32
                    continue 
            else:
                mem[ceil32(_5203) + mem[64] + _6078 + 320] = 0
                mem[mem[64] + 96] = mem[_5114 + 76 len 20]
                _6810 = mem[_5114 + 96]
                mem[mem[64] + 128] = ceil32(_6078) + ceil32(_5203) + 288
                _6832 = mem[_6810]
                mem[ceil32(_6078) + ceil32(_5203) + mem[64] + 320] = mem[_6810]
                idx = 0
                s = _6810 + 32
                t = ceil32(_6078) + ceil32(_5203) + mem[64] + 352
                while idx < _6832:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7256 = mem[_5114 + 128]
                mem[_5138 + 160] = ceil32(_6078) + ceil32(_5203) + (32 * _6832) + 320
                _7268 = mem[_7256]
                mem[ceil32(_6078) + ceil32(_5203) + _5138 + (32 * _6832) + 352] = mem[_7256]
                idx = 0
                s = _7256 + 32
                t = ceil32(_6078) + ceil32(_5203) + _5138 + (32 * _6832) + 384
                while idx < _7268:
                    require mem[s] < 3
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7551 = mem[_5114 + 160]
                mem[_5138 + 192] = ceil32(_6078) + ceil32(_5203) + (32 * _6832) + (32 * _7268) + 352
                _7552 = mem[_7551]
                mem[ceil32(_6078) + ceil32(_5203) + _5138 + (32 * _6832) + (32 * _7268) + 384] = mem[_7551]
                idx = 0
                s = ceil32(_6078) + ceil32(_5203) + _5138 + (32 * _6832) + (32 * _7268) + (32 * _7552) + 416
                t = ceil32(_6078) + ceil32(_5203) + _5138 + (32 * _6832) + (32 * _7268) + 416
                u = _7551 + 32
                while idx < _7552:
                    mem[t] = s + -ceil32(_6078) + -ceil32(_5203) + -_5138 + -(32 * _6832) + -(32 * _7268) - 416
                    _7683 = mem[u]
                    mem[s] = mem[mem[u] + 12 len 20]
                    mem[s + 32] = mem[_7683 + 44 len 20]
                    mem[s + 64] = mem[_7683 + 64]
                    mem[s + 96] = mem[_7683 + 127 len 1]
                    _7688 = mem[_7683 + 128]
                    mem[s + 128] = 160
                    _7696 = mem[_7688]
                    mem[s + 160] = mem[_7688]
                    v = 0
                    while v < _7696:
                        mem[v + s + 192] = mem[v + _7688 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7696) > _7696:
                        mem[s + _7696 + 192] = 0
                    idx = idx + 1
                    s = ceil32(_7696) + s + 192
                    t = t + 32
                    u = u + 32
                    continue 
        mem[_5138 + 224] = mem[_5114 + 192]
    return memory
      from mem[64]
       len s - mem[64]
}



}
