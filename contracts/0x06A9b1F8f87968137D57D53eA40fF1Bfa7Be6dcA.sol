contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function executeCall(address arg1, string arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if arg2.length:
        mem[96 len arg2.length] = arg2[all]
        mem[arg2.length + 96] = 0
        call arg1 with:
           funct Mask(32, 224, Mask(32, 224, sha3(arg2[all])) >> 224, arg3[all], Mask(8 * floor32(arg3.length + 35) + -arg3.length - 4, -(8 * floor32(arg3.length + 35) + -arg3.length - 4) + 256, 0) >> -(8 * floor32(arg3.length + 35) + -arg3.length - 4) + 256) >> 224
             gas gas_remaining wei
            args (Mask(8 * arg3.length, -(8 * arg3.length + 4) + 256, Mask(8 * floor32(arg3.length + 35) + -arg3.length - 4, -(8 * floor32(arg3.length + 35) + -arg3.length - 4) + 256, 0) >> -(8 * floor32(arg3.length + 35) + -arg3.length - 4) + 256) << (8 * arg3.length + 4) - 256)
        if not ext_call.success:
            return ''
        if return_data.size:
            return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
        mem[arg3.length + 196 len floor32(arg3.length + 35)] = Mask(32, 224, sha3(arg2[all])) >> 224, arg3[all], Mask(8 * floor32(arg3.length + 35) + -arg3.length - 4, -(8 * floor32(arg3.length + 35) + -arg3.length - 4) + 256, 32) >> -(8 * floor32(arg3.length + 35) + -arg3.length - 4) + 256
        if floor32(arg3.length + 35) <= arg3.length + 4:
            return Array(len=arg3.length + 4, data=Mask(32, 224, sha3(arg2[all])) >> 224, arg3[all], Mask(8 * floor32(arg3.length + 35) + -arg3.length - 4, -(8 * floor32(arg3.length + 35) + -arg3.length - 4) + 256, 32) >> -(8 * floor32(arg3.length + 35) + -arg3.length - 4) + 256), 
        mem[(2 * arg3.length) + 200] = 0
        return Array(len=arg3.length + 4, data=Mask(8 * arg3.length + 4, -(8 * arg3.length + 4) + 256, Mask(32, 224, sha3(arg2[all])) >> 224, arg3[all], Mask(8 * floor32(arg3.length + 35) + -arg3.length - 4, -(8 * floor32(arg3.length + 35) + -arg3.length - 4) + 256, 32) >> -(8 * floor32(arg3.length + 35) + -arg3.length - 4) + 256) << (8 * arg3.length + 4) - 256, mem[(2 * arg3.length) + 200 len floor32(arg3.length + 35) + -arg3.length - 4]), 
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(arg3.length) + arg3.length + 128] = 0
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    if not ext_call.success:
        return ''
    if return_data.size:
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(arg3.length) + 128] = 32
    mem[ceil32(arg3.length) + 160] = arg3.length
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), 
           mem[arg3.length + 160 len (2 * ceil32(arg3.length)) + -arg3.length + 32]
}

