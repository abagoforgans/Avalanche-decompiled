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
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require idx < arg2.length
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _32 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_32]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require idx < arg2.length
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_33]
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
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
            staticcall mem[(32 * idx) + 140 len 20].manager() with:
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
        _58 = mem[64]
        mem[mem[64]] = 32
        _66 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = (32 * arg1.length) + 160
        t = mem[64] + 64
        while idx < _66:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _58 + (32 * _66) + -mem[64] + 64
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].manager() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _69 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_69] == mem[_69 + 12 len 20]
        require idx < mem[(32 * arg1.length) + 128]
        mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_69 + 12 len 20]
        idx = idx + 1
        continue 
    _62 = mem[64]
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
       len _62 + (32 * _68) + -mem[64] + 64
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
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require idx < arg2.length
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            require idx < arg3.length
            require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 36] = address(cd[((32 * idx) + arg3 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + arg2 + 36)]), address(cd[((32 * idx) + arg3 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _32 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_32]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            require idx < arg2.length
            require cd[((32 * idx) + arg2 + 36)] == address(cd[((32 * idx) + arg2 + 36)])
            require idx < arg3.length
            require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
            mem[mem[64] + 36] = address(cd[((32 * idx) + arg3 + 36)])
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + arg2 + 36)]), address(cd[((32 * idx) + arg3 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_33]
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
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
            _127 = mem[64]
            mem[64] = mem[64] + 128
            mem[_127] = 0
            mem[_127 + 32] = 0
            mem[_127 + 64] = 0
            mem[_127 + 96] = 0
            require idx < mem[96]
            require ext_code.size(arg1)
            staticcall arg1.0x8e7bdd48 with:
                    gas gas_remaining wei
                   args address(mem[(32 * idx) + 128])
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _141 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _150 = mem[64]
            require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
            mem[64] = mem[64] + 128
            require mem[_141] == mem[_141 + 12 len 20]
            mem[_150] = mem[_141]
            mem[_150 + 32] = mem[_141 + 32]
            mem[_150 + 64] = mem[_141 + 64]
            mem[_150 + 96] = mem[_141 + 96]
            require idx < mem[96]
            _160 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(arg1)
            staticcall arg1.0xb88c9148 with:
                    gas gas_remaining wei
                   args address(_160)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _167 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _171 = mem[_167]
            _172 = mem[64]
            mem[64] = mem[64] + 96
            mem[_172] = mem[_150 + 12 len 20]
            mem[_172 + 32] = mem[_150 + 64]
            mem[_172 + 64] = _171
            require idx < mem[(32 * arg2.length) + 128]
            mem[(32 * idx) + (32 * arg2.length) + 160] = _172
            idx = idx + 1
            continue 
        _126 = mem[64]
        mem[mem[64]] = 32
        _128 = mem[(32 * arg2.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
        idx = 0
        s = (32 * arg2.length) + 160
        t = mem[64] + 64
        while idx < _128:
            _184 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_184 + 32]
            mem[t + 64] = mem[_184 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _126 + (96 * _128) + -mem[64] + 64
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
    _218 = mem[96]
    idx = 0
    while idx < _218:
        _220 = mem[64]
        mem[64] = mem[64] + 128
        mem[_220] = 0
        mem[_220 + 32] = 0
        mem[_220 + 64] = 0
        mem[_220 + 96] = 0
        require idx < mem[96]
        require ext_code.size(arg1)
        staticcall arg1.0x8e7bdd48 with:
                gas gas_remaining wei
               args address(mem[(32 * idx) + 128])
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _231 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _232 = mem[64]
        require mem[64] + 128 >= mem[64] and mem[64] + 128 <= test266151307()
        mem[64] = mem[64] + 128
        require mem[_231] == mem[_231 + 12 len 20]
        mem[_232] = mem[_231]
        mem[_232 + 32] = mem[_231 + 32]
        mem[_232 + 64] = mem[_231 + 64]
        mem[_232 + 96] = mem[_231 + 96]
        require idx < mem[96]
        _238 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(arg1)
        staticcall arg1.0xb88c9148 with:
                gas gas_remaining wei
               args address(_238)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _241 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _242 = mem[_241]
        _243 = mem[64]
        mem[64] = mem[64] + 96
        mem[_243] = mem[_232 + 12 len 20]
        mem[_243 + 32] = mem[_232 + 64]
        mem[_243 + 64] = _242
        require idx < mem[(32 * arg2.length) + 128]
        mem[(32 * idx) + (32 * arg2.length) + 160] = _243
        _218 = mem[96]
        idx = idx + 1
        continue 
    _219 = mem[64]
    mem[mem[64]] = 32
    _221 = mem[(32 * arg2.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg2.length) + 128]
    idx = 0
    s = (32 * arg2.length) + 160
    t = mem[64] + 64
    while idx < _221:
        _247 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_247 + 32]
        mem[t + 64] = mem[_247 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _219 + (96 * _221) + -mem[64] + 64
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
                    staticcall address(_158).moduleStates(address rg1) with:
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
                    staticcall address(_159).moduleStates(address rg1) with:
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
                    staticcall address(_202).moduleStates(address rg1) with:
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
                    staticcall address(_203).moduleStates(address rg1) with:
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

function getSetDetails(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = 96
    mem[128] = 96
    mem[160] = 0
    mem[192] = 96
    mem[224] = 96
    mem[256] = 96
    mem[288] = 0
    mem[320] = 1
    mem[352] = arg1
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
        require arg2.length <= test266151307()
        _2098 = mem[64]
        mem[mem[64]] = arg2.length
        mem[64] = mem[64] + (32 * arg2.length) + 32
        if not arg2.length:
            s = 0
            while s < arg2.length:
                require idx < mem[320]
                _3131 = mem[(32 * idx) + 352]
                require s < arg2.length
                require cd[((32 * s) + arg2 + 36)] == address(cd[((32 * s) + arg2 + 36)])
                mem[mem[64] + 4] = address(cd[((32 * s) + arg2 + 36)])
                require ext_code.size(address(_3131))
                staticcall address(_3131).moduleStates(address rg1) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + arg2 + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3201 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3201] < 3
                require s < mem[_2098]
                require mem[_3201] <= 2
                mem[(32 * s) + _2098 + 32] = mem[_3201]
                s = s + 1
                continue 
        else:
            mem[_2098 + 32 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
            s = 0
            while s < arg2.length:
                require idx < mem[320]
                _3132 = mem[(32 * idx) + 352]
                require s < arg2.length
                require cd[((32 * s) + arg2 + 36)] == address(cd[((32 * s) + arg2 + 36)])
                mem[mem[64] + 4] = address(cd[((32 * s) + arg2 + 36)])
                require ext_code.size(address(_3132))
                staticcall address(_3132).moduleStates(address rg1) with:
                        gas gas_remaining wei
                       args address(cd[((32 * s) + arg2 + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3202 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3202] < 3
                require s < mem[_2098]
                require mem[_3202] <= 2
                mem[(32 * s) + _2098 + 32] = mem[_3202]
                s = s + 1
                continue 
        require idx < mem[384]
        mem[(32 * idx) + 416] = _2098
        idx = idx + 1
        continue 
    _2097 = mem[320]
    require mem[320] <= test266151307()
    _2100 = mem[64]
    mem[mem[64]] = mem[320]
    mem[64] = mem[64] + (32 * _2097) + 32
    if not _2097:
        _3117 = mem[320]
        idx = 0
        while idx < _3117:
            require idx < mem[320]
            _3127 = mem[(32 * idx) + 352]
            _3128 = mem[64]
            mem[64] = mem[64] + 224
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_3127))
            staticcall address(_3127).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3137 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3153 = mem[_3137]
            require mem[_3137] <= test266151307()
            require _3137 + mem[_3137] + 31 < _3137 + return_data.size
            _3170 = mem[_3137 + mem[_3137]]
            require mem[_3137 + mem[_3137]] <= test266151307()
            require ceil32(mem[_3137 + mem[_3137]]) + 32 >= 0 and _3137 + ceil32(return_data.size) + ceil32(mem[_3137 + mem[_3137]]) + 32 <= test266151307()
            mem[64] = _3137 + ceil32(return_data.size) + ceil32(mem[_3137 + mem[_3137]]) + 32
            mem[_3137 + ceil32(return_data.size)] = _3170
            require _3153 + _3170 + 32 <= return_data.size
            s = 0
            while s < _3170:
                mem[s + _3137 + ceil32(return_data.size) + 32] = mem[s + _3137 + _3153 + 32]
                s = s + 32
                continue 
            if ceil32(_3170) <= _3170:
                mem[_3128] = _3137 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_3127))
                staticcall address(_3127).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4174 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4194 = mem[_4174]
                require mem[_4174] <= test266151307()
                require _4174 + mem[_4174] + 31 < _4174 + return_data.size
                _4220 = mem[_4174 + mem[_4174]]
                require mem[_4174 + mem[_4174]] <= test266151307()
                require ceil32(mem[_4174 + mem[_4174]]) + 32 >= 0 and _4174 + ceil32(return_data.size) + ceil32(mem[_4174 + mem[_4174]]) + 32 <= test266151307()
                mem[64] = _4174 + ceil32(return_data.size) + ceil32(mem[_4174 + mem[_4174]]) + 32
                mem[_4174 + ceil32(return_data.size)] = _4220
                require _4194 + _4220 + 32 <= return_data.size
                s = 0
                while s < _4220:
                    mem[s + _4174 + ceil32(return_data.size) + 32] = mem[s + _4174 + _4194 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4220) <= _4220:
                    mem[_3128 + 32] = _4174 + ceil32(return_data.size)
                    require ext_code.size(address(_3127))
                    staticcall address(_3127).manager() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5165 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5165] == mem[_5165 + 12 len 20]
                    mem[_3128 + 64] = mem[_5165 + 12 len 20]
                    mem[mem[64]] = 0xb2494df300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_3127))
                    staticcall address(_3127).0xb2494df3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5291 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5315 = mem[_5291]
                    require mem[_5291] <= test266151307()
                    require _5291 + mem[_5291] + 31 < _5291 + return_data.size
                    _5352 = mem[_5291 + mem[_5291]]
                    require mem[_5291 + mem[_5291]] <= test266151307()
                    require (32 * mem[_5291 + mem[_5291]]) + 32 >= 0 and _5291 + ceil32(return_data.size) + (32 * mem[_5291 + mem[_5291]]) + 32 <= test266151307()
                    mem[64] = _5291 + ceil32(return_data.size) + (32 * mem[_5291 + mem[_5291]]) + 32
                    mem[_5291 + ceil32(return_data.size)] = _5352
                    require return_data.size >= _5315 + (32 * _5352) + 32
                    t = _5291 + _5315 + 32
                    u = _5291 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _5352:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    mem[_3128 + 96] = _5291 + ceil32(return_data.size)
                    require idx < mem[384]
                    mem[_3128 + 128] = mem[(32 * idx) + 416]
                    mem[mem[64]] = 0x8027586000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_3127))
                    staticcall address(_3127).getPositions() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6028 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6073 = mem[_6028]
                    require mem[_6028] <= test266151307()
                    require _6028 + mem[_6028] + 31 < _6028 + return_data.size
                    _6116 = mem[_6028 + mem[_6028]]
                    require mem[_6028 + mem[_6028]] <= test266151307()
                    require (32 * mem[_6028 + mem[_6028]]) + 32 >= 0 and _6028 + ceil32(return_data.size) + (32 * mem[_6028 + mem[_6028]]) + 32 <= test266151307()
                    mem[64] = _6028 + ceil32(return_data.size) + (32 * mem[_6028 + mem[_6028]]) + 32
                    mem[_6028 + ceil32(return_data.size)] = _6116
                    s = 0
                    t = _6028 + _6073 + 32
                    u = _6028 + ceil32(return_data.size) + 32
                    while s < _6116:
                        _6673 = mem[t]
                        require return_data.size + -_6073 + -mem[t] - 32 >= 160
                        _6729 = mem[64]
                        require mem[64] + 160 >= mem[64] and mem[64] + 160 <= test266151307()
                        mem[64] = mem[64] + 160
                        require mem[_6028 + _6073 + _6673 + 32] == mem[_6028 + _6073 + _6673 + 44 len 20]
                        mem[_6729] = mem[_6028 + _6073 + _6673 + 32]
                        require mem[_6028 + _6073 + _6673 + 64] == mem[_6028 + _6073 + _6673 + 76 len 20]
                        mem[_6729 + 32] = mem[_6028 + _6073 + _6673 + 64]
                        mem[_6729 + 64] = mem[_6028 + _6073 + _6673 + 96]
                        require mem[_6028 + _6073 + _6673 + 128] == mem[_6028 + _6073 + _6673 + 159 len 1]
                        mem[_6729 + 96] = mem[_6028 + _6073 + _6673 + 128]
                        _6911 = mem[_6028 + _6073 + _6673 + 160]
                        require mem[_6028 + _6073 + _6673 + 160] <= test266151307()
                        require _6028 + _6073 + _6673 + mem[_6028 + _6073 + _6673 + 160] + 63 < _6028 + return_data.size
                        _6955 = mem[_6028 + _6073 + _6673 + mem[_6028 + _6073 + _6673 + 160] + 32]
                        require mem[_6028 + _6073 + _6673 + mem[_6028 + _6073 + _6673 + 160] + 32] <= test266151307()
                        _6977 = mem[64]
                        require mem[64] + ceil32(mem[_6028 + _6073 + _6673 + mem[_6028 + _6073 + _6673 + 160] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_6028 + _6073 + _6673 + mem[_6028 + _6073 + _6673 + 160] + 32]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[_6028 + _6073 + _6673 + mem[_6028 + _6073 + _6673 + 160] + 32]) + 32
                        mem[_6977] = _6955
                        require _6073 + _6673 + _6911 + _6955 + 64 <= return_data.size
                        idx = 0
                        while idx < _6955:
                            mem[idx + _6977 + 32] = mem[idx + _6028 + _6073 + _6673 + _6911 + 64]
                            idx = idx + 32
                            continue 
                        if ceil32(_6955) > _6955:
                            mem[_6977 + _6955 + 32] = 0
                        mem[_6729 + 128] = _6977
                        mem[u] = _6729
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_3128 + 160] = _6028 + ceil32(return_data.size)
                    require ext_code.size(address(_3127))
                    staticcall address(_3127).0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6745 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_3128 + 192] = mem[_6745]
                else:
                    mem[_4174 + ceil32(return_data.size) + _4220 + 32] = 0
                    mem[_3128 + 32] = _4174 + ceil32(return_data.size)
                    require ext_code.size(address(_3127))
                    staticcall address(_3127).manager() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5186 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5186] == mem[_5186 + 12 len 20]
                    mem[_3128 + 64] = mem[_5186 + 12 len 20]
                    mem[mem[64]] = 0xb2494df300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_3127))
                    staticcall address(_3127).0xb2494df3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5302 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5337 = mem[_5302]
                    require mem[_5302] <= test266151307()
                    require _5302 + mem[_5302] + 31 < _5302 + return_data.size
                    _5366 = mem[_5302 + mem[_5302]]
                    require mem[_5302 + mem[_5302]] <= test266151307()
                    require (32 * mem[_5302 + mem[_5302]]) + 32 >= 0 and _5302 + ceil32(return_data.size) + (32 * mem[_5302 + mem[_5302]]) + 32 <= test266151307()
                    mem[64] = _5302 + ceil32(return_data.size) + (32 * mem[_5302 + mem[_5302]]) + 32
                    mem[_5302 + ceil32(return_data.size)] = _5366
                    require return_data.size >= _5337 + (32 * _5366) + 32
                    t = _5302 + _5337 + 32
                    u = _5302 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _5366:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    mem[_3128 + 96] = _5302 + ceil32(return_data.size)
                    require idx < mem[384]
                    mem[_3128 + 128] = mem[(32 * idx) + 416]
                    mem[mem[64]] = 0x8027586000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_3127))
                    staticcall address(_3127).getPositions() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6029 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6074 = mem[_6029]
                    require mem[_6029] <= test266151307()
                    require _6029 + mem[_6029] + 31 < _6029 + return_data.size
                    _6117 = mem[_6029 + mem[_6029]]
                    require mem[_6029 + mem[_6029]] <= test266151307()
                    require (32 * mem[_6029 + mem[_6029]]) + 32 >= 0 and _6029 + ceil32(return_data.size) + (32 * mem[_6029 + mem[_6029]]) + 32 <= test266151307()
                    mem[64] = _6029 + ceil32(return_data.size) + (32 * mem[_6029 + mem[_6029]]) + 32
                    mem[_6029 + ceil32(return_data.size)] = _6117
                    s = 0
                    t = _6029 + _6074 + 32
                    u = _6029 + ceil32(return_data.size) + 32
                    while s < _6117:
                        _6674 = mem[t]
                        require return_data.size + -_6074 + -mem[t] - 32 >= 160
                        _6730 = mem[64]
                        require mem[64] + 160 >= mem[64] and mem[64] + 160 <= test266151307()
                        mem[64] = mem[64] + 160
                        require mem[_6029 + _6074 + _6674 + 32] == mem[_6029 + _6074 + _6674 + 44 len 20]
                        mem[_6730] = mem[_6029 + _6074 + _6674 + 32]
                        require mem[_6029 + _6074 + _6674 + 64] == mem[_6029 + _6074 + _6674 + 76 len 20]
                        mem[_6730 + 32] = mem[_6029 + _6074 + _6674 + 64]
                        mem[_6730 + 64] = mem[_6029 + _6074 + _6674 + 96]
                        require mem[_6029 + _6074 + _6674 + 128] == mem[_6029 + _6074 + _6674 + 159 len 1]
                        mem[_6730 + 96] = mem[_6029 + _6074 + _6674 + 128]
                        _6912 = mem[_6029 + _6074 + _6674 + 160]
                        require mem[_6029 + _6074 + _6674 + 160] <= test266151307()
                        require _6029 + _6074 + _6674 + mem[_6029 + _6074 + _6674 + 160] + 63 < _6029 + return_data.size
                        _6956 = mem[_6029 + _6074 + _6674 + mem[_6029 + _6074 + _6674 + 160] + 32]
                        require mem[_6029 + _6074 + _6674 + mem[_6029 + _6074 + _6674 + 160] + 32] <= test266151307()
                        _6978 = mem[64]
                        require mem[64] + ceil32(mem[_6029 + _6074 + _6674 + mem[_6029 + _6074 + _6674 + 160] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_6029 + _6074 + _6674 + mem[_6029 + _6074 + _6674 + 160] + 32]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[_6029 + _6074 + _6674 + mem[_6029 + _6074 + _6674 + 160] + 32]) + 32
                        mem[_6978] = _6956
                        require _6074 + _6674 + _6912 + _6956 + 64 <= return_data.size
                        idx = 0
                        while idx < _6956:
                            mem[idx + _6978 + 32] = mem[idx + _6029 + _6074 + _6674 + _6912 + 64]
                            idx = idx + 32
                            continue 
                        if ceil32(_6956) > _6956:
                            mem[_6978 + _6956 + 32] = 0
                        mem[_6730 + 128] = _6978
                        mem[u] = _6730
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_3128 + 160] = _6029 + ceil32(return_data.size)
                    require ext_code.size(address(_3127))
                    staticcall address(_3127).0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6746 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_3128 + 192] = mem[_6746]
            else:
                mem[_3137 + ceil32(return_data.size) + _3170 + 32] = 0
                mem[_3128] = _3137 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_3127))
                staticcall address(_3127).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4183 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4200 = mem[_4183]
                require mem[_4183] <= test266151307()
                require _4183 + mem[_4183] + 31 < _4183 + return_data.size
                _4234 = mem[_4183 + mem[_4183]]
                require mem[_4183 + mem[_4183]] <= test266151307()
                require ceil32(mem[_4183 + mem[_4183]]) + 32 >= 0 and _4183 + ceil32(return_data.size) + ceil32(mem[_4183 + mem[_4183]]) + 32 <= test266151307()
                mem[64] = _4183 + ceil32(return_data.size) + ceil32(mem[_4183 + mem[_4183]]) + 32
                mem[_4183 + ceil32(return_data.size)] = _4234
                require _4200 + _4234 + 32 <= return_data.size
                s = 0
                while s < _4234:
                    mem[s + _4183 + ceil32(return_data.size) + 32] = mem[s + _4183 + _4200 + 32]
                    s = s + 32
                    continue 
                if ceil32(_4234) <= _4234:
                    mem[_3128 + 32] = _4183 + ceil32(return_data.size)
                    require ext_code.size(address(_3127))
                    staticcall address(_3127).manager() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5166 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5166] == mem[_5166 + 12 len 20]
                    mem[_3128 + 64] = mem[_5166 + 12 len 20]
                    mem[mem[64]] = 0xb2494df300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_3127))
                    staticcall address(_3127).0xb2494df3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5292 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5316 = mem[_5292]
                    require mem[_5292] <= test266151307()
                    require _5292 + mem[_5292] + 31 < _5292 + return_data.size
                    _5353 = mem[_5292 + mem[_5292]]
                    require mem[_5292 + mem[_5292]] <= test266151307()
                    require (32 * mem[_5292 + mem[_5292]]) + 32 >= 0 and _5292 + ceil32(return_data.size) + (32 * mem[_5292 + mem[_5292]]) + 32 <= test266151307()
                    mem[64] = _5292 + ceil32(return_data.size) + (32 * mem[_5292 + mem[_5292]]) + 32
                    mem[_5292 + ceil32(return_data.size)] = _5353
                    require return_data.size >= _5316 + (32 * _5353) + 32
                    t = _5292 + _5316 + 32
                    u = _5292 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _5353:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    mem[_3128 + 96] = _5292 + ceil32(return_data.size)
                    require idx < mem[384]
                    mem[_3128 + 128] = mem[(32 * idx) + 416]
                    mem[mem[64]] = 0x8027586000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_3127))
                    staticcall address(_3127).getPositions() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6030 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6075 = mem[_6030]
                    require mem[_6030] <= test266151307()
                    require _6030 + mem[_6030] + 31 < _6030 + return_data.size
                    _6118 = mem[_6030 + mem[_6030]]
                    require mem[_6030 + mem[_6030]] <= test266151307()
                    require (32 * mem[_6030 + mem[_6030]]) + 32 >= 0 and _6030 + ceil32(return_data.size) + (32 * mem[_6030 + mem[_6030]]) + 32 <= test266151307()
                    mem[64] = _6030 + ceil32(return_data.size) + (32 * mem[_6030 + mem[_6030]]) + 32
                    mem[_6030 + ceil32(return_data.size)] = _6118
                    s = 0
                    t = _6030 + _6075 + 32
                    u = _6030 + ceil32(return_data.size) + 32
                    while s < _6118:
                        _6675 = mem[t]
                        require return_data.size + -_6075 + -mem[t] - 32 >= 160
                        _6731 = mem[64]
                        require mem[64] + 160 >= mem[64] and mem[64] + 160 <= test266151307()
                        mem[64] = mem[64] + 160
                        require mem[_6030 + _6075 + _6675 + 32] == mem[_6030 + _6075 + _6675 + 44 len 20]
                        mem[_6731] = mem[_6030 + _6075 + _6675 + 32]
                        require mem[_6030 + _6075 + _6675 + 64] == mem[_6030 + _6075 + _6675 + 76 len 20]
                        mem[_6731 + 32] = mem[_6030 + _6075 + _6675 + 64]
                        mem[_6731 + 64] = mem[_6030 + _6075 + _6675 + 96]
                        require mem[_6030 + _6075 + _6675 + 128] == mem[_6030 + _6075 + _6675 + 159 len 1]
                        mem[_6731 + 96] = mem[_6030 + _6075 + _6675 + 128]
                        _6913 = mem[_6030 + _6075 + _6675 + 160]
                        require mem[_6030 + _6075 + _6675 + 160] <= test266151307()
                        require _6030 + _6075 + _6675 + mem[_6030 + _6075 + _6675 + 160] + 63 < _6030 + return_data.size
                        _6957 = mem[_6030 + _6075 + _6675 + mem[_6030 + _6075 + _6675 + 160] + 32]
                        require mem[_6030 + _6075 + _6675 + mem[_6030 + _6075 + _6675 + 160] + 32] <= test266151307()
                        _6979 = mem[64]
                        require mem[64] + ceil32(mem[_6030 + _6075 + _6675 + mem[_6030 + _6075 + _6675 + 160] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_6030 + _6075 + _6675 + mem[_6030 + _6075 + _6675 + 160] + 32]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[_6030 + _6075 + _6675 + mem[_6030 + _6075 + _6675 + 160] + 32]) + 32
                        mem[_6979] = _6957
                        require _6075 + _6675 + _6913 + _6957 + 64 <= return_data.size
                        idx = 0
                        while idx < _6957:
                            mem[idx + _6979 + 32] = mem[idx + _6030 + _6075 + _6675 + _6913 + 64]
                            idx = idx + 32
                            continue 
                        if ceil32(_6957) > _6957:
                            mem[_6979 + _6957 + 32] = 0
                        mem[_6731 + 128] = _6979
                        mem[u] = _6731
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_3128 + 160] = _6030 + ceil32(return_data.size)
                    require ext_code.size(address(_3127))
                    staticcall address(_3127).0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6747 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_3128 + 192] = mem[_6747]
                else:
                    mem[_4183 + ceil32(return_data.size) + _4234 + 32] = 0
                    mem[_3128 + 32] = _4183 + ceil32(return_data.size)
                    require ext_code.size(address(_3127))
                    staticcall address(_3127).manager() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5187 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5187] == mem[_5187 + 12 len 20]
                    mem[_3128 + 64] = mem[_5187 + 12 len 20]
                    mem[mem[64]] = 0xb2494df300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_3127))
                    staticcall address(_3127).0xb2494df3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5303 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5338 = mem[_5303]
                    require mem[_5303] <= test266151307()
                    require _5303 + mem[_5303] + 31 < _5303 + return_data.size
                    _5367 = mem[_5303 + mem[_5303]]
                    require mem[_5303 + mem[_5303]] <= test266151307()
                    require (32 * mem[_5303 + mem[_5303]]) + 32 >= 0 and _5303 + ceil32(return_data.size) + (32 * mem[_5303 + mem[_5303]]) + 32 <= test266151307()
                    mem[64] = _5303 + ceil32(return_data.size) + (32 * mem[_5303 + mem[_5303]]) + 32
                    mem[_5303 + ceil32(return_data.size)] = _5367
                    require return_data.size >= _5338 + (32 * _5367) + 32
                    t = _5303 + _5338 + 32
                    u = _5303 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _5367:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    mem[_3128 + 96] = _5303 + ceil32(return_data.size)
                    require idx < mem[384]
                    mem[_3128 + 128] = mem[(32 * idx) + 416]
                    mem[mem[64]] = 0x8027586000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_3127))
                    staticcall address(_3127).getPositions() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6031 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6076 = mem[_6031]
                    require mem[_6031] <= test266151307()
                    require _6031 + mem[_6031] + 31 < _6031 + return_data.size
                    _6119 = mem[_6031 + mem[_6031]]
                    require mem[_6031 + mem[_6031]] <= test266151307()
                    require (32 * mem[_6031 + mem[_6031]]) + 32 >= 0 and _6031 + ceil32(return_data.size) + (32 * mem[_6031 + mem[_6031]]) + 32 <= test266151307()
                    mem[64] = _6031 + ceil32(return_data.size) + (32 * mem[_6031 + mem[_6031]]) + 32
                    mem[_6031 + ceil32(return_data.size)] = _6119
                    s = 0
                    t = _6031 + _6076 + 32
                    u = _6031 + ceil32(return_data.size) + 32
                    while s < _6119:
                        _6676 = mem[t]
                        require return_data.size + -_6076 + -mem[t] - 32 >= 160
                        _6732 = mem[64]
                        require mem[64] + 160 >= mem[64] and mem[64] + 160 <= test266151307()
                        mem[64] = mem[64] + 160
                        require mem[_6031 + _6076 + _6676 + 32] == mem[_6031 + _6076 + _6676 + 44 len 20]
                        mem[_6732] = mem[_6031 + _6076 + _6676 + 32]
                        require mem[_6031 + _6076 + _6676 + 64] == mem[_6031 + _6076 + _6676 + 76 len 20]
                        mem[_6732 + 32] = mem[_6031 + _6076 + _6676 + 64]
                        mem[_6732 + 64] = mem[_6031 + _6076 + _6676 + 96]
                        require mem[_6031 + _6076 + _6676 + 128] == mem[_6031 + _6076 + _6676 + 159 len 1]
                        mem[_6732 + 96] = mem[_6031 + _6076 + _6676 + 128]
                        _6914 = mem[_6031 + _6076 + _6676 + 160]
                        require mem[_6031 + _6076 + _6676 + 160] <= test266151307()
                        require _6031 + _6076 + _6676 + mem[_6031 + _6076 + _6676 + 160] + 63 < _6031 + return_data.size
                        _6958 = mem[_6031 + _6076 + _6676 + mem[_6031 + _6076 + _6676 + 160] + 32]
                        require mem[_6031 + _6076 + _6676 + mem[_6031 + _6076 + _6676 + 160] + 32] <= test266151307()
                        _6980 = mem[64]
                        require mem[64] + ceil32(mem[_6031 + _6076 + _6676 + mem[_6031 + _6076 + _6676 + 160] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_6031 + _6076 + _6676 + mem[_6031 + _6076 + _6676 + 160] + 32]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[_6031 + _6076 + _6676 + mem[_6031 + _6076 + _6676 + 160] + 32]) + 32
                        mem[_6980] = _6958
                        require _6076 + _6676 + _6914 + _6958 + 64 <= return_data.size
                        idx = 0
                        while idx < _6958:
                            mem[idx + _6980 + 32] = mem[idx + _6031 + _6076 + _6676 + _6914 + 64]
                            idx = idx + 32
                            continue 
                        if ceil32(_6958) > _6958:
                            mem[_6980 + _6958 + 32] = 0
                        mem[_6732 + 128] = _6980
                        mem[u] = _6732
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_3128 + 160] = _6031 + ceil32(return_data.size)
                    require ext_code.size(address(_3127))
                    staticcall address(_3127).0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6748 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_3128 + 192] = mem[_6748]
            require idx < mem[_2100]
            mem[(32 * idx) + _2100 + 32] = _3128
            idx = idx + 1
            continue 
        require 0 < mem[_2100]
        _3133 = mem[_2100 + 32]
        _3136 = mem[64]
        mem[mem[64]] = 32
        _3152 = mem[_3133]
        mem[mem[64] + 32] = 224
        _3157 = mem[_3152]
        mem[mem[64] + 256] = mem[_3152]
        mem[mem[64] + 288 len ceil32(_3157)] = mem[_3152 + 32 len ceil32(_3157)]
        if ceil32(_3157) <= _3157:
            _4136 = mem[_3133 + 32]
            mem[mem[64] + 64] = ceil32(_3157) + 256
            _4148 = mem[_4136]
            mem[ceil32(_3157) + mem[64] + 288] = mem[_4136]
            mem[ceil32(_3157) + mem[64] + 320 len ceil32(_4148)] = mem[_4136 + 32 len ceil32(_4148)]
            if ceil32(_4148) <= _4148:
                mem[mem[64] + 96] = mem[_3133 + 76 len 20]
                _5112 = mem[_3133 + 96]
                mem[mem[64] + 128] = ceil32(_4148) + ceil32(_3157) + 288
                _5129 = mem[_5112]
                mem[ceil32(_4148) + ceil32(_3157) + mem[64] + 320] = mem[_5112]
                idx = 0
                s = _5112 + 32
                t = ceil32(_4148) + ceil32(_3157) + mem[64] + 352
                while idx < _5129:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _5961 = mem[_3133 + 128]
                mem[mem[64] + 160] = ceil32(_4148) + ceil32(_3157) + (32 * _5129) + 320
                _5973 = mem[_5961]
                mem[ceil32(_4148) + ceil32(_3157) + mem[64] + (32 * _5129) + 352] = mem[_5961]
                idx = 0
                s = _5961 + 32
                t = ceil32(_4148) + ceil32(_3157) + mem[64] + (32 * _5129) + 384
                while idx < _5973:
                    require mem[s] < 3
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6689 = mem[_3133 + 160]
                mem[mem[64] + 192] = ceil32(_4148) + ceil32(_3157) + (32 * _5129) + (32 * _5973) + 352
                _6690 = mem[_6689]
                mem[ceil32(_4148) + ceil32(_3157) + mem[64] + (32 * _5129) + (32 * _5973) + 384] = mem[_6689]
                s = _6689 + 32
                t = ceil32(_4148) + ceil32(_3157) + mem[64] + (32 * _5129) + (32 * _5973) + (32 * _6690) + 416
                u = ceil32(_4148) + ceil32(_3157) + mem[64] + (32 * _5129) + (32 * _5973) + 416
                idx = 0
                while idx < _6690:
                    mem[u] = t + -ceil32(_4148) + -ceil32(_3157) + -_3136 + -(32 * _5129) + -(32 * _5973) - 416
                    _7190 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_7190 + 44 len 20]
                    mem[t + 64] = mem[_7190 + 64]
                    mem[t + 96] = mem[_7190 + 127 len 1]
                    _7325 = mem[_7190 + 128]
                    mem[t + 128] = 160
                    _7345 = mem[_7325]
                    mem[t + 160] = mem[_7325]
                    v = 0
                    while v < _7345:
                        mem[v + t + 192] = mem[v + _7325 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7345) > _7345:
                        mem[t + _7345 + 192] = 0
                    s = s + 32
                    t = ceil32(_7345) + t + 192
                    u = u + 32
                    idx = idx + 1
                    continue 
            else:
                mem[ceil32(_3157) + mem[64] + _4148 + 320] = 0
                mem[mem[64] + 96] = mem[_3133 + 76 len 20]
                _5131 = mem[_3133 + 96]
                mem[mem[64] + 128] = ceil32(_4148) + ceil32(_3157) + 288
                _5150 = mem[_5131]
                mem[ceil32(_4148) + ceil32(_3157) + mem[64] + 320] = mem[_5131]
                idx = 0
                s = _5131 + 32
                t = ceil32(_4148) + ceil32(_3157) + mem[64] + 352
                while idx < _5150:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _5962 = mem[_3133 + 128]
                mem[mem[64] + 160] = ceil32(_4148) + ceil32(_3157) + (32 * _5150) + 320
                _5974 = mem[_5962]
                mem[ceil32(_4148) + ceil32(_3157) + mem[64] + (32 * _5150) + 352] = mem[_5962]
                idx = 0
                s = _5962 + 32
                t = ceil32(_4148) + ceil32(_3157) + mem[64] + (32 * _5150) + 384
                while idx < _5974:
                    require mem[s] < 3
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6691 = mem[_3133 + 160]
                mem[mem[64] + 192] = ceil32(_4148) + ceil32(_3157) + (32 * _5150) + (32 * _5974) + 352
                _6692 = mem[_6691]
                mem[ceil32(_4148) + ceil32(_3157) + mem[64] + (32 * _5150) + (32 * _5974) + 384] = mem[_6691]
                s = _6691 + 32
                t = ceil32(_4148) + ceil32(_3157) + mem[64] + (32 * _5150) + (32 * _5974) + (32 * _6692) + 416
                u = ceil32(_4148) + ceil32(_3157) + mem[64] + (32 * _5150) + (32 * _5974) + 416
                idx = 0
                while idx < _6692:
                    mem[u] = t + -ceil32(_4148) + -ceil32(_3157) + -_3136 + -(32 * _5150) + -(32 * _5974) - 416
                    _7193 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_7193 + 44 len 20]
                    mem[t + 64] = mem[_7193 + 64]
                    mem[t + 96] = mem[_7193 + 127 len 1]
                    _7326 = mem[_7193 + 128]
                    mem[t + 128] = 160
                    _7346 = mem[_7326]
                    mem[t + 160] = mem[_7326]
                    v = 0
                    while v < _7346:
                        mem[v + t + 192] = mem[v + _7326 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7346) > _7346:
                        mem[t + _7346 + 192] = 0
                    s = s + 32
                    t = ceil32(_7346) + t + 192
                    u = u + 32
                    idx = idx + 1
                    continue 
        else:
            mem[mem[64] + _3157 + 288] = 0
            _4149 = mem[_3133 + 32]
            mem[mem[64] + 64] = ceil32(_3157) + 256
            _4161 = mem[_4149]
            mem[ceil32(_3157) + mem[64] + 288] = mem[_4149]
            mem[ceil32(_3157) + mem[64] + 320 len ceil32(_4161)] = mem[_4149 + 32 len ceil32(_4161)]
            if ceil32(_4161) <= _4161:
                mem[mem[64] + 96] = mem[_3133 + 76 len 20]
                _5114 = mem[_3133 + 96]
                mem[mem[64] + 128] = ceil32(_4161) + ceil32(_3157) + 288
                _5132 = mem[_5114]
                mem[ceil32(_4161) + ceil32(_3157) + mem[64] + 320] = mem[_5114]
                idx = 0
                s = _5114 + 32
                t = ceil32(_4161) + ceil32(_3157) + mem[64] + 352
                while idx < _5132:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _5963 = mem[_3133 + 128]
                mem[mem[64] + 160] = ceil32(_4161) + ceil32(_3157) + (32 * _5132) + 320
                _5975 = mem[_5963]
                mem[ceil32(_4161) + ceil32(_3157) + mem[64] + (32 * _5132) + 352] = mem[_5963]
                idx = 0
                s = _5963 + 32
                t = ceil32(_4161) + ceil32(_3157) + mem[64] + (32 * _5132) + 384
                while idx < _5975:
                    require mem[s] < 3
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6693 = mem[_3133 + 160]
                mem[mem[64] + 192] = ceil32(_4161) + ceil32(_3157) + (32 * _5132) + (32 * _5975) + 352
                _6694 = mem[_6693]
                mem[ceil32(_4161) + ceil32(_3157) + mem[64] + (32 * _5132) + (32 * _5975) + 384] = mem[_6693]
                s = _6693 + 32
                t = ceil32(_4161) + ceil32(_3157) + mem[64] + (32 * _5132) + (32 * _5975) + (32 * _6694) + 416
                u = ceil32(_4161) + ceil32(_3157) + mem[64] + (32 * _5132) + (32 * _5975) + 416
                idx = 0
                while idx < _6694:
                    mem[u] = t + -ceil32(_4161) + -ceil32(_3157) + -_3136 + -(32 * _5132) + -(32 * _5975) - 416
                    _7196 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_7196 + 44 len 20]
                    mem[t + 64] = mem[_7196 + 64]
                    mem[t + 96] = mem[_7196 + 127 len 1]
                    _7327 = mem[_7196 + 128]
                    mem[t + 128] = 160
                    _7347 = mem[_7327]
                    mem[t + 160] = mem[_7327]
                    v = 0
                    while v < _7347:
                        mem[v + t + 192] = mem[v + _7327 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7347) > _7347:
                        mem[t + _7347 + 192] = 0
                    s = s + 32
                    t = ceil32(_7347) + t + 192
                    u = u + 32
                    idx = idx + 1
                    continue 
            else:
                mem[ceil32(_3157) + mem[64] + _4161 + 320] = 0
                mem[mem[64] + 96] = mem[_3133 + 76 len 20]
                _5134 = mem[_3133 + 96]
                mem[mem[64] + 128] = ceil32(_4161) + ceil32(_3157) + 288
                _5151 = mem[_5134]
                mem[ceil32(_4161) + ceil32(_3157) + mem[64] + 320] = mem[_5134]
                idx = 0
                s = _5134 + 32
                t = ceil32(_4161) + ceil32(_3157) + mem[64] + 352
                while idx < _5151:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _5964 = mem[_3133 + 128]
                mem[mem[64] + 160] = ceil32(_4161) + ceil32(_3157) + (32 * _5151) + 320
                _5976 = mem[_5964]
                mem[ceil32(_4161) + ceil32(_3157) + mem[64] + (32 * _5151) + 352] = mem[_5964]
                idx = 0
                s = _5964 + 32
                t = ceil32(_4161) + ceil32(_3157) + mem[64] + (32 * _5151) + 384
                while idx < _5976:
                    require mem[s] < 3
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _6695 = mem[_3133 + 160]
                mem[mem[64] + 192] = ceil32(_4161) + ceil32(_3157) + (32 * _5151) + (32 * _5976) + 352
                _6696 = mem[_6695]
                mem[ceil32(_4161) + ceil32(_3157) + mem[64] + (32 * _5151) + (32 * _5976) + 384] = mem[_6695]
                s = _6695 + 32
                t = ceil32(_4161) + ceil32(_3157) + mem[64] + (32 * _5151) + (32 * _5976) + (32 * _6696) + 416
                u = ceil32(_4161) + ceil32(_3157) + mem[64] + (32 * _5151) + (32 * _5976) + 416
                idx = 0
                while idx < _6696:
                    mem[u] = t + -ceil32(_4161) + -ceil32(_3157) + -_3136 + -(32 * _5151) + -(32 * _5976) - 416
                    _7199 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_7199 + 44 len 20]
                    mem[t + 64] = mem[_7199 + 64]
                    mem[t + 96] = mem[_7199 + 127 len 1]
                    _7328 = mem[_7199 + 128]
                    mem[t + 128] = 160
                    _7348 = mem[_7328]
                    mem[t + 160] = mem[_7328]
                    v = 0
                    while v < _7348:
                        mem[v + t + 192] = mem[v + _7328 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7348) > _7348:
                        mem[t + _7348 + 192] = 0
                    s = s + 32
                    t = ceil32(_7348) + t + 192
                    u = u + 32
                    idx = idx + 1
                    continue 
        mem[_3136 + 224] = mem[_3133 + 192]
    else:
        mem[64] = _2100 + (32 * _2097) + 256
        mem[_2100 + (32 * _2097) + 32] = 96
        mem[_2100 + (32 * _2097) + 64] = 96
        mem[_2100 + (32 * _2097) + 96] = 0
        mem[_2100 + (32 * _2097) + 128] = 96
        mem[_2100 + (32 * _2097) + 160] = 96
        mem[_2100 + (32 * _2097) + 192] = 96
        mem[_2100 + (32 * _2097) + 224] = 0
        mem[var35001] = _2100 + (32 * _2097) + 32
        s = var35001
        idx = var35002
        while idx - 1:
            mem[64] = mem[64] + 224
            mem[_2100 + (32 * _2097) + 32] = 96
            mem[_2100 + (32 * _2097) + 64] = 96
            mem[_2100 + (32 * _2097) + 96] = 0
            mem[_2100 + (32 * _2097) + 128] = 96
            mem[_2100 + (32 * _2097) + 160] = 96
            mem[_2100 + (32 * _2097) + 192] = 96
            mem[_2100 + (32 * _2097) + 224] = 0
            mem[s + 32] = _2100 + (32 * _2097) + 32
            s = s + 32
            idx = idx - 1
            continue 
        _5064 = mem[320]
        idx = 0
        while idx < _5064:
            require idx < mem[320]
            _5089 = mem[(32 * idx) + 352]
            _5090 = mem[64]
            mem[64] = mem[64] + 224
            mem[mem[64]] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(_5089))
            staticcall address(_5089).name() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5116 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5157 = mem[_5116]
            require mem[_5116] <= test266151307()
            require _5116 + mem[_5116] + 31 < _5116 + return_data.size
            _5200 = mem[_5116 + mem[_5116]]
            require mem[_5116 + mem[_5116]] <= test266151307()
            require ceil32(mem[_5116 + mem[_5116]]) + 32 >= 0 and _5116 + ceil32(return_data.size) + ceil32(mem[_5116 + mem[_5116]]) + 32 <= test266151307()
            mem[64] = _5116 + ceil32(return_data.size) + ceil32(mem[_5116 + mem[_5116]]) + 32
            mem[_5116 + ceil32(return_data.size)] = _5200
            require _5157 + _5200 + 32 <= return_data.size
            s = 0
            while s < _5200:
                mem[s + _5116 + ceil32(return_data.size) + 32] = mem[s + _5116 + _5157 + 32]
                s = s + 32
                continue 
            if ceil32(_5200) <= _5200:
                mem[_5090] = _5116 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_5089))
                staticcall address(_5089).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6077 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6121 = mem[_6077]
                require mem[_6077] <= test266151307()
                require _6077 + mem[_6077] + 31 < _6077 + return_data.size
                _6178 = mem[_6077 + mem[_6077]]
                require mem[_6077 + mem[_6077]] <= test266151307()
                require ceil32(mem[_6077 + mem[_6077]]) + 32 >= 0 and _6077 + ceil32(return_data.size) + ceil32(mem[_6077 + mem[_6077]]) + 32 <= test266151307()
                mem[64] = _6077 + ceil32(return_data.size) + ceil32(mem[_6077 + mem[_6077]]) + 32
                mem[_6077 + ceil32(return_data.size)] = _6178
                require _6121 + _6178 + 32 <= return_data.size
                s = 0
                while s < _6178:
                    mem[s + _6077 + ceil32(return_data.size) + 32] = mem[s + _6077 + _6121 + 32]
                    s = s + 32
                    continue 
                if ceil32(_6178) <= _6178:
                    mem[_5090 + 32] = _6077 + ceil32(return_data.size)
                    require ext_code.size(address(_5089))
                    staticcall address(_5089).manager() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6823 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6823] == mem[_6823 + 12 len 20]
                    mem[_5090 + 64] = mem[_6823 + 12 len 20]
                    mem[mem[64]] = 0xb2494df300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_5089))
                    staticcall address(_5089).0xb2494df3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6965 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6985 = mem[_6965]
                    require mem[_6965] <= test266151307()
                    require _6965 + mem[_6965] + 31 < _6965 + return_data.size
                    _7013 = mem[_6965 + mem[_6965]]
                    require mem[_6965 + mem[_6965]] <= test266151307()
                    require (32 * mem[_6965 + mem[_6965]]) + 32 >= 0 and _6965 + ceil32(return_data.size) + (32 * mem[_6965 + mem[_6965]]) + 32 <= test266151307()
                    mem[64] = _6965 + ceil32(return_data.size) + (32 * mem[_6965 + mem[_6965]]) + 32
                    mem[_6965 + ceil32(return_data.size)] = _7013
                    require return_data.size >= _6985 + (32 * _7013) + 32
                    t = _6965 + _6985 + 32
                    u = _6965 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _7013:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    mem[_5090 + 96] = _6965 + ceil32(return_data.size)
                    require idx < mem[384]
                    mem[_5090 + 128] = mem[(32 * idx) + 416]
                    mem[mem[64]] = 0x8027586000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_5089))
                    staticcall address(_5089).getPositions() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7297 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7329 = mem[_7297]
                    require mem[_7297] <= test266151307()
                    require _7297 + mem[_7297] + 31 < _7297 + return_data.size
                    _7361 = mem[_7297 + mem[_7297]]
                    require mem[_7297 + mem[_7297]] <= test266151307()
                    require (32 * mem[_7297 + mem[_7297]]) + 32 >= 0 and _7297 + ceil32(return_data.size) + (32 * mem[_7297 + mem[_7297]]) + 32 <= test266151307()
                    mem[64] = _7297 + ceil32(return_data.size) + (32 * mem[_7297 + mem[_7297]]) + 32
                    mem[_7297 + ceil32(return_data.size)] = _7361
                    s = 0
                    t = _7297 + _7329 + 32
                    u = _7297 + ceil32(return_data.size) + 32
                    while s < _7361:
                        _7521 = mem[t]
                        require return_data.size + -_7329 + -mem[t] - 32 >= 160
                        _7549 = mem[64]
                        require mem[64] + 160 >= mem[64] and mem[64] + 160 <= test266151307()
                        mem[64] = mem[64] + 160
                        require mem[_7297 + _7329 + _7521 + 32] == mem[_7297 + _7329 + _7521 + 44 len 20]
                        mem[_7549] = mem[_7297 + _7329 + _7521 + 32]
                        require mem[_7297 + _7329 + _7521 + 64] == mem[_7297 + _7329 + _7521 + 76 len 20]
                        mem[_7549 + 32] = mem[_7297 + _7329 + _7521 + 64]
                        mem[_7549 + 64] = mem[_7297 + _7329 + _7521 + 96]
                        require mem[_7297 + _7329 + _7521 + 128] == mem[_7297 + _7329 + _7521 + 159 len 1]
                        mem[_7549 + 96] = mem[_7297 + _7329 + _7521 + 128]
                        _7637 = mem[_7297 + _7329 + _7521 + 160]
                        require mem[_7297 + _7329 + _7521 + 160] <= test266151307()
                        require _7297 + _7329 + _7521 + mem[_7297 + _7329 + _7521 + 160] + 63 < _7297 + return_data.size
                        _7645 = mem[_7297 + _7329 + _7521 + mem[_7297 + _7329 + _7521 + 160] + 32]
                        require mem[_7297 + _7329 + _7521 + mem[_7297 + _7329 + _7521 + 160] + 32] <= test266151307()
                        _7649 = mem[64]
                        require mem[64] + ceil32(mem[_7297 + _7329 + _7521 + mem[_7297 + _7329 + _7521 + 160] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_7297 + _7329 + _7521 + mem[_7297 + _7329 + _7521 + 160] + 32]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[_7297 + _7329 + _7521 + mem[_7297 + _7329 + _7521 + 160] + 32]) + 32
                        mem[_7649] = _7645
                        require _7329 + _7521 + _7637 + _7645 + 64 <= return_data.size
                        idx = 0
                        while idx < _7645:
                            mem[idx + _7649 + 32] = mem[idx + _7297 + _7329 + _7521 + _7637 + 64]
                            idx = idx + 32
                            continue 
                        if ceil32(_7645) > _7645:
                            mem[_7649 + _7645 + 32] = 0
                        mem[_7549 + 128] = _7649
                        mem[u] = _7549
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_5090 + 160] = _7297 + ceil32(return_data.size)
                    require ext_code.size(address(_5089))
                    staticcall address(_5089).0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7565 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_5090 + 192] = mem[_7565]
                else:
                    mem[_6077 + ceil32(return_data.size) + _6178 + 32] = 0
                    mem[_5090 + 32] = _6077 + ceil32(return_data.size)
                    require ext_code.size(address(_5089))
                    staticcall address(_5089).manager() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6857 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6857] == mem[_6857 + 12 len 20]
                    mem[_5090 + 64] = mem[_6857 + 12 len 20]
                    mem[mem[64]] = 0xb2494df300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_5089))
                    staticcall address(_5089).0xb2494df3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6971 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7003 = mem[_6971]
                    require mem[_6971] <= test266151307()
                    require _6971 + mem[_6971] + 31 < _6971 + return_data.size
                    _7021 = mem[_6971 + mem[_6971]]
                    require mem[_6971 + mem[_6971]] <= test266151307()
                    require (32 * mem[_6971 + mem[_6971]]) + 32 >= 0 and _6971 + ceil32(return_data.size) + (32 * mem[_6971 + mem[_6971]]) + 32 <= test266151307()
                    mem[64] = _6971 + ceil32(return_data.size) + (32 * mem[_6971 + mem[_6971]]) + 32
                    mem[_6971 + ceil32(return_data.size)] = _7021
                    require return_data.size >= _7003 + (32 * _7021) + 32
                    t = _6971 + _7003 + 32
                    u = _6971 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _7021:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    mem[_5090 + 96] = _6971 + ceil32(return_data.size)
                    require idx < mem[384]
                    mem[_5090 + 128] = mem[(32 * idx) + 416]
                    mem[mem[64]] = 0x8027586000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_5089))
                    staticcall address(_5089).getPositions() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7298 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7330 = mem[_7298]
                    require mem[_7298] <= test266151307()
                    require _7298 + mem[_7298] + 31 < _7298 + return_data.size
                    _7362 = mem[_7298 + mem[_7298]]
                    require mem[_7298 + mem[_7298]] <= test266151307()
                    require (32 * mem[_7298 + mem[_7298]]) + 32 >= 0 and _7298 + ceil32(return_data.size) + (32 * mem[_7298 + mem[_7298]]) + 32 <= test266151307()
                    mem[64] = _7298 + ceil32(return_data.size) + (32 * mem[_7298 + mem[_7298]]) + 32
                    mem[_7298 + ceil32(return_data.size)] = _7362
                    s = 0
                    t = _7298 + _7330 + 32
                    u = _7298 + ceil32(return_data.size) + 32
                    while s < _7362:
                        _7522 = mem[t]
                        require return_data.size + -_7330 + -mem[t] - 32 >= 160
                        _7550 = mem[64]
                        require mem[64] + 160 >= mem[64] and mem[64] + 160 <= test266151307()
                        mem[64] = mem[64] + 160
                        require mem[_7298 + _7330 + _7522 + 32] == mem[_7298 + _7330 + _7522 + 44 len 20]
                        mem[_7550] = mem[_7298 + _7330 + _7522 + 32]
                        require mem[_7298 + _7330 + _7522 + 64] == mem[_7298 + _7330 + _7522 + 76 len 20]
                        mem[_7550 + 32] = mem[_7298 + _7330 + _7522 + 64]
                        mem[_7550 + 64] = mem[_7298 + _7330 + _7522 + 96]
                        require mem[_7298 + _7330 + _7522 + 128] == mem[_7298 + _7330 + _7522 + 159 len 1]
                        mem[_7550 + 96] = mem[_7298 + _7330 + _7522 + 128]
                        _7638 = mem[_7298 + _7330 + _7522 + 160]
                        require mem[_7298 + _7330 + _7522 + 160] <= test266151307()
                        require _7298 + _7330 + _7522 + mem[_7298 + _7330 + _7522 + 160] + 63 < _7298 + return_data.size
                        _7646 = mem[_7298 + _7330 + _7522 + mem[_7298 + _7330 + _7522 + 160] + 32]
                        require mem[_7298 + _7330 + _7522 + mem[_7298 + _7330 + _7522 + 160] + 32] <= test266151307()
                        _7650 = mem[64]
                        require mem[64] + ceil32(mem[_7298 + _7330 + _7522 + mem[_7298 + _7330 + _7522 + 160] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_7298 + _7330 + _7522 + mem[_7298 + _7330 + _7522 + 160] + 32]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[_7298 + _7330 + _7522 + mem[_7298 + _7330 + _7522 + 160] + 32]) + 32
                        mem[_7650] = _7646
                        require _7330 + _7522 + _7638 + _7646 + 64 <= return_data.size
                        idx = 0
                        while idx < _7646:
                            mem[idx + _7650 + 32] = mem[idx + _7298 + _7330 + _7522 + _7638 + 64]
                            idx = idx + 32
                            continue 
                        if ceil32(_7646) > _7646:
                            mem[_7650 + _7646 + 32] = 0
                        mem[_7550 + 128] = _7650
                        mem[u] = _7550
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_5090 + 160] = _7298 + ceil32(return_data.size)
                    require ext_code.size(address(_5089))
                    staticcall address(_5089).0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7566 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_5090 + 192] = mem[_7566]
            else:
                mem[_5116 + ceil32(return_data.size) + _5200 + 32] = 0
                mem[_5090] = _5116 + ceil32(return_data.size)
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_5089))
                staticcall address(_5089).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6109 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _6138 = mem[_6109]
                require mem[_6109] <= test266151307()
                require _6109 + mem[_6109] + 31 < _6109 + return_data.size
                _6195 = mem[_6109 + mem[_6109]]
                require mem[_6109 + mem[_6109]] <= test266151307()
                require ceil32(mem[_6109 + mem[_6109]]) + 32 >= 0 and _6109 + ceil32(return_data.size) + ceil32(mem[_6109 + mem[_6109]]) + 32 <= test266151307()
                mem[64] = _6109 + ceil32(return_data.size) + ceil32(mem[_6109 + mem[_6109]]) + 32
                mem[_6109 + ceil32(return_data.size)] = _6195
                require _6138 + _6195 + 32 <= return_data.size
                s = 0
                while s < _6195:
                    mem[s + _6109 + ceil32(return_data.size) + 32] = mem[s + _6109 + _6138 + 32]
                    s = s + 32
                    continue 
                if ceil32(_6195) <= _6195:
                    mem[_5090 + 32] = _6109 + ceil32(return_data.size)
                    require ext_code.size(address(_5089))
                    staticcall address(_5089).manager() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6824 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6824] == mem[_6824 + 12 len 20]
                    mem[_5090 + 64] = mem[_6824 + 12 len 20]
                    mem[mem[64]] = 0xb2494df300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_5089))
                    staticcall address(_5089).0xb2494df3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6966 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6986 = mem[_6966]
                    require mem[_6966] <= test266151307()
                    require _6966 + mem[_6966] + 31 < _6966 + return_data.size
                    _7014 = mem[_6966 + mem[_6966]]
                    require mem[_6966 + mem[_6966]] <= test266151307()
                    require (32 * mem[_6966 + mem[_6966]]) + 32 >= 0 and _6966 + ceil32(return_data.size) + (32 * mem[_6966 + mem[_6966]]) + 32 <= test266151307()
                    mem[64] = _6966 + ceil32(return_data.size) + (32 * mem[_6966 + mem[_6966]]) + 32
                    mem[_6966 + ceil32(return_data.size)] = _7014
                    require return_data.size >= _6986 + (32 * _7014) + 32
                    t = _6966 + _6986 + 32
                    u = _6966 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _7014:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    mem[_5090 + 96] = _6966 + ceil32(return_data.size)
                    require idx < mem[384]
                    mem[_5090 + 128] = mem[(32 * idx) + 416]
                    mem[mem[64]] = 0x8027586000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_5089))
                    staticcall address(_5089).getPositions() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7299 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7331 = mem[_7299]
                    require mem[_7299] <= test266151307()
                    require _7299 + mem[_7299] + 31 < _7299 + return_data.size
                    _7363 = mem[_7299 + mem[_7299]]
                    require mem[_7299 + mem[_7299]] <= test266151307()
                    require (32 * mem[_7299 + mem[_7299]]) + 32 >= 0 and _7299 + ceil32(return_data.size) + (32 * mem[_7299 + mem[_7299]]) + 32 <= test266151307()
                    mem[64] = _7299 + ceil32(return_data.size) + (32 * mem[_7299 + mem[_7299]]) + 32
                    mem[_7299 + ceil32(return_data.size)] = _7363
                    s = 0
                    t = _7299 + _7331 + 32
                    u = _7299 + ceil32(return_data.size) + 32
                    while s < _7363:
                        _7523 = mem[t]
                        require return_data.size + -_7331 + -mem[t] - 32 >= 160
                        _7551 = mem[64]
                        require mem[64] + 160 >= mem[64] and mem[64] + 160 <= test266151307()
                        mem[64] = mem[64] + 160
                        require mem[_7299 + _7331 + _7523 + 32] == mem[_7299 + _7331 + _7523 + 44 len 20]
                        mem[_7551] = mem[_7299 + _7331 + _7523 + 32]
                        require mem[_7299 + _7331 + _7523 + 64] == mem[_7299 + _7331 + _7523 + 76 len 20]
                        mem[_7551 + 32] = mem[_7299 + _7331 + _7523 + 64]
                        mem[_7551 + 64] = mem[_7299 + _7331 + _7523 + 96]
                        require mem[_7299 + _7331 + _7523 + 128] == mem[_7299 + _7331 + _7523 + 159 len 1]
                        mem[_7551 + 96] = mem[_7299 + _7331 + _7523 + 128]
                        _7639 = mem[_7299 + _7331 + _7523 + 160]
                        require mem[_7299 + _7331 + _7523 + 160] <= test266151307()
                        require _7299 + _7331 + _7523 + mem[_7299 + _7331 + _7523 + 160] + 63 < _7299 + return_data.size
                        _7647 = mem[_7299 + _7331 + _7523 + mem[_7299 + _7331 + _7523 + 160] + 32]
                        require mem[_7299 + _7331 + _7523 + mem[_7299 + _7331 + _7523 + 160] + 32] <= test266151307()
                        _7651 = mem[64]
                        require mem[64] + ceil32(mem[_7299 + _7331 + _7523 + mem[_7299 + _7331 + _7523 + 160] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_7299 + _7331 + _7523 + mem[_7299 + _7331 + _7523 + 160] + 32]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[_7299 + _7331 + _7523 + mem[_7299 + _7331 + _7523 + 160] + 32]) + 32
                        mem[_7651] = _7647
                        require _7331 + _7523 + _7639 + _7647 + 64 <= return_data.size
                        idx = 0
                        while idx < _7647:
                            mem[idx + _7651 + 32] = mem[idx + _7299 + _7331 + _7523 + _7639 + 64]
                            idx = idx + 32
                            continue 
                        if ceil32(_7647) > _7647:
                            mem[_7651 + _7647 + 32] = 0
                        mem[_7551 + 128] = _7651
                        mem[u] = _7551
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_5090 + 160] = _7299 + ceil32(return_data.size)
                    require ext_code.size(address(_5089))
                    staticcall address(_5089).0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7567 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_5090 + 192] = mem[_7567]
                else:
                    mem[_6109 + ceil32(return_data.size) + _6195 + 32] = 0
                    mem[_5090 + 32] = _6109 + ceil32(return_data.size)
                    require ext_code.size(address(_5089))
                    staticcall address(_5089).manager() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6858 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_6858] == mem[_6858 + 12 len 20]
                    mem[_5090 + 64] = mem[_6858 + 12 len 20]
                    mem[mem[64]] = 0xb2494df300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_5089))
                    staticcall address(_5089).0xb2494df3 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6972 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7004 = mem[_6972]
                    require mem[_6972] <= test266151307()
                    require _6972 + mem[_6972] + 31 < _6972 + return_data.size
                    _7022 = mem[_6972 + mem[_6972]]
                    require mem[_6972 + mem[_6972]] <= test266151307()
                    require (32 * mem[_6972 + mem[_6972]]) + 32 >= 0 and _6972 + ceil32(return_data.size) + (32 * mem[_6972 + mem[_6972]]) + 32 <= test266151307()
                    mem[64] = _6972 + ceil32(return_data.size) + (32 * mem[_6972 + mem[_6972]]) + 32
                    mem[_6972 + ceil32(return_data.size)] = _7022
                    require return_data.size >= _7004 + (32 * _7022) + 32
                    t = _6972 + _7004 + 32
                    u = _6972 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _7022:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    mem[_5090 + 96] = _6972 + ceil32(return_data.size)
                    require idx < mem[384]
                    mem[_5090 + 128] = mem[(32 * idx) + 416]
                    mem[mem[64]] = 0x8027586000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_5089))
                    staticcall address(_5089).getPositions() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7300 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _7332 = mem[_7300]
                    require mem[_7300] <= test266151307()
                    require _7300 + mem[_7300] + 31 < _7300 + return_data.size
                    _7364 = mem[_7300 + mem[_7300]]
                    require mem[_7300 + mem[_7300]] <= test266151307()
                    require (32 * mem[_7300 + mem[_7300]]) + 32 >= 0 and _7300 + ceil32(return_data.size) + (32 * mem[_7300 + mem[_7300]]) + 32 <= test266151307()
                    mem[64] = _7300 + ceil32(return_data.size) + (32 * mem[_7300 + mem[_7300]]) + 32
                    mem[_7300 + ceil32(return_data.size)] = _7364
                    s = 0
                    t = _7300 + _7332 + 32
                    u = _7300 + ceil32(return_data.size) + 32
                    while s < _7364:
                        _7524 = mem[t]
                        require return_data.size + -_7332 + -mem[t] - 32 >= 160
                        _7552 = mem[64]
                        require mem[64] + 160 >= mem[64] and mem[64] + 160 <= test266151307()
                        mem[64] = mem[64] + 160
                        require mem[_7300 + _7332 + _7524 + 32] == mem[_7300 + _7332 + _7524 + 44 len 20]
                        mem[_7552] = mem[_7300 + _7332 + _7524 + 32]
                        require mem[_7300 + _7332 + _7524 + 64] == mem[_7300 + _7332 + _7524 + 76 len 20]
                        mem[_7552 + 32] = mem[_7300 + _7332 + _7524 + 64]
                        mem[_7552 + 64] = mem[_7300 + _7332 + _7524 + 96]
                        require mem[_7300 + _7332 + _7524 + 128] == mem[_7300 + _7332 + _7524 + 159 len 1]
                        mem[_7552 + 96] = mem[_7300 + _7332 + _7524 + 128]
                        _7640 = mem[_7300 + _7332 + _7524 + 160]
                        require mem[_7300 + _7332 + _7524 + 160] <= test266151307()
                        require _7300 + _7332 + _7524 + mem[_7300 + _7332 + _7524 + 160] + 63 < _7300 + return_data.size
                        _7648 = mem[_7300 + _7332 + _7524 + mem[_7300 + _7332 + _7524 + 160] + 32]
                        require mem[_7300 + _7332 + _7524 + mem[_7300 + _7332 + _7524 + 160] + 32] <= test266151307()
                        _7652 = mem[64]
                        require mem[64] + ceil32(mem[_7300 + _7332 + _7524 + mem[_7300 + _7332 + _7524 + 160] + 32]) + 32 >= mem[64] and mem[64] + ceil32(mem[_7300 + _7332 + _7524 + mem[_7300 + _7332 + _7524 + 160] + 32]) + 32 <= test266151307()
                        mem[64] = mem[64] + ceil32(mem[_7300 + _7332 + _7524 + mem[_7300 + _7332 + _7524 + 160] + 32]) + 32
                        mem[_7652] = _7648
                        require _7332 + _7524 + _7640 + _7648 + 64 <= return_data.size
                        idx = 0
                        while idx < _7648:
                            mem[idx + _7652 + 32] = mem[idx + _7300 + _7332 + _7524 + _7640 + 64]
                            idx = idx + 32
                            continue 
                        if ceil32(_7648) > _7648:
                            mem[_7652 + _7648 + 32] = 0
                        mem[_7552 + 128] = _7652
                        mem[u] = _7552
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    mem[_5090 + 160] = _7300 + ceil32(return_data.size)
                    require ext_code.size(address(_5089))
                    staticcall address(_5089).0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7568 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    mem[_5090 + 192] = mem[_7568]
            require idx < mem[_2100]
            mem[(32 * idx) + _2100 + 32] = _5090
            idx = idx + 1
            continue 
        require 0 < mem[_2100]
        _5109 = mem[_2100 + 32]
        _5115 = mem[64]
        mem[mem[64]] = 32
        _5156 = mem[_5109]
        mem[mem[64] + 32] = 224
        _5167 = mem[_5156]
        mem[mem[64] + 256] = mem[_5156]
        mem[mem[64] + 288 len ceil32(_5167)] = mem[_5156 + 32 len ceil32(_5167)]
        if ceil32(_5167) <= _5167:
            _6009 = mem[_5109 + 32]
            mem[mem[64] + 64] = ceil32(_5167) + 256
            _6032 = mem[_6009]
            mem[ceil32(_5167) + mem[64] + 288] = mem[_6009]
            mem[ceil32(_5167) + mem[64] + 320 len ceil32(_6032)] = mem[_6009 + 32 len ceil32(_6032)]
            if ceil32(_6032) <= _6032:
                mem[mem[64] + 96] = mem[_5109 + 76 len 20]
                _6750 = mem[_5109 + 96]
                mem[mem[64] + 128] = ceil32(_6032) + ceil32(_5167) + 288
                _6773 = mem[_6750]
                mem[ceil32(_6032) + ceil32(_5167) + mem[64] + 320] = mem[_6750]
                idx = 0
                s = _6750 + 32
                t = ceil32(_6032) + ceil32(_5167) + mem[64] + 352
                while idx < _6773:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7229 = mem[_5109 + 128]
                mem[_5115 + 160] = ceil32(_6032) + ceil32(_5167) + (32 * _6773) + 320
                _7249 = mem[_7229]
                mem[ceil32(_6032) + ceil32(_5167) + _5115 + (32 * _6773) + 352] = mem[_7229]
                idx = 0
                s = _7229 + 32
                t = ceil32(_6032) + ceil32(_5167) + _5115 + (32 * _6773) + 384
                while idx < _7249:
                    require mem[s] < 3
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7525 = mem[_5109 + 160]
                mem[_5115 + 192] = ceil32(_6032) + ceil32(_5167) + (32 * _6773) + (32 * _7249) + 352
                _7526 = mem[_7525]
                mem[ceil32(_6032) + ceil32(_5167) + _5115 + (32 * _6773) + (32 * _7249) + 384] = mem[_7525]
                s = _7525 + 32
                t = ceil32(_6032) + ceil32(_5167) + _5115 + (32 * _6773) + (32 * _7249) + (32 * _7526) + 416
                u = ceil32(_6032) + ceil32(_5167) + _5115 + (32 * _6773) + (32 * _7249) + 416
                idx = 0
                while idx < _7526:
                    mem[u] = t + -ceil32(_6032) + -ceil32(_5167) + -_5115 + -(32 * _6773) + -(32 * _7249) - 416
                    _7662 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_7662 + 44 len 20]
                    mem[t + 64] = mem[_7662 + 64]
                    mem[t + 96] = mem[_7662 + 127 len 1]
                    _7693 = mem[_7662 + 128]
                    mem[t + 128] = 160
                    _7697 = mem[_7693]
                    mem[t + 160] = mem[_7693]
                    v = 0
                    while v < _7697:
                        mem[v + t + 192] = mem[v + _7693 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7697) > _7697:
                        mem[t + _7697 + 192] = 0
                    s = s + 32
                    t = ceil32(_7697) + t + 192
                    u = u + 32
                    idx = idx + 1
                    continue 
            else:
                mem[ceil32(_5167) + mem[64] + _6032 + 320] = 0
                mem[mem[64] + 96] = mem[_5109 + 76 len 20]
                _6775 = mem[_5109 + 96]
                mem[mem[64] + 128] = ceil32(_6032) + ceil32(_5167) + 288
                _6803 = mem[_6775]
                mem[ceil32(_6032) + ceil32(_5167) + mem[64] + 320] = mem[_6775]
                idx = 0
                s = _6775 + 32
                t = ceil32(_6032) + ceil32(_5167) + mem[64] + 352
                while idx < _6803:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7230 = mem[_5109 + 128]
                mem[_5115 + 160] = ceil32(_6032) + ceil32(_5167) + (32 * _6803) + 320
                _7250 = mem[_7230]
                mem[ceil32(_6032) + ceil32(_5167) + _5115 + (32 * _6803) + 352] = mem[_7230]
                idx = 0
                s = _7230 + 32
                t = ceil32(_6032) + ceil32(_5167) + _5115 + (32 * _6803) + 384
                while idx < _7250:
                    require mem[s] < 3
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7527 = mem[_5109 + 160]
                mem[_5115 + 192] = ceil32(_6032) + ceil32(_5167) + (32 * _6803) + (32 * _7250) + 352
                _7528 = mem[_7527]
                mem[ceil32(_6032) + ceil32(_5167) + _5115 + (32 * _6803) + (32 * _7250) + 384] = mem[_7527]
                s = _7527 + 32
                t = ceil32(_6032) + ceil32(_5167) + _5115 + (32 * _6803) + (32 * _7250) + (32 * _7528) + 416
                u = ceil32(_6032) + ceil32(_5167) + _5115 + (32 * _6803) + (32 * _7250) + 416
                idx = 0
                while idx < _7528:
                    mem[u] = t + -ceil32(_6032) + -ceil32(_5167) + -_5115 + -(32 * _6803) + -(32 * _7250) - 416
                    _7665 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_7665 + 44 len 20]
                    mem[t + 64] = mem[_7665 + 64]
                    mem[t + 96] = mem[_7665 + 127 len 1]
                    _7694 = mem[_7665 + 128]
                    mem[t + 128] = 160
                    _7698 = mem[_7694]
                    mem[t + 160] = mem[_7694]
                    v = 0
                    while v < _7698:
                        mem[v + t + 192] = mem[v + _7694 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7698) > _7698:
                        mem[t + _7698 + 192] = 0
                    s = s + 32
                    t = ceil32(_7698) + t + 192
                    u = u + 32
                    idx = idx + 1
                    continue 
        else:
            mem[mem[64] + _5167 + 288] = 0
            _6033 = mem[_5109 + 32]
            mem[mem[64] + 64] = ceil32(_5167) + 256
            _6062 = mem[_6033]
            mem[ceil32(_5167) + mem[64] + 288] = mem[_6033]
            mem[ceil32(_5167) + mem[64] + 320 len ceil32(_6062)] = mem[_6033 + 32 len ceil32(_6062)]
            if ceil32(_6062) <= _6062:
                mem[mem[64] + 96] = mem[_5109 + 76 len 20]
                _6752 = mem[_5109 + 96]
                mem[mem[64] + 128] = ceil32(_6062) + ceil32(_5167) + 288
                _6776 = mem[_6752]
                mem[ceil32(_6062) + ceil32(_5167) + mem[64] + 320] = mem[_6752]
                idx = 0
                s = _6752 + 32
                t = ceil32(_6062) + ceil32(_5167) + mem[64] + 352
                while idx < _6776:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7231 = mem[_5109 + 128]
                mem[_5115 + 160] = ceil32(_6062) + ceil32(_5167) + (32 * _6776) + 320
                _7251 = mem[_7231]
                mem[ceil32(_6062) + ceil32(_5167) + _5115 + (32 * _6776) + 352] = mem[_7231]
                idx = 0
                s = _7231 + 32
                t = ceil32(_6062) + ceil32(_5167) + _5115 + (32 * _6776) + 384
                while idx < _7251:
                    require mem[s] < 3
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7529 = mem[_5109 + 160]
                mem[_5115 + 192] = ceil32(_6062) + ceil32(_5167) + (32 * _6776) + (32 * _7251) + 352
                _7530 = mem[_7529]
                mem[ceil32(_6062) + ceil32(_5167) + _5115 + (32 * _6776) + (32 * _7251) + 384] = mem[_7529]
                s = _7529 + 32
                t = ceil32(_6062) + ceil32(_5167) + _5115 + (32 * _6776) + (32 * _7251) + (32 * _7530) + 416
                u = ceil32(_6062) + ceil32(_5167) + _5115 + (32 * _6776) + (32 * _7251) + 416
                idx = 0
                while idx < _7530:
                    mem[u] = t + -ceil32(_6062) + -ceil32(_5167) + -_5115 + -(32 * _6776) + -(32 * _7251) - 416
                    _7668 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_7668 + 44 len 20]
                    mem[t + 64] = mem[_7668 + 64]
                    mem[t + 96] = mem[_7668 + 127 len 1]
                    _7695 = mem[_7668 + 128]
                    mem[t + 128] = 160
                    _7699 = mem[_7695]
                    mem[t + 160] = mem[_7695]
                    v = 0
                    while v < _7699:
                        mem[v + t + 192] = mem[v + _7695 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7699) > _7699:
                        mem[t + _7699 + 192] = 0
                    s = s + 32
                    t = ceil32(_7699) + t + 192
                    u = u + 32
                    idx = idx + 1
                    continue 
            else:
                mem[ceil32(_5167) + mem[64] + _6062 + 320] = 0
                mem[mem[64] + 96] = mem[_5109 + 76 len 20]
                _6778 = mem[_5109 + 96]
                mem[mem[64] + 128] = ceil32(_6062) + ceil32(_5167) + 288
                _6804 = mem[_6778]
                mem[ceil32(_6062) + ceil32(_5167) + mem[64] + 320] = mem[_6778]
                idx = 0
                s = _6778 + 32
                t = ceil32(_6062) + ceil32(_5167) + mem[64] + 352
                while idx < _6804:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7232 = mem[_5109 + 128]
                mem[_5115 + 160] = ceil32(_6062) + ceil32(_5167) + (32 * _6804) + 320
                _7252 = mem[_7232]
                mem[ceil32(_6062) + ceil32(_5167) + _5115 + (32 * _6804) + 352] = mem[_7232]
                idx = 0
                s = _7232 + 32
                t = ceil32(_6062) + ceil32(_5167) + _5115 + (32 * _6804) + 384
                while idx < _7252:
                    require mem[s] < 3
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _7531 = mem[_5109 + 160]
                mem[_5115 + 192] = ceil32(_6062) + ceil32(_5167) + (32 * _6804) + (32 * _7252) + 352
                _7532 = mem[_7531]
                mem[ceil32(_6062) + ceil32(_5167) + _5115 + (32 * _6804) + (32 * _7252) + 384] = mem[_7531]
                s = _7531 + 32
                t = ceil32(_6062) + ceil32(_5167) + _5115 + (32 * _6804) + (32 * _7252) + (32 * _7532) + 416
                u = ceil32(_6062) + ceil32(_5167) + _5115 + (32 * _6804) + (32 * _7252) + 416
                idx = 0
                while idx < _7532:
                    mem[u] = t + -ceil32(_6062) + -ceil32(_5167) + -_5115 + -(32 * _6804) + -(32 * _7252) - 416
                    _7671 = mem[s]
                    mem[t] = mem[mem[s] + 12 len 20]
                    mem[t + 32] = mem[_7671 + 44 len 20]
                    mem[t + 64] = mem[_7671 + 64]
                    mem[t + 96] = mem[_7671 + 127 len 1]
                    _7696 = mem[_7671 + 128]
                    mem[t + 128] = 160
                    _7700 = mem[_7696]
                    mem[t + 160] = mem[_7696]
                    v = 0
                    while v < _7700:
                        mem[v + t + 192] = mem[v + _7696 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_7700) > _7700:
                        mem[t + _7700 + 192] = 0
                    s = s + 32
                    t = ceil32(_7700) + t + 192
                    u = u + 32
                    idx = idx + 1
                    continue 
        mem[_5115 + 224] = mem[_5109 + 192]
    return memory
      from mem[64]
       len t - mem[64]
}



}
