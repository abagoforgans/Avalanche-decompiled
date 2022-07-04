contract main {




// =====================  Runtime code  =====================


address owner;
uint256 MAX_GETTER_LENGTH;
address sub_e9a09bb1Address;

function owner() payable {
    return owner
}

function MAX_GETTER_LENGTH() payable {
    return MAX_GETTER_LENGTH
}

function sub_e9a09bb1(?) payable {
    return sub_e9a09bb1Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMaxGetterLength(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MAX_GETTER_LENGTH = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_14067f53(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_e9a09bb1Address)
    staticcall sub_e9a09bb1Address.0x14067f53 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_faa27b98(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_e9a09bb1Address)
    staticcall sub_e9a09bb1Address.0xfaa27b98 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_b6a1fe1a(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    mem[100] = address(arg1)
    require ext_code.size(sub_e9a09bb1Address)
    staticcall sub_e9a09bb1Address.0x14067f53 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg2 + arg3 <= ext_call.return_data[0]:
        if arg3 > MAX_GETTER_LENGTH:
            revert with 0, 'MAX GET'
        if arg3 > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = arg3
        mem[64] = ceil32(return_data.size) + (32 * arg3) + 128
        if not arg3:
            idx = 0
            while idx < arg3:
                if arg2 > -idx - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = arg2 + idx
                require ext_code.size(sub_e9a09bb1Address)
                staticcall sub_e9a09bb1Address.0x4e74734f with:
                        gas gas_remaining wei
                       args address(arg1), arg2 + idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _108 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _112 = mem[_108]
                require mem[_108] == mem[_108 + 12 len 20]
                _122 = mem[64]
                mem[64] = mem[64] + 64
                mem[_122] = address(_112)
                require ext_code.size(address(_112))
                staticcall address(_112).getContractVersion() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _126 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_126] == mem[_126]
                mem[_122 + 32] = mem[_126]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _122
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _80 = mem[64]
            mem[mem[64]] = 32
            _82 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _82:
                _146 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_146 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _80 + (64 * _82) + -mem[64] + 64
        mem[64] = ceil32(return_data.size) + (32 * arg3) + 192
        mem[ceil32(return_data.size) + (32 * arg3) + 128] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 160] = 0
        mem[var64001] = ceil32(return_data.size) + (32 * arg3) + 128
        s = var64001
        idx = var64002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[ceil32(return_data.size) + (32 * arg3) + 128] = 0
            mem[ceil32(return_data.size) + (32 * arg3) + 160] = 0
            mem[s + 32] = ceil32(return_data.size) + (32 * arg3) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg3:
            if arg2 > -idx - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = arg2 + idx
            require ext_code.size(sub_e9a09bb1Address)
            staticcall sub_e9a09bb1Address.0x4e74734f with:
                    gas gas_remaining wei
                   args address(arg1), arg2 + idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _202 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _204 = mem[_202]
            require mem[_202] == mem[_202 + 12 len 20]
            _208 = mem[64]
            mem[64] = mem[64] + 64
            mem[_208] = address(_204)
            require ext_code.size(address(_204))
            staticcall address(_204).getContractVersion() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _212 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_212] == mem[_212]
            mem[_208 + 32] = mem[_212]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _208
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _186 = mem[64]
        mem[mem[64]] = 32
        _188 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _188:
            _218 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_218 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _186 + (64 * _188) + -mem[64] + 64
    if ext_call.return_data[0] < arg2:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - arg2 > MAX_GETTER_LENGTH:
        revert with 0, 'MAX GET'
    if ext_call.return_data[0] - arg2 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg2
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
    if not ext_call.return_data[0] - arg2:
        idx = 0
        while idx < ext_call.return_data[0] - arg2:
            if arg2 > -idx - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = arg2 + idx
            require ext_code.size(sub_e9a09bb1Address)
            staticcall sub_e9a09bb1Address.0x4e74734f with:
                    gas gas_remaining wei
                   args address(arg1), arg2 + idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _107 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _109 = mem[_107]
            require mem[_107] == mem[_107 + 12 len 20]
            _119 = mem[64]
            mem[64] = mem[64] + 64
            mem[_119] = address(_109)
            require ext_code.size(address(_109))
            staticcall address(_109).getContractVersion() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _125 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_125] == mem[_125]
            mem[_119 + 32] = mem[_125]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _119
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _79 = mem[64]
        mem[mem[64]] = 32
        _81 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _81:
            _145 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_145 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _79 + (64 * _81) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
    mem[var71001] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
    s = var71001
    idx = var71002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ext_call.return_data[0] - arg2:
        if arg2 > -idx - 1:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = arg2 + idx
        require ext_code.size(sub_e9a09bb1Address)
        staticcall sub_e9a09bb1Address.0x4e74734f with:
                gas gas_remaining wei
               args address(arg1), arg2 + idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _201 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _203 = mem[_201]
        require mem[_201] == mem[_201 + 12 len 20]
        _205 = mem[64]
        mem[64] = mem[64] + 64
        mem[_205] = address(_203)
        require ext_code.size(address(_203))
        staticcall address(_203).getContractVersion() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _211 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_211] == mem[_211]
        mem[_205 + 32] = mem[_211]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = _205
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _185 = mem[64]
    mem[mem[64]] = 32
    _187 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _187:
        _217 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_217 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _185 + (64 * _187) + -mem[64] + 64
}

