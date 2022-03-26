contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getPairsAddressesLength(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getPairsAddresses(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.allPairsLength() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 >= arg3:
        revert with 0, 'Start index must be smaller than End index'
    if arg3 >= ext_call.return_data[0]:
        if arg2 >= ext_call.return_data[0]:
            revert with 0, 'Start index must be smaller than Pairs Array length'
        if ext_call.return_data[0] < arg2:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - arg2 > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg2
        mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
        if not ext_call.return_data[0] - arg2:
            idx = arg2
            while idx < ext_call.return_data[0]:
                mem[mem[64] + 4] = idx
                require ext_code.size(arg1)
                staticcall arg1.allPairs(uint256 rg1) with:
                        gas gas_remaining wei
                       args idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _65 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_65] == mem[_65 + 12 len 20]
                if idx < arg2:
                    revert with 'NH{q', 17
                if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = mem[_65 + 12 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _53 = mem[64]
            mem[mem[64]] = 32
            _57 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _57:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _53 + (32 * _57) + -mem[64] + 64
        mem[ceil32(return_data.size) + 128 len 32 * ext_call.return_data[0] - arg2] = call.data[calldata.size len 32 * ext_call.return_data[0] - arg2]
        idx = arg2
        while idx < ext_call.return_data[0]:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _66 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_66] == mem[_66 + 12 len 20]
            if idx < arg2:
                revert with 'NH{q', 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = mem[_66 + 12 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _54 = mem[64]
        mem[mem[64]] = 32
        _58 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _58:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _54 + (32 * _58) + -mem[64] + 64
    if arg2 >= arg3:
        revert with 0, 'Start index must be smaller than Pairs Array length'
    if arg3 < arg2:
        revert with 'NH{q', 17
    if arg3 - arg2 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = arg3 - arg2
    mem[64] = ceil32(return_data.size) + (32 * arg3 - arg2) + 128
    if not arg3 - arg2:
        idx = arg2
        while idx < arg3:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.allPairs(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _67 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_67] == mem[_67 + 12 len 20]
            if idx < arg2:
                revert with 'NH{q', 17
            if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = mem[_67 + 12 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _55 = mem[64]
        mem[mem[64]] = 32
        _59 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _59:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _55 + (32 * _59) + -mem[64] + 64
    mem[ceil32(return_data.size) + 128 len 32 * arg3 - arg2] = call.data[calldata.size len 32 * arg3 - arg2]
    idx = arg2
    while idx < arg3:
        mem[mem[64] + 4] = idx
        require ext_code.size(arg1)
        staticcall arg1.allPairs(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _68 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_68] == mem[_68 + 12 len 20]
        if idx < arg2:
            revert with 'NH{q', 17
        if idx - arg2 >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx - arg2) + ceil32(return_data.size) + 128] = mem[_68 + 12 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _56 = mem[64]
    mem[mem[64]] = 32
    _60 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _60:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _56 + (32 * _60) + -mem[64] + 64
}



}
