contract main {




// =====================  Runtime code  =====================


address owner;
uint256 MAX_GETTER_LENGTH;

function owner() payable {
    return owner
}

function MAX_GETTER_LENGTH() payable {
    return MAX_GETTER_LENGTH
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

function sub_05b0f677(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xbc788d46 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_4d580615(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xbc788d46 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_5e3628b4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x1486a730 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_7316a638(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xe195bd6a with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_2e5eb56b(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x1486a730 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    if arg3 + arg4 <= ext_call.return_data[0]:
        if arg4 > MAX_GETTER_LENGTH:
            revert with 0, 'MAX GET'
        if arg4 > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = arg4
        mem[64] = ceil32(return_data.size) + (32 * arg4) + 128
        if not arg4:
            idx = 0
            while idx < arg4:
                if arg3 > -idx - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = arg3 + idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x4524aab5 with:
                        gas gas_remaining wei
                       args (arg3 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _136 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _143 = mem[_136]
                require mem[_136] == mem[_136 + 12 len 20]
                require ext_code.size(mem[_136 + 12 len 20])
                staticcall mem[_136 + 12 len 20].0x9ffbc67f with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _174 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _177 = mem[_174]
                require mem[_174] == mem[_174]
                _184 = mem[_174 + 32]
                require mem[_174 + 32] == mem[_174 + 32]
                _188 = mem[_174 + 64]
                require mem[_174 + 64] == mem[_174 + 64]
                _194 = mem[64]
                mem[64] = mem[64] + 160
                mem[_194] = address(_143)
                require ext_code.size(address(_143))
                staticcall address(_143).getContractVersion() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _198 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_198] == mem[_198]
                mem[_194 + 32] = mem[_198]
                mem[_194 + 64] = _177
                mem[_194 + 96] = _184
                mem[_194 + 128] = _188
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _194
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _116 = mem[64]
            mem[mem[64]] = 32
            _118 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _118:
                _218 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_218 + 32]
                mem[t + 64] = mem[_218 + 64]
                mem[t + 96] = mem[_218 + 96]
                mem[t + 128] = mem[_218 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _116 + (160 * _118) + -mem[64] + 64
        mem[64] = ceil32(return_data.size) + (32 * arg4) + 288
        mem[ceil32(return_data.size) + (32 * arg4) + 128] = 0
        mem[ceil32(return_data.size) + (32 * arg4) + 160] = 0
        mem[ceil32(return_data.size) + (32 * arg4) + 192] = 0
        mem[ceil32(return_data.size) + (32 * arg4) + 224] = 0
        mem[ceil32(return_data.size) + (32 * arg4) + 256] = 0
        mem[var67001] = ceil32(return_data.size) + (32 * arg4) + 128
        s = var67001
        idx = var67002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[ceil32(return_data.size) + (32 * arg4) + 128] = 0
            mem[ceil32(return_data.size) + (32 * arg4) + 160] = 0
            mem[ceil32(return_data.size) + (32 * arg4) + 192] = 0
            mem[ceil32(return_data.size) + (32 * arg4) + 224] = 0
            mem[ceil32(return_data.size) + (32 * arg4) + 256] = 0
            mem[s + 32] = ceil32(return_data.size) + (32 * arg4) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg4:
            if arg3 > -idx - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = arg3 + idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x4524aab5 with:
                    gas gas_remaining wei
                   args (arg3 + idx)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _296 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _298 = mem[_296]
            require mem[_296] == mem[_296 + 12 len 20]
            require ext_code.size(mem[_296 + 12 len 20])
            staticcall mem[_296 + 12 len 20].0x9ffbc67f with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _312 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _314 = mem[_312]
            require mem[_312] == mem[_312]
            _316 = mem[_312 + 32]
            require mem[_312 + 32] == mem[_312 + 32]
            _318 = mem[_312 + 64]
            require mem[_312 + 64] == mem[_312 + 64]
            _322 = mem[64]
            mem[64] = mem[64] + 160
            mem[_322] = address(_298)
            require ext_code.size(address(_298))
            staticcall address(_298).getContractVersion() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _326 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_326] == mem[_326]
            mem[_322 + 32] = mem[_326]
            mem[_322 + 64] = _314
            mem[_322 + 96] = _316
            mem[_322 + 128] = _318
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _322
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _282 = mem[64]
        mem[mem[64]] = 32
        _284 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _284:
            _332 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_332 + 32]
            mem[t + 64] = mem[_332 + 64]
            mem[t + 96] = mem[_332 + 96]
            mem[t + 128] = mem[_332 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _282 + (160 * _284) + -mem[64] + 64
    if ext_call.return_data[0] < arg3:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - arg3 > MAX_GETTER_LENGTH:
        revert with 0, 'MAX GET'
    if ext_call.return_data[0] - arg3 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg3
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 128
    if not ext_call.return_data[0] - arg3:
        idx = 0
        while idx < ext_call.return_data[0] - arg3:
            if arg3 > -idx - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = arg3 + idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x4524aab5 with:
                    gas gas_remaining wei
                   args (arg3 + idx)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _135 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _139 = mem[_135]
            require mem[_135] == mem[_135 + 12 len 20]
            require ext_code.size(mem[_135 + 12 len 20])
            staticcall mem[_135 + 12 len 20].0x9ffbc67f with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _173 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _175 = mem[_173]
            require mem[_173] == mem[_173]
            _183 = mem[_173 + 32]
            require mem[_173 + 32] == mem[_173 + 32]
            _187 = mem[_173 + 64]
            require mem[_173 + 64] == mem[_173 + 64]
            _191 = mem[64]
            mem[64] = mem[64] + 160
            mem[_191] = address(_139)
            require ext_code.size(address(_139))
            staticcall address(_139).getContractVersion() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _197 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_197] == mem[_197]
            mem[_191 + 32] = mem[_197]
            mem[_191 + 64] = _175
            mem[_191 + 96] = _183
            mem[_191 + 128] = _187
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _191
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _115 = mem[64]
        mem[mem[64]] = 32
        _117 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _117:
            _217 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_217 + 32]
            mem[t + 64] = mem[_217 + 64]
            mem[t + 96] = mem[_217 + 96]
            mem[t + 128] = mem[_217 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _115 + (160 * _117) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 288
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 160] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 192] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 224] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 256] = 0
    mem[var74001] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 128
    s = var74001
    idx = var74002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 192] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 224] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 256] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ext_call.return_data[0] - arg3:
        if arg3 > -idx - 1:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = arg3 + idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x4524aab5 with:
                gas gas_remaining wei
               args (arg3 + idx)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _295 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _297 = mem[_295]
        require mem[_295] == mem[_295 + 12 len 20]
        require ext_code.size(mem[_295 + 12 len 20])
        staticcall mem[_295 + 12 len 20].0x9ffbc67f with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _311 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _313 = mem[_311]
        require mem[_311] == mem[_311]
        _315 = mem[_311 + 32]
        require mem[_311 + 32] == mem[_311 + 32]
        _317 = mem[_311 + 64]
        require mem[_311 + 64] == mem[_311 + 64]
        _319 = mem[64]
        mem[64] = mem[64] + 160
        mem[_319] = address(_297)
        require ext_code.size(address(_297))
        staticcall address(_297).getContractVersion() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _325 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_325] == mem[_325]
        mem[_319 + 32] = mem[_325]
        mem[_319 + 64] = _313
        mem[_319 + 96] = _315
        mem[_319 + 128] = _317
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = _319
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _281 = mem[64]
    mem[mem[64]] = 32
    _283 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _283:
        _331 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_331 + 32]
        mem[t + 64] = mem[_331 + 64]
        mem[t + 96] = mem[_331 + 96]
        mem[t + 128] = mem[_331 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _281 + (160 * _283) + -mem[64] + 64
}

