contract main {




// =====================  Runtime code  =====================


#
#  - sub_c6c5fb76(?)
#
address owner;
mapping of address allPairs;
uint256 sub_f03e8adc;

function allPairs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return allPairs[arg1]
}

function owner() payable {
    return owner
}

function sub_f03e8adc(?) payable {
    return sub_f03e8adc
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_1f0bb6bb(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f03e8adc = arg1
}

function sub_cbc46ac9(?) payable {
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getPairs(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2
    mem[64] = (32 * arg2) + 128
    if arg2:
        mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
    idx = 0
    while idx < arg2:
        if idx > !arg1:
            revert with 'NH{q', 17
        mem[0] = idx + arg1
        mem[32] = 1
        if idx >= arg2:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = allPairs[idx + arg1]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(32 * arg2) + 128] = 32
    mem[(32 * arg2) + 160] = arg2
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < mem[96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * arg2) + -mem[64] + 192
}

function sub_41783731(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 'NH{q', 65
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 'NH{q', 50
        if idx > !cd[4]:
            revert with 'NH{q', 17
        mem[0] = idx + cd[4]
        mem[32] = 1
        allPairs[idx + cd[4]] = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_199a2243(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f03e8adc = ('cd', 4).length
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 'NH{q', 50
        if idx > -1:
            revert with 'NH{q', 17
        mem[0] = idx
        mem[32] = 1
        allPairs[idx] = mem[(32 * idx) + 140 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_2cda7a6d(?) payable {
    require calldata.size - 4 >= 64
    if arg2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2
    mem[64] = (32 * arg2) + 128
    if not arg2:
        idx = 0
        while idx < arg2:
            if arg1 > !idx:
                revert with 'NH{q', 17
            mem[0] = arg1 + idx
            mem[32] = 1
            require ext_code.size(allPairs[arg1 + idx])
            staticcall allPairs[arg1 + idx].factory() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_33] == mem[_33 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_33 + 12 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _22 = mem[64]
        mem[mem[64]] = 32
        _24 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _24:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _22 + (32 * _24) + -mem[64] + 64
    mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
    idx = 0
    while idx < arg2:
        if arg1 > !idx:
            revert with 'NH{q', 17
        mem[0] = arg1 + idx
        mem[32] = 1
        require ext_code.size(allPairs[arg1 + idx])
        staticcall allPairs[arg1 + idx].factory() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _35 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_35] == mem[_35 + 12 len 20]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = mem[_35 + 12 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _23 = mem[64]
    mem[mem[64]] = 32
    _28 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _28:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _23 + (32 * _28) + -mem[64] + 64
}

function getReserves(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2
    if not arg2:
        if arg2 > test266151307():
            revert with 'NH{q', 65
        mem[(32 * arg2) + 128] = arg2
        mem[64] = (64 * arg2) + 160
        if not arg2:
            idx = 0
            while idx < arg2:
                if idx > !arg1:
                    revert with 'NH{q', 17
                mem[0] = idx + arg1
                mem[32] = 1
                require ext_code.size(allPairs[idx + arg1])
                staticcall allPairs[idx + arg1].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _85 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                require mem[_85] == mem[_85 + 18 len 14]
                _105 = mem[_85 + 32]
                require mem[_85 + 32] == mem[_85 + 50 len 14]
                require mem[_85 + 64] == mem[_85 + 92 len 4]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_85 + 18 len 14]
                if idx >= mem[(32 * arg2) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg2) + 160] = Mask(112, 0, _105)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _64 = mem[64]
            mem[mem[64]] = 64
            _68 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _128 = mem[(32 * arg2) + 128]
            mem[_64 + (32 * mem[96]) + 96] = mem[(32 * arg2) + 128]
            mem[_64 + (32 * _68) + 128 len 32 * _128] = mem[(32 * arg2) + 160 len 32 * _128]
            return memory
              from mem[64]
               len _64 + (32 * _68) + (32 * _128) + -mem[64] + 128
        mem[(32 * arg2) + 160 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        idx = 0
        while idx < arg2:
            if idx > !arg1:
                revert with 'NH{q', 17
            mem[0] = idx + arg1
            mem[32] = 1
            require ext_code.size(allPairs[idx + arg1])
            staticcall allPairs[idx + arg1].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _87 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_87] == mem[_87 + 18 len 14]
            _107 = mem[_87 + 32]
            require mem[_87 + 32] == mem[_87 + 50 len 14]
            require mem[_87 + 64] == mem[_87 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_87 + 18 len 14]
            if idx >= mem[(32 * arg2) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * arg2) + 160] = Mask(112, 0, _107)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _65 = mem[64]
        mem[mem[64]] = 64
        _72 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _129 = mem[(32 * arg2) + 128]
        mem[_65 + (32 * mem[96]) + 96] = mem[(32 * arg2) + 128]
        mem[_65 + (32 * _72) + 128 len 32 * _129] = mem[(32 * arg2) + 160 len 32 * _129]
        return memory
          from mem[64]
           len _65 + (32 * _72) + (32 * _129) + -mem[64] + 128
    mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
    if arg2 > test266151307():
        revert with 'NH{q', 65
    mem[(32 * arg2) + 128] = arg2
    mem[64] = (64 * arg2) + 160
    if not arg2:
        idx = 0
        while idx < arg2:
            if idx > !arg1:
                revert with 'NH{q', 17
            mem[0] = idx + arg1
            mem[32] = 1
            require ext_code.size(allPairs[idx + arg1])
            staticcall allPairs[idx + arg1].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _89 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            require mem[_89] == mem[_89 + 18 len 14]
            _109 = mem[_89 + 32]
            require mem[_89 + 32] == mem[_89 + 50 len 14]
            require mem[_89 + 64] == mem[_89 + 92 len 4]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_89 + 18 len 14]
            if idx >= mem[(32 * arg2) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * arg2) + 160] = Mask(112, 0, _109)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _66 = mem[64]
        mem[mem[64]] = 64
        _76 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _130 = mem[(32 * arg2) + 128]
        mem[_66 + (32 * mem[96]) + 96] = mem[(32 * arg2) + 128]
        mem[_66 + (32 * _76) + 128 len 32 * _130] = mem[(32 * arg2) + 160 len 32 * _130]
        return memory
          from mem[64]
           len _66 + (32 * _76) + (32 * _130) + -mem[64] + 128
    mem[(32 * arg2) + 160 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
    idx = 0
    while idx < arg2:
        if idx > !arg1:
            revert with 'NH{q', 17
        mem[0] = idx + arg1
        mem[32] = 1
        require ext_code.size(allPairs[idx + arg1])
        staticcall allPairs[idx + arg1].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _91 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_91] == mem[_91 + 18 len 14]
        _111 = mem[_91 + 32]
        require mem[_91 + 32] == mem[_91 + 50 len 14]
        require mem[_91 + 64] == mem[_91 + 92 len 4]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = mem[_91 + 18 len 14]
        if idx >= mem[(32 * arg2) + 128]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * arg2) + 160] = Mask(112, 0, _111)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _67 = mem[64]
    mem[mem[64]] = 64
    _80 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _131 = mem[(32 * arg2) + 128]
    mem[_67 + (32 * mem[96]) + 96] = mem[(32 * arg2) + 128]
    mem[_67 + (32 * _80) + 128 len 32 * _131] = mem[(32 * arg2) + 160 len 32 * _131]
    return memory
      from mem[64]
       len _67 + (32 * _80) + (32 * _131) + -mem[64] + 128
}

