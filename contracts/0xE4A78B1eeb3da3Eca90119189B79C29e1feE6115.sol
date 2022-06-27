contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_03190f83(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[36])
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(cd[36])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _42 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _45 = mem[_42]
            _46 = mem[64]
            mem[64] = mem[64] + 64
            mem[_46] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[_46 + 32] = _45
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _46
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _28 = mem[64]
        mem[mem[64]] = 32
        _29 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _29:
            _52 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_52 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _28 + (64 * _29) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 192
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[128] = (32 * ('cd', 4).length) + 128
    s = 128
    idx = ('cd', 4).length
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = address(cd[36])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).0x70a08231 with:
                gas gas_remaining wei
               args address(cd[36])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _64 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _65 = mem[_64]
        _66 = mem[64]
        mem[64] = mem[64] + 64
        mem[_66] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[_66 + 32] = _65
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = _66
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _56 = mem[64]
    mem[mem[64]] = 32
    _57 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _57:
        _68 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_68 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _56 + (64 * _57) + -mem[64] + 64
}

function sub_0e0fa010(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[100] = address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args address(arg2)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 'NH{q', 17
    if arg4 <= ext_call.return_data[0] - arg3:
        if arg4 > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = arg4
        mem[64] = ceil32(return_data.size) + (32 * arg4) + 128
        if not arg4:
            idx = 0
            while idx < arg4:
                if arg3 > !idx:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = arg3 + idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x2f745c59 with:
                        gas gas_remaining wei
                       args address(arg2), arg3 + idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _64 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_64]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            mem[mem[64]] = 32
            _47 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 64 len 32 * _47] = mem[ceil32(return_data.size) + 128 len 32 * _47]
            return 32, mem[mem[64] + 32 len (32 * _47) + 32]
        mem[ceil32(return_data.size) + 128 len 32 * arg4] = call.data[calldata.size len 32 * arg4]
        idx = 0
        while idx < arg4:
            if arg3 > !idx:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = arg3 + idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x2f745c59 with:
                    gas gas_remaining wei
                   args address(arg2), arg3 + idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _66 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_66]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _48 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _48] = mem[ceil32(return_data.size) + 128 len 32 * _48]
        return 32, mem[mem[64] + 32 len (32 * _48) + 32]
    if ext_call.return_data[0] < arg3:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - arg3 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg3
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 128
    if not ext_call.return_data[0] - arg3:
        idx = 0
        while idx < ext_call.return_data[0] - arg3:
            if arg3 > !idx:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = arg3 + idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x2f745c59 with:
                    gas gas_remaining wei
                   args address(arg2), arg3 + idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _68 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_68]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _49 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 64 len 32 * _49] = mem[ceil32(return_data.size) + 128 len 32 * _49]
        return 32, mem[mem[64] + 32 len (32 * _49) + 32]
    mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0] - arg3] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg3]
    idx = 0
    while idx < ext_call.return_data[0] - arg3:
        if arg3 > !idx:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = arg3 + idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x2f745c59 with:
                gas gas_remaining wei
               args address(arg2), arg3 + idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _70 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = mem[_70]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _50 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 64 len 32 * _50] = mem[ceil32(return_data.size) + 128 len 32 * _50]
    return 32, mem[mem[64] + 32 len (32 * _50) + 32]
}



}