function sub_1f5e2b00(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xbc788d46 with:
            gas gas_remaining wei
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
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x29796290 with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _140 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _147 = mem[_140]
                require mem[_140] == mem[_140 + 12 len 20]
                _165 = mem[64]
                mem[64] = mem[64] + 160
                mem[_165] = 0
                mem[_165 + 32] = 0
                mem[_165 + 64] = 0
                mem[_165 + 96] = 0
                mem[_165 + 128] = 0
                require ext_code.size(address(arg1))
                staticcall address(arg1).getUserInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(_147)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _182 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                require return_data.size >= 96
                _188 = mem[64]
                if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 96
                require mem[_182] == mem[_182]
                mem[_188] = mem[_182]
                require mem[_182 + 32] == mem[_182 + 32]
                mem[_188 + 32] = mem[_182 + 32]
                require mem[_182 + 64] == mem[_182 + 64]
                mem[_188 + 64] = mem[_182 + 64]
                _204 = mem[_182 + 96]
                require mem[_182 + 96] == mem[_182 + 96]
                mem[_165] = address(_147)
                mem[_165 + 32] = mem[_188]
                mem[_165 + 64] = mem[_188 + 32]
                mem[_165 + 96] = mem[_188 + 64]
                mem[_165 + 128] = _204
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _165
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _120 = mem[64]
            mem[mem[64]] = 32
            _122 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _122:
                _226 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_226 + 32]
                mem[t + 64] = mem[_226 + 64]
                mem[t + 96] = mem[_226 + 96]
                mem[t + 128] = mem[_226 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _120 + (160 * _122) + -mem[64] + 64
        mem[64] = ceil32(return_data.size) + (32 * arg3) + 288
        mem[ceil32(return_data.size) + (32 * arg3) + 128] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 160] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 192] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 224] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 256] = 0
        mem[var58001] = ceil32(return_data.size) + (32 * arg3) + 128
        s = var58001
        idx = var58002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[ceil32(return_data.size) + (32 * arg3) + 128] = 0
            mem[ceil32(return_data.size) + (32 * arg3) + 160] = 0
            mem[ceil32(return_data.size) + (32 * arg3) + 192] = 0
            mem[ceil32(return_data.size) + (32 * arg3) + 224] = 0
            mem[ceil32(return_data.size) + (32 * arg3) + 256] = 0
            mem[s + 32] = ceil32(return_data.size) + (32 * arg3) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg3:
            if arg2 > -idx - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = arg2 + idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x29796290 with:
                    gas gas_remaining wei
                   args (arg2 + idx)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _306 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _308 = mem[_306]
            require mem[_306] == mem[_306 + 12 len 20]
            _316 = mem[64]
            mem[64] = mem[64] + 160
            mem[_316] = 0
            mem[_316 + 32] = 0
            mem[_316 + 64] = 0
            mem[_316 + 96] = 0
            mem[_316 + 128] = 0
            require ext_code.size(address(arg1))
            staticcall address(arg1).getUserInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(_308)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _324 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require return_data.size >= 96
            _326 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 96
            require mem[_324] == mem[_324]
            mem[_326] = mem[_324]
            require mem[_324 + 32] == mem[_324 + 32]
            mem[_326 + 32] = mem[_324 + 32]
            require mem[_324 + 64] == mem[_324 + 64]
            mem[_326 + 64] = mem[_324 + 64]
            _334 = mem[_324 + 96]
            require mem[_324 + 96] == mem[_324 + 96]
            mem[_316] = address(_308)
            mem[_316 + 32] = mem[_326]
            mem[_316 + 64] = mem[_326 + 32]
            mem[_316 + 96] = mem[_326 + 64]
            mem[_316 + 128] = _334
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _316
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _292 = mem[64]
        mem[mem[64]] = 32
        _294 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _294:
            _344 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_344 + 32]
            mem[t + 64] = mem[_344 + 64]
            mem[t + 96] = mem[_344 + 96]
            mem[t + 128] = mem[_344 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _292 + (160 * _294) + -mem[64] + 64
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
            mem[mem[64] + 4] = arg2 + idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x29796290 with:
                    gas gas_remaining wei
                   args (arg2 + idx)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _139 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _143 = mem[_139]
            require mem[_139] == mem[_139 + 12 len 20]
            _163 = mem[64]
            mem[64] = mem[64] + 160
            mem[_163] = 0
            mem[_163 + 32] = 0
            mem[_163 + 64] = 0
            mem[_163 + 96] = 0
            mem[_163 + 128] = 0
            require ext_code.size(address(arg1))
            staticcall address(arg1).getUserInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(_143)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _181 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            require return_data.size >= 96
            _187 = mem[64]
            if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 96
            require mem[_181] == mem[_181]
            mem[_187] = mem[_181]
            require mem[_181 + 32] == mem[_181 + 32]
            mem[_187 + 32] = mem[_181 + 32]
            require mem[_181 + 64] == mem[_181 + 64]
            mem[_187 + 64] = mem[_181 + 64]
            _203 = mem[_181 + 96]
            require mem[_181 + 96] == mem[_181 + 96]
            mem[_163] = address(_143)
            mem[_163 + 32] = mem[_187]
            mem[_163 + 64] = mem[_187 + 32]
            mem[_163 + 96] = mem[_187 + 64]
            mem[_163 + 128] = _203
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _163
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _119 = mem[64]
        mem[mem[64]] = 32
        _121 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _121:
            _225 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_225 + 32]
            mem[t + 64] = mem[_225 + 64]
            mem[t + 96] = mem[_225 + 96]
            mem[t + 128] = mem[_225 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _119 + (160 * _121) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 288
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 224] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 256] = 0
    mem[var65001] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
    s = var65001
    idx = var65002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 224] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 256] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ext_call.return_data[0] - arg2:
        if arg2 > -idx - 1:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = arg2 + idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x29796290 with:
                gas gas_remaining wei
               args (arg2 + idx)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _305 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _307 = mem[_305]
        require mem[_305] == mem[_305 + 12 len 20]
        _315 = mem[64]
        mem[64] = mem[64] + 160
        mem[_315] = 0
        mem[_315 + 32] = 0
        mem[_315 + 64] = 0
        mem[_315 + 96] = 0
        mem[_315 + 128] = 0
        require ext_code.size(address(arg1))
        staticcall address(arg1).getUserInfo(address arg1) with:
                gas gas_remaining wei
               args address(_307)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _323 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require return_data.size >= 96
        _325 = mem[64]
        if mem[64] + 96 > test266151307() or mem[64] + 96 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 96
        require mem[_323] == mem[_323]
        mem[_325] = mem[_323]
        require mem[_323 + 32] == mem[_323 + 32]
        mem[_325 + 32] = mem[_323 + 32]
        require mem[_323 + 64] == mem[_323 + 64]
        mem[_325 + 64] = mem[_323 + 64]
        _333 = mem[_323 + 96]
        require mem[_323 + 96] == mem[_323 + 96]
        mem[_315] = address(_307)
        mem[_315 + 32] = mem[_325]
        mem[_315 + 64] = mem[_325 + 32]
        mem[_315 + 96] = mem[_325 + 64]
        mem[_315 + 128] = _333
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = _315
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _291 = mem[64]
    mem[mem[64]] = 32
    _293 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _293:
        _343 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_343 + 32]
        mem[t + 64] = mem[_343 + 64]
        mem[t + 96] = mem[_343 + 96]
        mem[t + 128] = mem[_343 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _291 + (160 * _293) + -mem[64] + 64
}