function getTokens(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2
    if not arg2:
        if arg2 > test266151307():
            revert with 'NH{q', 65
        mem[(32 * arg2) + 128] = arg2
        mem[64] = (64 * arg2) + 160
        if not arg2:
            idx = 0
            while idx < arg2:
                if arg1 > !idx:
                    revert with 'NH{q', 17
                mem[0] = arg1 + idx
                mem[32] = 1
                require ext_code.size(allPairs[arg1 + idx])
                staticcall allPairs[arg1 + idx].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _97 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_97] == mem[_97 + 12 len 20]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_97 + 12 len 20]
                if arg1 > !idx:
                    revert with 'NH{q', 17
                mem[0] = arg1 + idx
                mem[32] = 1
                require ext_code.size(allPairs[arg1 + idx])
                staticcall allPairs[arg1 + idx].token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _136 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_136] == mem[_136 + 12 len 20]
                if idx >= mem[(32 * arg2) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg2) + 160] = mem[_136 + 12 len 20]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _76 = mem[64]
            mem[mem[64]] = 64
            _80 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _80:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_76 + 32] = (32 * _80) + 96
            _152 = mem[(32 * arg2) + 128]
            mem[_76 + (32 * _80) + 96] = mem[(32 * arg2) + 128]
            idx = 0
            s = (32 * arg2) + 160
            t = _76 + (32 * _80) + 128
            while idx < _152:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _76 + (32 * _80) + (32 * _152) + -mem[64] + 128
        mem[(32 * arg2) + 160 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        idx = 0
        while idx < arg2:
            if arg1 > !idx:
                revert with 'NH{q', 17
            mem[0] = arg1 + idx
            mem[32] = 1
            require ext_code.size(allPairs[arg1 + idx])
            staticcall allPairs[arg1 + idx].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _99 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_99] == mem[_99 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_99 + 12 len 20]
            if arg1 > !idx:
                revert with 'NH{q', 17
            mem[0] = arg1 + idx
            mem[32] = 1
            require ext_code.size(allPairs[arg1 + idx])
            staticcall allPairs[arg1 + idx].token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _137 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_137] == mem[_137 + 12 len 20]
            if idx >= mem[(32 * arg2) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * arg2) + 160] = mem[_137 + 12 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _77 = mem[64]
        mem[mem[64]] = 64
        _84 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _84:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_77 + 32] = (32 * _84) + 96
        _153 = mem[(32 * arg2) + 128]
        mem[_77 + (32 * _84) + 96] = mem[(32 * arg2) + 128]
        idx = 0
        s = (32 * arg2) + 160
        t = _77 + (32 * _84) + 128
        while idx < _153:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _77 + (32 * _84) + (32 * _153) + -mem[64] + 128
    mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
    if arg2 > test266151307():
        revert with 'NH{q', 65
    mem[(32 * arg2) + 128] = arg2
    mem[64] = (64 * arg2) + 160
    if not arg2:
        idx = 0
        while idx < arg2:
            if arg1 > !idx:
                revert with 'NH{q', 17
            mem[0] = arg1 + idx
            mem[32] = 1
            require ext_code.size(allPairs[arg1 + idx])
            staticcall allPairs[arg1 + idx].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _101 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_101] == mem[_101 + 12 len 20]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_101 + 12 len 20]
            if arg1 > !idx:
                revert with 'NH{q', 17
            mem[0] = arg1 + idx
            mem[32] = 1
            require ext_code.size(allPairs[arg1 + idx])
            staticcall allPairs[arg1 + idx].token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _138 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_138] == mem[_138 + 12 len 20]
            if idx >= mem[(32 * arg2) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * arg2) + 160] = mem[_138 + 12 len 20]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _78 = mem[64]
        mem[mem[64]] = 64
        _88 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _88:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_78 + 32] = (32 * _88) + 96
        _154 = mem[(32 * arg2) + 128]
        mem[_78 + (32 * _88) + 96] = mem[(32 * arg2) + 128]
        idx = 0
        s = (32 * arg2) + 160
        t = _78 + (32 * _88) + 128
        while idx < _154:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _78 + (32 * _88) + (32 * _154) + -mem[64] + 128
    mem[(32 * arg2) + 160 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
    idx = 0
    while idx < arg2:
        if arg1 > !idx:
            revert with 'NH{q', 17
        mem[0] = arg1 + idx
        mem[32] = 1
        require ext_code.size(allPairs[arg1 + idx])
        staticcall allPairs[arg1 + idx].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _103 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_103] == mem[_103 + 12 len 20]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = mem[_103 + 12 len 20]
        if arg1 > !idx:
            revert with 'NH{q', 17
        mem[0] = arg1 + idx
        mem[32] = 1
        require ext_code.size(allPairs[arg1 + idx])
        staticcall allPairs[arg1 + idx].token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _139 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_139] == mem[_139 + 12 len 20]
        if idx >= mem[(32 * arg2) + 128]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * arg2) + 160] = mem[_139 + 12 len 20]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _79 = mem[64]
    mem[mem[64]] = 64
    _92 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < _92:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_79 + 32] = (32 * _92) + 96
    _155 = mem[(32 * arg2) + 128]
    mem[_79 + (32 * _92) + 96] = mem[(32 * arg2) + 128]
    idx = 0
    s = (32 * arg2) + 160
    t = _79 + (32 * _92) + 128
    while idx < _155:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _79 + (32 * _92) + (32 * _155) + -mem[64] + 128
}

function getDecimals(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2
    if not arg2:
        if arg2 > test266151307():
            revert with 'NH{q', 65
        mem[(32 * arg2) + 128] = arg2
        mem[64] = (64 * arg2) + 160
        if not arg2:
            idx = 0
            while idx < arg2:
                if arg1 > !idx:
                    revert with 'NH{q', 17
                mem[0] = arg1 + idx
                mem[32] = 1
                require ext_code.size(allPairs[arg1 + idx])
                staticcall allPairs[arg1 + idx].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _129 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_129] == mem[_129 + 12 len 20]
                require ext_code.size(mem[_129 + 12 len 20])
                staticcall mem[_129 + 12 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _160 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_160] == mem[_160 + 31 len 1]
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + 128] = mem[_160 + 31 len 1]
                if arg1 > !idx:
                    revert with 'NH{q', 17
                mem[0] = arg1 + idx
                mem[32] = 1
                require ext_code.size(allPairs[arg1 + idx])
                staticcall allPairs[arg1 + idx].token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _184 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_184] == mem[_184 + 12 len 20]
                require ext_code.size(mem[_184 + 12 len 20])
                staticcall mem[_184 + 12 len 20].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _200 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_200] == mem[_200 + 31 len 1]
                if idx >= mem[(32 * arg2) + 128]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + (32 * arg2) + 160] = mem[_200 + 31 len 1]
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _108 = mem[64]
            mem[mem[64]] = 64
            _112 = mem[96]
            mem[mem[64] + 64] = mem[96]
            mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            mem[mem[64] + 32] = (32 * mem[96]) + 96
            _216 = mem[(32 * arg2) + 128]
            mem[_108 + (32 * mem[96]) + 96] = mem[(32 * arg2) + 128]
            mem[_108 + (32 * _112) + 128 len 32 * _216] = mem[(32 * arg2) + 160 len 32 * _216]
            return memory
              from mem[64]
               len _108 + (32 * _112) + (32 * _216) + -mem[64] + 128
        mem[(32 * arg2) + 160 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
        idx = 0
        while idx < arg2:
            if arg1 > !idx:
                revert with 'NH{q', 17
            mem[0] = arg1 + idx
            mem[32] = 1
            require ext_code.size(allPairs[arg1 + idx])
            staticcall allPairs[arg1 + idx].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _131 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_131] == mem[_131 + 12 len 20]
            require ext_code.size(mem[_131 + 12 len 20])
            staticcall mem[_131 + 12 len 20].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _161 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_161] == mem[_161 + 31 len 1]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_161 + 31 len 1]
            if arg1 > !idx:
                revert with 'NH{q', 17
            mem[0] = arg1 + idx
            mem[32] = 1
            require ext_code.size(allPairs[arg1 + idx])
            staticcall allPairs[arg1 + idx].token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _185 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_185] == mem[_185 + 12 len 20]
            require ext_code.size(mem[_185 + 12 len 20])
            staticcall mem[_185 + 12 len 20].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _201 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_201] == mem[_201 + 31 len 1]
            if idx >= mem[(32 * arg2) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * arg2) + 160] = mem[_201 + 31 len 1]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _109 = mem[64]
        mem[mem[64]] = 64
        _116 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _217 = mem[(32 * arg2) + 128]
        mem[_109 + (32 * mem[96]) + 96] = mem[(32 * arg2) + 128]
        mem[_109 + (32 * _116) + 128 len 32 * _217] = mem[(32 * arg2) + 160 len 32 * _217]
        return memory
          from mem[64]
           len _109 + (32 * _116) + (32 * _217) + -mem[64] + 128
    mem[128 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
    if arg2 > test266151307():
        revert with 'NH{q', 65
    mem[(32 * arg2) + 128] = arg2
    mem[64] = (64 * arg2) + 160
    if not arg2:
        idx = 0
        while idx < arg2:
            if arg1 > !idx:
                revert with 'NH{q', 17
            mem[0] = arg1 + idx
            mem[32] = 1
            require ext_code.size(allPairs[arg1 + idx])
            staticcall allPairs[arg1 + idx].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _133 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_133] == mem[_133 + 12 len 20]
            require ext_code.size(mem[_133 + 12 len 20])
            staticcall mem[_133 + 12 len 20].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _162 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_162] == mem[_162 + 31 len 1]
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = mem[_162 + 31 len 1]
            if arg1 > !idx:
                revert with 'NH{q', 17
            mem[0] = arg1 + idx
            mem[32] = 1
            require ext_code.size(allPairs[arg1 + idx])
            staticcall allPairs[arg1 + idx].token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _186 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_186] == mem[_186 + 12 len 20]
            require ext_code.size(mem[_186 + 12 len 20])
            staticcall mem[_186 + 12 len 20].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _202 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_202] == mem[_202 + 31 len 1]
            if idx >= mem[(32 * arg2) + 128]:
                revert with 'NH{q', 50
            mem[(32 * idx) + (32 * arg2) + 160] = mem[_202 + 31 len 1]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _110 = mem[64]
        mem[mem[64]] = 64
        _120 = mem[96]
        mem[mem[64] + 64] = mem[96]
        mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
        mem[mem[64] + 32] = (32 * mem[96]) + 96
        _218 = mem[(32 * arg2) + 128]
        mem[_110 + (32 * mem[96]) + 96] = mem[(32 * arg2) + 128]
        mem[_110 + (32 * _120) + 128 len 32 * _218] = mem[(32 * arg2) + 160 len 32 * _218]
        return memory
          from mem[64]
           len _110 + (32 * _120) + (32 * _218) + -mem[64] + 128
    mem[(32 * arg2) + 160 len 32 * arg2] = call.data[calldata.size len 32 * arg2]
    idx = 0
    while idx < arg2:
        if arg1 > !idx:
            revert with 'NH{q', 17
        mem[0] = arg1 + idx
        mem[32] = 1
        require ext_code.size(allPairs[arg1 + idx])
        staticcall allPairs[arg1 + idx].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _135 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_135] == mem[_135 + 12 len 20]
        require ext_code.size(mem[_135 + 12 len 20])
        staticcall mem[_135 + 12 len 20].0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _163 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_163] == mem[_163 + 31 len 1]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = mem[_163 + 31 len 1]
        if arg1 > !idx:
            revert with 'NH{q', 17
        mem[0] = arg1 + idx
        mem[32] = 1
        require ext_code.size(allPairs[arg1 + idx])
        staticcall allPairs[arg1 + idx].token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _187 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_187] == mem[_187 + 12 len 20]
        require ext_code.size(mem[_187 + 12 len 20])
        staticcall mem[_187 + 12 len 20].0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _203 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_203] == mem[_203 + 31 len 1]
        if idx >= mem[(32 * arg2) + 128]:
            revert with 'NH{q', 50
        mem[(32 * idx) + (32 * arg2) + 160] = mem[_203 + 31 len 1]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _111 = mem[64]
    mem[mem[64]] = 64
    _124 = mem[96]
    mem[mem[64] + 64] = mem[96]
    mem[mem[64] + 96 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    mem[mem[64] + 32] = (32 * mem[96]) + 96
    _219 = mem[(32 * arg2) + 128]
    mem[_111 + (32 * mem[96]) + 96] = mem[(32 * arg2) + 128]
    mem[_111 + (32 * _124) + 128 len 32 * _219] = mem[(32 * arg2) + 160 len 32 * _219]
    return memory
      from mem[64]
       len _111 + (32 * _124) + (32 * _219) + -mem[64] + 128
}