function sub_bf844a4c(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    mem[100] = address(arg1)
    require ext_code.size(sub_e9a09bb1Address)
    staticcall sub_e9a09bb1Address.0xfaa27b98 with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg2 + arg3 <= ext_call.return_data[0]:
        if arg3 > MAX_GETTER_LENGTH:
            revert with 0, 'MAX GET'
        if arg3 > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = arg3
        mem[64] = ceil32(return_data.size) + (32 * arg3) + 128
        if not arg3:
            idx = 0
            while idx < arg3:
                if arg2 > -idx - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = address(arg1)
                mem[mem[64] + 36] = arg2 + idx
                require ext_code.size(sub_e9a09bb1Address)
                staticcall sub_e9a09bb1Address.0x49c12994 with:
                        gas gas_remaining wei
                       args address(arg1), arg2 + idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _108 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _112 = mem[_108]
                require mem[_108] == mem[_108 + 12 len 20]
                _122 = mem[64]
                mem[64] = mem[64] + 64
                mem[_122] = address(_112)
                require ext_code.size(address(_112))
                staticcall address(_112).getContractVersion() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _126 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_126] == mem[_126]
                mem[_122 + 32] = mem[_126]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _122
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _80 = mem[64]
            mem[mem[64]] = 32
            _82 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _82:
                _146 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_146 + 32]
                idx = idx + 1
                s = s + 32
                t = t + 64
                continue 
            return memory
              from mem[64]
               len _80 + (64 * _82) + -mem[64] + 64
        mem[64] = ceil32(return_data.size) + (32 * arg3) + 192
        mem[ceil32(return_data.size) + (32 * arg3) + 128] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 160] = 0
        mem[var64001] = ceil32(return_data.size) + (32 * arg3) + 128
        s = var64001
        idx = var64002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[ceil32(return_data.size) + (32 * arg3) + 128] = 0
            mem[ceil32(return_data.size) + (32 * arg3) + 160] = 0
            mem[s + 32] = ceil32(return_data.size) + (32 * arg3) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg3:
            if arg2 > -idx - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = arg2 + idx
            require ext_code.size(sub_e9a09bb1Address)
            staticcall sub_e9a09bb1Address.0x49c12994 with:
                    gas gas_remaining wei
                   args address(arg1), arg2 + idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _202 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _204 = mem[_202]
            require mem[_202] == mem[_202 + 12 len 20]
            _208 = mem[64]
            mem[64] = mem[64] + 64
            mem[_208] = address(_204)
            require ext_code.size(address(_204))
            staticcall address(_204).getContractVersion() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _212 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_212] == mem[_212]
            mem[_208 + 32] = mem[_212]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _208
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _186 = mem[64]
        mem[mem[64]] = 32
        _188 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _188:
            _218 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_218 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _186 + (64 * _188) + -mem[64] + 64
    if ext_call.return_data[0] < arg2:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - arg2 > MAX_GETTER_LENGTH:
        revert with 0, 'MAX GET'
    if ext_call.return_data[0] - arg2 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg2
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
    if not ext_call.return_data[0] - arg2:
        idx = 0
        while idx < ext_call.return_data[0] - arg2:
            if arg2 > -idx - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = address(arg1)
            mem[mem[64] + 36] = arg2 + idx
            require ext_code.size(sub_e9a09bb1Address)
            staticcall sub_e9a09bb1Address.0x49c12994 with:
                    gas gas_remaining wei
                   args address(arg1), arg2 + idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _107 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _109 = mem[_107]
            require mem[_107] == mem[_107 + 12 len 20]
            _119 = mem[64]
            mem[64] = mem[64] + 64
            mem[_119] = address(_109)
            require ext_code.size(address(_109))
            staticcall address(_109).getContractVersion() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _125 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_125] == mem[_125]
            mem[_119 + 32] = mem[_125]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _119
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _79 = mem[64]
        mem[mem[64]] = 32
        _81 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _81:
            _145 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_145 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _79 + (64 * _81) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
    mem[var71001] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
    s = var71001
    idx = var71002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ext_call.return_data[0] - arg2:
        if arg2 > -idx - 1:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = address(arg1)
        mem[mem[64] + 36] = arg2 + idx
        require ext_code.size(sub_e9a09bb1Address)
        staticcall sub_e9a09bb1Address.0x49c12994 with:
                gas gas_remaining wei
               args address(arg1), arg2 + idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _201 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _203 = mem[_201]
        require mem[_201] == mem[_201 + 12 len 20]
        _205 = mem[64]
        mem[64] = mem[64] + 64
        mem[_205] = address(_203)
        require ext_code.size(address(_203))
        staticcall address(_203).getContractVersion() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _211 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_211] == mem[_211]
        mem[_205 + 32] = mem[_211]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = _205
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _185 = mem[64]
    mem[mem[64]] = 32
    _187 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _187:
        _217 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_217 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _185 + (64 * _187) + -mem[64] + 64
}



}
