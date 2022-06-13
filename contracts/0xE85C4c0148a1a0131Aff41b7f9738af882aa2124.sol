contract main {




// =====================  Runtime code  =====================


address owner;
uint256 contractStatus;
array of struct stor2;

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
    stor2[stor2.length].field_0 = address(arg1)
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

function Deposit(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    if contractStatus:
        revert with 0, 'Contract Paused'
    if arg1 != 10^6:
        if arg1 < stor2.length:
            require ext_code.size(stor2[arg1].field_0)
            staticcall stor2[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= arg2:
                if arg1 >= stor2.length:
                    revert with 0, 50
                require ext_code.size(stor2[arg1].field_0)
                call stor2[arg1].field_0.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(arg3), arg2
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
    if arg1 == 10^6:
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
            require ext_code.size(stor2[arg1].field_0)
            staticcall stor2[arg1].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= arg2:
                if arg1 >= stor2.length:
                    revert with 0, 50
                require ext_code.size(stor2[arg1].field_0)
                call stor2[arg1].field_0.0xa9059cbb with:
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
        if stor2[var40001].field_0 != arg1:
            idx = var40004
            while idx:
                if idx - 1 >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                if stor2[idx].field_0 == arg1:
                    if stor2.length < 1:
                        revert with 0, 17
                    if stor2.length < 1:
                        revert with 0, 17
                    if stor2.length - 1 >= stor2.length:
                        revert with 0, 50
                    if idx - 1 != stor2.length - 1:
                        if idx - 1 >= stor2.length:
                            revert with 0, 50
                        stor2[idx].field_0 = stor2[stor2.length].field_0
                    stor2[stor2.length].field_0 = 0
                    if not stor2.length:
                        revert with 0, 49
                    mem[0] = 2
                    stor2[stor2.length].field_0 = 0
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
                stor2[stor2.length].field_0 = 0
                if not stor2.length:
                    revert with 0, 49
                stor2[stor2.length].field_0 = 0
                stor2.length--
                idx = s
                while idx:
                    if idx - 1 >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    if stor2[idx].field_0 != arg1:
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
                        stor2[idx].field_0 = stor2[stor2.length].field_0
                    s = idx - 1
                    continue 
                emit 0xe6639113: arg1
        else:
            s = var54006
            while stor2.length - 1 < stor2.length:
                if s < stor2.length:
                    stor2[s].field_0 = stor2[stor2.length].field_0
                    if stor2.length < 1:
                        revert with 0, 17
                    s = var58006
                    while stor2.length - 1 < stor2.length:
                        stor2[stor2.length].field_0 = 0
                        if not stor2.length:
                            revert with 0, 49
                        stor2[stor2.length].field_0 = 0
                        stor2.length--
                        idx = s
                        while idx:
                            if idx - 1 >= stor2.length:
                                revert with 0, 50
                            mem[0] = 2
                            if stor2[idx].field_0 != arg1:
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
    if stor2.length > test266151307():
        revert with 0, 65
    mem[96] = stor2.length
    mem[64] = (32 * stor2.length) + 128
    if not stor2.length:
        if stor2.length > test266151307():
            revert with 0, 65
        mem[(32 * stor2.length) + 128] = stor2.length
        if not stor2.length:
            if stor2.length > test266151307():
                revert with 0, 65
            mem[(64 * stor2.length) + 160] = stor2.length
            mem[64] = (98 * stor2.length) + 192
            if not stor2.length:
                idx = 0
                while idx < stor2.length:
                    mem[0] = 2
                    mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stor2[idx].field_0)
                    staticcall stor2[idx].field_0.0x95d89b41 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _418 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _428 = mem[_418]
                    require mem[_418] <= test266151307()
                    require _418 + mem[_418] + 31 < _418 + return_data.size
                    _441 = mem[_418 + mem[_418]]
                    if mem[_418 + mem[_418]] > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(mem[_418 + mem[_418]])) + 1 < 0 or _418 + ceil32(return_data.size) + ceil32(ceil32(mem[_418 + mem[_418]])) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _418 + ceil32(return_data.size) + ceil32(ceil32(mem[_418 + mem[_418]])) + 1
                    mem[_418 + ceil32(return_data.size)] = _441
                    require _428 + _441 + 32 <= return_data.size
                    s = 0
                    while s < _441:
                        mem[s + _418 + ceil32(return_data.size) + 32] = mem[s + _418 + _428 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_441) <= _441:
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _418 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx].field_0)
                        staticcall stor2[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _888 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[(32 * stor2.length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_888]
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx].field_0)
                        staticcall stor2[idx].field_0.0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _983 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_983] == mem[_983 + 31 len 1]
                        if idx >= mem[(64 * stor2.length) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_983 + 31 len 1]
                    else:
                        mem[_441 + _418 + ceil32(return_data.size) + 32] = 0
                        if idx >= mem[96]:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = _418 + ceil32(return_data.size)
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor2[idx].field_0)
                        staticcall stor2[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _889 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= mem[(32 * stor2.length) + 128]:
                            revert with 0, 50
                        mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_889]
                        if idx >= stor2.length:
                            revert with 0, 50
                        mem[0] = 2
                        require ext_code.size(stor2[idx].field_0)
                        staticcall stor2[idx].field_0.0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _984 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_984] == mem[_984 + 31 len 1]
                        if idx >= mem[(64 * stor2.length) + 160]:
                            revert with 0, 50
                        mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_984 + 31 len 1]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _392 = mem[64]
                mem[64] = mem[64] + (32 * stor2.length) + 32
                mem[_392] = stor2.length
                if not stor2.length:
                    _412 = mem[64]
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = stor2.length
                    idx = 0
                    s = _392 + 32
                    t = mem[64] + 160
                    while idx < stor2.length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 32] = (32 * stor2.length) + 160
                    _779 = mem[96]
                    mem[_412 + (32 * stor2.length) + 160] = mem[96]
                    idx = 0
                    s = 128
                    t = _412 + (32 * stor2.length) + (32 * mem[96]) + 192
                    u = _412 + (32 * stor2.length) + 192
                    while idx < _779:
                        mem[u] = t + -_412 + -(32 * stor2.length) - 192
                        _1119 = mem[s]
                        _1120 = mem[mem[s]]
                        mem[t] = mem[mem[s]]
                        v = 0
                        while v < _1120:
                            mem[v + t + 32] = mem[v + _1119 + 32]
                            v = v + 32
                            continue 
                        if ceil32(_1120) > _1120:
                            mem[_1120 + t + 32] = 0
                        idx = idx + 1
                        s = s + 32
                        t = ceil32(_1120) + t + 32
                        u = u + 32
                        continue 
                    mem[_412 + 64] = t - _412
                    _1143 = mem[(32 * stor2.length) + 128]
                    mem[t] = mem[(32 * stor2.length) + 128]
                    mem[t + 32 len 32 * _1143] = mem[(32 * stor2.length) + 160 len 32 * _1143]
                    var25001 = _1143
                    mem[_412 + 96] = t + (32 * _1143) + -_412 + 32
                    _1383 = mem[(64 * stor2.length) + 160]
                    mem[t + (32 * _1143) + 32] = mem[(64 * stor2.length) + 160]
                    mem[t + (32 * _1143) + 64 len 32 * _1383] = mem[(64 * stor2.length) + 192 len 32 * _1383]
                    return memory
                      from mem[64]
                       len t + (32 * _1143) + (32 * _1383) + -mem[64] + 64
                mem[0] = 2
                mem[_392 + 32] = address(stor2.field_0)
                idx = _392 + 32
                s = 0
                while _392 + (32 * stor2.length) > idx:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                _1121 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = stor2.length
                idx = 0
                s = _392 + 32
                t = mem[64] + 160
                while idx < stor2.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * stor2.length) + 160
                _1349 = mem[96]
                mem[_1121 + (32 * stor2.length) + 160] = mem[96]
                idx = 0
                s = 128
                t = _1121 + (32 * stor2.length) + (32 * mem[96]) + 192
                u = _1121 + (32 * stor2.length) + 192
                while idx < _1349:
                    mem[u] = t + -_1121 + -(32 * stor2.length) - 192
                    _1488 = mem[s]
                    _1489 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1489:
                        mem[v + t + 32] = mem[v + _1488 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1489) > _1489:
                        mem[_1489 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1489) + t + 32
                    u = u + 32
                    continue 
                mem[_1121 + 64] = t - _1121
                _1515 = mem[(32 * stor2.length) + 128]
                mem[t] = mem[(32 * stor2.length) + 128]
                mem[t + 32 len 32 * _1515] = mem[(32 * stor2.length) + 160 len 32 * _1515]
                var29001 = _1515
                mem[_1121 + 96] = t + (32 * _1515) + -_1121 + 32
                _1611 = mem[(64 * stor2.length) + 160]
                mem[t + (32 * _1515) + 32] = mem[(64 * stor2.length) + 160]
                mem[t + (32 * _1515) + 64 len 32 * _1611] = mem[(64 * stor2.length) + 192 len 32 * _1611]
                return memory
                  from mem[64]
                   len t + (32 * _1515) + (32 * _1611) + -mem[64] + 64
            mem[(64 * stor2.length) + 192 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
            idx = 0
            while idx < stor2.length:
                mem[0] = 2
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor2[idx].field_0)
                staticcall stor2[idx].field_0.0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _420 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _431 = mem[_420]
                require mem[_420] <= test266151307()
                require _420 + mem[_420] + 31 < _420 + return_data.size
                _444 = mem[_420 + mem[_420]]
                if mem[_420 + mem[_420]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_420 + mem[_420]])) + 1 < 0 or _420 + ceil32(return_data.size) + ceil32(ceil32(mem[_420 + mem[_420]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _420 + ceil32(return_data.size) + ceil32(ceil32(mem[_420 + mem[_420]])) + 1
                mem[_420 + ceil32(return_data.size)] = _444
                require _431 + _444 + 32 <= return_data.size
                s = 0
                while s < _444:
                    mem[s + _420 + ceil32(return_data.size) + 32] = mem[s + _420 + _431 + 32]
                    s = s + 32
                    continue 
                if ceil32(_444) <= _444:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _420 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx].field_0)
                    staticcall stor2[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _891 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_891]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx].field_0)
                    staticcall stor2[idx].field_0.0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _985 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_985] == mem[_985 + 31 len 1]
                    if idx >= mem[(64 * stor2.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_985 + 31 len 1]
                else:
                    mem[_444 + _420 + ceil32(return_data.size) + 32] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _420 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx].field_0)
                    staticcall stor2[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _892 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_892]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx].field_0)
                    staticcall stor2[idx].field_0.0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _986 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_986] == mem[_986 + 31 len 1]
                    if idx >= mem[(64 * stor2.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_986 + 31 len 1]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _393 = mem[64]
            mem[64] = mem[64] + (32 * stor2.length) + 32
            mem[_393] = stor2.length
            if not stor2.length:
                _413 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = stor2.length
                idx = 0
                s = _393 + 32
                t = mem[64] + 160
                while idx < stor2.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_413 + 32] = (32 * stor2.length) + 160
                _782 = mem[96]
                mem[_413 + (32 * stor2.length) + 160] = mem[96]
                idx = 0
                s = 128
                t = _413 + (32 * stor2.length) + (32 * mem[96]) + 192
                u = _413 + (32 * stor2.length) + 192
                while idx < _782:
                    mem[u] = t + -_413 + -(32 * stor2.length) - 192
                    _1122 = mem[s]
                    _1123 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1123:
                        mem[v + t + 32] = mem[v + _1122 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1123) > _1123:
                        mem[_1123 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1123) + t + 32
                    u = u + 32
                    continue 
                mem[_413 + 64] = t - _413
                _1145 = mem[(32 * stor2.length) + 128]
                mem[t] = mem[(32 * stor2.length) + 128]
                mem[t + 32 len 32 * _1145] = mem[(32 * stor2.length) + 160 len 32 * _1145]
                var26001 = _1145
                mem[_413 + 96] = t + (32 * _1145) + -_413 + 32
                _1386 = mem[(64 * stor2.length) + 160]
                mem[t + (32 * _1145) + 32] = mem[(64 * stor2.length) + 160]
                mem[t + (32 * _1145) + 64 len 32 * _1386] = mem[(64 * stor2.length) + 192 len 32 * _1386]
                return memory
                  from mem[64]
                   len t + (32 * _1145) + (32 * _1386) + -mem[64] + 64
            mem[0] = 2
            mem[_393 + 32] = address(stor2.field_0)
            idx = _393 + 32
            s = 0
            while _393 + (32 * stor2.length) > idx:
                mem[idx + 32] = stor2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _1124 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = stor2.length
            idx = 0
            s = _393 + 32
            t = mem[64] + 160
            while idx < stor2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * stor2.length) + 160
            _1353 = mem[96]
            mem[_1124 + (32 * stor2.length) + 160] = mem[96]
            idx = 0
            s = 128
            t = _1124 + (32 * stor2.length) + (32 * mem[96]) + 192
            u = _1124 + (32 * stor2.length) + 192
            while idx < _1353:
                mem[u] = t + -_1124 + -(32 * stor2.length) - 192
                _1491 = mem[s]
                _1492 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1492:
                    mem[v + t + 32] = mem[v + _1491 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1492) > _1492:
                    mem[_1492 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1492) + t + 32
                u = u + 32
                continue 
            mem[_1124 + 64] = t - _1124
            _1516 = mem[(32 * stor2.length) + 128]
            mem[t] = mem[(32 * stor2.length) + 128]
            mem[t + 32 len 32 * _1516] = mem[(32 * stor2.length) + 160 len 32 * _1516]
            var30001 = _1516
            mem[_1124 + 96] = t + (32 * _1516) + -_1124 + 32
            _1612 = mem[(64 * stor2.length) + 160]
            mem[t + (32 * _1516) + 32] = mem[(64 * stor2.length) + 160]
            mem[t + (32 * _1516) + 64 len 32 * _1612] = mem[(64 * stor2.length) + 192 len 32 * _1612]
            return memory
              from mem[64]
               len t + (32 * _1516) + (32 * _1612) + -mem[64] + 64
        mem[(32 * stor2.length) + 160 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        if stor2.length > test266151307():
            revert with 0, 65
        mem[(64 * stor2.length) + 160] = stor2.length
        mem[64] = (98 * stor2.length) + 192
        if not stor2.length:
            idx = 0
            while idx < stor2.length:
                mem[0] = 2
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor2[idx].field_0)
                staticcall stor2[idx].field_0.0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _422 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _434 = mem[_422]
                require mem[_422] <= test266151307()
                require _422 + mem[_422] + 31 < _422 + return_data.size
                _447 = mem[_422 + mem[_422]]
                if mem[_422 + mem[_422]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_422 + mem[_422]])) + 1 < 0 or _422 + ceil32(return_data.size) + ceil32(ceil32(mem[_422 + mem[_422]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _422 + ceil32(return_data.size) + ceil32(ceil32(mem[_422 + mem[_422]])) + 1
                mem[_422 + ceil32(return_data.size)] = _447
                require _434 + _447 + 32 <= return_data.size
                s = 0
                while s < _447:
                    mem[s + _422 + ceil32(return_data.size) + 32] = mem[s + _422 + _434 + 32]
                    s = s + 32
                    continue 
                if ceil32(_447) <= _447:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _422 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx].field_0)
                    staticcall stor2[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _894 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_894]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx].field_0)
                    staticcall stor2[idx].field_0.0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _987 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_987] == mem[_987 + 31 len 1]
                    if idx >= mem[(64 * stor2.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_987 + 31 len 1]
                else:
                    mem[_447 + _422 + ceil32(return_data.size) + 32] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _422 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx].field_0)
                    staticcall stor2[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _895 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[(32 * stor2.length) + 128]:
                        revert with 0, 50
                    mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_895]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx].field_0)
                    staticcall stor2[idx].field_0.0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _988 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_988] == mem[_988 + 31 len 1]
                    if idx >= mem[(64 * stor2.length) + 160]:
                        revert with 0, 50
                    mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_988 + 31 len 1]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _394 = mem[64]
            mem[64] = mem[64] + (32 * stor2.length) + 32
            mem[_394] = stor2.length
            if not stor2.length:
                _414 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = stor2.length
                idx = 0
                s = _394 + 32
                t = mem[64] + 160
                while idx < stor2.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * stor2.length) + 160
                _785 = mem[96]
                mem[_414 + (32 * stor2.length) + 160] = mem[96]
                idx = 0
                s = 128
                t = _414 + (32 * stor2.length) + (32 * mem[96]) + 192
                u = _414 + (32 * stor2.length) + 192
                while idx < _785:
                    mem[u] = t + -_414 + -(32 * stor2.length) - 192
                    _1125 = mem[s]
                    _1126 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1126:
                        mem[v + t + 32] = mem[v + _1125 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1126) > _1126:
                        mem[_1126 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1126) + t + 32
                    u = u + 32
                    continue 
                mem[_414 + 64] = t - _414
                _1147 = mem[(32 * stor2.length) + 128]
                mem[t] = mem[(32 * stor2.length) + 128]
                mem[t + 32 len 32 * _1147] = mem[(32 * stor2.length) + 160 len 32 * _1147]
                var26001 = _1147
                mem[_414 + 96] = t + (32 * _1147) + -_414 + 32
                _1389 = mem[(64 * stor2.length) + 160]
                mem[t + (32 * _1147) + 32] = mem[(64 * stor2.length) + 160]
                mem[t + (32 * _1147) + 64 len 32 * _1389] = mem[(64 * stor2.length) + 192 len 32 * _1389]
                return memory
                  from mem[64]
                   len t + (32 * _1147) + (32 * _1389) + -mem[64] + 64
            mem[0] = 2
            mem[_394 + 32] = address(stor2.field_0)
            idx = _394 + 32
            s = 0
            while _394 + (32 * stor2.length) > idx:
                mem[idx + 32] = stor2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _1127 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = stor2.length
            idx = 0
            s = _394 + 32
            t = mem[64] + 160
            while idx < stor2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1127 + 32] = (32 * stor2.length) + 160
            _1357 = mem[96]
            mem[_1127 + (32 * stor2.length) + 160] = mem[96]
            idx = 0
            s = 128
            t = _1127 + (32 * stor2.length) + (32 * mem[96]) + 192
            u = _1127 + (32 * stor2.length) + 192
            while idx < _1357:
                mem[u] = t + -_1127 + -(32 * stor2.length) - 192
                _1494 = mem[s]
                _1495 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1495:
                    mem[v + t + 32] = mem[v + _1494 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1495) > _1495:
                    mem[_1495 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1495) + t + 32
                u = u + 32
                continue 
            mem[_1127 + 64] = t - _1127
            _1517 = mem[(32 * stor2.length) + 128]
            mem[t] = mem[(32 * stor2.length) + 128]
            mem[t + 32 len 32 * _1517] = mem[(32 * stor2.length) + 160 len 32 * _1517]
            var30001 = _1517
            mem[_1127 + 96] = t + (32 * _1517) + -_1127 + 32
            _1613 = mem[(64 * stor2.length) + 160]
            mem[t + (32 * _1517) + 32] = mem[(64 * stor2.length) + 160]
            mem[t + (32 * _1517) + 64 len 32 * _1613] = mem[(64 * stor2.length) + 192 len 32 * _1613]
            return memory
              from mem[64]
               len t + (32 * _1517) + (32 * _1613) + -mem[64] + 64
        mem[(64 * stor2.length) + 192 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor2[idx].field_0)
            staticcall stor2[idx].field_0.0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _424 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _437 = mem[_424]
            require mem[_424] <= test266151307()
            require _424 + mem[_424] + 31 < _424 + return_data.size
            _450 = mem[_424 + mem[_424]]
            if mem[_424 + mem[_424]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_424 + mem[_424]])) + 1 < 0 or _424 + ceil32(return_data.size) + ceil32(ceil32(mem[_424 + mem[_424]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _424 + ceil32(return_data.size) + ceil32(ceil32(mem[_424 + mem[_424]])) + 1
            mem[_424 + ceil32(return_data.size)] = _450
            require _437 + _450 + 32 <= return_data.size
            s = 0
            while s < _450:
                mem[s + _424 + ceil32(return_data.size) + 32] = mem[s + _424 + _437 + 32]
                s = s + 32
                continue 
            if ceil32(_450) <= _450:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _424 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx].field_0)
                staticcall stor2[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _897 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[(32 * stor2.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_897]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                require ext_code.size(stor2[idx].field_0)
                staticcall stor2[idx].field_0.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _989 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_989] == mem[_989 + 31 len 1]
                if idx >= mem[(64 * stor2.length) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_989 + 31 len 1]
            else:
                mem[_450 + _424 + ceil32(return_data.size) + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _424 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx].field_0)
                staticcall stor2[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _898 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[(32 * stor2.length) + 128]:
                    revert with 0, 50
                mem[(32 * idx) + (32 * stor2.length) + 160] = mem[_898]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                require ext_code.size(stor2[idx].field_0)
                staticcall stor2[idx].field_0.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _990 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_990] == mem[_990 + 31 len 1]
                if idx >= mem[(64 * stor2.length) + 160]:
                    revert with 0, 50
                mem[(32 * idx) + (64 * stor2.length) + 192] = mem[_990 + 31 len 1]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _395 = mem[64]
        mem[64] = mem[64] + (32 * stor2.length) + 32
        mem[_395] = stor2.length
        if not stor2.length:
            _415 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = stor2.length
            idx = 0
            s = _395 + 32
            t = mem[64] + 160
            while idx < stor2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * stor2.length) + 160
            _788 = mem[96]
            mem[_415 + (32 * stor2.length) + 160] = mem[96]
            idx = 0
            s = 128
            t = _415 + (32 * stor2.length) + (32 * mem[96]) + 192
            u = _415 + (32 * stor2.length) + 192
            while idx < _788:
                mem[u] = t + -_415 + -(32 * stor2.length) - 192
                _1128 = mem[s]
                _1129 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1129:
                    mem[v + t + 32] = mem[v + _1128 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1129) > _1129:
                    mem[_1129 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1129) + t + 32
                u = u + 32
                continue 
            mem[_415 + 64] = t - _415
            _1149 = mem[(32 * stor2.length) + 128]
            mem[t] = mem[(32 * stor2.length) + 128]
            mem[t + 32 len 32 * _1149] = mem[(32 * stor2.length) + 160 len 32 * _1149]
            var27001 = _1149
            mem[_415 + 96] = t + (32 * _1149) + -_415 + 32
            _1392 = mem[(64 * stor2.length) + 160]
            mem[t + (32 * _1149) + 32] = mem[(64 * stor2.length) + 160]
            mem[t + (32 * _1149) + 64 len 32 * _1392] = mem[(64 * stor2.length) + 192 len 32 * _1392]
            return memory
              from mem[64]
               len t + (32 * _1149) + (32 * _1392) + -mem[64] + 64
        mem[0] = 2
        mem[_395 + 32] = address(stor2.field_0)
        idx = _395 + 32
        s = 0
        while _395 + (32 * stor2.length) > idx:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _1130 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = stor2.length
        idx = 0
        s = _395 + 32
        t = mem[64] + 160
        while idx < stor2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * stor2.length) + 160
        _1361 = mem[96]
        mem[_1130 + (32 * stor2.length) + 160] = mem[96]
        idx = 0
        s = 128
        t = _1130 + (32 * stor2.length) + (32 * mem[96]) + 192
        u = _1130 + (32 * stor2.length) + 192
        while idx < _1361:
            mem[u] = t + -_1130 + -(32 * stor2.length) - 192
            _1497 = mem[s]
            _1498 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1498:
                mem[v + t + 32] = mem[v + _1497 + 32]
                v = v + 32
                continue 
            if ceil32(_1498) > _1498:
                mem[_1498 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1498) + t + 32
            u = u + 32
            continue 
        mem[_1130 + 64] = t - _1130
        _1518 = mem[(32 * stor2.length) + 128]
        mem[t] = mem[(32 * stor2.length) + 128]
        mem[t + 32 len 32 * _1518] = mem[(32 * stor2.length) + 160 len 32 * _1518]
        var31001 = _1518
        mem[_1130 + 96] = t + (32 * _1518) + -_1130 + 32
        _1614 = mem[(64 * stor2.length) + 160]
        mem[t + (32 * _1518) + 32] = mem[(64 * stor2.length) + 160]
        mem[t + (32 * _1518) + 64 len 32 * _1614] = mem[(64 * stor2.length) + 192 len 32 * _1614]
        return memory
          from mem[64]
           len t + (32 * _1518) + (32 * _1614) + -mem[64] + 64
    mem[128] = 96
    s = 128
    idx = stor2.length
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    if stor2.length > test266151307():
        revert with 0, 65
    _416 = mem[64]
    mem[mem[64]] = stor2.length
    if not stor2.length:
        if stor2.length > test266151307():
            revert with 0, 65
        _425 = mem[64] + (32 * stor2.length) + 32
        mem[mem[64] + (32 * stor2.length) + 32] = stor2.length
        mem[64] = _425 + (32 * stor2.length) + 32
        if not stor2.length:
            idx = 0
            while idx < stor2.length:
                mem[0] = 2
                mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor2[idx].field_0)
                staticcall stor2[idx].field_0.0x95d89b41 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _836 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _877 = mem[_836]
                require mem[_836] <= test266151307()
                require _836 + mem[_836] + 31 < _836 + return_data.size
                _901 = mem[_836 + mem[_836]]
                if mem[_836 + mem[_836]] > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(mem[_836 + mem[_836]])) + 1 < 0 or _836 + ceil32(return_data.size) + ceil32(ceil32(mem[_836 + mem[_836]])) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _836 + ceil32(return_data.size) + ceil32(ceil32(mem[_836 + mem[_836]])) + 1
                mem[_836 + ceil32(return_data.size)] = _901
                require _877 + _901 + 32 <= return_data.size
                s = 0
                while s < _901:
                    mem[s + _836 + ceil32(return_data.size) + 32] = mem[s + _836 + _877 + 32]
                    s = s + 32
                    continue 
                if ceil32(_901) <= _901:
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _836 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx].field_0)
                    staticcall stor2[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1240 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_416]:
                        revert with 0, 50
                    mem[(32 * idx) + _416 + 32] = mem[_1240]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx].field_0)
                    staticcall stor2[idx].field_0.0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1323 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1323] == mem[_1323 + 31 len 1]
                    if idx >= mem[_425]:
                        revert with 0, 50
                    mem[(32 * idx) + _425 + 32] = mem[_1323 + 31 len 1]
                else:
                    mem[_901 + _836 + ceil32(return_data.size) + 32] = 0
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _836 + ceil32(return_data.size)
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor2[idx].field_0)
                    staticcall stor2[idx].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1241 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= mem[_416]:
                        revert with 0, 50
                    mem[(32 * idx) + _416 + 32] = mem[_1241]
                    if idx >= stor2.length:
                        revert with 0, 50
                    mem[0] = 2
                    require ext_code.size(stor2[idx].field_0)
                    staticcall stor2[idx].field_0.0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1324 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1324] == mem[_1324 + 31 len 1]
                    if idx >= mem[_425]:
                        revert with 0, 50
                    mem[(32 * idx) + _425 + 32] = mem[_1324 + 31 len 1]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _791 = mem[64]
            mem[64] = mem[64] + (32 * stor2.length) + 32
            mem[_791] = stor2.length
            if not stor2.length:
                _819 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = stor2.length
                idx = 0
                s = _791 + 32
                t = mem[64] + 160
                while idx < stor2.length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 32] = (32 * stor2.length) + 160
                _1131 = mem[96]
                mem[_819 + (32 * stor2.length) + 160] = mem[96]
                idx = 0
                s = 128
                t = _819 + (32 * stor2.length) + (32 * mem[96]) + 192
                u = _819 + (32 * stor2.length) + 192
                while idx < _1131:
                    mem[u] = t + -_819 + -(32 * stor2.length) - 192
                    _1363 = mem[s]
                    _1364 = mem[mem[s]]
                    mem[t] = mem[mem[s]]
                    v = 0
                    while v < _1364:
                        mem[v + t + 32] = mem[v + _1363 + 32]
                        v = v + 32
                        continue 
                    if ceil32(_1364) > _1364:
                        mem[_1364 + t + 32] = 0
                    idx = idx + 1
                    s = s + 32
                    t = ceil32(_1364) + t + 32
                    u = u + 32
                    continue 
                mem[_819 + 64] = t - _819
                _1375 = mem[_416]
                mem[t] = mem[_416]
                mem[t + 32 len 32 * _1375] = mem[_416 + 32 len 32 * _1375]
                var29001 = _1375
                mem[_819 + 96] = t + (32 * _1375) + -_819 + 32
                _1523 = mem[_425]
                mem[t + (32 * _1375) + 32] = mem[_425]
                mem[t + (32 * _1375) + 64 len 32 * _1523] = mem[_425 + 32 len 32 * _1523]
                return memory
                  from mem[64]
                   len t + (32 * _1375) + (32 * _1523) + -mem[64] + 64
            mem[0] = 2
            mem[_791 + 32] = address(stor2.field_0)
            idx = _791 + 32
            s = 0
            while _791 + (32 * stor2.length) > idx:
                mem[idx + 32] = stor2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _1365 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = stor2.length
            idx = 0
            s = _791 + 32
            t = mem[64] + 160
            while idx < stor2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_1365 + 32] = (32 * stor2.length) + 160
            _1501 = mem[96]
            mem[_1365 + (32 * stor2.length) + 160] = mem[96]
            idx = 0
            s = 128
            t = _1365 + (32 * stor2.length) + (32 * mem[96]) + 192
            u = _1365 + (32 * stor2.length) + 192
            while idx < _1501:
                mem[u] = t + -_1365 + -(32 * stor2.length) - 192
                _1596 = mem[s]
                _1597 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1597:
                    mem[v + t + 32] = mem[v + _1596 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1597) > _1597:
                    mem[_1597 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1597) + t + 32
                u = u + 32
                continue 
            mem[_1365 + 64] = t - _1365
            _1607 = mem[_416]
            mem[t] = mem[_416]
            mem[t + 32 len 32 * _1607] = mem[_416 + 32 len 32 * _1607]
            var33001 = _1607
            mem[_1365 + 96] = t + (32 * _1607) + -_1365 + 32
            _1663 = mem[_425]
            mem[t + (32 * _1607) + 32] = mem[_425]
            mem[t + (32 * _1607) + 64 len 32 * _1663] = mem[_425 + 32 len 32 * _1663]
            return memory
              from mem[64]
               len t + (32 * _1607) + (32 * _1663) + -mem[64] + 64
        mem[_425 + 32 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor2[idx].field_0)
            staticcall stor2[idx].field_0.0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _838 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _880 = mem[_838]
            require mem[_838] <= test266151307()
            require _838 + mem[_838] + 31 < _838 + return_data.size
            _904 = mem[_838 + mem[_838]]
            if mem[_838 + mem[_838]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_838 + mem[_838]])) + 1 < 0 or _838 + ceil32(return_data.size) + ceil32(ceil32(mem[_838 + mem[_838]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _838 + ceil32(return_data.size) + ceil32(ceil32(mem[_838 + mem[_838]])) + 1
            mem[_838 + ceil32(return_data.size)] = _904
            require _880 + _904 + 32 <= return_data.size
            s = 0
            while s < _904:
                mem[s + _838 + ceil32(return_data.size) + 32] = mem[s + _838 + _880 + 32]
                s = s + 32
                continue 
            if ceil32(_904) <= _904:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _838 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx].field_0)
                staticcall stor2[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1243 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[_416]:
                    revert with 0, 50
                mem[(32 * idx) + _416 + 32] = mem[_1243]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                require ext_code.size(stor2[idx].field_0)
                staticcall stor2[idx].field_0.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1325 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1325] == mem[_1325 + 31 len 1]
                if idx >= mem[_425]:
                    revert with 0, 50
                mem[(32 * idx) + _425 + 32] = mem[_1325 + 31 len 1]
            else:
                mem[_904 + _838 + ceil32(return_data.size) + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _838 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx].field_0)
                staticcall stor2[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1244 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[_416]:
                    revert with 0, 50
                mem[(32 * idx) + _416 + 32] = mem[_1244]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                require ext_code.size(stor2[idx].field_0)
                staticcall stor2[idx].field_0.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1326 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1326] == mem[_1326 + 31 len 1]
                if idx >= mem[_425]:
                    revert with 0, 50
                mem[(32 * idx) + _425 + 32] = mem[_1326 + 31 len 1]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _792 = mem[64]
        mem[64] = mem[64] + (32 * stor2.length) + 32
        mem[_792] = stor2.length
        if not stor2.length:
            _820 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = stor2.length
            idx = 0
            s = _792 + 32
            t = mem[64] + 160
            while idx < stor2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 32] = (32 * stor2.length) + 160
            _1134 = mem[96]
            mem[_820 + (32 * stor2.length) + 160] = mem[96]
            idx = 0
            s = 128
            t = _820 + (32 * stor2.length) + (32 * mem[96]) + 192
            u = _820 + (32 * stor2.length) + 192
            while idx < _1134:
                mem[u] = t + -_820 + -(32 * stor2.length) - 192
                _1366 = mem[s]
                _1367 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1367:
                    mem[v + t + 32] = mem[v + _1366 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1367) > _1367:
                    mem[_1367 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1367) + t + 32
                u = u + 32
                continue 
            mem[_820 + 64] = t - _820
            _1377 = mem[_416]
            mem[t] = mem[_416]
            mem[t + 32 len 32 * _1377] = mem[_416 + 32 len 32 * _1377]
            var30001 = _1377
            mem[_820 + 96] = t + (32 * _1377) + -_820 + 32
            _1526 = mem[_425]
            mem[t + (32 * _1377) + 32] = mem[_425]
            mem[t + (32 * _1377) + 64 len 32 * _1526] = mem[_425 + 32 len 32 * _1526]
            return memory
              from mem[64]
               len t + (32 * _1377) + (32 * _1526) + -mem[64] + 64
        mem[0] = 2
        mem[_792 + 32] = address(stor2.field_0)
        idx = _792 + 32
        s = 0
        while _792 + (32 * stor2.length) > idx:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _1368 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = stor2.length
        idx = 0
        s = _792 + 32
        t = mem[64] + 160
        while idx < stor2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_1368 + 32] = (32 * stor2.length) + 160
        _1505 = mem[96]
        mem[_1368 + (32 * stor2.length) + 160] = mem[96]
        idx = 0
        s = 128
        t = _1368 + (32 * stor2.length) + (32 * mem[96]) + 192
        u = _1368 + (32 * stor2.length) + 192
        while idx < _1505:
            mem[u] = t + -_1368 + -(32 * stor2.length) - 192
            _1599 = mem[s]
            _1600 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1600:
                mem[v + t + 32] = mem[v + _1599 + 32]
                v = v + 32
                continue 
            if ceil32(_1600) > _1600:
                mem[_1600 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1600) + t + 32
            u = u + 32
            continue 
        mem[_1368 + 64] = t - _1368
        _1608 = mem[_416]
        mem[t] = mem[_416]
        mem[t + 32 len 32 * _1608] = mem[_416 + 32 len 32 * _1608]
        var34001 = _1608
        mem[_1368 + 96] = t + (32 * _1608) + -_1368 + 32
        _1664 = mem[_425]
        mem[t + (32 * _1608) + 32] = mem[_425]
        mem[t + (32 * _1608) + 64 len 32 * _1664] = mem[_425 + 32 len 32 * _1664]
        return memory
          from mem[64]
           len t + (32 * _1608) + (32 * _1664) + -mem[64] + 64
    mem[mem[64] + 32 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
    if stor2.length > test266151307():
        revert with 0, 65
    mem[mem[64] + (32 * stor2.length) + 32] = stor2.length
    mem[64] = _416 + (64 * stor2.length) + 64
    if not stor2.length:
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor2[idx].field_0)
            staticcall stor2[idx].field_0.0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _840 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _883 = mem[_840]
            require mem[_840] <= test266151307()
            require _840 + mem[_840] + 31 < _840 + return_data.size
            _907 = mem[_840 + mem[_840]]
            if mem[_840 + mem[_840]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_840 + mem[_840]])) + 1 < 0 or _840 + ceil32(return_data.size) + ceil32(ceil32(mem[_840 + mem[_840]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _840 + ceil32(return_data.size) + ceil32(ceil32(mem[_840 + mem[_840]])) + 1
            mem[_840 + ceil32(return_data.size)] = _907
            require _883 + _907 + 32 <= return_data.size
            s = 0
            while s < _907:
                mem[s + _840 + ceil32(return_data.size) + 32] = mem[s + _840 + _883 + 32]
                s = s + 32
                continue 
            if ceil32(_907) <= _907:
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _840 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx].field_0)
                staticcall stor2[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1246 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[_416]:
                    revert with 0, 50
                mem[(32 * idx) + _416 + 32] = mem[_1246]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                require ext_code.size(stor2[idx].field_0)
                staticcall stor2[idx].field_0.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1327 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1327] == mem[_1327 + 31 len 1]
                if idx >= mem[_416 + (32 * stor2.length) + 32]:
                    revert with 0, 50
                mem[(32 * idx) + _416 + (32 * stor2.length) + 64] = mem[_1327 + 31 len 1]
            else:
                mem[_907 + _840 + ceil32(return_data.size) + 32] = 0
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _840 + ceil32(return_data.size)
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor2[idx].field_0)
                staticcall stor2[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1247 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if idx >= mem[_416]:
                    revert with 0, 50
                mem[(32 * idx) + _416 + 32] = mem[_1247]
                if idx >= stor2.length:
                    revert with 0, 50
                mem[0] = 2
                require ext_code.size(stor2[idx].field_0)
                staticcall stor2[idx].field_0.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1328 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1328] == mem[_1328 + 31 len 1]
                if idx >= mem[_416 + (32 * stor2.length) + 32]:
                    revert with 0, 50
                mem[(32 * idx) + _416 + (32 * stor2.length) + 64] = mem[_1328 + 31 len 1]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _793 = mem[64]
        mem[64] = mem[64] + (32 * stor2.length) + 32
        mem[_793] = stor2.length
        if not stor2.length:
            _821 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = stor2.length
            idx = 0
            s = _793 + 32
            t = mem[64] + 160
            while idx < stor2.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_821 + 32] = (32 * stor2.length) + 160
            _1137 = mem[96]
            mem[_821 + (32 * stor2.length) + 160] = mem[96]
            idx = 0
            s = 128
            t = _821 + (32 * stor2.length) + (32 * mem[96]) + 192
            u = _821 + (32 * stor2.length) + 192
            while idx < _1137:
                mem[u] = t + -_821 + -(32 * stor2.length) - 192
                _1369 = mem[s]
                _1370 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _1370:
                    mem[v + t + 32] = mem[v + _1369 + 32]
                    v = v + 32
                    continue 
                if ceil32(_1370) > _1370:
                    mem[_1370 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_1370) + t + 32
                u = u + 32
                continue 
            mem[_821 + 64] = t - _821
            _1379 = mem[_416]
            mem[t] = mem[_416]
            mem[t + 32 len 32 * _1379] = mem[_416 + 32 len 32 * _1379]
            var30001 = _1379
            mem[_821 + 96] = t + (32 * _1379) + -_821 + 32
            _1529 = mem[_416 + (32 * stor2.length) + 32]
            mem[t + (32 * _1379) + 32] = mem[_416 + (32 * stor2.length) + 32]
            mem[t + (32 * _1379) + 64 len 32 * _1529] = mem[_416 + (32 * stor2.length) + 64 len 32 * _1529]
            return memory
              from mem[64]
               len t + (32 * _1379) + (32 * _1529) + -mem[64] + 64
        mem[0] = 2
        mem[_793 + 32] = address(stor2.field_0)
        idx = _793 + 32
        s = 0
        while _793 + (32 * stor2.length) > idx:
            mem[idx + 32] = stor2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _1371 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = stor2.length
        idx = 0
        s = _793 + 32
        t = mem[64] + 160
        while idx < stor2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * stor2.length) + 160
        _1509 = mem[96]
        mem[_1371 + (32 * stor2.length) + 160] = mem[96]
        idx = 0
        s = 128
        t = _1371 + (32 * stor2.length) + (32 * mem[96]) + 192
        u = _1371 + (32 * stor2.length) + 192
        while idx < _1509:
            mem[u] = t + -_1371 + -(32 * stor2.length) - 192
            _1602 = mem[s]
            _1603 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1603:
                mem[v + t + 32] = mem[v + _1602 + 32]
                v = v + 32
                continue 
            if ceil32(_1603) > _1603:
                mem[_1603 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1603) + t + 32
            u = u + 32
            continue 
        mem[_1371 + 64] = t - _1371
        _1609 = mem[_416]
        mem[t] = mem[_416]
        mem[t + 32 len 32 * _1609] = mem[_416 + 32 len 32 * _1609]
        var34001 = _1609
        mem[_1371 + 96] = t + (32 * _1609) + -_1371 + 32
        _1665 = mem[_416 + (32 * stor2.length) + 32]
        mem[t + (32 * _1609) + 32] = mem[_416 + (32 * stor2.length) + 32]
        mem[t + (32 * _1609) + 64 len 32 * _1665] = mem[_416 + (32 * stor2.length) + 64 len 32 * _1665]
        return memory
          from mem[64]
           len t + (32 * _1609) + (32 * _1665) + -mem[64] + 64
    mem[_416 + (32 * stor2.length) + 64 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
    idx = 0
    while idx < stor2.length:
        mem[0] = 2
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor2[idx].field_0)
        staticcall stor2[idx].field_0.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _842 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _886 = mem[_842]
        require mem[_842] <= test266151307()
        require _842 + mem[_842] + 31 < _842 + return_data.size
        _910 = mem[_842 + mem[_842]]
        if mem[_842 + mem[_842]] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(mem[_842 + mem[_842]])) + 1 < 0 or _842 + ceil32(return_data.size) + ceil32(ceil32(mem[_842 + mem[_842]])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _842 + ceil32(return_data.size) + ceil32(ceil32(mem[_842 + mem[_842]])) + 1
        mem[_842 + ceil32(return_data.size)] = _910
        require _886 + _910 + 32 <= return_data.size
        s = 0
        while s < _910:
            mem[s + _842 + ceil32(return_data.size) + 32] = mem[s + _842 + _886 + 32]
            s = s + 32
            continue 
        if ceil32(_910) <= _910:
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _842 + ceil32(return_data.size)
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2[idx].field_0)
            staticcall stor2[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1249 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[_416]:
                revert with 0, 50
            mem[(32 * idx) + _416 + 32] = mem[_1249]
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            require ext_code.size(stor2[idx].field_0)
            staticcall stor2[idx].field_0.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1329 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1329] == mem[_1329 + 31 len 1]
            if idx >= mem[_416 + (32 * stor2.length) + 32]:
                revert with 0, 50
            mem[(32 * idx) + _416 + (32 * stor2.length) + 64] = mem[_1329 + 31 len 1]
        else:
            mem[_910 + _842 + ceil32(return_data.size) + 32] = 0
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _842 + ceil32(return_data.size)
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor2[idx].field_0)
            staticcall stor2[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1250 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[_416]:
                revert with 0, 50
            mem[(32 * idx) + _416 + 32] = mem[_1250]
            if idx >= stor2.length:
                revert with 0, 50
            mem[0] = 2
            require ext_code.size(stor2[idx].field_0)
            staticcall stor2[idx].field_0.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1330 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1330] == mem[_1330 + 31 len 1]
            if idx >= mem[_416 + (32 * stor2.length) + 32]:
                revert with 0, 50
            mem[(32 * idx) + _416 + (32 * stor2.length) + 64] = mem[_1330 + 31 len 1]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _794 = mem[64]
    mem[64] = mem[64] + (32 * stor2.length) + 32
    mem[_794] = stor2.length
    if not stor2.length:
        _822 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = stor2.length
        idx = 0
        s = _794 + 32
        t = mem[64] + 160
        while idx < stor2.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 32] = (32 * stor2.length) + 160
        _1140 = mem[96]
        mem[_822 + (32 * stor2.length) + 160] = mem[96]
        idx = 0
        s = 128
        t = _822 + (32 * stor2.length) + (32 * mem[96]) + 192
        u = _822 + (32 * stor2.length) + 192
        while idx < _1140:
            mem[u] = t + -_822 + -(32 * stor2.length) - 192
            _1372 = mem[s]
            _1373 = mem[mem[s]]
            mem[t] = mem[mem[s]]
            v = 0
            while v < _1373:
                mem[v + t + 32] = mem[v + _1372 + 32]
                v = v + 32
                continue 
            if ceil32(_1373) > _1373:
                mem[_1373 + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = ceil32(_1373) + t + 32
            u = u + 32
            continue 
        mem[_822 + 64] = t - _822
        _1381 = mem[_416]
        mem[t] = mem[_416]
        mem[t + 32 len 32 * _1381] = mem[_416 + 32 len 32 * _1381]
        var31001 = _1381
        mem[_822 + 96] = t + (32 * _1381) + -_822 + 32
        _1532 = mem[_416 + (32 * stor2.length) + 32]
        mem[t + (32 * _1381) + 32] = mem[_416 + (32 * stor2.length) + 32]
        mem[t + (32 * _1381) + 64 len 32 * _1532] = mem[_416 + (32 * stor2.length) + 64 len 32 * _1532]
        return memory
          from mem[64]
           len t + (32 * _1381) + (32 * _1532) + -mem[64] + 64
    mem[0] = 2
    mem[_794 + 32] = address(stor2.field_0)
    idx = _794 + 32
    s = 0
    while _794 + (32 * stor2.length) > idx:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _1374 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = stor2.length
    idx = 0
    s = _794 + 32
    t = mem[64] + 160
    while idx < stor2.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 32] = (32 * stor2.length) + 160
    _1513 = mem[96]
    mem[_1374 + (32 * stor2.length) + 160] = mem[96]
    idx = 0
    s = 128
    t = _1374 + (32 * stor2.length) + (32 * mem[96]) + 192
    u = _1374 + (32 * stor2.length) + 192
    while idx < _1513:
        mem[u] = t + -_1374 + -(32 * stor2.length) - 192
        _1605 = mem[s]
        _1606 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _1606:
            mem[v + t + 32] = mem[v + _1605 + 32]
            v = v + 32
            continue 
        if ceil32(_1606) > _1606:
            mem[_1606 + t + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_1606) + t + 32
        u = u + 32
        continue 
    mem[_1374 + 64] = t - _1374
    _1610 = mem[_416]
    mem[t] = mem[_416]
    mem[t + 32 len 32 * _1610] = mem[_416 + 32 len 32 * _1610]
    var35001 = _1610
    mem[_1374 + 96] = t + (32 * _1610) + -_1374 + 32
    _1666 = mem[_416 + (32 * stor2.length) + 32]
    mem[t + (32 * _1610) + 32] = mem[_416 + (32 * stor2.length) + 32]
    mem[t + (32 * _1610) + 64 len 32 * _1666] = mem[_416 + (32 * stor2.length) + 64 len 32 * _1666]
    return memory
      from mem[64]
       len t + (32 * _1610) + (32 * _1666) + -mem[64] + 64
}



}
