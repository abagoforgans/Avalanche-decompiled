contract main {




// =====================  Runtime code  =====================


address owner;
uint256 contractStatus;
array of address stor2;

function owner() {
    return owner
}

function getContractStatus() {
    return contractStatus
}

function _fallback() payable {
    emit Fallback(msg.sender, msg.value);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_ec5566b3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    contractStatus = arg1
    emit 0x71a66a33: msg.sender, arg1
}

function sub_d1997d8f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    stor2.length++
    stor2[stor2.length] = address(arg1)
    emit 0x68912701: address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    if contractStatus:
        revert with 0, 'Contract Paused'
    if arg1 > 0:
        if arg1 < stor2.length:
            require ext_code.size(stor2[arg1])
            staticcall stor2[arg1].0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= arg2:
                if arg1 >= stor2.length:
                    revert with 0, 50
                require ext_code.size(stor2[arg1])
                call stor2[arg1].0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(uint256 arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    if contractStatus:
        revert with 0, 'Contract Paused'
    if arg1 <= 0:
        if eth.balance(this.address) >= arg2:
            call arg3 with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg1 >= stor2.length:
            if eth.balance(this.address) >= arg2:
                call arg3 with:
                   value arg2 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(stor2[arg1])
            staticcall stor2[arg1].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= arg2:
                if arg1 >= stor2.length:
                    revert with 0, 50
                require ext_code.size(stor2[arg1])
                call stor2[arg1].0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function deleteCurrency(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    if 1 >= stor2.length:
        revert with 0, 'can not delete currency any more'
    if stor2.length < 1:
        revert with 0, 17
    if var38001 < stor2.length:
        if stor2[var40001] != arg1:
            idx = var40004
            while idx:
                if idx - 1 >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if stor2[idx] == arg1:
                    if stor2.length < 1:
                        revert with 0, 17
                    if stor2.length < 1:
                        revert with 0, 17
                    if stor2.length - 1 >= stor2.length:
                        revert with 0, 50
                    if idx - 1 != stor2.length - 1:
                        if idx - 1 >= stor2.length:
                            revert with 0, 50
                        stor2[idx] = stor2[stor2.length]
                    stor2[stor2.length] = 0
                    if not stor2.length:
                        revert with 0, 49
                    mem[0] = 2
                    stor2[stor2.length] = 0
                    stor2.length--
                idx = idx - 1
                continue 
            emit 0xe6639113: arg1
        if stor2.length < 1:
            revert with 0, 17
        if stor2.length < 1:
            revert with 0, 17
        if var48002 == stor2.length - 1:
            s = var54006
            while stor2.length - 1 < stor2.length:
                stor2[stor2.length] = 0
                if not stor2.length:
                    revert with 0, 49
                stor2[stor2.length] = 0
                stor2.length--
                idx = s
                while idx:
                    if idx - 1 >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    if stor2[idx] != arg1:
                        idx = idx - 1
                        continue 
                    if stor2.length < 1:
                        revert with 0, 17
                    if stor2.length < 1:
                        revert with 0, 17
                    if idx - 1 != stor2.length - 1:
                        if stor2.length - 1 >= stor2.length:
                            revert with 0, 50
                        if idx - 1 >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        stor2[idx] = stor2[stor2.length]
                    s = idx - 1
                    continue 
                emit 0xe6639113: arg1
        else:
            s = var54006
            while stor2.length - 1 < stor2.length:
                if s < stor2.length:
                    stor2[s] = stor2[stor2.length]
                    if stor2.length < 1:
                        revert with 0, 17
                    s = var58006
                    while stor2.length - 1 < stor2.length:
                        stor2[stor2.length] = 0
                        if not stor2.length:
                            revert with 0, 49
                        stor2[stor2.length] = 0
                        stor2.length--
                        idx = s
                        while idx:
                            if idx - 1 >= stor2.length:
                                revert with 0, 50
                            mem[0] = 2
                            if stor2[idx] != arg1:
                                idx = idx - 1
                                continue 
                            if stor2.length < 1:
                                revert with 0, 17
                            if stor2.length < 1:
                                revert with 0, 17
                            if idx - 1 == stor2.length - 1:
                                s = idx - 1
                                continue 
                            s = idx - 1
                            continue 
                        emit 0xe6639113: arg1
                revert with 0, 50
    revert with 0, 50
}

function getCurrencyList() {
    if 1 > !stor2.length:
        revert with 0, 17
    if stor2.length + 1 > test266151307():
        revert with 0, 65
    mem[96] = stor2.length + 1
    mem[64] = (32 * stor2.length + 1) + 128
    if not stor2.length + 1:
        if 1 > !stor2.length:
            revert with 0, 17
        if stor2.length + 1 > test266151307():
            revert with 0, 65
        mem[(32 * stor2.length + 1) + 128] = stor2.length + 1
        if not stor2.length + 1:
            if 1 > !stor2.length:
                revert with 0, 17
            if stor2.length + 1 > test266151307():
                revert with 0, 65
            mem[(64 * stor2.length + 1) + 160] = stor2.length + 1
            if not stor2.length + 1:
                if 1 > !stor2.length:
                    revert with 0, 17
                if stor2.length + 1 > test266151307():
                    revert with 0, 65
                mem[(98 * stor2.length) + 290] = stor2.length + 1
                if not stor2.length + 1:
                    mem[64] = (98 * stor2.length) + (32 * stor2.length + 1) + 386
                    mem[(98 * stor2.length) + (32 * stor2.length + 1) + 322] = 4
                    mem[(98 * stor2.length) + (32 * stor2.length + 1) + 354] = 0x4156415800000000000000000000000000000000000000000000000000000000
                    if 0 >= stor2.length + 1:
                        revert with 0, 50
                    mem[128] = (98 * stor2.length) + (32 * stor2.length + 1) + 322
                    if 0 >= stor2.length + 1:
                        revert with 0, 50
                    mem[(32 * stor2.length + 1) + 160] = eth.balance(this.address)
                    if 0 >= stor2.length + 1:
                        revert with 0, 50
                    mem[(64 * stor2.length + 1) + 192] = 18
                    if 0 >= stor2.length + 1:
                        revert with 0, 50
                    mem[(98 * stor2.length) + 322] = 0
                    idx = 1
                    while idx <= stor2.length:
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x95d89b41 with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _936 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _960 = mem[_936]
                        require mem[_936] <= test266151307()
                        require _936 + mem[_936] + 31 < _936 + return_data.size
                        _986 = mem[_936 + mem[_936]]
                        if mem[_936 + mem[_936]] > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(mem[_936 + mem[_936]])) + 1 < 0 or _936 + ceil32(return_data.size) + ceil32(ceil32(mem[_936 + mem[_936]])) + 1 > test266151307():
                            revert with 0, 65
                        mem[64] = _936 + ceil32(return_data.size) + ceil32(ceil32(mem[_936 + mem[_936]])) + 1
                        mem[_936 + ceil32(return_data.size)] = _986
                        require _960 + _986 + 32 <= return_data.size
                        s = 0
                        while s < _986:
                            mem[s + _936 + ceil32(return_data.size) + 32] = mem[s + _936 + _960 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_986) <= _986:
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _936 + ceil32(return_data.size)
                            if idx >= stor2.length:
                                revert with 0, 50
                            mem[0] = 2
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2[idx])
                            staticcall stor2[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1960 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if idx >= mem[(32 * stor2.length + 1) + 128]:
                                revert with 0, 50
                            mem[(32 * idx) + (32 * stor2.length + 1) + 160] = mem[_1960]
                            if idx >= stor2.length:
                                revert with 0, 50
                            mem[0] = 2
                            require ext_code.size(stor2[idx])
                            staticcall stor2[idx].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2143 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2143] == mem[_2143 + 31 len 1]
                            if idx >= mem[(64 * stor2.length + 1) + 160]:
                                revert with 0, 50
                            mem[(32 * idx) + (64 * stor2.length + 1) + 192] = mem[_2143 + 31 len 1]
                        else:
                            mem[_986 + _936 + ceil32(return_data.size) + 32] = 0
                            if idx >= mem[96]:
                                revert with 0, 50
                            mem[(32 * idx) + 128] = _936 + ceil32(return_data.size)
                            if idx >= stor2.length:
                                revert with 0, 50
                            mem[0] = 2
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(stor2[idx])
                            staticcall stor2[idx].0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1961 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if idx >= mem[(32 * stor2.length + 1) + 128]:
                                revert with 0, 50
                            mem[(32 * idx) + (32 * stor2.length + 1) + 160] = mem[_1961]
                            if idx >= stor2.length:
                                revert with 0, 50
                            mem[0] = 2
                            require ext_code.size(stor2[idx])
                            staticcall stor2[idx].0x313ce567 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2144 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2144] == mem[_2144 + 31 len 1]
                            if idx >= mem[(64 * stor2.length + 1) + 160]:
                                revert with 0, 50
                            mem[(32 * idx) + (64 * stor2.length + 1) + 192] = mem[_2144 + 31 len 1]
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        if idx >= mem[(98 * stor2.length) + 290]:
                            revert with 0, 50
                        mem[(32 * idx) + (98 * stor2.length) + 322] = stor2[idx]
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _896 = mem[64]
                    mem[mem[64]] = 128
                    _928 = mem[(98 * stor2.length) + 290]
                    mem[mem[64] + 128] = mem[(98 * stor2.length) + 290]
                    idx = 0
                    s = (98 * stor2.length) + 322
                    t = mem[64] + 160
                    while idx < _928:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 32] = (32 * _928) + 160
                    _1743 = mem[96]
                    mem[mem[64] + (32 * _928) + 160] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + (32 * _928) + (32 * mem[96]) + 192
                    u = mem[64] + (32 * _928) + 192
                    while idx < _1743:
                        mem[u] = t + -_896 + -(32 * _928) - 192
                        _2471 = mem[s]
                        _2472 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _2472:
                            mem[v + t + 32] = mem[v + _2471 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_2472) > _2472:
                            mem[_2472 + t + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_2472) + t + 32
                        u = u + 32
                        continue 
                    mem[_896 + 64] = t - _896
                    _2511 = mem[(32 * stor2.length + 1) + 128]
                    mem[t] = mem[(32 * stor2.length + 1) + 128]
                    mem[t + 32 len 32 * _2511] = mem[(32 * stor2.length + 1) + 160 len 32 * _2511]
                    var42001 = _2511
                    mem[_896 + 96] = t + (32 * _2511) + -_896 + 32
                    _2903 = mem[(64 * stor2.length + 1) + 160]
                    mem[t + (32 * _2511) + 32] = mem[(64 * stor2.length + 1) + 160]
                    mem[t + (32 * _2511) + 64 len 32 * _2903] = mem[(64 * stor2.length + 1) + 192 len 32 * _2903]
                    return memory
                      from mem[64]
                       len t + (32 * _2511) + (32 * _2903) + -mem[64] + 64
                mem[(98 * stor2.length) + 322 len 32 * stor2.length + 1] = call.data[calldata.size len 32 * stor2.length + 1]
                mem[64] = (98 * stor2.length) + (32 * stor2.length + 1) + 386
                mem[(98 * stor2.length) + (32 * stor2.length + 1) + 322] = 4
                mem[(98 * stor2.length) + (32 * stor2.length + 1) + 354] = 0x4156415800000000000000000000000000000000000000000000000000000000
                if 0 >= stor2.length + 1:
                    revert with 0, 50
                mem[128] = (98 * stor2.length) + (32 * stor2.length + 1) + 322
                if 0 >= stor2.length + 1:
                    revert with 0, 50
                mem[(32 * stor2.length + 1) + 160] = eth.balance(this.address)
                if 0 >= stor2.length + 1:
                    revert with 0, 50
                mem[(64 * stor2.length + 1) + 192] = 18
                if 0 >= stor2.length + 1:
                    revert with 0, 50
                mem[(98 * stor2.length) + 322] = 0
                idx = 1
                while idx <= stor2.length:
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _937 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _961 = mem[_937]
                    require mem[_937] <= test266151307()
                    require _937 + mem[_937] + 31 < _937 + return_data.size
                    _988 = mem[_937 + mem[_937]]
                    if mem[_937 + mem[_937]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_937 + mem[_937]])) + 1 < 0 or _937 + ceil32(return_data.size) + ceil32(ceil32(mem[_937 + mem[_937]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _937 + ceil32(return_data.size) + ceil32(ceil32(mem[_937 + mem[_937]])) + 1
                    mem[_937 + ceil32(return_data.size)] = _988
                    require _961 + _988 + 32 <= return_data.size
                    s = 0
                    while s < _988:
                        mem[s + _937 + ceil32(return_data.size) + 32] = mem[s + _937 + _961 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_988) <= _988:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _937 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1963 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[(32 * stor2.length + 1) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * stor2.length + 1) + 160] = mem[_1963]
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2145 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2145] == mem[_2145 + 31 len 1]
                        if idx >= mem[(64 * stor2.length + 1) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * stor2.length + 1) + 192] = mem[_2145 + 31 len 1]
                    else:
                        mem[_988 + _937 + ceil32(return_data.size) + 32] = 0
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _937 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1964 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[(32 * stor2.length + 1) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * stor2.length + 1) + 160] = mem[_1964]
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2146 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2146] == mem[_2146 + 31 len 1]
                        if idx >= mem[(64 * stor2.length + 1) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * stor2.length + 1) + 192] = mem[_2146 + 31 len 1]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    if idx >= mem[(98 * stor2.length) + 290]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * stor2.length) + 322] = stor2[idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _900 = mem[64]
                mem[mem[64]] = 128
                _929 = mem[(98 * stor2.length) + 290]
                mem[mem[64] + 128] = mem[(98 * stor2.length) + 290]
                idx = 0
                s = (98 * stor2.length) + 322
                t = mem[64] + 160
                while idx < _929:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_900 + 32] = (32 * _929) + 160
                _1746 = mem[96]
                mem[_900 + (32 * _929) + 160] = mem[96]
                idx = 0
                s = 128
                t = _900 + (32 * _929) + (32 * mem[96]) + 192
                u = _900 + (32 * _929) + 192
                while idx < _1746:
                    mem[u] = t + -_900 + -(32 * _929) - 192
                    _2473 = mem[s]
                    _2474 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2474:
                        mem[v + t + 32] = mem[v + _2473 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2474) > _2474:
                        mem[_2474 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_2474) + t + 32
                    u = u + 32
                    continue 
                mem[_900 + 64] = t - _900
                _2512 = mem[(32 * stor2.length + 1) + 128]
                mem[t] = mem[(32 * stor2.length + 1) + 128]
                mem[t + 32 len 32 * _2512] = mem[(32 * stor2.length + 1) + 160 len 32 * _2512]
                var43001 = _2512
                mem[_900 + 96] = t + (32 * _2512) + -_900 + 32
                _2904 = mem[(64 * stor2.length + 1) + 160]
                mem[t + (32 * _2512) + 32] = mem[(64 * stor2.length + 1) + 160]
                mem[t + (32 * _2512) + 64 len 32 * _2904] = mem[(64 * stor2.length + 1) + 192 len 32 * _2904]
                return memory
                  from mem[64]
                   len t + (32 * _2512) + (32 * _2904) + -mem[64] + 64
            mem[(64 * stor2.length + 1) + 192 len 32 * stor2.length + 1] = call.data[calldata.size len 32 * stor2.length + 1]
            if 1 > !stor2.length:
                revert with 0, 17
            if stor2.length + 1 > test266151307():
                revert with 0, 65
            mem[(98 * stor2.length) + 290] = stor2.length + 1
            if not stor2.length + 1:
                mem[64] = (98 * stor2.length) + (32 * stor2.length + 1) + 386
                mem[(98 * stor2.length) + (32 * stor2.length + 1) + 322] = 4
                mem[(98 * stor2.length) + (32 * stor2.length + 1) + 354] = 0x4156415800000000000000000000000000000000000000000000000000000000
                if 0 >= stor2.length + 1:
                    revert with 0, 50
                mem[128] = (98 * stor2.length) + (32 * stor2.length + 1) + 322
                if 0 >= stor2.length + 1:
                    revert with 0, 50
                mem[(32 * stor2.length + 1) + 160] = eth.balance(this.address)
                if 0 >= stor2.length + 1:
                    revert with 0, 50
                mem[(64 * stor2.length + 1) + 192] = 18
                if 0 >= stor2.length + 1:
                    revert with 0, 50
                mem[(98 * stor2.length) + 322] = 0
                idx = 1
                while idx <= stor2.length:
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _938 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _962 = mem[_938]
                    require mem[_938] <= test266151307()
                    require _938 + mem[_938] + 31 < _938 + return_data.size
                    _990 = mem[_938 + mem[_938]]
                    if mem[_938 + mem[_938]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_938 + mem[_938]])) + 1 < 0 or _938 + ceil32(return_data.size) + ceil32(ceil32(mem[_938 + mem[_938]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _938 + ceil32(return_data.size) + ceil32(ceil32(mem[_938 + mem[_938]])) + 1
                    mem[_938 + ceil32(return_data.size)] = _990
                    require _962 + _990 + 32 <= return_data.size
                    s = 0
                    while s < _990:
                        mem[s + _938 + ceil32(return_data.size) + 32] = mem[s + _938 + _962 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_990) <= _990:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _938 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1966 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[(32 * stor2.length + 1) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * stor2.length + 1) + 160] = mem[_1966]
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2147 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2147] == mem[_2147 + 31 len 1]
                        if idx >= mem[(64 * stor2.length + 1) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * stor2.length + 1) + 192] = mem[_2147 + 31 len 1]
                    else:
                        mem[_990 + _938 + ceil32(return_data.size) + 32] = 0
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _938 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1967 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[(32 * stor2.length + 1) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * stor2.length + 1) + 160] = mem[_1967]
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2148 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2148] == mem[_2148 + 31 len 1]
                        if idx >= mem[(64 * stor2.length + 1) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * stor2.length + 1) + 192] = mem[_2148 + 31 len 1]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    if idx >= mem[(98 * stor2.length) + 290]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * stor2.length) + 322] = stor2[idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _904 = mem[64]
                mem[mem[64]] = 128
                _930 = mem[(98 * stor2.length) + 290]
                mem[mem[64] + 128] = mem[(98 * stor2.length) + 290]
                idx = 0
                s = (98 * stor2.length) + 322
                t = mem[64] + 160
                while idx < _930:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_904 + 32] = (32 * _930) + 160
                _1749 = mem[96]
                mem[_904 + (32 * _930) + 160] = mem[96]
                idx = 0
                s = 128
                t = _904 + (32 * _930) + (32 * mem[96]) + 192
                u = _904 + (32 * _930) + 192
                while idx < _1749:
                    mem[u] = t + -_904 + -(32 * _930) - 192
                    _2475 = mem[s]
                    _2476 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2476:
                        mem[v + t + 32] = mem[v + _2475 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2476) > _2476:
                        mem[_2476 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_2476) + t + 32
                    u = u + 32
                    continue 
                mem[_904 + 64] = t - _904
                _2513 = mem[(32 * stor2.length + 1) + 128]
                mem[t] = mem[(32 * stor2.length + 1) + 128]
                mem[t + 32 len 32 * _2513] = mem[(32 * stor2.length + 1) + 160 len 32 * _2513]
                var43001 = _2513
                mem[_904 + 96] = t + (32 * _2513) + -_904 + 32
                _2905 = mem[(64 * stor2.length + 1) + 160]
                mem[t + (32 * _2513) + 32] = mem[(64 * stor2.length + 1) + 160]
                mem[t + (32 * _2513) + 64 len 32 * _2905] = mem[(64 * stor2.length + 1) + 192 len 32 * _2905]
                return memory
                  from mem[64]
                   len t + (32 * _2513) + (32 * _2905) + -mem[64] + 64
            mem[(98 * stor2.length) + 322 len 32 * stor2.length + 1] = call.data[calldata.size len 32 * stor2.length + 1]
            mem[64] = (98 * stor2.length) + (32 * stor2.length + 1) + 386
            mem[(98 * stor2.length) + (32 * stor2.length + 1) + 322] = 4
            mem[(98 * stor2.length) + (32 * stor2.length + 1) + 354] = 0x4156415800000000000000000000000000000000000000000000000000000000
            if 0 >= stor2.length + 1:
                revert with 0, 50
            mem[128] = (98 * stor2.length) + (32 * stor2.length + 1) + 322
            if 0 >= stor2.length + 1:
                revert with 0, 50
            mem[(32 * stor2.length + 1) + 160] = eth.balance(this.address)
            if 0 >= stor2.length + 1:
                revert with 0, 50
            mem[(64 * stor2.length + 1) + 192] = 18
            if 0 >= stor2.length + 1:
                revert with 0, 50
            mem[(98 * stor2.length) + 322] = 0
            idx = 1
            while idx <= stor2.length:
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _939 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _963 = mem[_939]
                require mem[_939] <= test266151307()
                require _939 + mem[_939] + 31 < _939 + return_data.size
                _992 = mem[_939 + mem[_939]]
                if mem[_939 + mem[_939]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_939 + mem[_939]])) + 1 < 0 or _939 + ceil32(return_data.size) + ceil32(ceil32(mem[_939 + mem[_939]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _939 + ceil32(return_data.size) + ceil32(ceil32(mem[_939 + mem[_939]])) + 1
                mem[_939 + ceil32(return_data.size)] = _992
                require _963 + _992 + 32 <= return_data.size
                s = 0
                while s < _992:
                    mem[s + _939 + ceil32(return_data.size) + 32] = mem[s + _939 + _963 + 32]
                    s = s + 32
                    continue 
                if ceil32(_992) <= _992:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _939 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1969 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(32 * stor2.length + 1) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length + 1) + 160] = mem[_1969]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2149 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2149] == mem[_2149 + 31 len 1]
                    if idx >= mem[(64 * stor2.length + 1) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * stor2.length + 1) + 192] = mem[_2149 + 31 len 1]
                else:
                    mem[_992 + _939 + ceil32(return_data.size) + 32] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _939 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1970 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(32 * stor2.length + 1) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length + 1) + 160] = mem[_1970]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2150 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2150] == mem[_2150 + 31 len 1]
                    if idx >= mem[(64 * stor2.length + 1) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * stor2.length + 1) + 192] = mem[_2150 + 31 len 1]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if idx >= mem[(98 * stor2.length) + 290]:
                    revert with 0, 50
                mem[(32 * idx) + (98 * stor2.length) + 322] = stor2[idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _908 = mem[64]
            mem[mem[64]] = 128
            _931 = mem[(98 * stor2.length) + 290]
            mem[mem[64] + 128] = mem[(98 * stor2.length) + 290]
            idx = 0
            s = (98 * stor2.length) + 322
            t = mem[64] + 160
            while idx < _931:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _931) + 160
            _1752 = mem[96]
            mem[mem[64] + (32 * _931) + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * _931) + (32 * mem[96]) + 192
            u = mem[64] + (32 * _931) + 192
            while idx < _1752:
                mem[u] = t + -_908 + -(32 * _931) - 192
                _2477 = mem[s]
                _2478 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2478:
                    mem[v + t + 32] = mem[v + _2477 + 32]
                    v = v + 32
                    continue 
                if ceil32(_2478) > _2478:
                    mem[_2478 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_2478) + t + 32
                u = u + 32
                continue 
            mem[_908 + 64] = t - _908
            _2514 = mem[(32 * stor2.length + 1) + 128]
            mem[t] = mem[(32 * stor2.length + 1) + 128]
            mem[t + 32 len 32 * _2514] = mem[(32 * stor2.length + 1) + 160 len 32 * _2514]
            var44001 = _2514
            mem[_908 + 96] = t + (32 * _2514) + -_908 + 32
            _2906 = mem[(64 * stor2.length + 1) + 160]
            mem[t + (32 * _2514) + 32] = mem[(64 * stor2.length + 1) + 160]
            mem[t + (32 * _2514) + 64 len 32 * _2906] = mem[(64 * stor2.length + 1) + 192 len 32 * _2906]
            return memory
              from mem[64]
               len t + (32 * _2514) + (32 * _2906) + -mem[64] + 64
        mem[(32 * stor2.length + 1) + 160 len 32 * stor2.length + 1] = call.data[calldata.size len 32 * stor2.length + 1]
        if 1 > !stor2.length:
            revert with 0, 17
        if stor2.length + 1 > test266151307():
            revert with 0, 65
        mem[(64 * stor2.length + 1) + 160] = stor2.length + 1
        if not stor2.length + 1:
            if 1 > !stor2.length:
                revert with 0, 17
            if stor2.length + 1 > test266151307():
                revert with 0, 65
            mem[(98 * stor2.length) + 290] = stor2.length + 1
            if not stor2.length + 1:
                mem[64] = (98 * stor2.length) + (32 * stor2.length + 1) + 386
                mem[(98 * stor2.length) + (32 * stor2.length + 1) + 322] = 4
                mem[(98 * stor2.length) + (32 * stor2.length + 1) + 354] = 0x4156415800000000000000000000000000000000000000000000000000000000
                if 0 >= stor2.length + 1:
                    revert with 0, 50
                mem[128] = (98 * stor2.length) + (32 * stor2.length + 1) + 322
                if 0 >= stor2.length + 1:
                    revert with 0, 50
                mem[(32 * stor2.length + 1) + 160] = eth.balance(this.address)
                if 0 >= stor2.length + 1:
                    revert with 0, 50
                mem[(64 * stor2.length + 1) + 192] = 18
                if 0 >= stor2.length + 1:
                    revert with 0, 50
                mem[(98 * stor2.length) + 322] = 0
                idx = 1
                while idx <= stor2.length:
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _940 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _964 = mem[_940]
                    require mem[_940] <= test266151307()
                    require _940 + mem[_940] + 31 < _940 + return_data.size
                    _994 = mem[_940 + mem[_940]]
                    if mem[_940 + mem[_940]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_940 + mem[_940]])) + 1 < 0 or _940 + ceil32(return_data.size) + ceil32(ceil32(mem[_940 + mem[_940]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _940 + ceil32(return_data.size) + ceil32(ceil32(mem[_940 + mem[_940]])) + 1
                    mem[_940 + ceil32(return_data.size)] = _994
                    require _964 + _994 + 32 <= return_data.size
                    s = 0
                    while s < _994:
                        mem[s + _940 + ceil32(return_data.size) + 32] = mem[s + _940 + _964 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_994) <= _994:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _940 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1972 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[(32 * stor2.length + 1) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * stor2.length + 1) + 160] = mem[_1972]
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2151 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2151] == mem[_2151 + 31 len 1]
                        if idx >= mem[(64 * stor2.length + 1) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * stor2.length + 1) + 192] = mem[_2151 + 31 len 1]
                    else:
                        mem[_994 + _940 + ceil32(return_data.size) + 32] = 0
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _940 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1973 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[(32 * stor2.length + 1) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * stor2.length + 1) + 160] = mem[_1973]
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2152 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2152] == mem[_2152 + 31 len 1]
                        if idx >= mem[(64 * stor2.length + 1) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * stor2.length + 1) + 192] = mem[_2152 + 31 len 1]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    if idx >= mem[(98 * stor2.length) + 290]:
                        revert with 0, 50
                    mem[(32 * idx) + (98 * stor2.length) + 322] = stor2[idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _912 = mem[64]
                mem[mem[64]] = 128
                _932 = mem[(98 * stor2.length) + 290]
                mem[mem[64] + 128] = mem[(98 * stor2.length) + 290]
                idx = 0
                s = (98 * stor2.length) + 322
                t = mem[64] + 160
                while idx < _932:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _932) + 160
                _1755 = mem[96]
                mem[mem[64] + (32 * _932) + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + (32 * _932) + (32 * mem[96]) + 192
                u = mem[64] + (32 * _932) + 192
                while idx < _1755:
                    mem[u] = t + -_912 + -(32 * _932) - 192
                    _2479 = mem[s]
                    _2480 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2480:
                        mem[v + t + 32] = mem[v + _2479 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2480) > _2480:
                        mem[_2480 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_2480) + t + 32
                    u = u + 32
                    continue 
                mem[_912 + 64] = t - _912
                _2515 = mem[(32 * stor2.length + 1) + 128]
                mem[t] = mem[(32 * stor2.length + 1) + 128]
                mem[t + 32 len 32 * _2515] = mem[(32 * stor2.length + 1) + 160 len 32 * _2515]
                var43001 = _2515
                mem[_912 + 96] = t + (32 * _2515) + -_912 + 32
                _2907 = mem[(64 * stor2.length + 1) + 160]
                mem[t + (32 * _2515) + 32] = mem[(64 * stor2.length + 1) + 160]
                mem[t + (32 * _2515) + 64 len 32 * _2907] = mem[(64 * stor2.length + 1) + 192 len 32 * _2907]
                return memory
                  from mem[64]
                   len t + (32 * _2515) + (32 * _2907) + -mem[64] + 64
            mem[(98 * stor2.length) + 322 len 32 * stor2.length + 1] = call.data[calldata.size len 32 * stor2.length + 1]
            mem[64] = (98 * stor2.length) + (32 * stor2.length + 1) + 386
            mem[(98 * stor2.length) + (32 * stor2.length + 1) + 322] = 4
            mem[(98 * stor2.length) + (32 * stor2.length + 1) + 354] = 0x4156415800000000000000000000000000000000000000000000000000000000
            if 0 >= stor2.length + 1:
                revert with 0, 50
            mem[128] = (98 * stor2.length) + (32 * stor2.length + 1) + 322
            if 0 >= stor2.length + 1:
                revert with 0, 50
            mem[(32 * stor2.length + 1) + 160] = eth.balance(this.address)
            if 0 >= stor2.length + 1:
                revert with 0, 50
            mem[(64 * stor2.length + 1) + 192] = 18
            if 0 >= stor2.length + 1:
                revert with 0, 50
            mem[(98 * stor2.length) + 322] = 0
            idx = 1
            while idx <= stor2.length:
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _941 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _965 = mem[_941]
                require mem[_941] <= test266151307()
                require _941 + mem[_941] + 31 < _941 + return_data.size
                _996 = mem[_941 + mem[_941]]
                if mem[_941 + mem[_941]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_941 + mem[_941]])) + 1 < 0 or _941 + ceil32(return_data.size) + ceil32(ceil32(mem[_941 + mem[_941]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _941 + ceil32(return_data.size) + ceil32(ceil32(mem[_941 + mem[_941]])) + 1
                mem[_941 + ceil32(return_data.size)] = _996
                require _965 + _996 + 32 <= return_data.size
                s = 0
                while s < _996:
                    mem[s + _941 + ceil32(return_data.size) + 32] = mem[s + _941 + _965 + 32]
                    s = s + 32
                    continue 
                if ceil32(_996) <= _996:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _941 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1975 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(32 * stor2.length + 1) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length + 1) + 160] = mem[_1975]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2153 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2153] == mem[_2153 + 31 len 1]
                    if idx >= mem[(64 * stor2.length + 1) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * stor2.length + 1) + 192] = mem[_2153 + 31 len 1]
                else:
                    mem[_996 + _941 + ceil32(return_data.size) + 32] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _941 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1976 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(32 * stor2.length + 1) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length + 1) + 160] = mem[_1976]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2154 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2154] == mem[_2154 + 31 len 1]
                    if idx >= mem[(64 * stor2.length + 1) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * stor2.length + 1) + 192] = mem[_2154 + 31 len 1]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if idx >= mem[(98 * stor2.length) + 290]:
                    revert with 0, 50
                mem[(32 * idx) + (98 * stor2.length) + 322] = stor2[idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _916 = mem[64]
            mem[mem[64]] = 128
            _933 = mem[(98 * stor2.length) + 290]
            mem[mem[64] + 128] = mem[(98 * stor2.length) + 290]
            idx = 0
            s = (98 * stor2.length) + 322
            t = mem[64] + 160
            while idx < _933:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _933) + 160
            _1758 = mem[96]
            mem[mem[64] + (32 * _933) + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * _933) + (32 * mem[96]) + 192
            u = mem[64] + (32 * _933) + 192
            while idx < _1758:
                mem[u] = t + -_916 + -(32 * _933) - 192
                _2481 = mem[s]
                _2482 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2482:
                    mem[v + t + 32] = mem[v + _2481 + 32]
                    v = v + 32
                    continue 
                if ceil32(_2482) > _2482:
                    mem[_2482 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_2482) + t + 32
                u = u + 32
                continue 
            mem[_916 + 64] = t - _916
            _2516 = mem[(32 * stor2.length + 1) + 128]
            mem[t] = mem[(32 * stor2.length + 1) + 128]
            mem[t + 32 len 32 * _2516] = mem[(32 * stor2.length + 1) + 160 len 32 * _2516]
            var44001 = _2516
            mem[_916 + 96] = t + (32 * _2516) + -_916 + 32
            _2908 = mem[(64 * stor2.length + 1) + 160]
            mem[t + (32 * _2516) + 32] = mem[(64 * stor2.length + 1) + 160]
            mem[t + (32 * _2516) + 64 len 32 * _2908] = mem[(64 * stor2.length + 1) + 192 len 32 * _2908]
            return memory
              from mem[64]
               len t + (32 * _2516) + (32 * _2908) + -mem[64] + 64
        mem[(64 * stor2.length + 1) + 192 len 32 * stor2.length + 1] = call.data[calldata.size len 32 * stor2.length + 1]
        if 1 > !stor2.length:
            revert with 0, 17
        if stor2.length + 1 > test266151307():
            revert with 0, 65
        mem[(98 * stor2.length) + 290] = stor2.length + 1
        if not stor2.length + 1:
            mem[64] = (98 * stor2.length) + (32 * stor2.length + 1) + 386
            mem[(98 * stor2.length) + (32 * stor2.length + 1) + 322] = 4
            mem[(98 * stor2.length) + (32 * stor2.length + 1) + 354] = 0x4156415800000000000000000000000000000000000000000000000000000000
            if 0 >= stor2.length + 1:
                revert with 0, 50
            mem[128] = (98 * stor2.length) + (32 * stor2.length + 1) + 322
            if 0 >= stor2.length + 1:
                revert with 0, 50
            mem[(32 * stor2.length + 1) + 160] = eth.balance(this.address)
            if 0 >= stor2.length + 1:
                revert with 0, 50
            mem[(64 * stor2.length + 1) + 192] = 18
            if 0 >= stor2.length + 1:
                revert with 0, 50
            mem[(98 * stor2.length) + 322] = 0
            idx = 1
            while idx <= stor2.length:
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _942 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _966 = mem[_942]
                require mem[_942] <= test266151307()
                require _942 + mem[_942] + 31 < _942 + return_data.size
                _998 = mem[_942 + mem[_942]]
                if mem[_942 + mem[_942]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_942 + mem[_942]])) + 1 < 0 or _942 + ceil32(return_data.size) + ceil32(ceil32(mem[_942 + mem[_942]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _942 + ceil32(return_data.size) + ceil32(ceil32(mem[_942 + mem[_942]])) + 1
                mem[_942 + ceil32(return_data.size)] = _998
                require _966 + _998 + 32 <= return_data.size
                s = 0
                while s < _998:
                    mem[s + _942 + ceil32(return_data.size) + 32] = mem[s + _942 + _966 + 32]
                    s = s + 32
                    continue 
                if ceil32(_998) <= _998:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _942 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1978 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(32 * stor2.length + 1) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length + 1) + 160] = mem[_1978]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2155 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2155] == mem[_2155 + 31 len 1]
                    if idx >= mem[(64 * stor2.length + 1) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * stor2.length + 1) + 192] = mem[_2155 + 31 len 1]
                else:
                    mem[_998 + _942 + ceil32(return_data.size) + 32] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _942 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1979 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(32 * stor2.length + 1) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length + 1) + 160] = mem[_1979]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2156 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2156] == mem[_2156 + 31 len 1]
                    if idx >= mem[(64 * stor2.length + 1) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * stor2.length + 1) + 192] = mem[_2156 + 31 len 1]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if idx >= mem[(98 * stor2.length) + 290]:
                    revert with 0, 50
                mem[(32 * idx) + (98 * stor2.length) + 322] = stor2[idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _920 = mem[64]
            mem[mem[64]] = 128
            _934 = mem[(98 * stor2.length) + 290]
            mem[mem[64] + 128] = mem[(98 * stor2.length) + 290]
            idx = 0
            s = (98 * stor2.length) + 322
            t = mem[64] + 160
            while idx < _934:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _934) + 160
            _1761 = mem[96]
            mem[mem[64] + (32 * _934) + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * _934) + (32 * mem[96]) + 192
            u = mem[64] + (32 * _934) + 192
            while idx < _1761:
                mem[u] = t + -_920 + -(32 * _934) - 192
                _2483 = mem[s]
                _2484 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2484:
                    mem[v + t + 32] = mem[v + _2483 + 32]
                    v = v + 32
                    continue 
                if ceil32(_2484) > _2484:
                    mem[_2484 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_2484) + t + 32
                u = u + 32
                continue 
            mem[_920 + 64] = t - _920
            _2517 = mem[(32 * stor2.length + 1) + 128]
            mem[t] = mem[(32 * stor2.length + 1) + 128]
            mem[t + 32 len 32 * _2517] = mem[(32 * stor2.length + 1) + 160 len 32 * _2517]
            var44001 = _2517
            mem[_920 + 96] = t + (32 * _2517) + -_920 + 32
            _2909 = mem[(64 * stor2.length + 1) + 160]
            mem[t + (32 * _2517) + 32] = mem[(64 * stor2.length + 1) + 160]
            mem[t + (32 * _2517) + 64 len 32 * _2909] = mem[(64 * stor2.length + 1) + 192 len 32 * _2909]
            return memory
              from mem[64]
               len t + (32 * _2517) + (32 * _2909) + -mem[64] + 64
        mem[(98 * stor2.length) + 322 len 32 * stor2.length + 1] = call.data[calldata.size len 32 * stor2.length + 1]
        mem[64] = (98 * stor2.length) + (32 * stor2.length + 1) + 386
        mem[(98 * stor2.length) + (32 * stor2.length + 1) + 322] = 4
        mem[(98 * stor2.length) + (32 * stor2.length + 1) + 354] = 0x4156415800000000000000000000000000000000000000000000000000000000
        if 0 >= stor2.length + 1:
            revert with 0, 50
        mem[128] = (98 * stor2.length) + (32 * stor2.length + 1) + 322
        if 0 >= stor2.length + 1:
            revert with 0, 50
        mem[(32 * stor2.length + 1) + 160] = eth.balance(this.address)
        if 0 >= stor2.length + 1:
            revert with 0, 50
        mem[(64 * stor2.length + 1) + 192] = 18
        if 0 >= stor2.length + 1:
            revert with 0, 50
        mem[(98 * stor2.length) + 322] = 0
        idx = 1
        while idx <= stor2.length:
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _943 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _967 = mem[_943]
            require mem[_943] <= test266151307()
            require _943 + mem[_943] + 31 < _943 + return_data.size
            _1000 = mem[_943 + mem[_943]]
            if mem[_943 + mem[_943]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_943 + mem[_943]])) + 1 < 0 or _943 + ceil32(return_data.size) + ceil32(ceil32(mem[_943 + mem[_943]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _943 + ceil32(return_data.size) + ceil32(ceil32(mem[_943 + mem[_943]])) + 1
            mem[_943 + ceil32(return_data.size)] = _1000
            require _967 + _1000 + 32 <= return_data.size
            s = 0
            while s < _1000:
                mem[s + _943 + ceil32(return_data.size) + 32] = mem[s + _943 + _967 + 32]
                s = s + 32
                continue 
            if ceil32(_1000) <= _1000:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _943 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1981 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[(32 * stor2.length + 1) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor2.length + 1) + 160] = mem[_1981]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2157 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2157] == mem[_2157 + 31 len 1]
                if idx >= mem[(64 * stor2.length + 1) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * stor2.length + 1) + 192] = mem[_2157 + 31 len 1]
            else:
                mem[_1000 + _943 + ceil32(return_data.size) + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _943 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1982 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[(32 * stor2.length + 1) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor2.length + 1) + 160] = mem[_1982]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2158 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2158] == mem[_2158 + 31 len 1]
                if idx >= mem[(64 * stor2.length + 1) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * stor2.length + 1) + 192] = mem[_2158 + 31 len 1]
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            if idx >= mem[(98 * stor2.length) + 290]:
                revert with 0, 50
            mem[(32 * idx) + (98 * stor2.length) + 322] = stor2[idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _924 = mem[64]
        mem[mem[64]] = 128
        _935 = mem[(98 * stor2.length) + 290]
        mem[mem[64] + 128] = mem[(98 * stor2.length) + 290]
        idx = 0
        s = (98 * stor2.length) + 322
        t = mem[64] + 160
        while idx < _935:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _935) + 160
        _1764 = mem[96]
        mem[mem[64] + (32 * _935) + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * _935) + (32 * mem[96]) + 192
        u = mem[64] + (32 * _935) + 192
        while idx < _1764:
            mem[u] = t + -_924 + -(32 * _935) - 192
            _2485 = mem[s]
            _2486 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _2486:
                mem[v + t + 32] = mem[v + _2485 + 32]
                v = v + 32
                continue 
            if ceil32(_2486) > _2486:
                mem[_2486 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_2486) + t + 32
            u = u + 32
            continue 
        mem[_924 + 64] = t - _924
        _2518 = mem[(32 * stor2.length + 1) + 128]
        mem[t] = mem[(32 * stor2.length + 1) + 128]
        mem[t + 32 len 32 * _2518] = mem[(32 * stor2.length + 1) + 160 len 32 * _2518]
        var45001 = _2518
        mem[_924 + 96] = t + (32 * _2518) + -_924 + 32
        _2910 = mem[(64 * stor2.length + 1) + 160]
        mem[t + (32 * _2518) + 32] = mem[(64 * stor2.length + 1) + 160]
        mem[t + (32 * _2518) + 64 len 32 * _2910] = mem[(64 * stor2.length + 1) + 192 len 32 * _2910]
        return memory
          from mem[64]
           len t + (32 * _2518) + (32 * _2910) + -mem[64] + 64
    s = 128
    idx = stor2.length + 1
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    if 1 > !stor2.length:
        revert with 0, 17
    if stor2.length + 1 > test266151307():
        revert with 0, 65
    _968 = mem[64]
    mem[mem[64]] = stor2.length + 1
    if not stor2.length + 1:
        if 1 > !stor2.length:
            revert with 0, 17
        if stor2.length + 1 > test266151307():
            revert with 0, 65
        _1025 = mem[64] + (32 * stor2.length + 1) + 32
        mem[mem[64] + (32 * stor2.length + 1) + 32] = stor2.length + 1
        if not stor2.length + 1:
            if 1 > !stor2.length:
                revert with 0, 17
            if stor2.length + 1 > test266151307():
                revert with 0, 65
            mem[_1025 + (32 * stor2.length + 1) + 32] = stor2.length + 1
            if not stor2.length + 1:
                mem[64] = _1025 + (64 * stor2.length + 1) + 128
                mem[_1025 + (64 * stor2.length + 1) + 64] = 4
                mem[_1025 + (64 * stor2.length + 1) + 96] = 0x4156415800000000000000000000000000000000000000000000000000000000
                if 0 >= mem[96]:
                    revert with 0, 50
                mem[128] = _1025 + (64 * stor2.length + 1) + 64
                if 0 >= mem[_968]:
                    revert with 0, 50
                mem[_968 + 32] = eth.balance(this.address)
                if 0 >= mem[_1025]:
                    revert with 0, 50
                mem[_1025 + 32] = 18
                if 0 >= stor2.length + 1:
                    revert with 0, 50
                mem[_1025 + (32 * stor2.length + 1) + 64] = 0
                idx = 1
                while idx <= stor2.length:
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1847 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1935 = mem[_1847]
                    require mem[_1847] <= test266151307()
                    require _1847 + mem[_1847] + 31 < _1847 + return_data.size
                    _1984 = mem[_1847 + mem[_1847]]
                    if mem[_1847 + mem[_1847]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_1847 + mem[_1847]])) + 1 < 0 or _1847 + ceil32(return_data.size) + ceil32(ceil32(mem[_1847 + mem[_1847]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _1847 + ceil32(return_data.size) + ceil32(ceil32(mem[_1847 + mem[_1847]])) + 1
                    mem[_1847 + ceil32(return_data.size)] = _1984
                    require _1935 + _1984 + 32 <= return_data.size
                    s = 0
                    while s < _1984:
                        mem[s + _1847 + ceil32(return_data.size) + 32] = mem[s + _1847 + _1935 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1984) <= _1984:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1847 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2656 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[_968]:
                            revert with 0, 50
                        mem[(32 * idx) + _968 + 32] = mem[_2656]
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2783 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2783] == mem[_2783 + 31 len 1]
                        if idx >= mem[_1025]:
                            revert with 0, 50
                        mem[(32 * idx) + _1025 + 32] = mem[_2783 + 31 len 1]
                    else:
                        mem[_1984 + _1847 + ceil32(return_data.size) + 32] = 0
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _1847 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2657 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[_968]:
                            revert with 0, 50
                        mem[(32 * idx) + _968 + 32] = mem[_2657]
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx])
                        staticcall stor2[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2784 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2784] == mem[_2784 + 31 len 1]
                        if idx >= mem[_1025]:
                            revert with 0, 50
                        mem[(32 * idx) + _1025 + 32] = mem[_2784 + 31 len 1]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    if idx >= mem[_1025 + (32 * stor2.length + 1) + 32]:
                        revert with 0, 50
                    mem[(32 * idx) + _1025 + (32 * stor2.length + 1) + 64] = stor2[idx]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1767 = mem[64]
                mem[mem[64]] = 128
                _1815 = mem[_1025 + (32 * stor2.length + 1) + 32]
                mem[mem[64] + 128] = mem[_1025 + (32 * stor2.length + 1) + 32]
                idx = 0
                s = _1025 + (32 * stor2.length + 1) + 64
                t = mem[64] + 160
                while idx < _1815:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * _1815) + 160
                _2487 = mem[96]
                mem[mem[64] + (32 * _1815) + 160] = mem[96]
                idx = 0
                s = 128
                t = mem[64] + (32 * _1815) + (32 * mem[96]) + 192
                u = mem[64] + (32 * _1815) + 192
                while idx < _2487:
                    mem[u] = t + -_1767 + -(32 * _1815) - 192
                    _2879 = mem[s]
                    _2880 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _2880:
                        mem[v + t + 32] = mem[v + _2879 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_2880) > _2880:
                        mem[_2880 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_2880) + t + 32
                    u = u + 32
                    continue 
                mem[_1767 + 64] = t - _1767
                _2895 = mem[_968]
                mem[t] = mem[_968]
                mem[t + 32 len 32 * _2895] = mem[_968 + 32 len 32 * _2895]
                var46001 = _2895
                mem[_1767 + 96] = t + (32 * _2895) + -_1767 + 32
                _2999 = mem[_1025]
                mem[t + (32 * _2895) + 32] = mem[_1025]
                mem[t + (32 * _2895) + 64 len 32 * _2999] = mem[_1025 + 32 len 32 * _2999]
                return memory
                  from mem[64]
                   len t + (32 * _2895) + (32 * _2999) + -mem[64] + 64
            mem[_1025 + (32 * stor2.length + 1) + 64 len 32 * stor2.length + 1] = call.data[calldata.size len 32 * stor2.length + 1]
            mem[64] = _1025 + (64 * stor2.length + 1) + 128
            mem[_1025 + (64 * stor2.length + 1) + 64] = 4
            mem[_1025 + (64 * stor2.length + 1) + 96] = 0x4156415800000000000000000000000000000000000000000000000000000000
            if 0 >= mem[96]:
                revert with 0, 50
            mem[128] = _1025 + (64 * stor2.length + 1) + 64
            if 0 >= mem[_968]:
                revert with 0, 50
            mem[_968 + 32] = eth.balance(this.address)
            if 0 >= mem[_1025]:
                revert with 0, 50
            mem[_1025 + 32] = 18
            if 0 >= stor2.length + 1:
                revert with 0, 50
            mem[_1025 + (32 * stor2.length + 1) + 64] = 0
            idx = 1
            while idx <= stor2.length:
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1848 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1936 = mem[_1848]
                require mem[_1848] <= test266151307()
                require _1848 + mem[_1848] + 31 < _1848 + return_data.size
                _1986 = mem[_1848 + mem[_1848]]
                if mem[_1848 + mem[_1848]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_1848 + mem[_1848]])) + 1 < 0 or _1848 + ceil32(return_data.size) + ceil32(ceil32(mem[_1848 + mem[_1848]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1848 + ceil32(return_data.size) + ceil32(ceil32(mem[_1848 + mem[_1848]])) + 1
                mem[_1848 + ceil32(return_data.size)] = _1986
                require _1936 + _1986 + 32 <= return_data.size
                s = 0
                while s < _1986:
                    mem[s + _1848 + ceil32(return_data.size) + 32] = mem[s + _1848 + _1936 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1986) <= _1986:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1848 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2659 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_968]:
                        revert with 0, 50
                    mem[(32 * idx) + _968 + 32] = mem[_2659]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2785 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2785] == mem[_2785 + 31 len 1]
                    if idx >= mem[_1025]:
                        revert with 0, 50
                    mem[(32 * idx) + _1025 + 32] = mem[_2785 + 31 len 1]
                else:
                    mem[_1986 + _1848 + ceil32(return_data.size) + 32] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1848 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2660 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_968]:
                        revert with 0, 50
                    mem[(32 * idx) + _968 + 32] = mem[_2660]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2786 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2786] == mem[_2786 + 31 len 1]
                    if idx >= mem[_1025]:
                        revert with 0, 50
                    mem[(32 * idx) + _1025 + 32] = mem[_2786 + 31 len 1]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if idx >= mem[_1025 + (32 * stor2.length + 1) + 32]:
                    revert with 0, 50
                mem[(32 * idx) + _1025 + (32 * stor2.length + 1) + 64] = stor2[idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1771 = mem[64]
            mem[mem[64]] = 128
            _1816 = mem[_1025 + (32 * stor2.length + 1) + 32]
            mem[mem[64] + 128] = mem[_1025 + (32 * stor2.length + 1) + 32]
            idx = 0
            s = _1025 + (32 * stor2.length + 1) + 64
            t = mem[64] + 160
            while idx < _1816:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _1816) + 160
            _2490 = mem[96]
            mem[mem[64] + (32 * _1816) + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * _1816) + (32 * mem[96]) + 192
            u = mem[64] + (32 * _1816) + 192
            while idx < _2490:
                mem[u] = t + -_1771 + -(32 * _1816) - 192
                _2881 = mem[s]
                _2882 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2882:
                    mem[v + t + 32] = mem[v + _2881 + 32]
                    v = v + 32
                    continue 
                if ceil32(_2882) > _2882:
                    mem[_2882 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_2882) + t + 32
                u = u + 32
                continue 
            mem[_1771 + 64] = t - _1771
            _2896 = mem[_968]
            mem[t] = mem[_968]
            mem[t + 32 len 32 * _2896] = mem[_968 + 32 len 32 * _2896]
            var47001 = _2896
            mem[_1771 + 96] = t + (32 * _2896) + -_1771 + 32
            _3000 = mem[_1025]
            mem[t + (32 * _2896) + 32] = mem[_1025]
            mem[t + (32 * _2896) + 64 len 32 * _3000] = mem[_1025 + 32 len 32 * _3000]
            return memory
              from mem[64]
               len t + (32 * _2896) + (32 * _3000) + -mem[64] + 64
        mem[_1025 + 32 len 32 * stor2.length + 1] = call.data[calldata.size len 32 * stor2.length + 1]
        if 1 > !stor2.length:
            revert with 0, 17
        if stor2.length + 1 > test266151307():
            revert with 0, 65
        mem[_1025 + (32 * stor2.length + 1) + 32] = stor2.length + 1
        if not stor2.length + 1:
            mem[64] = _1025 + (64 * stor2.length + 1) + 128
            mem[_1025 + (64 * stor2.length + 1) + 64] = 4
            mem[_1025 + (64 * stor2.length + 1) + 96] = 0x4156415800000000000000000000000000000000000000000000000000000000
            if 0 >= mem[96]:
                revert with 0, 50
            mem[128] = _1025 + (64 * stor2.length + 1) + 64
            if 0 >= mem[_968]:
                revert with 0, 50
            mem[_968 + 32] = eth.balance(this.address)
            if 0 >= mem[_1025]:
                revert with 0, 50
            mem[_1025 + 32] = 18
            if 0 >= stor2.length + 1:
                revert with 0, 50
            mem[_1025 + (32 * stor2.length + 1) + 64] = 0
            idx = 1
            while idx <= stor2.length:
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1849 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1937 = mem[_1849]
                require mem[_1849] <= test266151307()
                require _1849 + mem[_1849] + 31 < _1849 + return_data.size
                _1988 = mem[_1849 + mem[_1849]]
                if mem[_1849 + mem[_1849]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_1849 + mem[_1849]])) + 1 < 0 or _1849 + ceil32(return_data.size) + ceil32(ceil32(mem[_1849 + mem[_1849]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1849 + ceil32(return_data.size) + ceil32(ceil32(mem[_1849 + mem[_1849]])) + 1
                mem[_1849 + ceil32(return_data.size)] = _1988
                require _1937 + _1988 + 32 <= return_data.size
                s = 0
                while s < _1988:
                    mem[s + _1849 + ceil32(return_data.size) + 32] = mem[s + _1849 + _1937 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1988) <= _1988:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1849 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2662 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_968]:
                        revert with 0, 50
                    mem[(32 * idx) + _968 + 32] = mem[_2662]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2787 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2787] == mem[_2787 + 31 len 1]
                    if idx >= mem[_1025]:
                        revert with 0, 50
                    mem[(32 * idx) + _1025 + 32] = mem[_2787 + 31 len 1]
                else:
                    mem[_1988 + _1849 + ceil32(return_data.size) + 32] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1849 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2663 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_968]:
                        revert with 0, 50
                    mem[(32 * idx) + _968 + 32] = mem[_2663]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2788 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2788] == mem[_2788 + 31 len 1]
                    if idx >= mem[_1025]:
                        revert with 0, 50
                    mem[(32 * idx) + _1025 + 32] = mem[_2788 + 31 len 1]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if idx >= mem[_1025 + (32 * stor2.length + 1) + 32]:
                    revert with 0, 50
                mem[(32 * idx) + _1025 + (32 * stor2.length + 1) + 64] = stor2[idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1775 = mem[64]
            mem[mem[64]] = 128
            _1817 = mem[_1025 + (32 * stor2.length + 1) + 32]
            mem[mem[64] + 128] = mem[_1025 + (32 * stor2.length + 1) + 32]
            idx = 0
            s = _1025 + (32 * stor2.length + 1) + 64
            t = mem[64] + 160
            while idx < _1817:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _1817) + 160
            _2493 = mem[96]
            mem[mem[64] + (32 * _1817) + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * _1817) + (32 * mem[96]) + 192
            u = mem[64] + (32 * _1817) + 192
            while idx < _2493:
                mem[u] = t + -_1775 + -(32 * _1817) - 192
                _2883 = mem[s]
                _2884 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2884:
                    mem[v + t + 32] = mem[v + _2883 + 32]
                    v = v + 32
                    continue 
                if ceil32(_2884) > _2884:
                    mem[_2884 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_2884) + t + 32
                u = u + 32
                continue 
            mem[_1775 + 64] = t - _1775
            _2897 = mem[_968]
            mem[t] = mem[_968]
            mem[t + 32 len 32 * _2897] = mem[_968 + 32 len 32 * _2897]
            var47001 = _2897
            mem[_1775 + 96] = t + (32 * _2897) + -_1775 + 32
            _3001 = mem[_1025]
            mem[t + (32 * _2897) + 32] = mem[_1025]
            mem[t + (32 * _2897) + 64 len 32 * _3001] = mem[_1025 + 32 len 32 * _3001]
            return memory
              from mem[64]
               len t + (32 * _2897) + (32 * _3001) + -mem[64] + 64
        mem[_1025 + (32 * stor2.length + 1) + 64 len 32 * stor2.length + 1] = call.data[calldata.size len 32 * stor2.length + 1]
        mem[64] = _1025 + (64 * stor2.length + 1) + 128
        mem[_1025 + (64 * stor2.length + 1) + 64] = 4
        mem[_1025 + (64 * stor2.length + 1) + 96] = 0x4156415800000000000000000000000000000000000000000000000000000000
        if 0 >= mem[96]:
            revert with 0, 50
        mem[128] = _1025 + (64 * stor2.length + 1) + 64
        if 0 >= mem[_968]:
            revert with 0, 50
        mem[_968 + 32] = eth.balance(this.address)
        if 0 >= mem[_1025]:
            revert with 0, 50
        mem[_1025 + 32] = 18
        if 0 >= stor2.length + 1:
            revert with 0, 50
        mem[_1025 + (32 * stor2.length + 1) + 64] = 0
        idx = 1
        while idx <= stor2.length:
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1850 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1938 = mem[_1850]
            require mem[_1850] <= test266151307()
            require _1850 + mem[_1850] + 31 < _1850 + return_data.size
            _1990 = mem[_1850 + mem[_1850]]
            if mem[_1850 + mem[_1850]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_1850 + mem[_1850]])) + 1 < 0 or _1850 + ceil32(return_data.size) + ceil32(ceil32(mem[_1850 + mem[_1850]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1850 + ceil32(return_data.size) + ceil32(ceil32(mem[_1850 + mem[_1850]])) + 1
            mem[_1850 + ceil32(return_data.size)] = _1990
            require _1938 + _1990 + 32 <= return_data.size
            s = 0
            while s < _1990:
                mem[s + _1850 + ceil32(return_data.size) + 32] = mem[s + _1850 + _1938 + 32]
                s = s + 32
                continue 
            if ceil32(_1990) <= _1990:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1850 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2665 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[_968]:
                    revert with 0, 50
                mem[(32 * idx) + _968 + 32] = mem[_2665]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2789 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2789] == mem[_2789 + 31 len 1]
                if idx >= mem[_1025]:
                    revert with 0, 50
                mem[(32 * idx) + _1025 + 32] = mem[_2789 + 31 len 1]
            else:
                mem[_1990 + _1850 + ceil32(return_data.size) + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1850 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2666 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[_968]:
                    revert with 0, 50
                mem[(32 * idx) + _968 + 32] = mem[_2666]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2790 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2790] == mem[_2790 + 31 len 1]
                if idx >= mem[_1025]:
                    revert with 0, 50
                mem[(32 * idx) + _1025 + 32] = mem[_2790 + 31 len 1]
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            if idx >= mem[_1025 + (32 * stor2.length + 1) + 32]:
                revert with 0, 50
            mem[(32 * idx) + _1025 + (32 * stor2.length + 1) + 64] = stor2[idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1779 = mem[64]
        mem[mem[64]] = 128
        _1818 = mem[_1025 + (32 * stor2.length + 1) + 32]
        mem[mem[64] + 128] = mem[_1025 + (32 * stor2.length + 1) + 32]
        idx = 0
        s = _1025 + (32 * stor2.length + 1) + 64
        t = mem[64] + 160
        while idx < _1818:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _1818) + 160
        _2496 = mem[96]
        mem[mem[64] + (32 * _1818) + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * _1818) + (32 * mem[96]) + 192
        u = mem[64] + (32 * _1818) + 192
        while idx < _2496:
            mem[u] = t + -_1779 + -(32 * _1818) - 192
            _2885 = mem[s]
            _2886 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _2886:
                mem[v + t + 32] = mem[v + _2885 + 32]
                v = v + 32
                continue 
            if ceil32(_2886) > _2886:
                mem[_2886 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_2886) + t + 32
            u = u + 32
            continue 
        mem[_1779 + 64] = t - _1779
        _2898 = mem[_968]
        mem[t] = mem[_968]
        mem[t + 32 len 32 * _2898] = mem[_968 + 32 len 32 * _2898]
        var48001 = _2898
        mem[_1779 + 96] = t + (32 * _2898) + -_1779 + 32
        _3002 = mem[_1025]
        mem[t + (32 * _2898) + 32] = mem[_1025]
        mem[t + (32 * _2898) + 64 len 32 * _3002] = mem[_1025 + 32 len 32 * _3002]
        return memory
          from mem[64]
           len t + (32 * _2898) + (32 * _3002) + -mem[64] + 64
    mem[mem[64] + 32 len 32 * stor2.length + 1] = call.data[calldata.size len 32 * stor2.length + 1]
    if 1 > !stor2.length:
        revert with 0, 17
    if stor2.length + 1 > test266151307():
        revert with 0, 65
    mem[mem[64] + (32 * stor2.length + 1) + 32] = stor2.length + 1
    if not stor2.length + 1:
        if 1 > !stor2.length:
            revert with 0, 17
        if stor2.length + 1 > test266151307():
            revert with 0, 65
        mem[_968 + (64 * stor2.length + 1) + 64] = stor2.length + 1
        if not stor2.length + 1:
            mem[64] = _968 + (98 * stor2.length) + 258
            mem[_968 + (98 * stor2.length) + 194] = 4
            mem[_968 + (98 * stor2.length) + 226] = 0x4156415800000000000000000000000000000000000000000000000000000000
            if 0 >= mem[96]:
                revert with 0, 50
            mem[128] = _968 + (98 * stor2.length) + 194
            if 0 >= mem[_968]:
                revert with 0, 50
            mem[_968 + 32] = eth.balance(this.address)
            if 0 >= mem[_968 + (32 * stor2.length + 1) + 32]:
                revert with 0, 50
            mem[_968 + (32 * stor2.length + 1) + 64] = 18
            if 0 >= stor2.length + 1:
                revert with 0, 50
            mem[_968 + (64 * stor2.length + 1) + 96] = 0
            idx = 1
            while idx <= stor2.length:
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1851 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1939 = mem[_1851]
                require mem[_1851] <= test266151307()
                require _1851 + mem[_1851] + 31 < _1851 + return_data.size
                _1992 = mem[_1851 + mem[_1851]]
                if mem[_1851 + mem[_1851]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_1851 + mem[_1851]])) + 1 < 0 or _1851 + ceil32(return_data.size) + ceil32(ceil32(mem[_1851 + mem[_1851]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _1851 + ceil32(return_data.size) + ceil32(ceil32(mem[_1851 + mem[_1851]])) + 1
                mem[_1851 + ceil32(return_data.size)] = _1992
                require _1939 + _1992 + 32 <= return_data.size
                s = 0
                while s < _1992:
                    mem[s + _1851 + ceil32(return_data.size) + 32] = mem[s + _1851 + _1939 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1992) <= _1992:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1851 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2668 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_968]:
                        revert with 0, 50
                    mem[(32 * idx) + _968 + 32] = mem[_2668]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2791 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2791] == mem[_2791 + 31 len 1]
                    if idx >= mem[_968 + (32 * stor2.length + 1) + 32]:
                        revert with 0, 50
                    mem[(32 * idx) + _968 + (32 * stor2.length + 1) + 64] = mem[_2791 + 31 len 1]
                else:
                    mem[_1992 + _1851 + ceil32(return_data.size) + 32] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _1851 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2669 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_968]:
                        revert with 0, 50
                    mem[(32 * idx) + _968 + 32] = mem[_2669]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx])
                    staticcall stor2[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2792 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_2792] == mem[_2792 + 31 len 1]
                    if idx >= mem[_968 + (32 * stor2.length + 1) + 32]:
                        revert with 0, 50
                    mem[(32 * idx) + _968 + (32 * stor2.length + 1) + 64] = mem[_2792 + 31 len 1]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if idx >= mem[_968 + (64 * stor2.length + 1) + 64]:
                    revert with 0, 50
                mem[(32 * idx) + _968 + (64 * stor2.length + 1) + 96] = stor2[idx]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1783 = mem[64]
            mem[mem[64]] = 128
            _1819 = mem[_968 + (64 * stor2.length + 1) + 64]
            mem[mem[64] + 128] = mem[_968 + (64 * stor2.length + 1) + 64]
            idx = 0
            s = _968 + (64 * stor2.length + 1) + 96
            t = mem[64] + 160
            while idx < _1819:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * _1819) + 160
            _2499 = mem[96]
            mem[mem[64] + (32 * _1819) + 160] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + (32 * _1819) + (32 * mem[96]) + 192
            u = mem[64] + (32 * _1819) + 192
            while idx < _2499:
                mem[u] = t + -_1783 + -(32 * _1819) - 192
                _2887 = mem[s]
                _2888 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _2888:
                    mem[v + t + 32] = mem[v + _2887 + 32]
                    v = v + 32
                    continue 
                if ceil32(_2888) > _2888:
                    mem[_2888 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_2888) + t + 32
                u = u + 32
                continue 
            mem[_1783 + 64] = t - _1783
            _2899 = mem[_968]
            mem[t] = mem[_968]
            mem[t + 32 len 32 * _2899] = mem[_968 + 32 len 32 * _2899]
            var47001 = _2899
            mem[_1783 + 96] = t + (32 * _2899) + -_1783 + 32
            _3003 = mem[_968 + (32 * stor2.length + 1) + 32]
            mem[t + (32 * _2899) + 32] = mem[_968 + (32 * stor2.length + 1) + 32]
            mem[t + (32 * _2899) + 64 len 32 * _3003] = mem[_968 + (32 * stor2.length + 1) + 64 len 32 * _3003]
            return memory
              from mem[64]
               len t + (32 * _2899) + (32 * _3003) + -mem[64] + 64
        mem[_968 + (64 * stor2.length + 1) + 96 len 32 * stor2.length + 1] = call.data[calldata.size len 32 * stor2.length + 1]
        mem[64] = _968 + (98 * stor2.length) + 258
        mem[_968 + (98 * stor2.length) + 194] = 4
        mem[_968 + (98 * stor2.length) + 226] = 0x4156415800000000000000000000000000000000000000000000000000000000
        if 0 >= mem[96]:
            revert with 0, 50
        mem[128] = _968 + (98 * stor2.length) + 194
        if 0 >= mem[_968]:
            revert with 0, 50
        mem[_968 + 32] = eth.balance(this.address)
        if 0 >= mem[_968 + (32 * stor2.length + 1) + 32]:
            revert with 0, 50
        mem[_968 + (32 * stor2.length + 1) + 64] = 18
        if 0 >= stor2.length + 1:
            revert with 0, 50
        mem[_968 + (64 * stor2.length + 1) + 96] = 0
        idx = 1
        while idx <= stor2.length:
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1852 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1940 = mem[_1852]
            require mem[_1852] <= test266151307()
            require _1852 + mem[_1852] + 31 < _1852 + return_data.size
            _1994 = mem[_1852 + mem[_1852]]
            if mem[_1852 + mem[_1852]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_1852 + mem[_1852]])) + 1 < 0 or _1852 + ceil32(return_data.size) + ceil32(ceil32(mem[_1852 + mem[_1852]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1852 + ceil32(return_data.size) + ceil32(ceil32(mem[_1852 + mem[_1852]])) + 1
            mem[_1852 + ceil32(return_data.size)] = _1994
            require _1940 + _1994 + 32 <= return_data.size
            s = 0
            while s < _1994:
                mem[s + _1852 + ceil32(return_data.size) + 32] = mem[s + _1852 + _1940 + 32]
                s = s + 32
                continue 
            if ceil32(_1994) <= _1994:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1852 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2671 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[_968]:
                    revert with 0, 50
                mem[(32 * idx) + _968 + 32] = mem[_2671]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2793 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2793] == mem[_2793 + 31 len 1]
                if idx >= mem[_968 + (32 * stor2.length + 1) + 32]:
                    revert with 0, 50
                mem[(32 * idx) + _968 + (32 * stor2.length + 1) + 64] = mem[_2793 + 31 len 1]
            else:
                mem[_1994 + _1852 + ceil32(return_data.size) + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1852 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2672 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[_968]:
                    revert with 0, 50
                mem[(32 * idx) + _968 + 32] = mem[_2672]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2794 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2794] == mem[_2794 + 31 len 1]
                if idx >= mem[_968 + (32 * stor2.length + 1) + 32]:
                    revert with 0, 50
                mem[(32 * idx) + _968 + (32 * stor2.length + 1) + 64] = mem[_2794 + 31 len 1]
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            if idx >= mem[_968 + (64 * stor2.length + 1) + 64]:
                revert with 0, 50
            mem[(32 * idx) + _968 + (64 * stor2.length + 1) + 96] = stor2[idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1787 = mem[64]
        mem[mem[64]] = 128
        _1820 = mem[_968 + (64 * stor2.length + 1) + 64]
        mem[mem[64] + 128] = mem[_968 + (64 * stor2.length + 1) + 64]
        idx = 0
        s = _968 + (64 * stor2.length + 1) + 96
        t = mem[64] + 160
        while idx < _1820:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * _1820) + 160
        _2502 = mem[96]
        mem[mem[64] + (32 * _1820) + 160] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + (32 * _1820) + (32 * mem[96]) + 192
        u = mem[64] + (32 * _1820) + 192
        while idx < _2502:
            mem[u] = t + -_1787 + -(32 * _1820) - 192
            _2889 = mem[s]
            _2890 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _2890:
                mem[v + t + 32] = mem[v + _2889 + 32]
                v = v + 32
                continue 
            if ceil32(_2890) > _2890:
                mem[_2890 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_2890) + t + 32
            u = u + 32
            continue 
        mem[_1787 + 64] = t - _1787
        _2900 = mem[_968]
        mem[t] = mem[_968]
        mem[t + 32 len 32 * _2900] = mem[_968 + 32 len 32 * _2900]
        var48001 = _2900
        mem[_1787 + 96] = t + (32 * _2900) + -_1787 + 32
        _3004 = mem[_968 + (32 * stor2.length + 1) + 32]
        mem[t + (32 * _2900) + 32] = mem[_968 + (32 * stor2.length + 1) + 32]
        mem[t + (32 * _2900) + 64 len 32 * _3004] = mem[_968 + (32 * stor2.length + 1) + 64 len 32 * _3004]
        return memory
          from mem[64]
           len t + (32 * _2900) + (32 * _3004) + -mem[64] + 64
    mem[_968 + (32 * stor2.length + 1) + 64 len 32 * stor2.length + 1] = call.data[calldata.size len 32 * stor2.length + 1]
    if 1 > !stor2.length:
        revert with 0, 17
    if stor2.length + 1 > test266151307():
        revert with 0, 65
    mem[_968 + (64 * stor2.length + 1) + 64] = stor2.length + 1
    if not stor2.length + 1:
        mem[64] = _968 + (98 * stor2.length) + 258
        mem[_968 + (98 * stor2.length) + 194] = 4
        mem[_968 + (98 * stor2.length) + 226] = 0x4156415800000000000000000000000000000000000000000000000000000000
        if 0 >= mem[96]:
            revert with 0, 50
        mem[128] = _968 + (98 * stor2.length) + 194
        if 0 >= mem[_968]:
            revert with 0, 50
        mem[_968 + 32] = eth.balance(this.address)
        if 0 >= mem[_968 + (32 * stor2.length + 1) + 32]:
            revert with 0, 50
        mem[_968 + (32 * stor2.length + 1) + 64] = 18
        if 0 >= stor2.length + 1:
            revert with 0, 50
        mem[_968 + (64 * stor2.length + 1) + 96] = 0
        idx = 1
        while idx <= stor2.length:
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1853 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1941 = mem[_1853]
            require mem[_1853] <= test266151307()
            require _1853 + mem[_1853] + 31 < _1853 + return_data.size
            _1996 = mem[_1853 + mem[_1853]]
            if mem[_1853 + mem[_1853]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_1853 + mem[_1853]])) + 1 < 0 or _1853 + ceil32(return_data.size) + ceil32(ceil32(mem[_1853 + mem[_1853]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _1853 + ceil32(return_data.size) + ceil32(ceil32(mem[_1853 + mem[_1853]])) + 1
            mem[_1853 + ceil32(return_data.size)] = _1996
            require _1941 + _1996 + 32 <= return_data.size
            s = 0
            while s < _1996:
                mem[s + _1853 + ceil32(return_data.size) + 32] = mem[s + _1853 + _1941 + 32]
                s = s + 32
                continue 
            if ceil32(_1996) <= _1996:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1853 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2674 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[_968]:
                    revert with 0, 50
                mem[(32 * idx) + _968 + 32] = mem[_2674]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2795 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2795] == mem[_2795 + 31 len 1]
                if idx >= mem[_968 + (32 * stor2.length + 1) + 32]:
                    revert with 0, 50
                mem[(32 * idx) + _968 + (32 * stor2.length + 1) + 64] = mem[_2795 + 31 len 1]
            else:
                mem[_1996 + _1853 + ceil32(return_data.size) + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1853 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2675 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[_968]:
                    revert with 0, 50
                mem[(32 * idx) + _968 + 32] = mem[_2675]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                require ext_code.size(stor2[idx])
                staticcall stor2[idx].0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _2796 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2796] == mem[_2796 + 31 len 1]
                if idx >= mem[_968 + (32 * stor2.length + 1) + 32]:
                    revert with 0, 50
                mem[(32 * idx) + _968 + (32 * stor2.length + 1) + 64] = mem[_2796 + 31 len 1]
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            if idx >= mem[_968 + (64 * stor2.length + 1) + 64]:
                revert with 0, 50
            mem[(32 * idx) + _968 + (64 * stor2.length + 1) + 96] = stor2[idx]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1791 = mem[64]
        mem[mem[64]] = 128
        _1821 = mem[_968 + (64 * stor2.length + 1) + 64]
        mem[mem[64] + 128] = mem[_968 + (64 * stor2.length + 1) + 64]
        idx = 0
        s = _968 + (64 * stor2.length + 1) + 96
        t = mem[64] + 160
        while idx < _1821:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1791 + 32] = (32 * _1821) + 160
        _2505 = mem[96]
        mem[_1791 + (32 * _1821) + 160] = mem[96]
        idx = 0
        s = 128
        t = _1791 + (32 * _1821) + (32 * mem[96]) + 192
        u = _1791 + (32 * _1821) + 192
        while idx < _2505:
            mem[u] = t + -_1791 + -(32 * _1821) - 192
            _2891 = mem[s]
            _2892 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _2892:
                mem[v + t + 32] = mem[v + _2891 + 32]
                v = v + 32
                continue 
            if ceil32(_2892) > _2892:
                mem[_2892 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_2892) + t + 32
            u = u + 32
            continue 
        mem[_1791 + 64] = t - _1791
        _2901 = mem[_968]
        mem[t] = mem[_968]
        mem[t + 32 len 32 * _2901] = mem[_968 + 32 len 32 * _2901]
        var48001 = _2901
        mem[_1791 + 96] = t + (32 * _2901) + -_1791 + 32
        _3005 = mem[_968 + (32 * stor2.length + 1) + 32]
        mem[t + (32 * _2901) + 32] = mem[_968 + (32 * stor2.length + 1) + 32]
        mem[t + (32 * _2901) + 64 len 32 * _3005] = mem[_968 + (32 * stor2.length + 1) + 64 len 32 * _3005]
        return memory
          from mem[64]
           len t + (32 * _2901) + (32 * _3005) + -mem[64] + 64
    mem[_968 + (64 * stor2.length + 1) + 96 len 32 * stor2.length + 1] = call.data[calldata.size len 32 * stor2.length + 1]
    mem[64] = _968 + (98 * stor2.length) + 258
    mem[_968 + (98 * stor2.length) + 194] = 4
    mem[_968 + (98 * stor2.length) + 226] = 0x4156415800000000000000000000000000000000000000000000000000000000
    if 0 >= mem[96]:
        revert with 0, 50
    mem[128] = _968 + (98 * stor2.length) + 194
    if 0 >= mem[_968]:
        revert with 0, 50
    mem[_968 + 32] = eth.balance(this.address)
    if 0 >= mem[_968 + (32 * stor2.length + 1) + 32]:
        revert with 0, 50
    mem[_968 + (32 * stor2.length + 1) + 64] = 18
    if 0 >= stor2.length + 1:
        revert with 0, 50
    mem[_968 + (64 * stor2.length + 1) + 96] = 0
    idx = 1
    while idx <= stor2.length:
        if idx >= stor2.length:
            revert with 0, 50
        mem[0] = 2
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor2[idx])
        staticcall stor2[idx].0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1854 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1942 = mem[_1854]
        require mem[_1854] <= test266151307()
        require _1854 + mem[_1854] + 31 < _1854 + return_data.size
        _1998 = mem[_1854 + mem[_1854]]
        if mem[_1854 + mem[_1854]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_1854 + mem[_1854]])) + 1 < 0 or _1854 + ceil32(return_data.size) + ceil32(ceil32(mem[_1854 + mem[_1854]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _1854 + ceil32(return_data.size) + ceil32(ceil32(mem[_1854 + mem[_1854]])) + 1
        mem[_1854 + ceil32(return_data.size)] = _1998
        require _1942 + _1998 + 32 <= return_data.size
        s = 0
        while s < _1998:
            mem[s + _1854 + ceil32(return_data.size) + 32] = mem[s + _1854 + _1942 + 32]
            s = s + 32
            continue 
        if ceil32(_1998) <= _1998:
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _1854 + ceil32(return_data.size)
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2677 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[_968]:
                revert with 0, 50
            mem[(32 * idx) + _968 + 32] = mem[_2677]
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2797 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2797] == mem[_2797 + 31 len 1]
            if idx >= mem[_968 + (32 * stor2.length + 1) + 32]:
                revert with 0, 50
            mem[(32 * idx) + _968 + (32 * stor2.length + 1) + 64] = mem[_2797 + 31 len 1]
        else:
            mem[_1998 + _1854 + ceil32(return_data.size) + 32] = 0
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _1854 + ceil32(return_data.size)
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2678 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[_968]:
                revert with 0, 50
            mem[(32 * idx) + _968 + 32] = mem[_2678]
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            require ext_code.size(stor2[idx])
            staticcall stor2[idx].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _2798 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2798] == mem[_2798 + 31 len 1]
            if idx >= mem[_968 + (32 * stor2.length + 1) + 32]:
                revert with 0, 50
            mem[(32 * idx) + _968 + (32 * stor2.length + 1) + 64] = mem[_2798 + 31 len 1]
        if idx >= stor2.length:
            revert with 0, 50
        mem[0] = 2
        if idx >= mem[_968 + (64 * stor2.length + 1) + 64]:
            revert with 0, 50
        mem[(32 * idx) + _968 + (64 * stor2.length + 1) + 96] = stor2[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _1795 = mem[64]
    mem[mem[64]] = 128
    _1822 = mem[_968 + (64 * stor2.length + 1) + 64]
    mem[mem[64] + 128] = mem[_968 + (64 * stor2.length + 1) + 64]
    idx = 0
    s = _968 + (64 * stor2.length + 1) + 96
    t = mem[64] + 160
    while idx < _1822:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[_1795 + 32] = (32 * _1822) + 160
    _2508 = mem[96]
    mem[_1795 + (32 * _1822) + 160] = mem[96]
    idx = 0
    s = 128
    t = _1795 + (32 * _1822) + (32 * mem[96]) + 192
    u = _1795 + (32 * _1822) + 192
    while idx < _2508:
        mem[u] = t + -_1795 + -(32 * _1822) - 192
        _2893 = mem[s]
        _2894 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _2894:
            mem[v + t + 32] = mem[v + _2893 + 32]
            v = v + 32
            continue 
        if ceil32(_2894) > _2894:
            mem[_2894 + t + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_2894) + t + 32
        u = u + 32
        continue 
    mem[_1795 + 64] = t - _1795
    _2902 = mem[_968]
    mem[t] = mem[_968]
    mem[t + 32 len 32 * _2902] = mem[_968 + 32 len 32 * _2902]
    var49001 = _2902
    mem[_1795 + 96] = t + (32 * _2902) + -_1795 + 32
    _3006 = mem[_968 + (32 * stor2.length + 1) + 32]
    mem[t + (32 * _2902) + 32] = mem[_968 + (32 * stor2.length + 1) + 32]
    mem[t + (32 * _2902) + 64 len 32 * _3006] = mem[_968 + (32 * stor2.length + 1) + 64 len 32 * _3006]
    return memory
      from mem[64]
       len t + (32 * _2902) + (32 * _3006) + -mem[64] + 64
}



}