function sub_430c3f7b(?) payable {
    require calldata.size - 4 >= 64
    if arg2 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2
    mem[64] = (32 * arg2) + 128
    if not arg2:
        if arg2 > test266151307():
            revert with 'NH{q', 65
        mem[(32 * arg2) + 128] = arg2
        mem[64] = (64 * arg2) + 160
        if not arg2:
            idx = 0
            while idx < arg2:
                if arg1 > !idx:
                    revert with 'NH{q', 17
                mem[0] = arg1 + idx
                mem[32] = 1
                require ext_code.size(allPairs[arg1 + idx])
                staticcall allPairs[arg1 + idx].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _221 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _228 = mem[_221]
                require mem[_221] == mem[_221 + 12 len 20]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_228))
                staticcall address(_228).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _258 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _268 = mem[_258]
                require mem[_258] <= test266151307()
                require _258 + mem[_258] + 31 < _258 + return_data.size
                _277 = mem[_258 + mem[_258]]
                if mem[_258 + mem[_258]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_258 + mem[_258]])) + 1 < 0 or _258 + ceil32(return_data.size) + ceil32(ceil32(mem[_258 + mem[_258]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _258 + ceil32(return_data.size) + ceil32(ceil32(mem[_258 + mem[_258]])) + 1
                mem[_258 + ceil32(return_data.size)] = _277
                require _268 + _277 + 32 <= return_data.size
                s = 0
                while s < _277:
                    mem[s + _258 + ceil32(return_data.size) + 32] = mem[s + _258 + _268 + 32]
                    s = s + 32
                    continue 
                if ceil32(_277) <= _277:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _258 + ceil32(return_data.size)
                    if arg1 > !idx:
                        revert with 'NH{q', 17
                    mem[0] = arg1 + idx
                    mem[32] = 1
                    require ext_code.size(allPairs[arg1 + idx])
                    staticcall allPairs[arg1 + idx].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _468 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _476 = mem[_468]
                    require mem[_468] == mem[_468 + 12 len 20]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_476))
                    staticcall address(_476).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _502 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _507 = mem[_502]
                    require mem[_502] <= test266151307()
                    require _502 + mem[_502] + 31 < _502 + return_data.size
                    _512 = mem[_502 + mem[_502]]
                    if mem[_502 + mem[_502]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_502 + mem[_502]])) + 1 < 0 or _502 + ceil32(return_data.size) + ceil32(ceil32(mem[_502 + mem[_502]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _502 + ceil32(return_data.size) + ceil32(ceil32(mem[_502 + mem[_502]])) + 1
                    mem[_502 + ceil32(return_data.size)] = _512
                    require _507 + _512 + 32 <= return_data.size
                    s = 0
                    while s < _512:
                        mem[s + _502 + ceil32(return_data.size) + 32] = mem[s + _502 + _507 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_512) > _512:
                        mem[_502 + ceil32(return_data.size) + _512 + 32] = 0
                    if idx >= mem[(32 * arg2) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg2) + 160] = _502 + ceil32(return_data.size)
                else:
                    mem[_258 + ceil32(return_data.size) + _277 + 32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _258 + ceil32(return_data.size)
                    if arg1 > !idx:
                        revert with 'NH{q', 17
                    mem[0] = arg1 + idx
                    mem[32] = 1
                    require ext_code.size(allPairs[arg1 + idx])
                    staticcall allPairs[arg1 + idx].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _473 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _484 = mem[_473]
                    require mem[_473] == mem[_473 + 12 len 20]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_484))
                    staticcall address(_484).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _505 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _510 = mem[_505]
                    require mem[_505] <= test266151307()
                    require _505 + mem[_505] + 31 < _505 + return_data.size
                    _513 = mem[_505 + mem[_505]]
                    if mem[_505 + mem[_505]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_505 + mem[_505]])) + 1 < 0 or _505 + ceil32(return_data.size) + ceil32(ceil32(mem[_505 + mem[_505]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _505 + ceil32(return_data.size) + ceil32(ceil32(mem[_505 + mem[_505]])) + 1
                    mem[_505 + ceil32(return_data.size)] = _513
                    require _510 + _513 + 32 <= return_data.size
                    s = 0
                    while s < _513:
                        mem[s + _505 + ceil32(return_data.size) + 32] = mem[s + _505 + _510 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_513) > _513:
                        mem[_505 + ceil32(return_data.size) + _513 + 32] = 0
                    if idx >= mem[(32 * arg2) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg2) + 160] = _505 + ceil32(return_data.size)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _212 = mem[64]
            mem[mem[64]] = 64
            _214 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 96
            u = mem[64] + 96
            while idx < _214:
                mem[u] = t + -_212 - 96
                _421 = mem[s]
                _422 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _422:
                    mem[v + t + 32] = mem[v + _421 + 32]
                    v = v + 32
                    continue 
                if ceil32(_422) > _422:
                    mem[t + _422 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_422) + t + 32
                u = u + 32
                continue 
            mem[_212 + 32] = t - _212
            _426 = mem[(32 * arg2) + 128]
            mem[t] = mem[(32 * arg2) + 128]
            idx = 0
            s = (32 * arg2) + 160
            u = t + (32 * _426) + 32
            v = t + 32
            while idx < _426:
                mem[v] = u + -t - 32
                _616 = mem[s]
                _617 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _617:
                    mem[t + u + 32] = mem[t + _616 + 32]
                    t = t + 32
                    continue 
                if ceil32(_617) > _617:
                    mem[u + _617 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = ceil32(_617) + u + 32
                v = v + 32
                continue 
        else:
            mem[(32 * arg2) + 160] = 96
            s = (32 * arg2) + 160
            idx = arg2
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < arg2:
                if arg1 > !idx:
                    revert with 'NH{q', 17
                mem[0] = arg1 + idx
                mem[32] = 1
                require ext_code.size(allPairs[arg1 + idx])
                staticcall allPairs[arg1 + idx].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _443 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _457 = mem[_443]
                require mem[_443] == mem[_443 + 12 len 20]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_457))
                staticcall address(_457).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _489 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _496 = mem[_489]
                require mem[_489] <= test266151307()
                require _489 + mem[_489] + 31 < _489 + return_data.size
                _503 = mem[_489 + mem[_489]]
                if mem[_489 + mem[_489]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_489 + mem[_489]])) + 1 < 0 or _489 + ceil32(return_data.size) + ceil32(ceil32(mem[_489 + mem[_489]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _489 + ceil32(return_data.size) + ceil32(ceil32(mem[_489 + mem[_489]])) + 1
                mem[_489 + ceil32(return_data.size)] = _503
                require _496 + _503 + 32 <= return_data.size
                s = 0
                while s < _503:
                    mem[s + _489 + ceil32(return_data.size) + 32] = mem[s + _489 + _496 + 32]
                    s = s + 32
                    continue 
                if ceil32(_503) <= _503:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _489 + ceil32(return_data.size)
                    if arg1 > !idx:
                        revert with 'NH{q', 17
                    mem[0] = arg1 + idx
                    mem[32] = 1
                    require ext_code.size(allPairs[arg1 + idx])
                    staticcall allPairs[arg1 + idx].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _672 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _678 = mem[_672]
                    require mem[_672] == mem[_672 + 12 len 20]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_678))
                    staticcall address(_678).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _696 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _701 = mem[_696]
                    require mem[_696] <= test266151307()
                    require _696 + mem[_696] + 31 < _696 + return_data.size
                    _706 = mem[_696 + mem[_696]]
                    if mem[_696 + mem[_696]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_696 + mem[_696]])) + 1 < 0 or _696 + ceil32(return_data.size) + ceil32(ceil32(mem[_696 + mem[_696]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _696 + ceil32(return_data.size) + ceil32(ceil32(mem[_696 + mem[_696]])) + 1
                    mem[_696 + ceil32(return_data.size)] = _706
                    require _701 + _706 + 32 <= return_data.size
                    s = 0
                    while s < _706:
                        mem[s + _696 + ceil32(return_data.size) + 32] = mem[s + _696 + _701 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_706) > _706:
                        mem[_696 + ceil32(return_data.size) + _706 + 32] = 0
                    if idx >= mem[(32 * arg2) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg2) + 160] = _696 + ceil32(return_data.size)
                else:
                    mem[_489 + ceil32(return_data.size) + _503 + 32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _489 + ceil32(return_data.size)
                    if arg1 > !idx:
                        revert with 'NH{q', 17
                    mem[0] = arg1 + idx
                    mem[32] = 1
                    require ext_code.size(allPairs[arg1 + idx])
                    staticcall allPairs[arg1 + idx].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _676 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _683 = mem[_676]
                    require mem[_676] == mem[_676 + 12 len 20]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_683))
                    staticcall address(_683).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _699 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _704 = mem[_699]
                    require mem[_699] <= test266151307()
                    require _699 + mem[_699] + 31 < _699 + return_data.size
                    _708 = mem[_699 + mem[_699]]
                    if mem[_699 + mem[_699]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_699 + mem[_699]])) + 1 < 0 or _699 + ceil32(return_data.size) + ceil32(ceil32(mem[_699 + mem[_699]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _699 + ceil32(return_data.size) + ceil32(ceil32(mem[_699 + mem[_699]])) + 1
                    mem[_699 + ceil32(return_data.size)] = _708
                    require _704 + _708 + 32 <= return_data.size
                    s = 0
                    while s < _708:
                        mem[s + _699 + ceil32(return_data.size) + 32] = mem[s + _699 + _704 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_708) > _708:
                        mem[_699 + ceil32(return_data.size) + _708 + 32] = 0
                    if idx >= mem[(32 * arg2) + 128]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + (32 * arg2) + 160] = _699 + ceil32(return_data.size)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _424 = mem[64]
            mem[mem[64]] = 64
            _429 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 96
            u = mem[64] + 96
            while idx < _429:
                mem[u] = t + -_424 - 96
                _621 = mem[s]
                _622 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _622:
                    mem[v + t + 32] = mem[v + _621 + 32]
                    v = v + 32
                    continue 
                if ceil32(_622) > _622:
                    mem[t + _622 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_622) + t + 32
                u = u + 32
                continue 
            mem[_424 + 32] = t - _424
            _629 = mem[(32 * arg2) + 128]
            mem[t] = mem[(32 * arg2) + 128]
            idx = 0
            s = (32 * arg2) + 160
            u = t + (32 * _629) + 32
            v = t + 32
            while idx < _629:
                mem[v] = u + -t - 32
                _758 = mem[s]
                _759 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _759:
                    mem[t + u + 32] = mem[t + _758 + 32]
                    t = t + 32
                    continue 
                if ceil32(_759) > _759:
                    mem[u + _759 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = ceil32(_759) + u + 32
                v = v + 32
                continue 
    else:
        mem[128] = 96
        s = 128
        idx = arg2
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        if arg2 > test266151307():
            revert with 'NH{q', 65
        _213 = mem[64]
        mem[mem[64]] = arg2
        mem[64] = mem[64] + (32 * arg2) + 32
        if not arg2:
            idx = 0
            while idx < arg2:
                if arg1 > !idx:
                    revert with 'NH{q', 17
                mem[0] = arg1 + idx
                mem[32] = 1
                require ext_code.size(allPairs[arg1 + idx])
                staticcall allPairs[arg1 + idx].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _446 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _459 = mem[_446]
                require mem[_446] == mem[_446 + 12 len 20]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_459))
                staticcall address(_459).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _490 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _497 = mem[_490]
                require mem[_490] <= test266151307()
                require _490 + mem[_490] + 31 < _490 + return_data.size
                _504 = mem[_490 + mem[_490]]
                if mem[_490 + mem[_490]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_490 + mem[_490]])) + 1 < 0 or _490 + ceil32(return_data.size) + ceil32(ceil32(mem[_490 + mem[_490]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _490 + ceil32(return_data.size) + ceil32(ceil32(mem[_490 + mem[_490]])) + 1
                mem[_490 + ceil32(return_data.size)] = _504
                require _497 + _504 + 32 <= return_data.size
                s = 0
                while s < _504:
                    mem[s + _490 + ceil32(return_data.size) + 32] = mem[s + _490 + _497 + 32]
                    s = s + 32
                    continue 
                if ceil32(_504) <= _504:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _490 + ceil32(return_data.size)
                    if arg1 > !idx:
                        revert with 'NH{q', 17
                    mem[0] = arg1 + idx
                    mem[32] = 1
                    require ext_code.size(allPairs[arg1 + idx])
                    staticcall allPairs[arg1 + idx].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _673 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _679 = mem[_673]
                    require mem[_673] == mem[_673 + 12 len 20]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_679))
                    staticcall address(_679).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _697 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _702 = mem[_697]
                    require mem[_697] <= test266151307()
                    require _697 + mem[_697] + 31 < _697 + return_data.size
                    _707 = mem[_697 + mem[_697]]
                    if mem[_697 + mem[_697]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_697 + mem[_697]])) + 1 < 0 or _697 + ceil32(return_data.size) + ceil32(ceil32(mem[_697 + mem[_697]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _697 + ceil32(return_data.size) + ceil32(ceil32(mem[_697 + mem[_697]])) + 1
                    mem[_697 + ceil32(return_data.size)] = _707
                    require _702 + _707 + 32 <= return_data.size
                    s = 0
                    while s < _707:
                        mem[s + _697 + ceil32(return_data.size) + 32] = mem[s + _697 + _702 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_707) > _707:
                        mem[_697 + ceil32(return_data.size) + _707 + 32] = 0
                    if idx >= mem[_213]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _213 + 32] = _697 + ceil32(return_data.size)
                else:
                    mem[_490 + ceil32(return_data.size) + _504 + 32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _490 + ceil32(return_data.size)
                    if arg1 > !idx:
                        revert with 'NH{q', 17
                    mem[0] = arg1 + idx
                    mem[32] = 1
                    require ext_code.size(allPairs[arg1 + idx])
                    staticcall allPairs[arg1 + idx].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _677 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _684 = mem[_677]
                    require mem[_677] == mem[_677 + 12 len 20]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_684))
                    staticcall address(_684).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _700 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _705 = mem[_700]
                    require mem[_700] <= test266151307()
                    require _700 + mem[_700] + 31 < _700 + return_data.size
                    _709 = mem[_700 + mem[_700]]
                    if mem[_700 + mem[_700]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_700 + mem[_700]])) + 1 < 0 or _700 + ceil32(return_data.size) + ceil32(ceil32(mem[_700 + mem[_700]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _700 + ceil32(return_data.size) + ceil32(ceil32(mem[_700 + mem[_700]])) + 1
                    mem[_700 + ceil32(return_data.size)] = _709
                    require _705 + _709 + 32 <= return_data.size
                    s = 0
                    while s < _709:
                        mem[s + _700 + ceil32(return_data.size) + 32] = mem[s + _700 + _705 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_709) > _709:
                        mem[_700 + ceil32(return_data.size) + _709 + 32] = 0
                    if idx >= mem[_213]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _213 + 32] = _700 + ceil32(return_data.size)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _425 = mem[64]
            mem[mem[64]] = 64
            _433 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 96
            u = mem[64] + 96
            while idx < _433:
                mem[u] = t + -_425 - 96
                _624 = mem[s]
                _625 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _625:
                    mem[v + t + 32] = mem[v + _624 + 32]
                    v = v + 32
                    continue 
                if ceil32(_625) > _625:
                    mem[t + _625 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_625) + t + 32
                u = u + 32
                continue 
            mem[_425 + 32] = t - _425
            _630 = mem[_213]
            mem[t] = mem[_213]
            idx = 0
            s = _213 + 32
            u = t + (32 * _630) + 32
            v = t + 32
            while idx < _630:
                mem[v] = u + -t - 32
                _763 = mem[s]
                _764 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _764:
                    mem[t + u + 32] = mem[t + _763 + 32]
                    t = t + 32
                    continue 
                if ceil32(_764) > _764:
                    mem[u + _764 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = ceil32(_764) + u + 32
                v = v + 32
                continue 
        else:
            mem[_213 + 32] = 96
            s = _213 + 32
            idx = arg2
            while idx - 1:
                mem[s + 32] = 96
                s = s + 32
                idx = idx - 1
                continue 
            idx = 0
            while idx < arg2:
                if arg1 > !idx:
                    revert with 'NH{q', 17
                mem[0] = arg1 + idx
                mem[32] = 1
                require ext_code.size(allPairs[arg1 + idx])
                staticcall allPairs[arg1 + idx].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _652 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _664 = mem[_652]
                require mem[_652] == mem[_652 + 12 len 20]
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_664))
                staticcall address(_664).0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _686 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _691 = mem[_686]
                require mem[_686] <= test266151307()
                require _686 + mem[_686] + 31 < _686 + return_data.size
                _698 = mem[_686 + mem[_686]]
                if mem[_686 + mem[_686]] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(ceil32(mem[_686 + mem[_686]])) + 1 < 0 or _686 + ceil32(return_data.size) + ceil32(ceil32(mem[_686 + mem[_686]])) + 1 > test266151307():
                    revert with 'NH{q', 65
                mem[64] = _686 + ceil32(return_data.size) + ceil32(ceil32(mem[_686 + mem[_686]])) + 1
                mem[_686 + ceil32(return_data.size)] = _698
                require _691 + _698 + 32 <= return_data.size
                s = 0
                while s < _698:
                    mem[s + _686 + ceil32(return_data.size) + 32] = mem[s + _686 + _691 + 32]
                    s = s + 32
                    continue 
                if ceil32(_698) <= _698:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _686 + ceil32(return_data.size)
                    if arg1 > !idx:
                        revert with 'NH{q', 17
                    mem[0] = arg1 + idx
                    mem[32] = 1
                    require ext_code.size(allPairs[arg1 + idx])
                    staticcall allPairs[arg1 + idx].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _797 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _799 = mem[_797]
                    require mem[_797] == mem[_797 + 12 len 20]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_799))
                    staticcall address(_799).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _805 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _807 = mem[_805]
                    require mem[_805] <= test266151307()
                    require _805 + mem[_805] + 31 < _805 + return_data.size
                    _809 = mem[_805 + mem[_805]]
                    if mem[_805 + mem[_805]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_805 + mem[_805]])) + 1 < 0 or _805 + ceil32(return_data.size) + ceil32(ceil32(mem[_805 + mem[_805]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _805 + ceil32(return_data.size) + ceil32(ceil32(mem[_805 + mem[_805]])) + 1
                    mem[_805 + ceil32(return_data.size)] = _809
                    require _807 + _809 + 32 <= return_data.size
                    s = 0
                    while s < _809:
                        mem[s + _805 + ceil32(return_data.size) + 32] = mem[s + _805 + _807 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_809) > _809:
                        mem[_805 + ceil32(return_data.size) + _809 + 32] = 0
                    if idx >= mem[_213]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _213 + 32] = _805 + ceil32(return_data.size)
                else:
                    mem[_686 + ceil32(return_data.size) + _698 + 32] = 0
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + 128] = _686 + ceil32(return_data.size)
                    if arg1 > !idx:
                        revert with 'NH{q', 17
                    mem[0] = arg1 + idx
                    mem[32] = 1
                    require ext_code.size(allPairs[arg1 + idx])
                    staticcall allPairs[arg1 + idx].token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _798 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _800 = mem[_798]
                    require mem[_798] == mem[_798 + 12 len 20]
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_800))
                    staticcall address(_800).0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _806 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _808 = mem[_806]
                    require mem[_806] <= test266151307()
                    require _806 + mem[_806] + 31 < _806 + return_data.size
                    _810 = mem[_806 + mem[_806]]
                    if mem[_806 + mem[_806]] > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(mem[_806 + mem[_806]])) + 1 < 0 or _806 + ceil32(return_data.size) + ceil32(ceil32(mem[_806 + mem[_806]])) + 1 > test266151307():
                        revert with 'NH{q', 65
                    mem[64] = _806 + ceil32(return_data.size) + ceil32(ceil32(mem[_806 + mem[_806]])) + 1
                    mem[_806 + ceil32(return_data.size)] = _810
                    require _808 + _810 + 32 <= return_data.size
                    s = 0
                    while s < _810:
                        mem[s + _806 + ceil32(return_data.size) + 32] = mem[s + _806 + _808 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_810) > _810:
                        mem[_806 + ceil32(return_data.size) + _810 + 32] = 0
                    if idx >= mem[_213]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + _213 + 32] = _806 + ceil32(return_data.size)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _627 = mem[64]
            mem[mem[64]] = 64
            _638 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * mem[96]) + 96
            u = mem[64] + 96
            while idx < _638:
                mem[u] = t + -_627 - 96
                _768 = mem[s]
                _769 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _769:
                    mem[v + t + 32] = mem[v + _768 + 32]
                    v = v + 32
                    continue 
                if ceil32(_769) > _769:
                    mem[t + _769 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_769) + t + 32
                u = u + 32
                continue 
            mem[_627 + 32] = t - _627
            _773 = mem[_213]
            mem[t] = mem[_213]
            idx = 0
            s = _213 + 32
            u = t + (32 * _773) + 32
            v = t + 32
            while idx < _773:
                mem[v] = u + -t - 32
                _821 = mem[s]
                _822 = mem[mem[s]]
                mem[u] = mem[mem[s]]
                t = 0
                while t < _822:
                    mem[t + u + 32] = mem[t + _821 + 32]
                    t = t + 32
                    continue 
                if ceil32(_822) > _822:
                    mem[u + _822 + 32] = 0
                idx = idx + 1
                s = s + 32
                u = ceil32(_822) + u + 32
                v = v + 32
                continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_ef968176(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = ('cd', 4).length
        if not ('cd', 4).length:
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161] = ('cd', 4).length
            if not ('cd', 4).length:
                if ('cd', 4).length > test266151307():
                    revert with 'NH{q', 65
                mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193] = ('cd', 4).length
                mem[64] = ceil32(32 * ('cd', 4).length) + (131 * ('cd', 4).length) + 225
                if not ('cd', 4).length:
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1087 = mem[(32 * idx) + 128]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1151 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 96
                        _1198 = mem[_1151]
                        require mem[_1151] == mem[_1151 + 18 len 14]
                        _1231 = mem[_1151 + 32]
                        require mem[_1151 + 32] == mem[_1151 + 50 len 14]
                        require mem[_1151 + 64] == mem[_1151 + 92 len 4]
                        require ext_code.size(address(_1087))
                        staticcall address(_1087).token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1343 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1343] == mem[_1343 + 12 len 20]
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1343 + 12 len 20]
                        require ext_code.size(address(_1087))
                        staticcall address(_1087).token1() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1470 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1470] == mem[_1470 + 12 len 20]
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1470 + 12 len 20]
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1198)
                        if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                            revert with 'NH{q', 50
                        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1231)
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        continue 
                    _1086 = mem[64]
                    mem[mem[64]] = 128
                    _1150 = mem[ceil32(32 * ('cd', 4).length) + 97]
                    mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + 129
                    t = mem[64] + 160
                    while idx < _1150:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1086 + 32] = (32 * _1150) + 160
                    _1566 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                    mem[_1086 + (32 * _1150) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                    idx = 0
                    s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
                    t = _1086 + (32 * _1150) + 192
                    while idx < _1566:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_1086 + 64] = (32 * _1150) + (32 * _1566) + 192
                    _1694 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                    mem[_1086 + (32 * _1150) + (32 * _1566) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                    mem[_1086 + (32 * _1150) + (32 * _1566) + 224 len 32 * _1694] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1694]
                    mem[_1086 + 96] = (32 * _1150) + (32 * _1566) + (32 * _1694) + 224
                    _1790 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
                    mem[_1086 + (32 * _1150) + (32 * _1566) + (32 * _1694) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
                    mem[_1086 + (32 * _1150) + (32 * _1566) + (32 * _1694) + 256 len 32 * _1790] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1790]
                    return memory
                      from mem[64]
                       len _1086 + (32 * _1150) + (32 * _1566) + (32 * _1694) + (32 * _1790) + -mem[64] + 256
                mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1091 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1153 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1199 = mem[_1153]
                    require mem[_1153] == mem[_1153 + 18 len 14]
                    _1233 = mem[_1153 + 32]
                    require mem[_1153 + 32] == mem[_1153 + 50 len 14]
                    require mem[_1153 + 64] == mem[_1153 + 92 len 4]
                    require ext_code.size(address(_1091))
                    staticcall address(_1091).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1345 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1345] == mem[_1345 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1345 + 12 len 20]
                    require ext_code.size(address(_1091))
                    staticcall address(_1091).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1471 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1471] == mem[_1471 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1471 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1199)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1233)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1090 = mem[64]
                mem[mem[64]] = 128
                _1152 = mem[ceil32(32 * ('cd', 4).length) + 97]
                mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + 129
                t = mem[64] + 160
                while idx < _1152:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1090 + 32] = (32 * _1152) + 160
                _1567 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                mem[_1090 + (32 * _1152) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
                t = _1090 + (32 * _1152) + 192
                while idx < _1567:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1090 + 64] = (32 * _1152) + (32 * _1567) + 192
                _1695 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_1090 + (32 * _1152) + (32 * _1567) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_1090 + (32 * _1152) + (32 * _1567) + 224 len 32 * _1695] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1695]
                mem[_1090 + 96] = (32 * _1152) + (32 * _1567) + (32 * _1695) + 224
                _1791 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
                mem[_1090 + (32 * _1152) + (32 * _1567) + (32 * _1695) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
                mem[_1090 + (32 * _1152) + (32 * _1567) + (32 * _1695) + 256 len 32 * _1791] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1791]
                return memory
                  from mem[64]
                   len _1090 + (32 * _1152) + (32 * _1567) + (32 * _1695) + (32 * _1791) + -mem[64] + 256
            mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193] = ('cd', 4).length
            mem[64] = ceil32(32 * ('cd', 4).length) + (131 * ('cd', 4).length) + 225
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1095 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1155 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1200 = mem[_1155]
                    require mem[_1155] == mem[_1155 + 18 len 14]
                    _1235 = mem[_1155 + 32]
                    require mem[_1155 + 32] == mem[_1155 + 50 len 14]
                    require mem[_1155 + 64] == mem[_1155 + 92 len 4]
                    require ext_code.size(address(_1095))
                    staticcall address(_1095).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1347 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1347] == mem[_1347 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1347 + 12 len 20]
                    require ext_code.size(address(_1095))
                    staticcall address(_1095).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1472 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1472] == mem[_1472 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1472 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1200)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1235)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1094 = mem[64]
                mem[mem[64]] = 128
                _1154 = mem[ceil32(32 * ('cd', 4).length) + 97]
                mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + 129
                t = mem[64] + 160
                while idx < _1154:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1094 + 32] = (32 * _1154) + 160
                _1568 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                mem[_1094 + (32 * _1154) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
                t = _1094 + (32 * _1154) + 192
                while idx < _1568:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1094 + 64] = (32 * _1154) + (32 * _1568) + 192
                _1696 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_1094 + (32 * _1154) + (32 * _1568) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_1094 + (32 * _1154) + (32 * _1568) + 224 len 32 * _1696] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1696]
                mem[_1094 + 96] = (32 * _1154) + (32 * _1568) + (32 * _1696) + 224
                _1792 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
                mem[_1094 + (32 * _1154) + (32 * _1568) + (32 * _1696) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
                mem[_1094 + (32 * _1154) + (32 * _1568) + (32 * _1696) + 256 len 32 * _1792] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1792]
                return memory
                  from mem[64]
                   len _1094 + (32 * _1154) + (32 * _1568) + (32 * _1696) + (32 * _1792) + -mem[64] + 256
            mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1099 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1157 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1201 = mem[_1157]
                require mem[_1157] == mem[_1157 + 18 len 14]
                _1237 = mem[_1157 + 32]
                require mem[_1157 + 32] == mem[_1157 + 50 len 14]
                require mem[_1157 + 64] == mem[_1157 + 92 len 4]
                require ext_code.size(address(_1099))
                staticcall address(_1099).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1349 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1349] == mem[_1349 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1349 + 12 len 20]
                require ext_code.size(address(_1099))
                staticcall address(_1099).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1473 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1473] == mem[_1473 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1473 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1201)
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1237)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1098 = mem[64]
            mem[mem[64]] = 128
            _1156 = mem[ceil32(32 * ('cd', 4).length) + 97]
            mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 129
            t = mem[64] + 160
            while idx < _1156:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1098 + 32] = (32 * _1156) + 160
            _1569 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            mem[_1098 + (32 * _1156) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
            t = _1098 + (32 * _1156) + 192
            while idx < _1569:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1098 + 64] = (32 * _1156) + (32 * _1569) + 192
            _1697 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1098 + (32 * _1156) + (32 * _1569) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1098 + (32 * _1156) + (32 * _1569) + 224 len 32 * _1697] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1697]
            mem[_1098 + 96] = (32 * _1156) + (32 * _1569) + (32 * _1697) + 224
            _1793 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1098 + (32 * _1156) + (32 * _1569) + (32 * _1697) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1098 + (32 * _1156) + (32 * _1569) + (32 * _1697) + 256 len 32 * _1793] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1793]
            return memory
              from mem[64]
               len _1098 + (32 * _1156) + (32 * _1569) + (32 * _1697) + (32 * _1793) + -mem[64] + 256
        mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161] = ('cd', 4).length
        if not ('cd', 4).length:
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193] = ('cd', 4).length
            mem[64] = ceil32(32 * ('cd', 4).length) + (131 * ('cd', 4).length) + 225
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1103 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1159 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1202 = mem[_1159]
                    require mem[_1159] == mem[_1159 + 18 len 14]
                    _1239 = mem[_1159 + 32]
                    require mem[_1159 + 32] == mem[_1159 + 50 len 14]
                    require mem[_1159 + 64] == mem[_1159 + 92 len 4]
                    require ext_code.size(address(_1103))
                    staticcall address(_1103).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1351 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1351] == mem[_1351 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1351 + 12 len 20]
                    require ext_code.size(address(_1103))
                    staticcall address(_1103).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1474 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1474] == mem[_1474 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1474 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1202)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1239)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1102 = mem[64]
                mem[mem[64]] = 128
                _1158 = mem[ceil32(32 * ('cd', 4).length) + 97]
                mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + 129
                t = mem[64] + 160
                while idx < _1158:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _1158) + 160
                _1570 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                mem[mem[64] + (32 * _1158) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
                t = mem[64] + (32 * _1158) + 192
                while idx < _1570:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1102 + 64] = (32 * _1158) + (32 * _1570) + 192
                _1698 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_1102 + (32 * _1158) + (32 * _1570) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_1102 + (32 * _1158) + (32 * _1570) + 224 len 32 * _1698] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1698]
                mem[_1102 + 96] = (32 * _1158) + (32 * _1570) + (32 * _1698) + 224
                _1794 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
                mem[_1102 + (32 * _1158) + (32 * _1570) + (32 * _1698) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
                mem[_1102 + (32 * _1158) + (32 * _1570) + (32 * _1698) + 256 len 32 * _1794] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1794]
                return memory
                  from mem[64]
                   len _1102 + (32 * _1158) + (32 * _1570) + (32 * _1698) + (32 * _1794) + -mem[64] + 256
            mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1107 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1161 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1203 = mem[_1161]
                require mem[_1161] == mem[_1161 + 18 len 14]
                _1241 = mem[_1161 + 32]
                require mem[_1161 + 32] == mem[_1161 + 50 len 14]
                require mem[_1161 + 64] == mem[_1161 + 92 len 4]
                require ext_code.size(address(_1107))
                staticcall address(_1107).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1353 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1353] == mem[_1353 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1353 + 12 len 20]
                require ext_code.size(address(_1107))
                staticcall address(_1107).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1475 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1475] == mem[_1475 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1475 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1203)
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1241)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1106 = mem[64]
            mem[mem[64]] = 128
            _1160 = mem[ceil32(32 * ('cd', 4).length) + 97]
            mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 129
            t = mem[64] + 160
            while idx < _1160:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _1160) + 160
            _1571 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            mem[mem[64] + (32 * _1160) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
            t = mem[64] + (32 * _1160) + 192
            while idx < _1571:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1106 + 64] = (32 * _1160) + (32 * _1571) + 192
            _1699 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1106 + (32 * _1160) + (32 * _1571) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1106 + (32 * _1160) + (32 * _1571) + 224 len 32 * _1699] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1699]
            mem[_1106 + 96] = (32 * _1160) + (32 * _1571) + (32 * _1699) + 224
            _1795 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1106 + (32 * _1160) + (32 * _1571) + (32 * _1699) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1106 + (32 * _1160) + (32 * _1571) + (32 * _1699) + 256 len 32 * _1795] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1795]
            return memory
              from mem[64]
               len _1106 + (32 * _1160) + (32 * _1571) + (32 * _1699) + (32 * _1795) + -mem[64] + 256
        mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193] = ('cd', 4).length
        mem[64] = ceil32(32 * ('cd', 4).length) + (131 * ('cd', 4).length) + 225
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1111 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1163 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1204 = mem[_1163]
                require mem[_1163] == mem[_1163 + 18 len 14]
                _1243 = mem[_1163 + 32]
                require mem[_1163 + 32] == mem[_1163 + 50 len 14]
                require mem[_1163 + 64] == mem[_1163 + 92 len 4]
                require ext_code.size(address(_1111))
                staticcall address(_1111).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1355 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1355] == mem[_1355 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1355 + 12 len 20]
                require ext_code.size(address(_1111))
                staticcall address(_1111).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1476 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1476] == mem[_1476 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1476 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1204)
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1243)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1110 = mem[64]
            mem[mem[64]] = 128
            _1162 = mem[ceil32(32 * ('cd', 4).length) + 97]
            mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 129
            t = mem[64] + 160
            while idx < _1162:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1110 + 32] = (32 * _1162) + 160
            _1572 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            mem[_1110 + (32 * _1162) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
            t = _1110 + (32 * _1162) + 192
            while idx < _1572:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1110 + 64] = (32 * _1162) + (32 * _1572) + 192
            _1700 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1110 + (32 * _1162) + (32 * _1572) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1110 + (32 * _1162) + (32 * _1572) + 224 len 32 * _1700] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1700]
            mem[_1110 + 96] = (32 * _1162) + (32 * _1572) + (32 * _1700) + 224
            _1796 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1110 + (32 * _1162) + (32 * _1572) + (32 * _1700) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1110 + (32 * _1162) + (32 * _1572) + (32 * _1700) + 256 len 32 * _1796] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1796]
            return memory
              from mem[64]
               len _1110 + (32 * _1162) + (32 * _1572) + (32 * _1700) + (32 * _1796) + -mem[64] + 256
        mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1115 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1165 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1205 = mem[_1165]
            require mem[_1165] == mem[_1165 + 18 len 14]
            _1245 = mem[_1165 + 32]
            require mem[_1165 + 32] == mem[_1165 + 50 len 14]
            require mem[_1165 + 64] == mem[_1165 + 92 len 4]
            require ext_code.size(address(_1115))
            staticcall address(_1115).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1357 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1357] == mem[_1357 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1357 + 12 len 20]
            require ext_code.size(address(_1115))
            staticcall address(_1115).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1477 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1477] == mem[_1477 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1477 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1205)
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1245)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1114 = mem[64]
        mem[mem[64]] = 128
        _1164 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 160
        while idx < _1164:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1114 + 32] = (32 * _1164) + 160
        _1573 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        mem[_1114 + (32 * _1164) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
        t = _1114 + (32 * _1164) + 192
        while idx < _1573:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1114 + 64] = (32 * _1164) + (32 * _1573) + 192
        _1701 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
        mem[_1114 + (32 * _1164) + (32 * _1573) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
        mem[_1114 + (32 * _1164) + (32 * _1573) + 224 len 32 * _1701] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1701]
        mem[_1114 + 96] = (32 * _1164) + (32 * _1573) + (32 * _1701) + 224
        _1797 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
        mem[_1114 + (32 * _1164) + (32 * _1573) + (32 * _1701) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
        mem[_1114 + (32 * _1164) + (32 * _1573) + (32 * _1701) + 256 len 32 * _1797] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1797]
        return memory
          from mem[64]
           len _1114 + (32 * _1164) + (32 * _1573) + (32 * _1701) + (32 * _1797) + -mem[64] + 256
    mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161] = ('cd', 4).length
        if not ('cd', 4).length:
            if ('cd', 4).length > test266151307():
                revert with 'NH{q', 65
            mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193] = ('cd', 4).length
            mem[64] = ceil32(32 * ('cd', 4).length) + (131 * ('cd', 4).length) + 225
            if not ('cd', 4).length:
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1119 = mem[(32 * idx) + 128]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1167 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 96
                    _1206 = mem[_1167]
                    require mem[_1167] == mem[_1167 + 18 len 14]
                    _1247 = mem[_1167 + 32]
                    require mem[_1167 + 32] == mem[_1167 + 50 len 14]
                    require mem[_1167 + 64] == mem[_1167 + 92 len 4]
                    require ext_code.size(address(_1119))
                    staticcall address(_1119).token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1359 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1359] == mem[_1359 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1359 + 12 len 20]
                    require ext_code.size(address(_1119))
                    staticcall address(_1119).token1() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1478 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1478] == mem[_1478 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1478 + 12 len 20]
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1206)
                    if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                        revert with 'NH{q', 50
                    mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1247)
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    continue 
                _1118 = mem[64]
                mem[mem[64]] = 128
                _1166 = mem[ceil32(32 * ('cd', 4).length) + 97]
                mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + 129
                t = mem[64] + 160
                while idx < _1166:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1118 + 32] = (32 * _1166) + 160
                _1574 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                mem[_1118 + (32 * _1166) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
                idx = 0
                s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
                t = _1118 + (32 * _1166) + 192
                while idx < _1574:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1118 + 64] = (32 * _1166) + (32 * _1574) + 192
                _1702 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_1118 + (32 * _1166) + (32 * _1574) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
                mem[_1118 + (32 * _1166) + (32 * _1574) + 224 len 32 * _1702] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1702]
                mem[_1118 + 96] = (32 * _1166) + (32 * _1574) + (32 * _1702) + 224
                _1798 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
                mem[_1118 + (32 * _1166) + (32 * _1574) + (32 * _1702) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
                mem[_1118 + (32 * _1166) + (32 * _1574) + (32 * _1702) + 256 len 32 * _1798] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1798]
                return memory
                  from mem[64]
                   len _1118 + (32 * _1166) + (32 * _1574) + (32 * _1702) + (32 * _1798) + -mem[64] + 256
            mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1123 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1169 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1207 = mem[_1169]
                require mem[_1169] == mem[_1169 + 18 len 14]
                _1249 = mem[_1169 + 32]
                require mem[_1169 + 32] == mem[_1169 + 50 len 14]
                require mem[_1169 + 64] == mem[_1169 + 92 len 4]
                require ext_code.size(address(_1123))
                staticcall address(_1123).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1361 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1361] == mem[_1361 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1361 + 12 len 20]
                require ext_code.size(address(_1123))
                staticcall address(_1123).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1479 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1479] == mem[_1479 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1479 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1207)
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1249)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1122 = mem[64]
            mem[mem[64]] = 128
            _1168 = mem[ceil32(32 * ('cd', 4).length) + 97]
            mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 129
            t = mem[64] + 160
            while idx < _1168:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1122 + 32] = (32 * _1168) + 160
            _1575 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            mem[_1122 + (32 * _1168) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
            t = _1122 + (32 * _1168) + 192
            while idx < _1575:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1122 + 64] = (32 * _1168) + (32 * _1575) + 192
            _1703 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1122 + (32 * _1168) + (32 * _1575) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1122 + (32 * _1168) + (32 * _1575) + 224 len 32 * _1703] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1703]
            mem[_1122 + 96] = (32 * _1168) + (32 * _1575) + (32 * _1703) + 224
            _1799 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1122 + (32 * _1168) + (32 * _1575) + (32 * _1703) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1122 + (32 * _1168) + (32 * _1575) + (32 * _1703) + 256 len 32 * _1799] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1799]
            return memory
              from mem[64]
               len _1122 + (32 * _1168) + (32 * _1575) + (32 * _1703) + (32 * _1799) + -mem[64] + 256
        mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193] = ('cd', 4).length
        mem[64] = ceil32(32 * ('cd', 4).length) + (131 * ('cd', 4).length) + 225
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1127 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1171 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1208 = mem[_1171]
                require mem[_1171] == mem[_1171 + 18 len 14]
                _1251 = mem[_1171 + 32]
                require mem[_1171 + 32] == mem[_1171 + 50 len 14]
                require mem[_1171 + 64] == mem[_1171 + 92 len 4]
                require ext_code.size(address(_1127))
                staticcall address(_1127).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1363 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1363] == mem[_1363 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1363 + 12 len 20]
                require ext_code.size(address(_1127))
                staticcall address(_1127).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1480 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1480] == mem[_1480 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1480 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1208)
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1251)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1126 = mem[64]
            mem[mem[64]] = 128
            _1170 = mem[ceil32(32 * ('cd', 4).length) + 97]
            mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 129
            t = mem[64] + 160
            while idx < _1170:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _1170) + 160
            _1576 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            mem[mem[64] + (32 * _1170) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
            t = mem[64] + (32 * _1170) + 192
            while idx < _1576:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1126 + 64] = (32 * _1170) + (32 * _1576) + 192
            _1704 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1126 + (32 * _1170) + (32 * _1576) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1126 + (32 * _1170) + (32 * _1576) + 224 len 32 * _1704] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1704]
            mem[_1126 + 96] = (32 * _1170) + (32 * _1576) + (32 * _1704) + 224
            _1800 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1126 + (32 * _1170) + (32 * _1576) + (32 * _1704) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1126 + (32 * _1170) + (32 * _1576) + (32 * _1704) + 256 len 32 * _1800] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1800]
            return memory
              from mem[64]
               len _1126 + (32 * _1170) + (32 * _1576) + (32 * _1704) + (32 * _1800) + -mem[64] + 256
        mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1131 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1173 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1209 = mem[_1173]
            require mem[_1173] == mem[_1173 + 18 len 14]
            _1253 = mem[_1173 + 32]
            require mem[_1173 + 32] == mem[_1173 + 50 len 14]
            require mem[_1173 + 64] == mem[_1173 + 92 len 4]
            require ext_code.size(address(_1131))
            staticcall address(_1131).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1365 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1365] == mem[_1365 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1365 + 12 len 20]
            require ext_code.size(address(_1131))
            staticcall address(_1131).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1481 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1481] == mem[_1481 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1481 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1209)
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1253)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 128
        _1172 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 160
        while idx < _1172:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _1172) + 160
        _1577 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        mem[mem[64] + (32 * _1172) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
        t = mem[64] + (32 * _1172) + 192
        while idx < _1577:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 64] = (32 * _1172) + (32 * _1577) + 192
        _1705 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
        mem[mem[64] + (32 * _1172) + (32 * _1577) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
        mem[mem[64] + (32 * _1172) + (32 * _1577) + 224 len 32 * _1705] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1705]
        mem[mem[64] + 96] = (32 * _1172) + (32 * _1577) + (32 * _1705) + 224
        _1801 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
        mem[mem[64] + (32 * _1172) + (32 * _1577) + (32 * _1705) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
        mem[mem[64] + (32 * _1172) + (32 * _1577) + (32 * _1705) + 256 len 32 * _1801] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1801]
        return 128, 
               (32 * _1172) + 160,
               (32 * _1172) + (32 * _1577) + 192,
               (32 * _1172) + (32 * _1577) + (32 * _1705) + 224,
               mem[mem[64] + 128 len (32 * _1172) + (32 * _1577) + (32 * _1705) + (32 * _1801) + 128]
    mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161] = ('cd', 4).length
    if not ('cd', 4).length:
        if ('cd', 4).length > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193] = ('cd', 4).length
        mem[64] = ceil32(32 * ('cd', 4).length) + (131 * ('cd', 4).length) + 225
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1135 = mem[(32 * idx) + 128]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1175 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _1210 = mem[_1175]
                require mem[_1175] == mem[_1175 + 18 len 14]
                _1255 = mem[_1175 + 32]
                require mem[_1175 + 32] == mem[_1175 + 50 len 14]
                require mem[_1175 + 64] == mem[_1175 + 92 len 4]
                require ext_code.size(address(_1135))
                staticcall address(_1135).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1367 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1367] == mem[_1367 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1367 + 12 len 20]
                require ext_code.size(address(_1135))
                staticcall address(_1135).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1482 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1482] == mem[_1482 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1482 + 12 len 20]
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1210)
                if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1255)
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _1134 = mem[64]
            mem[mem[64]] = 128
            _1174 = mem[ceil32(32 * ('cd', 4).length) + 97]
            mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + 129
            t = mem[64] + 160
            while idx < _1174:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _1174) + 160
            _1578 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            mem[mem[64] + (32 * _1174) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
            idx = 0
            s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
            t = mem[64] + (32 * _1174) + 192
            while idx < _1578:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1134 + 64] = (32 * _1174) + (32 * _1578) + 192
            _1706 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1134 + (32 * _1174) + (32 * _1578) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
            mem[_1134 + (32 * _1174) + (32 * _1578) + 224 len 32 * _1706] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1706]
            mem[_1134 + 96] = (32 * _1174) + (32 * _1578) + (32 * _1706) + 224
            _1802 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1134 + (32 * _1174) + (32 * _1578) + (32 * _1706) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
            mem[_1134 + (32 * _1174) + (32 * _1578) + (32 * _1706) + 256 len 32 * _1802] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1802]
            return memory
              from mem[64]
               len _1134 + (32 * _1174) + (32 * _1578) + (32 * _1706) + (32 * _1802) + -mem[64] + 256
        mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1139 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1177 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1211 = mem[_1177]
            require mem[_1177] == mem[_1177 + 18 len 14]
            _1257 = mem[_1177 + 32]
            require mem[_1177 + 32] == mem[_1177 + 50 len 14]
            require mem[_1177 + 64] == mem[_1177 + 92 len 4]
            require ext_code.size(address(_1139))
            staticcall address(_1139).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1369 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1369] == mem[_1369 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1369 + 12 len 20]
            require ext_code.size(address(_1139))
            staticcall address(_1139).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1483 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1483] == mem[_1483 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1483 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1211)
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1257)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1138 = mem[64]
        mem[mem[64]] = 128
        _1176 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 160
        while idx < _1176:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1138 + 32] = (32 * _1176) + 160
        _1579 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        mem[_1138 + (32 * _1176) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
        t = _1138 + (32 * _1176) + 192
        while idx < _1579:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1138 + 64] = (32 * _1176) + (32 * _1579) + 192
        _1707 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
        mem[_1138 + (32 * _1176) + (32 * _1579) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
        mem[_1138 + (32 * _1176) + (32 * _1579) + 224 len 32 * _1707] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1707]
        mem[_1138 + 96] = (32 * _1176) + (32 * _1579) + (32 * _1707) + 224
        _1803 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
        mem[_1138 + (32 * _1176) + (32 * _1579) + (32 * _1707) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
        mem[_1138 + (32 * _1176) + (32 * _1579) + (32 * _1707) + 256 len 32 * _1803] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1803]
        return memory
          from mem[64]
           len _1138 + (32 * _1176) + (32 * _1579) + (32 * _1707) + (32 * _1803) + -mem[64] + 256
    mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193] = ('cd', 4).length
    mem[64] = ceil32(32 * ('cd', 4).length) + (131 * ('cd', 4).length) + 225
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= mem[96]:
                revert with 'NH{q', 50
            _1143 = mem[(32 * idx) + 128]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1179 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1212 = mem[_1179]
            require mem[_1179] == mem[_1179 + 18 len 14]
            _1259 = mem[_1179 + 32]
            require mem[_1179 + 32] == mem[_1179 + 50 len 14]
            require mem[_1179 + 64] == mem[_1179 + 92 len 4]
            require ext_code.size(address(_1143))
            staticcall address(_1143).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1371 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1371] == mem[_1371 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1371 + 12 len 20]
            require ext_code.size(address(_1143))
            staticcall address(_1143).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1484 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1484] == mem[_1484 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1484 + 12 len 20]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1212)
            if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1259)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _1142 = mem[64]
        mem[mem[64]] = 128
        _1178 = mem[ceil32(32 * ('cd', 4).length) + 97]
        mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + 129
        t = mem[64] + 160
        while idx < _1178:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1142 + 32] = (32 * _1178) + 160
        _1580 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        mem[_1142 + (32 * _1178) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
        idx = 0
        s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
        t = _1142 + (32 * _1178) + 192
        while idx < _1580:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1142 + 64] = (32 * _1178) + (32 * _1580) + 192
        _1708 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
        mem[_1142 + (32 * _1178) + (32 * _1580) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
        mem[_1142 + (32 * _1178) + (32 * _1580) + 224 len 32 * _1708] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1708]
        mem[_1142 + 96] = (32 * _1178) + (32 * _1580) + (32 * _1708) + 224
        _1804 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
        mem[_1142 + (32 * _1178) + (32 * _1580) + (32 * _1708) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
        mem[_1142 + (32 * _1178) + (32 * _1580) + (32 * _1708) + 256 len 32 * _1804] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1804]
        return memory
          from mem[64]
           len _1142 + (32 * _1178) + (32 * _1580) + (32 * _1708) + (32 * _1804) + -mem[64] + 256
    mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1147 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1181 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1213 = mem[_1181]
        require mem[_1181] == mem[_1181 + 18 len 14]
        _1261 = mem[_1181 + 32]
        require mem[_1181 + 32] == mem[_1181 + 50 len 14]
        require mem[_1181 + 64] == mem[_1181 + 92 len 4]
        require ext_code.size(address(_1147))
        staticcall address(_1147).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1373 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1373] == mem[_1373 + 12 len 20]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129] = mem[_1373 + 12 len 20]
        require ext_code.size(address(_1147))
        staticcall address(_1147).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1485 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1485] == mem[_1485 + 12 len 20]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161] = mem[_1485 + 12 len 20]
        if idx >= mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193] = Mask(112, 0, _1213)
        if idx >= mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225] = Mask(112, 0, _1261)
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 128
    _1180 = mem[ceil32(32 * ('cd', 4).length) + 97]
    mem[mem[64] + 128] = mem[ceil32(32 * ('cd', 4).length) + 97]
    idx = 0
    s = ceil32(32 * ('cd', 4).length) + 129
    t = mem[64] + 160
    while idx < _1180:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = (32 * _1180) + 160
    _1581 = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
    mem[mem[64] + (32 * _1180) + 160] = mem[ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 129]
    idx = 0
    s = ceil32(32 * ('cd', 4).length) + (32 * ('cd', 4).length) + 161
    t = mem[64] + (32 * _1180) + 192
    while idx < _1581:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 64] = (32 * _1180) + (32 * _1581) + 192
    _1709 = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
    mem[mem[64] + (32 * _1180) + (32 * _1581) + 192] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 161]
    mem[mem[64] + (32 * _1180) + (32 * _1581) + 224 len 32 * _1709] = mem[ceil32(32 * ('cd', 4).length) + (64 * ('cd', 4).length) + 193 len 32 * _1709]
    mem[mem[64] + 96] = (32 * _1180) + (32 * _1581) + (32 * _1709) + 224
    _1805 = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
    mem[mem[64] + (32 * _1180) + (32 * _1581) + (32 * _1709) + 224] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 193]
    mem[mem[64] + (32 * _1180) + (32 * _1581) + (32 * _1709) + 256 len 32 * _1805] = mem[ceil32(32 * ('cd', 4).length) + (98 * ('cd', 4).length) + 225 len 32 * _1805]
    return 128, 
           (32 * _1180) + 160,
           (32 * _1180) + (32 * _1581) + 192,
           (32 * _1180) + (32 * _1581) + (32 * _1709) + 224,
           mem[mem[64] + 128 len (32 * _1180) + (32 * _1581) + (32 * _1709) + (32 * _1805) + 128]
}



}
