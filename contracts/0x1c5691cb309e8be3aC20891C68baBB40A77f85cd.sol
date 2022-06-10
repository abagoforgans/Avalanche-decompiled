contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function sub_e06aecb6(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require ('cd', 36).length <= test266151307()
    mem[96] = ('cd', 36).length
    if not ('cd', 36).length:
        require ('cd', 36).length <= test266151307()
        mem[(32 * ('cd', 36).length) + 128] = ('cd', 36).length
        if not ('cd', 36).length:
            require ('cd', 36).length <= test266151307()
            mem[(64 * ('cd', 36).length) + 160] = ('cd', 36).length
            mem[64] = (98 * ('cd', 36).length) + 192
            if not ('cd', 36).length:
                idx = 0
                while idx != ('cd', 36).length:
                    require idx < ('cd', 36).length
                    require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                    require ext_code.size(stor0)
                    staticcall stor0.getUserReserveData(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4])
                    mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _241 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 288
                    _265 = mem[_241 + 32]
                    _266 = mem[_241 + 64]
                    require mem[_241 + 224] == mem[_241 + 251 len 5]
                    _329 = mem[_241 + 256]
                    require mem[_241 + 256] == bool(mem[_241 + 256])
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = mem[_241]
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _265 + _266
                    require idx < mem[(64 * ('cd', 36).length) + 160]
                    mem[(32 * idx) + (64 * ('cd', 36).length) + 192] = bool(_329)
                    idx = idx + 1
                    continue 
                _192 = mem[64]
                mem[mem[64]] = 96
                _200 = mem[96]
                mem[mem[64] + 96] = mem[96]
                mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
                mem[_192 + 32] = (32 * _200) + 128
                _384 = mem[(32 * ('cd', 36).length) + 128]
                mem[_192 + (32 * _200) + 128] = mem[(32 * ('cd', 36).length) + 128]
                mem[_192 + (32 * _200) + 160 len 32 * _384] = mem[(32 * ('cd', 36).length) + 160 len 32 * _384]
                mem[_192 + 64] = (32 * _200) + (32 * _384) + 160
                _432 = mem[(64 * ('cd', 36).length) + 160]
                mem[_192 + (32 * _200) + (32 * _384) + 160] = mem[(64 * ('cd', 36).length) + 160]
                idx = 0
                s = _192 + (32 * _200) + (32 * _384) + 192
                t = (64 * ('cd', 36).length) + 192
                while idx < _432:
                    mem[s] = bool(mem[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _192 + (32 * _200) + (32 * _384) + (32 * _432) + -mem[64] + 192
            mem[(64 * ('cd', 36).length) + 192 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
            idx = 0
            while idx != ('cd', 36).length:
                require idx < ('cd', 36).length
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(stor0)
                staticcall stor0.getUserReserveData(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4])
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _243 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                _273 = mem[_243 + 32]
                _274 = mem[_243 + 64]
                require mem[_243 + 224] == mem[_243 + 251 len 5]
                _331 = mem[_243 + 256]
                require mem[_243 + 256] == bool(mem[_243 + 256])
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_243]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _273 + _274
                require idx < mem[(64 * ('cd', 36).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 36).length) + 192] = bool(_331)
                idx = idx + 1
                continue 
            _193 = mem[64]
            mem[mem[64]] = 96
            _201 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[_193 + 32] = (32 * _201) + 128
            _385 = mem[(32 * ('cd', 36).length) + 128]
            mem[_193 + (32 * _201) + 128] = mem[(32 * ('cd', 36).length) + 128]
            mem[_193 + (32 * _201) + 160 len 32 * _385] = mem[(32 * ('cd', 36).length) + 160 len 32 * _385]
            mem[_193 + 64] = (32 * _201) + (32 * _385) + 160
            _433 = mem[(64 * ('cd', 36).length) + 160]
            mem[_193 + (32 * _201) + (32 * _385) + 160] = mem[(64 * ('cd', 36).length) + 160]
            idx = 0
            s = _193 + (32 * _201) + (32 * _385) + 192
            t = (64 * ('cd', 36).length) + 192
            while idx < _433:
                mem[s] = bool(mem[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _193 + (32 * _201) + (32 * _385) + (32 * _433) + -mem[64] + 192
        mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        require ('cd', 36).length <= test266151307()
        mem[(64 * ('cd', 36).length) + 160] = ('cd', 36).length
        mem[64] = (98 * ('cd', 36).length) + 192
        if not ('cd', 36).length:
            idx = 0
            while idx != ('cd', 36).length:
                require idx < ('cd', 36).length
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(stor0)
                staticcall stor0.getUserReserveData(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4])
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _245 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                _281 = mem[_245 + 32]
                _282 = mem[_245 + 64]
                require mem[_245 + 224] == mem[_245 + 251 len 5]
                _333 = mem[_245 + 256]
                require mem[_245 + 256] == bool(mem[_245 + 256])
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_245]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _281 + _282
                require idx < mem[(64 * ('cd', 36).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 36).length) + 192] = bool(_333)
                idx = idx + 1
                continue 
            _194 = mem[64]
            mem[mem[64]] = 96
            _202 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[_194 + 32] = (32 * _202) + 128
            _386 = mem[(32 * ('cd', 36).length) + 128]
            mem[_194 + (32 * _202) + 128] = mem[(32 * ('cd', 36).length) + 128]
            mem[_194 + (32 * _202) + 160 len 32 * _386] = mem[(32 * ('cd', 36).length) + 160 len 32 * _386]
            mem[_194 + 64] = (32 * _202) + (32 * _386) + 160
            _434 = mem[(64 * ('cd', 36).length) + 160]
            mem[_194 + (32 * _202) + (32 * _386) + 160] = mem[(64 * ('cd', 36).length) + 160]
            idx = 0
            s = _194 + (32 * _202) + (32 * _386) + 192
            t = (64 * ('cd', 36).length) + 192
            while idx < _434:
                mem[s] = bool(mem[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _194 + (32 * _202) + (32 * _386) + (32 * _434) + -mem[64] + 192
        mem[(64 * ('cd', 36).length) + 192 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx != ('cd', 36).length:
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(stor0)
            staticcall stor0.getUserReserveData(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4])
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _247 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _289 = mem[_247 + 32]
            _290 = mem[_247 + 64]
            require mem[_247 + 224] == mem[_247 + 251 len 5]
            _335 = mem[_247 + 256]
            require mem[_247 + 256] == bool(mem[_247 + 256])
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_247]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _289 + _290
            require idx < mem[(64 * ('cd', 36).length) + 160]
            mem[(32 * idx) + (64 * ('cd', 36).length) + 192] = bool(_335)
            idx = idx + 1
            continue 
        _195 = mem[64]
        mem[mem[64]] = 96
        _203 = mem[96]
        mem[mem[64] + 96] = mem[96]
        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * _203) + 128
        _387 = mem[(32 * ('cd', 36).length) + 128]
        mem[_195 + (32 * _203) + 128] = mem[(32 * ('cd', 36).length) + 128]
        mem[_195 + (32 * _203) + 160 len 32 * _387] = mem[(32 * ('cd', 36).length) + 160 len 32 * _387]
        mem[_195 + 64] = (32 * _203) + (32 * _387) + 160
        _435 = mem[(64 * ('cd', 36).length) + 160]
        mem[_195 + (32 * _203) + (32 * _387) + 160] = mem[(64 * ('cd', 36).length) + 160]
        idx = 0
        s = _195 + (32 * _203) + (32 * _387) + 192
        t = (64 * ('cd', 36).length) + 192
        while idx < _435:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _195 + (32 * _203) + (32 * _387) + (32 * _435) + -mem[64] + 192
    mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    require ('cd', 36).length <= test266151307()
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 36).length
    if not ('cd', 36).length:
        require ('cd', 36).length <= test266151307()
        mem[(64 * ('cd', 36).length) + 160] = ('cd', 36).length
        mem[64] = (98 * ('cd', 36).length) + 192
        if not ('cd', 36).length:
            idx = 0
            while idx != ('cd', 36).length:
                require idx < ('cd', 36).length
                require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
                require ext_code.size(stor0)
                staticcall stor0.getUserReserveData(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4])
                mem[mem[64] len 288] = ext_call.return_data[0 len 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _249 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 288
                _297 = mem[_249 + 32]
                _298 = mem[_249 + 64]
                require mem[_249 + 224] == mem[_249 + 251 len 5]
                _337 = mem[_249 + 256]
                require mem[_249 + 256] == bool(mem[_249 + 256])
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_249]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _297 + _298
                require idx < mem[(64 * ('cd', 36).length) + 160]
                mem[(32 * idx) + (64 * ('cd', 36).length) + 192] = bool(_337)
                idx = idx + 1
                continue 
            _196 = mem[64]
            mem[mem[64]] = 96
            _204 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[_196 + 32] = (32 * _204) + 128
            _388 = mem[(32 * ('cd', 36).length) + 128]
            mem[_196 + (32 * _204) + 128] = mem[(32 * ('cd', 36).length) + 128]
            mem[_196 + (32 * _204) + 160 len 32 * _388] = mem[(32 * ('cd', 36).length) + 160 len 32 * _388]
            mem[_196 + 64] = (32 * _204) + (32 * _388) + 160
            _436 = mem[(64 * ('cd', 36).length) + 160]
            mem[_196 + (32 * _204) + (32 * _388) + 160] = mem[(64 * ('cd', 36).length) + 160]
            idx = 0
            s = _196 + (32 * _204) + (32 * _388) + 192
            t = (64 * ('cd', 36).length) + 192
            while idx < _436:
                mem[s] = bool(mem[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _196 + (32 * _204) + (32 * _388) + (32 * _436) + -mem[64] + 192
        mem[(64 * ('cd', 36).length) + 192 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx != ('cd', 36).length:
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(stor0)
            staticcall stor0.getUserReserveData(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4])
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _251 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _305 = mem[_251 + 32]
            _306 = mem[_251 + 64]
            require mem[_251 + 224] == mem[_251 + 251 len 5]
            _339 = mem[_251 + 256]
            require mem[_251 + 256] == bool(mem[_251 + 256])
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_251]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _305 + _306
            require idx < mem[(64 * ('cd', 36).length) + 160]
            mem[(32 * idx) + (64 * ('cd', 36).length) + 192] = bool(_339)
            idx = idx + 1
            continue 
        _197 = mem[64]
        mem[mem[64]] = 96
        _205 = mem[96]
        mem[mem[64] + 96] = mem[96]
        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[_197 + 32] = (32 * _205) + 128
        _389 = mem[(32 * ('cd', 36).length) + 128]
        mem[_197 + (32 * _205) + 128] = mem[(32 * ('cd', 36).length) + 128]
        mem[_197 + (32 * _205) + 160 len 32 * _389] = mem[(32 * ('cd', 36).length) + 160 len 32 * _389]
        mem[_197 + 64] = (32 * _205) + (32 * _389) + 160
        _437 = mem[(64 * ('cd', 36).length) + 160]
        mem[_197 + (32 * _205) + (32 * _389) + 160] = mem[(64 * ('cd', 36).length) + 160]
        idx = 0
        s = _197 + (32 * _205) + (32 * _389) + 192
        t = (64 * ('cd', 36).length) + 192
        while idx < _437:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _197 + (32 * _205) + (32 * _389) + (32 * _437) + -mem[64] + 192
    mem[(32 * ('cd', 36).length) + 160 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    require ('cd', 36).length <= test266151307()
    mem[(64 * ('cd', 36).length) + 160] = ('cd', 36).length
    mem[64] = (98 * ('cd', 36).length) + 192
    if not ('cd', 36).length:
        idx = 0
        while idx != ('cd', 36).length:
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(stor0)
            staticcall stor0.getUserReserveData(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4])
            mem[mem[64] len 288] = ext_call.return_data[0 len 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _253 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 288
            _313 = mem[_253 + 32]
            _314 = mem[_253 + 64]
            require mem[_253 + 224] == mem[_253 + 251 len 5]
            _341 = mem[_253 + 256]
            require mem[_253 + 256] == bool(mem[_253 + 256])
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_253]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _313 + _314
            require idx < mem[(64 * ('cd', 36).length) + 160]
            mem[(32 * idx) + (64 * ('cd', 36).length) + 192] = bool(_341)
            idx = idx + 1
            continue 
        _198 = mem[64]
        mem[mem[64]] = 96
        _206 = mem[96]
        mem[mem[64] + 96] = mem[96]
        mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * _206) + 128
        _390 = mem[(32 * ('cd', 36).length) + 128]
        mem[_198 + (32 * _206) + 128] = mem[(32 * ('cd', 36).length) + 128]
        mem[_198 + (32 * _206) + 160 len 32 * _390] = mem[(32 * ('cd', 36).length) + 160 len 32 * _390]
        mem[_198 + 64] = (32 * _206) + (32 * _390) + 160
        _438 = mem[(64 * ('cd', 36).length) + 160]
        mem[_198 + (32 * _206) + (32 * _390) + 160] = mem[(64 * ('cd', 36).length) + 160]
        idx = 0
        s = _198 + (32 * _206) + (32 * _390) + 192
        t = (64 * ('cd', 36).length) + 192
        while idx < _438:
            mem[s] = bool(mem[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _198 + (32 * _206) + (32 * _390) + (32 * _438) + -mem[64] + 192
    mem[(64 * ('cd', 36).length) + 192 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx != ('cd', 36).length:
        require idx < ('cd', 36).length
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        require ext_code.size(stor0)
        staticcall stor0.getUserReserveData(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4])
        mem[mem[64] len 288] = ext_call.return_data[0 len 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _255 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 288
        _321 = mem[_255 + 32]
        _322 = mem[_255 + 64]
        require mem[_255 + 224] == mem[_255 + 251 len 5]
        _343 = mem[_255 + 256]
        require mem[_255 + 256] == bool(mem[_255 + 256])
        require idx < mem[96]
        mem[(32 * idx) + 128] = mem[_255]
        require idx < mem[(32 * ('cd', 36).length) + 128]
        mem[(32 * idx) + (32 * ('cd', 36).length) + 160] = _321 + _322
        require idx < mem[(64 * ('cd', 36).length) + 160]
        mem[(32 * idx) + (64 * ('cd', 36).length) + 192] = bool(_343)
        idx = idx + 1
        continue 
    _199 = mem[64]
    mem[mem[64]] = 96
    _207 = mem[96]
    mem[mem[64] + 96] = mem[96]
    mem[mem[64] + 128 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * _207) + 128
    _391 = mem[(32 * ('cd', 36).length) + 128]
    mem[_199 + (32 * _207) + 128] = mem[(32 * ('cd', 36).length) + 128]
    mem[_199 + (32 * _207) + 160 len 32 * _391] = mem[(32 * ('cd', 36).length) + 160 len 32 * _391]
    mem[_199 + 64] = (32 * _207) + (32 * _391) + 160
    _439 = mem[(64 * ('cd', 36).length) + 160]
    mem[_199 + (32 * _207) + (32 * _391) + 160] = mem[(64 * ('cd', 36).length) + 160]
    idx = 0
    s = _199 + (32 * _207) + (32 * _391) + 192
    t = (64 * ('cd', 36).length) + 192
    while idx < _439:
        mem[s] = bool(mem[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _199 + (32 * _207) + (32 * _391) + (32 * _439) + -mem[64] + 192
}



}