function sub_29468532(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    mem[100] = address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xe195bd6a with:
            gas gas_remaining wei
           args address(arg2)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg3 > -arg4 - 1:
        revert with 'NH{q', 17
    if arg3 + arg4 <= ext_call.return_data[0]:
        if arg4 > MAX_GETTER_LENGTH:
            revert with 0, 'MAX GET'
        if arg4 > test266151307():
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + 96] = arg4
        mem[64] = ceil32(return_data.size) + (32 * arg4) + 128
        if not arg4:
            idx = 0
            while idx < arg4:
                if arg3 > -idx - 1:
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = address(arg2)
                mem[mem[64] + 36] = arg3 + idx
                require ext_code.size(address(arg1))
                staticcall address(arg1).0x2eb4cabf with:
                        gas gas_remaining wei
                       args address(arg2), arg3 + idx
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _144 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _150 = mem[_144]
                require mem[_144] == mem[_144 + 12 len 20]
                require ext_code.size(mem[_144 + 12 len 20])
                staticcall mem[_144 + 12 len 20].0x9ffbc67f with:
                        gas gas_remaining wei
                       args address(arg2)
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _174 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _177 = mem[_174]
                require mem[_174] == mem[_174]
                _184 = mem[_174 + 32]
                require mem[_174 + 32] == mem[_174 + 32]
                _188 = mem[_174 + 64]
                require mem[_174 + 64] == mem[_174 + 64]
                _194 = mem[64]
                mem[64] = mem[64] + 160
                mem[_194] = address(_150)
                require ext_code.size(address(_150))
                staticcall address(_150).getContractVersion() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _198 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_198] == mem[_198]
                mem[_194 + 32] = mem[_198]
                mem[_194 + 64] = _177
                mem[_194 + 96] = _184
                mem[_194 + 128] = _188
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _194
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _116 = mem[64]
            mem[mem[64]] = 32
            _118 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _118:
                _218 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_218 + 32]
                mem[t + 64] = mem[_218 + 64]
                mem[t + 96] = mem[_218 + 96]
                mem[t + 128] = mem[_218 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
            return memory
              from mem[64]
               len _116 + (160 * _118) + -mem[64] + 64
        mem[64] = ceil32(return_data.size) + (32 * arg4) + 288
        mem[ceil32(return_data.size) + (32 * arg4) + 128] = 0
        mem[ceil32(return_data.size) + (32 * arg4) + 160] = 0
        mem[ceil32(return_data.size) + (32 * arg4) + 192] = 0
        mem[ceil32(return_data.size) + (32 * arg4) + 224] = 0
        mem[ceil32(return_data.size) + (32 * arg4) + 256] = 0
        mem[var75001] = ceil32(return_data.size) + (32 * arg4) + 128
        s = var75001
        idx = var75002
        while idx - 1:
            mem[64] = mem[64] + 160
            mem[ceil32(return_data.size) + (32 * arg4) + 128] = 0
            mem[ceil32(return_data.size) + (32 * arg4) + 160] = 0
            mem[ceil32(return_data.size) + (32 * arg4) + 192] = 0
            mem[ceil32(return_data.size) + (32 * arg4) + 224] = 0
            mem[ceil32(return_data.size) + (32 * arg4) + 256] = 0
            mem[s + 32] = ceil32(return_data.size) + (32 * arg4) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg4:
            if arg3 > -idx - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = arg3 + idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x2eb4cabf with:
                    gas gas_remaining wei
                   args address(arg2), arg3 + idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _298 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _302 = mem[_298]
            require mem[_298] == mem[_298 + 12 len 20]
            require ext_code.size(mem[_298 + 12 len 20])
            staticcall mem[_298 + 12 len 20].0x9ffbc67f with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _312 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _314 = mem[_312]
            require mem[_312] == mem[_312]
            _316 = mem[_312 + 32]
            require mem[_312 + 32] == mem[_312 + 32]
            _318 = mem[_312 + 64]
            require mem[_312 + 64] == mem[_312 + 64]
            _322 = mem[64]
            mem[64] = mem[64] + 160
            mem[_322] = address(_302)
            require ext_code.size(address(_302))
            staticcall address(_302).getContractVersion() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _326 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_326] == mem[_326]
            mem[_322 + 32] = mem[_326]
            mem[_322 + 64] = _314
            mem[_322 + 96] = _316
            mem[_322 + 128] = _318
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _322
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _282 = mem[64]
        mem[mem[64]] = 32
        _284 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _284:
            _332 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_332 + 32]
            mem[t + 64] = mem[_332 + 64]
            mem[t + 96] = mem[_332 + 96]
            mem[t + 128] = mem[_332 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _282 + (160 * _284) + -mem[64] + 64
    if ext_call.return_data[0] < arg3:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - arg3 > MAX_GETTER_LENGTH:
        revert with 0, 'MAX GET'
    if ext_call.return_data[0] - arg3 > test266151307():
        revert with 'NH{q', 65
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0] - arg3
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 128
    if not ext_call.return_data[0] - arg3:
        idx = 0
        while idx < ext_call.return_data[0] - arg3:
            if arg3 > -idx - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = address(arg2)
            mem[mem[64] + 36] = arg3 + idx
            require ext_code.size(address(arg1))
            staticcall address(arg1).0x2eb4cabf with:
                    gas gas_remaining wei
                   args address(arg2), arg3 + idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _143 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _147 = mem[_143]
            require mem[_143] == mem[_143 + 12 len 20]
            require ext_code.size(mem[_143 + 12 len 20])
            staticcall mem[_143 + 12 len 20].0x9ffbc67f with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _173 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _175 = mem[_173]
            require mem[_173] == mem[_173]
            _183 = mem[_173 + 32]
            require mem[_173 + 32] == mem[_173 + 32]
            _187 = mem[_173 + 64]
            require mem[_173 + 64] == mem[_173 + 64]
            _191 = mem[64]
            mem[64] = mem[64] + 160
            mem[_191] = address(_147)
            require ext_code.size(address(_147))
            staticcall address(_147).getContractVersion() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _197 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_197] == mem[_197]
            mem[_191 + 32] = mem[_197]
            mem[_191 + 64] = _175
            mem[_191 + 96] = _183
            mem[_191 + 128] = _187
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _191
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _115 = mem[64]
        mem[mem[64]] = 32
        _117 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _117:
            _217 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_217 + 32]
            mem[t + 64] = mem[_217 + 64]
            mem[t + 96] = mem[_217 + 96]
            mem[t + 128] = mem[_217 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _115 + (160 * _117) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 288
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 160] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 192] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 224] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 256] = 0
    mem[var82001] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 128
    s = var82001
    idx = var82002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 192] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 224] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 256] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg3) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ext_call.return_data[0] - arg3:
        if arg3 > -idx - 1:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = address(arg2)
        mem[mem[64] + 36] = arg3 + idx
        require ext_code.size(address(arg1))
        staticcall address(arg1).0x2eb4cabf with:
                gas gas_remaining wei
               args address(arg2), arg3 + idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _297 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _301 = mem[_297]
        require mem[_297] == mem[_297 + 12 len 20]
        require ext_code.size(mem[_297 + 12 len 20])
        staticcall mem[_297 + 12 len 20].0x9ffbc67f with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _311 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _313 = mem[_311]
        require mem[_311] == mem[_311]
        _315 = mem[_311 + 32]
        require mem[_311 + 32] == mem[_311 + 32]
        _317 = mem[_311 + 64]
        require mem[_311 + 64] == mem[_311 + 64]
        _319 = mem[64]
        mem[64] = mem[64] + 160
        mem[_319] = address(_301)
        require ext_code.size(address(_301))
        staticcall address(_301).getContractVersion() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _325 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_325] == mem[_325]
        mem[_319 + 32] = mem[_325]
        mem[_319 + 64] = _313
        mem[_319 + 96] = _315
        mem[_319 + 128] = _317
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = _319
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _281 = mem[64]
    mem[mem[64]] = 32
    _283 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _283:
        _331 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_331 + 32]
        mem[t + 64] = mem[_331 + 64]
        mem[t + 96] = mem[_331 + 96]
        mem[t + 128] = mem[_331 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _281 + (160 * _283) + -mem[64] + 64
}