function executeCallsOfMultiTargets(address[] arg1, string arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            _39 = mem[64]
            mem[mem[64]] = 0xd3eb597d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 36] = 96
            mem[mem[64] + 100] = arg2.length
            mem[mem[64] + 132 len arg2.length] = arg2[all]
            mem[mem[64] + arg2.length + 132] = 0
            mem[mem[64] + 68] = ceil32(arg2.length) + 128
            mem[_39 + ceil32(arg2.length) + 132] = arg3.length
            mem[_39 + ceil32(arg2.length) + 164 len arg3.length] = arg3[all]
            mem[_39 + ceil32(arg2.length) + arg3.length + 164] = 0
            require ext_code.size(this.address)
            call this.address.0xd3eb597d with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _39 + ceil32(arg2.length) + ceil32(arg3.length) + -mem[64] + 160]
            if ext_call.success:
                _47 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _49 = mem[_47]
                require mem[_47] <= test266151307()
                require _47 + mem[_47] + 31 < _47 + return_data.size
                _51 = mem[_47 + mem[_47]]
                if mem[_47 + mem[_47]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_47 + mem[_47]])) + 1 < 0 or _47 + ceil32(return_data.size) + ceil32(ceil32(mem[_47 + mem[_47]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _47 + ceil32(return_data.size) + ceil32(ceil32(mem[_47 + mem[_47]])) + 1
                mem[_47 + ceil32(return_data.size)] = _51
                require _49 + _51 + 32 <= return_data.size
                s = 0
                while s < _51:
                    mem[s + _47 + ceil32(return_data.size) + 32] = mem[s + _47 + _49 + 32]
                    s = s + 32
                    continue 
                if ceil32(_51) > _51:
                    mem[_47 + ceil32(return_data.size) + _51 + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _47 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _32 = mem[64]
        mem[mem[64]] = 32
        _33 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _33:
            mem[t] = u + -_32 - 64
            _62 = mem[s]
            _65 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _65:
                mem[v + u + 32] = mem[v + _62 + 32]
                v = v + 32
                continue 
            if ceil32(_65) > _65:
                mem[u + _65 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_65) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = arg1.length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            _74 = mem[64]
            mem[mem[64]] = 0xd3eb597d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 36] = 96
            mem[mem[64] + 100] = arg2.length
            mem[mem[64] + 132 len arg2.length] = arg2[all]
            mem[mem[64] + arg2.length + 132] = 0
            mem[mem[64] + 68] = ceil32(arg2.length) + 128
            mem[_74 + ceil32(arg2.length) + 132] = arg3.length
            mem[_74 + ceil32(arg2.length) + 164 len arg3.length] = arg3[all]
            mem[_74 + ceil32(arg2.length) + arg3.length + 164] = 0
            require ext_code.size(this.address)
            call this.address.0xd3eb597d with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _74 + ceil32(arg2.length) + ceil32(arg3.length) + -mem[64] + 160]
            if ext_call.success:
                _77 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _78 = mem[_77]
                require mem[_77] <= test266151307()
                require _77 + mem[_77] + 31 < _77 + return_data.size
                _79 = mem[_77 + mem[_77]]
                if mem[_77 + mem[_77]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_77 + mem[_77]])) + 1 < 0 or _77 + ceil32(return_data.size) + ceil32(ceil32(mem[_77 + mem[_77]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _77 + ceil32(return_data.size) + ceil32(ceil32(mem[_77 + mem[_77]])) + 1
                mem[_77 + ceil32(return_data.size)] = _79
                require _78 + _79 + 32 <= return_data.size
                s = 0
                while s < _79:
                    mem[s + _77 + ceil32(return_data.size) + 32] = mem[s + _77 + _78 + 32]
                    s = s + 32
                    continue 
                if ceil32(_79) > _79:
                    mem[_77 + ceil32(return_data.size) + _79 + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _77 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _66 = mem[64]
        mem[mem[64]] = 32
        _67 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _67:
            mem[t] = u + -_66 - 64
            _85 = mem[s]
            _88 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _88:
                mem[v + u + 32] = mem[v + _85 + 32]
                v = v + 32
                continue 
            if ceil32(_88) > _88:
                mem[u + _88 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_88) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function executeMultiCallsOfTarget(address arg1, string[] arg2, bytes[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    mem[64] = (32 * arg2.length) + 128
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            if idx >= arg3.length:
                revert with 0, 50
            require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
            require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
            _44 = mem[64]
            mem[mem[64]] = 0xd3eb597d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 96
            mem[mem[64] + 100] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 132 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 132] = 0
            mem[mem[64] + 68] = ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 128
            mem[_44 + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 132] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
            mem[_44 + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 164 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
            mem[_44 + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 164] = 0
            require ext_code.size(this.address)
            call this.address.0xd3eb597d with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _44 + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + ceil32(cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]) + -mem[64] + 160]
            if ext_call.success:
                _47 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _49 = mem[_47]
                require mem[_47] <= test266151307()
                require _47 + mem[_47] + 31 < _47 + return_data.size
                _51 = mem[_47 + mem[_47]]
                if mem[_47 + mem[_47]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_47 + mem[_47]])) + 1 < 0 or _47 + ceil32(return_data.size) + ceil32(ceil32(mem[_47 + mem[_47]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _47 + ceil32(return_data.size) + ceil32(ceil32(mem[_47 + mem[_47]])) + 1
                mem[_47 + ceil32(return_data.size)] = _51
                require _49 + _51 + 32 <= return_data.size
                s = 0
                while s < _51:
                    mem[s + _47 + ceil32(return_data.size) + 32] = mem[s + _47 + _49 + 32]
                    s = s + 32
                    continue 
                if ceil32(_51) > _51:
                    mem[_47 + ceil32(return_data.size) + _51 + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _47 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _32 = mem[64]
        mem[mem[64]] = 32
        _33 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _33:
            mem[t] = u + -_32 - 64
            _62 = mem[s]
            _65 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _65:
                mem[v + u + 32] = mem[v + _62 + 32]
                v = v + 32
                continue 
            if ceil32(_65) > _65:
                mem[u + _65 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_65) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = arg2.length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg2.length:
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            if idx >= arg3.length:
                revert with 0, 50
            require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
            require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
            _75 = mem[64]
            mem[mem[64]] = 0xd3eb597d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg1
            mem[mem[64] + 36] = 96
            mem[mem[64] + 100] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 132 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 132] = 0
            mem[mem[64] + 68] = ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 128
            mem[_75 + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 132] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
            mem[_75 + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 164 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
            mem[_75 + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 164] = 0
            require ext_code.size(this.address)
            call this.address.0xd3eb597d with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _75 + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + ceil32(cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]) + -mem[64] + 160]
            if ext_call.success:
                _77 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _78 = mem[_77]
                require mem[_77] <= test266151307()
                require _77 + mem[_77] + 31 < _77 + return_data.size
                _79 = mem[_77 + mem[_77]]
                if mem[_77 + mem[_77]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_77 + mem[_77]])) + 1 < 0 or _77 + ceil32(return_data.size) + ceil32(ceil32(mem[_77 + mem[_77]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _77 + ceil32(return_data.size) + ceil32(ceil32(mem[_77 + mem[_77]])) + 1
                mem[_77 + ceil32(return_data.size)] = _79
                require _78 + _79 + 32 <= return_data.size
                s = 0
                while s < _79:
                    mem[s + _77 + ceil32(return_data.size) + 32] = mem[s + _77 + _78 + 32]
                    s = s + 32
                    continue 
                if ceil32(_79) > _79:
                    mem[_77 + ceil32(return_data.size) + _79 + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _77 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _66 = mem[64]
        mem[mem[64]] = 32
        _67 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _67:
            mem[t] = u + -_66 - 64
            _85 = mem[s]
            _88 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _88:
                mem[v + u + 32] = mem[v + _85 + 32]
                v = v + 32
                continue 
            if ceil32(_88) > _88:
                mem[u + _88 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_88) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function executeMultiCallsOfMultiTarget(address[] arg1, string[] arg2, bytes[] arg3) payable {
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
    if arg1.length > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if idx >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            if idx >= arg3.length:
                revert with 0, 50
            require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
            require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
            mem[mem[64]] = 0xd3eb597d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 36] = 96
            mem[mem[64] + 100] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 132 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 132] = 0
            mem[mem[64] + 68] = ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 128
            mem[mem[64] + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 132] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 164 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 164] = 0
            require ext_code.size(this.address)
            call this.address.0xd3eb597d with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + arg1 + 36)]), 96, ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 128, cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)], call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]], 0, mem[mem[64] + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 164 len ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + ceil32(cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]) - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            if ext_call.success:
                _47 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _49 = mem[_47]
                require mem[_47] <= test266151307()
                require _47 + mem[_47] + 31 < _47 + return_data.size
                _51 = mem[_47 + mem[_47]]
                if mem[_47 + mem[_47]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_47 + mem[_47]])) + 1 < 0 or _47 + ceil32(return_data.size) + ceil32(ceil32(mem[_47 + mem[_47]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _47 + ceil32(return_data.size) + ceil32(ceil32(mem[_47 + mem[_47]])) + 1
                mem[_47 + ceil32(return_data.size)] = _51
                require _49 + _51 + 32 <= return_data.size
                s = 0
                while s < _51:
                    mem[s + _47 + ceil32(return_data.size) + 32] = mem[s + _47 + _49 + 32]
                    s = s + 32
                    continue 
                if ceil32(_51) > _51:
                    mem[_47 + ceil32(return_data.size) + _51 + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _47 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _32 = mem[64]
        mem[mem[64]] = 32
        _33 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _33:
            mem[t] = u + -_32 - 64
            _62 = mem[s]
            _65 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _65:
                mem[v + u + 32] = mem[v + _62 + 32]
                v = v + 32
                continue 
            if ceil32(_65) > _65:
                mem[u + _65 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_65) + u + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = arg1.length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if idx >= arg2.length:
                revert with 0, 50
            require cd[(arg2 + (32 * idx) + 36)] < calldata.size + -arg2 - 67
            require cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            if idx >= arg3.length:
                revert with 0, 50
            require cd[(arg3 + (32 * idx) + 36)] < calldata.size + -arg3 - 67
            require cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] <= test266151307()
            require arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
            _75 = mem[64]
            mem[mem[64]] = 0xd3eb597d00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 36] = 96
            mem[mem[64] + 100] = cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]
            mem[mem[64] + 132 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]] = call.data[arg2 + cd[(arg2 + (32 * idx) + 36)] + 68 len cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]]
            mem[mem[64] + cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)] + 132] = 0
            mem[mem[64] + 68] = ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 128
            mem[_75 + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 132] = cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]
            mem[_75 + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + 164 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]] = call.data[arg3 + cd[(arg3 + (32 * idx) + 36)] + 68 len cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]]
            mem[_75 + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)] + 164] = 0
            require ext_code.size(this.address)
            call this.address.0xd3eb597d with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _75 + ceil32(cd[(arg2 + cd[(arg2 + (32 * idx) + 36)] + 36)]) + ceil32(cd[(arg3 + cd[(arg3 + (32 * idx) + 36)] + 36)]) + -mem[64] + 160]
            if ext_call.success:
                _77 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _78 = mem[_77]
                require mem[_77] <= test266151307()
                require _77 + mem[_77] + 31 < _77 + return_data.size
                _79 = mem[_77 + mem[_77]]
                if mem[_77 + mem[_77]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_77 + mem[_77]])) + 1 < 0 or _77 + ceil32(return_data.size) + ceil32(ceil32(mem[_77 + mem[_77]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _77 + ceil32(return_data.size) + ceil32(ceil32(mem[_77 + mem[_77]])) + 1
                mem[_77 + ceil32(return_data.size)] = _79
                require _78 + _79 + 32 <= return_data.size
                s = 0
                while s < _79:
                    mem[s + _77 + ceil32(return_data.size) + 32] = mem[s + _77 + _78 + 32]
                    s = s + 32
                    continue 
                if ceil32(_79) > _79:
                    mem[_77 + ceil32(return_data.size) + _79 + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _77 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _66 = mem[64]
        mem[mem[64]] = 32
        _67 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        u = mem[64] + (32 * mem[96]) + 64
        while idx < _67:
            mem[t] = u + -_66 - 64
            _85 = mem[s]
            _88 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            while v < _88:
                mem[v + u + 32] = mem[v + _85 + 32]
                v = v + 32
                continue 
            if ceil32(_88) > _88:
                mem[u + _88 + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = ceil32(_88) + u + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}



}