function getStakers(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg1)
    staticcall arg1.0xbc788d46 with:
            gas gas_remaining wei
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
                mem[mem[64] + 4] = arg2 + idx
                require ext_code.size(arg1)
                staticcall arg1.0x29796290 with:
                        gas gas_remaining wei
                       args (arg2 + idx)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _172 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_172] == mem[_172 + 12 len 20]
                require ext_code.size(arg1)
                staticcall arg1.getUserInfo(address arg1) with:
                        gas gas_remaining wei
                       args address(mem[_172])
                mem[mem[64] len 352] = ext_call.return_data[0 len 352]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _209 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 352
                _219 = mem[64]
                if mem[64] + 352 > test266151307() or mem[64] + 352 < mem[64]:
                    revert with 'NH{q', 65
                mem[64] = mem[64] + 352
                require mem[_209] == mem[_209 + 12 len 20]
                mem[_219] = mem[_209]
                require mem[_209 + 32] == mem[_209 + 32]
                mem[_219 + 32] = mem[_209 + 32]
                require mem[_209 + 64] == mem[_209 + 64]
                mem[_219 + 64] = mem[_209 + 64]
                require mem[_209 + 96] == mem[_209 + 96]
                mem[_219 + 96] = mem[_209 + 96]
                require mem[_209 + 128] == mem[_209 + 128]
                mem[_219 + 128] = mem[_209 + 128]
                require mem[_209 + 160] == mem[_209 + 160]
                mem[_219 + 160] = mem[_209 + 160]
                require mem[_209 + 192] == mem[_209 + 192]
                mem[_219 + 192] = mem[_209 + 192]
                require mem[_209 + 224] == mem[_209 + 224]
                mem[_219 + 224] = mem[_209 + 224]
                require mem[_209 + 256] == mem[_209 + 256]
                mem[_219 + 256] = mem[_209 + 256]
                require mem[_209 + 288] == mem[_209 + 300 len 20]
                mem[_219 + 288] = mem[_209 + 288]
                require mem[_209 + 320] == mem[_209 + 320]
                mem[_219 + 320] = mem[_209 + 320]
                if idx >= mem[ceil32(return_data.size) + 96]:
                    revert with 'NH{q', 50
                mem[(32 * idx) + ceil32(return_data.size) + 128] = _219
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            _155 = mem[64]
            mem[mem[64]] = 32
            _158 = mem[ceil32(return_data.size) + 96]
            mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
            idx = 0
            s = ceil32(return_data.size) + 128
            t = mem[64] + 64
            while idx < _158:
                _274 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_274 + 32]
                mem[t + 64] = mem[_274 + 64]
                mem[t + 96] = mem[_274 + 96]
                mem[t + 128] = mem[_274 + 128]
                mem[t + 160] = mem[_274 + 160]
                mem[t + 192] = mem[_274 + 192]
                mem[t + 224] = mem[_274 + 224]
                mem[t + 256] = mem[_274 + 256]
                mem[t + 288] = mem[_274 + 300 len 20]
                mem[t + 320] = mem[_274 + 320]
                idx = idx + 1
                s = s + 32
                t = t + 352
                continue 
            return memory
              from mem[64]
               len _155 + (352 * _158) + -mem[64] + 64
        mem[64] = ceil32(return_data.size) + (32 * arg3) + 480
        mem[ceil32(return_data.size) + (32 * arg3) + 128] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 160] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 192] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 224] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 256] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 288] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 320] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 352] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 384] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 416] = 0
        mem[ceil32(return_data.size) + (32 * arg3) + 448] = 0
        mem[var58001] = ceil32(return_data.size) + (32 * arg3) + 128
        s = var58001
        idx = var58002
        while idx - 1:
            mem[64] = mem[64] + 352
            mem[ceil32(return_data.size) + (32 * arg3) + 128] = 0
            mem[ceil32(return_data.size) + (32 * arg3) + 160] = 0
            mem[ceil32(return_data.size) + (32 * arg3) + 192] = 0
            mem[ceil32(return_data.size) + (32 * arg3) + 224] = 0
            mem[ceil32(return_data.size) + (32 * arg3) + 256] = 0
            mem[ceil32(return_data.size) + (32 * arg3) + 288] = 0
            mem[ceil32(return_data.size) + (32 * arg3) + 320] = 0
            mem[ceil32(return_data.size) + (32 * arg3) + 352] = 0
            mem[ceil32(return_data.size) + (32 * arg3) + 384] = 0
            mem[ceil32(return_data.size) + (32 * arg3) + 416] = 0
            mem[ceil32(return_data.size) + (32 * arg3) + 448] = 0
            mem[s + 32] = ceil32(return_data.size) + (32 * arg3) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < arg3:
            if arg2 > -idx - 1:
                revert with 'NH{q', 17
            mem[mem[64] + 4] = arg2 + idx
            require ext_code.size(arg1)
            staticcall arg1.0x29796290 with:
                    gas gas_remaining wei
                   args (arg2 + idx)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _412 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_412] == mem[_412 + 12 len 20]
            require ext_code.size(arg1)
            staticcall arg1.getUserInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[_412])
            mem[mem[64] len 352] = ext_call.return_data[0 len 352]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _436 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 352
            _443 = mem[64]
            if mem[64] + 352 > test266151307() or mem[64] + 352 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 352
            require mem[_436] == mem[_436 + 12 len 20]
            mem[_443] = mem[_436]
            require mem[_436 + 32] == mem[_436 + 32]
            mem[_443 + 32] = mem[_436 + 32]
            require mem[_436 + 64] == mem[_436 + 64]
            mem[_443 + 64] = mem[_436 + 64]
            require mem[_436 + 96] == mem[_436 + 96]
            mem[_443 + 96] = mem[_436 + 96]
            require mem[_436 + 128] == mem[_436 + 128]
            mem[_443 + 128] = mem[_436 + 128]
            require mem[_436 + 160] == mem[_436 + 160]
            mem[_443 + 160] = mem[_436 + 160]
            require mem[_436 + 192] == mem[_436 + 192]
            mem[_443 + 192] = mem[_436 + 192]
            require mem[_436 + 224] == mem[_436 + 224]
            mem[_443 + 224] = mem[_436 + 224]
            require mem[_436 + 256] == mem[_436 + 256]
            mem[_443 + 256] = mem[_436 + 256]
            require mem[_436 + 288] == mem[_436 + 300 len 20]
            mem[_443 + 288] = mem[_436 + 288]
            require mem[_436 + 320] == mem[_436 + 320]
            mem[_443 + 320] = mem[_436 + 320]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _443
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _394 = mem[64]
        mem[mem[64]] = 32
        _398 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _398:
            _476 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_476 + 32]
            mem[t + 64] = mem[_476 + 64]
            mem[t + 96] = mem[_476 + 96]
            mem[t + 128] = mem[_476 + 128]
            mem[t + 160] = mem[_476 + 160]
            mem[t + 192] = mem[_476 + 192]
            mem[t + 224] = mem[_476 + 224]
            mem[t + 256] = mem[_476 + 256]
            mem[t + 288] = mem[_476 + 300 len 20]
            mem[t + 320] = mem[_476 + 320]
            idx = idx + 1
            s = s + 32
            t = t + 352
            continue 
        return memory
          from mem[64]
           len _394 + (352 * _398) + -mem[64] + 64
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
            mem[mem[64] + 4] = arg2 + idx
            require ext_code.size(arg1)
            staticcall arg1.0x29796290 with:
                    gas gas_remaining wei
                   args (arg2 + idx)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _292 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_292] == mem[_292 + 12 len 20]
            require ext_code.size(arg1)
            staticcall arg1.getUserInfo(address arg1) with:
                    gas gas_remaining wei
                   args address(mem[_292])
            mem[mem[64] len 352] = ext_call.return_data[0 len 352]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _329 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 352
            _339 = mem[64]
            if mem[64] + 352 > test266151307() or mem[64] + 352 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + 352
            require mem[_329] == mem[_329 + 12 len 20]
            mem[_339] = mem[_329]
            require mem[_329 + 32] == mem[_329 + 32]
            mem[_339 + 32] = mem[_329 + 32]
            require mem[_329 + 64] == mem[_329 + 64]
            mem[_339 + 64] = mem[_329 + 64]
            require mem[_329 + 96] == mem[_329 + 96]
            mem[_339 + 96] = mem[_329 + 96]
            require mem[_329 + 128] == mem[_329 + 128]
            mem[_339 + 128] = mem[_329 + 128]
            require mem[_329 + 160] == mem[_329 + 160]
            mem[_339 + 160] = mem[_329 + 160]
            require mem[_329 + 192] == mem[_329 + 192]
            mem[_339 + 192] = mem[_329 + 192]
            require mem[_329 + 224] == mem[_329 + 224]
            mem[_339 + 224] = mem[_329 + 224]
            require mem[_329 + 256] == mem[_329 + 256]
            mem[_339 + 256] = mem[_329 + 256]
            require mem[_329 + 288] == mem[_329 + 300 len 20]
            mem[_339 + 288] = mem[_329 + 288]
            require mem[_329 + 320] == mem[_329 + 320]
            mem[_339 + 320] = mem[_329 + 320]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + ceil32(return_data.size) + 128] = _339
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _275 = mem[64]
        mem[mem[64]] = 32
        _278 = mem[ceil32(return_data.size) + 96]
        mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = mem[64] + 64
        while idx < _278:
            _392 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_392 + 32]
            mem[t + 64] = mem[_392 + 64]
            mem[t + 96] = mem[_392 + 96]
            mem[t + 128] = mem[_392 + 128]
            mem[t + 160] = mem[_392 + 160]
            mem[t + 192] = mem[_392 + 192]
            mem[t + 224] = mem[_392 + 224]
            mem[t + 256] = mem[_392 + 256]
            mem[t + 288] = mem[_392 + 300 len 20]
            mem[t + 320] = mem[_392 + 320]
            idx = idx + 1
            s = s + 32
            t = t + 352
            continue 
        return memory
          from mem[64]
           len _275 + (352 * _278) + -mem[64] + 64
    mem[64] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 480
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 224] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 256] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 288] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 320] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 352] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 384] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 416] = 0
    mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 448] = 0
    mem[var65001] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
    s = var65001
    idx = var65002
    while idx - 1:
        mem[64] = mem[64] + 352
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 160] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 192] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 224] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 256] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 288] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 320] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 352] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 384] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 416] = 0
        mem[ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 448] = 0
        mem[s + 32] = ceil32(return_data.size) + (32 * ext_call.return_data[0] - arg2) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ext_call.return_data[0] - arg2:
        if arg2 > -idx - 1:
            revert with 'NH{q', 17
        mem[mem[64] + 4] = arg2 + idx
        require ext_code.size(arg1)
        staticcall arg1.0x29796290 with:
                gas gas_remaining wei
               args (arg2 + idx)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _411 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_411] == mem[_411 + 12 len 20]
        require ext_code.size(arg1)
        staticcall arg1.getUserInfo(address arg1) with:
                gas gas_remaining wei
               args address(mem[_411])
        mem[mem[64] len 352] = ext_call.return_data[0 len 352]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _435 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 352
        _441 = mem[64]
        if mem[64] + 352 > test266151307() or mem[64] + 352 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + 352
        require mem[_435] == mem[_435 + 12 len 20]
        mem[_441] = mem[_435]
        require mem[_435 + 32] == mem[_435 + 32]
        mem[_441 + 32] = mem[_435 + 32]
        require mem[_435 + 64] == mem[_435 + 64]
        mem[_441 + 64] = mem[_435 + 64]
        require mem[_435 + 96] == mem[_435 + 96]
        mem[_441 + 96] = mem[_435 + 96]
        require mem[_435 + 128] == mem[_435 + 128]
        mem[_441 + 128] = mem[_435 + 128]
        require mem[_435 + 160] == mem[_435 + 160]
        mem[_441 + 160] = mem[_435 + 160]
        require mem[_435 + 192] == mem[_435 + 192]
        mem[_441 + 192] = mem[_435 + 192]
        require mem[_435 + 224] == mem[_435 + 224]
        mem[_441 + 224] = mem[_435 + 224]
        require mem[_435 + 256] == mem[_435 + 256]
        mem[_441 + 256] = mem[_435 + 256]
        require mem[_435 + 288] == mem[_435 + 300 len 20]
        mem[_441 + 288] = mem[_435 + 288]
        require mem[_435 + 320] == mem[_435 + 320]
        mem[_441 + 320] = mem[_435 + 320]
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        mem[(32 * idx) + ceil32(return_data.size) + 128] = _441
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    _393 = mem[64]
    mem[mem[64]] = 32
    _397 = mem[ceil32(return_data.size) + 96]
    mem[mem[64] + 32] = mem[ceil32(return_data.size) + 96]
    idx = 0
    s = ceil32(return_data.size) + 128
    t = mem[64] + 64
    while idx < _397:
        _475 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_475 + 32]
        mem[t + 64] = mem[_475 + 64]
        mem[t + 96] = mem[_475 + 96]
        mem[t + 128] = mem[_475 + 128]
        mem[t + 160] = mem[_475 + 160]
        mem[t + 192] = mem[_475 + 192]
        mem[t + 224] = mem[_475 + 224]
        mem[t + 256] = mem[_475 + 256]
        mem[t + 288] = mem[_475 + 300 len 20]
        mem[t + 320] = mem[_475 + 320]
        idx = idx + 1
        s = s + 32
        t = t + 352
        continue 
    return memory
      from mem[64]
       len _393 + (352 * _397) + -mem[64] + 64
}



}
