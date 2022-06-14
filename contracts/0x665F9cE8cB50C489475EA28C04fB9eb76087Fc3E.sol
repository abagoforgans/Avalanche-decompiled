contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_3d301283;
uint256 sub_b634d2e0;
uint256 sub_1471ee75;
uint256 stor4;
uint256 stor5;
uint256 contractStatus;
address stor7;
address sub_b36e8137Address;
address stor9;
uint256 stor10;
array of struct stor11;
mapping of struct stor12;
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function sub_1471ee75(?) {
    return sub_1471ee75
}

function sub_3d301283(?) {
    return sub_3d301283
}

function owner() {
    return owner
}

function sub_b36e8137(?) {
    return sub_b36e8137Address
}

function sub_b634d2e0(?) {
    return sub_b634d2e0
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

function sub_40a84e39(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    sub_b634d2e0 = arg1
    emit 0xf115dd5d: arg1
}

function sub_5ed2b682(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    sub_1471ee75 = arg1
    emit 0x5de63e1c: arg1
}

function sub_99024dd0(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    sub_3d301283 = arg1
    emit 0xb55b77d4: msg.sender, arg1
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
    stor11.length++
    stor175B[stor11.length] = address(arg1)
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

function sub_9883b60a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    stor9 = sub_b36e8137Address
    sub_b36e8137Address = address(arg1)
    stor7 = address(arg1)
    emit 0x175881da: msg.sender, address(arg1)
}

function sub_7edb1f42(?) {
    if 0 >= stor11.length:
        revert with 0, 50
    require ext_code.size(address(stor11.field_0))
    staticcall address(stor11.field_0).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if stor10 and 1 > -1 / stor10:
            revert with 0, 17
        if not stor4:
            revert with 0, 18
        return (stor10 / stor4)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if stor10 and 10^ext_call.return_data[31 len 1] > -1 / stor10:
            revert with 0, 17
        if not stor4:
            revert with 0, 18
        return (stor10 * 10^ext_call.return_data[31 len 1] / stor4)
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if stor10 and s * t > -1 / stor10:
        revert with 0, 17
    if not stor4:
        revert with 0, 18
    return (stor10 * s * t / stor4)
}

function withdraw(bool arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    if arg1 == 1:
        idx = 0
        s = 0
        while idx < stor11.length:
            mem[0] = 11
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor11[idx].field_0)
            staticcall stor11[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _28 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _29 = mem[_28]
            if not mem[_28]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = mem[_28]
                continue 
            if idx >= stor11.length:
                revert with 0, 50
            mem[0] = 11
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _29
            require ext_code.size(stor11[idx].field_0)
            call stor11[idx].field_0.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _29
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_33] == bool(mem[_33])
            if 1 > !idx:
                revert with 0, 17
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = idx + 1
            mem[mem[64] + 64] = _29
            emit Withdraw(msg.sender, idx + 1, _29);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _29
            continue 
    else:
        require ext_code.size(stor7)
        staticcall stor7.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(stor7)
            call stor7.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Withdraw(msg.sender, 0, ext_call.return_data[0]);
}

function sub_99c0dab6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor11.length:
        revert with 0, 50
    require ext_code.size(address(stor11.field_0))
    staticcall address(stor11.field_0).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if stor12[address(arg1)].field_0 and 1 > -1 / stor12[address(arg1)].field_0:
            revert with 0, 17
        if not stor4:
            revert with 0, 18
        if not stor11.length:
            revert with 0, 50
        require ext_code.size(address(stor11.field_0))
        staticcall address(stor11.field_0).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        return stor12[address(arg1)].field_0 / stor4, 
               stor12[address(arg1)].field_256,
               stor12[address(arg1)].field_512,
               stor12[address(arg1)].field_768,
               ext_call.return_data[0] << 248,
               block.timestamp
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if stor12[address(arg1)].field_0 and 10^ext_call.return_data[31 len 1] > -1 / stor12[address(arg1)].field_0:
            revert with 0, 17
        if not stor4:
            revert with 0, 18
        if not stor11.length:
            revert with 0, 50
        require ext_code.size(address(stor11.field_0))
        staticcall address(stor11.field_0).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        return stor12[address(arg1)].field_0 * 10^ext_call.return_data[31 len 1] / stor4, 
               stor12[address(arg1)].field_256,
               stor12[address(arg1)].field_512,
               stor12[address(arg1)].field_768,
               ext_call.return_data[0] << 248,
               block.timestamp
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if stor12[address(arg1)].field_0 and s * t > -1 / stor12[address(arg1)].field_0:
        revert with 0, 17
    if not stor4:
        revert with 0, 18
    if not stor11.length:
        revert with 0, 50
    require ext_code.size(address(stor11.field_0))
    staticcall address(stor11.field_0).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return stor12[address(arg1)].field_0 * s * t / stor4, 
           stor12[address(arg1)].field_256,
           stor12[address(arg1)].field_512,
           stor12[address(arg1)].field_768,
           ext_call.return_data[0] << 248,
           block.timestamp
}

function deleteCurrency(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    if 1 >= stor11.length:
        revert with 0, 'can not delete currency anymore'
    if stor11.length < 1:
        revert with 0, 17
    if var36001 < stor11.length:
        if stor11[var38001].field_0 != arg1:
            idx = var38004
            while idx:
                if idx - 1 >= stor11.length:
                    revert with 0, 50
                mem[0] = 11
                if stor11[idx].field_0 == arg1:
                    if stor11.length < 1:
                        revert with 0, 17
                    if stor11.length < 1:
                        revert with 0, 17
                    if stor11.length - 1 >= stor11.length:
                        revert with 0, 50
                    if idx - 1 != stor11.length - 1:
                        if idx - 1 >= stor11.length:
                            revert with 0, 50
                        stor11[idx].field_0 = stor11[stor11.length].field_0
                    stor11[stor11.length].field_0 = 0
                    if not stor11.length:
                        revert with 0, 49
                    mem[0] = 11
                    stor11[stor11.length].field_0 = 0
                    stor11.length--
                idx = idx - 1
                continue 
            emit 0xe6639113: arg1
        if stor11.length < 1:
            revert with 0, 17
        if stor11.length < 1:
            revert with 0, 17
        if var46002 == stor11.length - 1:
            s = var52006
            while stor11.length - 1 < stor11.length:
                stor11[stor11.length].field_0 = 0
                if not stor11.length:
                    revert with 0, 49
                stor11[stor11.length].field_0 = 0
                stor11.length--
                idx = s
                while idx:
                    if idx - 1 >= stor11.length:
                        revert with 0, 50
                    mem[0] = 11
                    if stor11[idx].field_0 != arg1:
                        idx = idx - 1
                        continue 
                    if stor11.length < 1:
                        revert with 0, 17
                    if stor11.length < 1:
                        revert with 0, 17
                    if idx - 1 != stor11.length - 1:
                        if stor11.length - 1 >= stor11.length:
                            revert with 0, 50
                        if idx - 1 >= stor11.length:
                            revert with 0, 50
                        mem[0] = 11
                        stor11[idx].field_0 = stor11[stor11.length].field_0
                    s = idx - 1
                    continue 
                emit 0xe6639113: arg1
        else:
            s = var52006
            while stor11.length - 1 < stor11.length:
                if s < stor11.length:
                    stor11[s].field_0 = stor11[stor11.length].field_0
                    if stor11.length < 1:
                        revert with 0, 17
                    s = var56006
                    while stor11.length - 1 < stor11.length:
                        stor11[stor11.length].field_0 = 0
                        if not stor11.length:
                            revert with 0, 49
                        stor11[stor11.length].field_0 = 0
                        stor11.length--
                        idx = s
                        while idx:
                            if idx - 1 >= stor11.length:
                                revert with 0, 50
                            mem[0] = 11
                            if stor11[idx].field_0 != arg1:
                                idx = idx - 1
                                continue 
                            if stor11.length < 1:
                                revert with 0, 17
                            if stor11.length < 1:
                                revert with 0, 17
                            if idx - 1 == stor11.length - 1:
                                s = idx - 1
                                continue 
                            s = idx - 1
                            continue 
                        emit 0xe6639113: arg1
                revert with 0, 50
    revert with 0, 50
}

function getCurrencyList() {
    if stor11.length > test266151307():
        revert with 0, 65
    mem[96] = stor11.length
    mem[64] = (32 * stor11.length) + 128
    if not stor11.length:
        idx = 0
        while idx < stor11.length:
            mem[0] = 11
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor11[idx].field_0)
            staticcall stor11[idx].field_0.0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _49 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _57 = mem[_49]
            require mem[_49] <= test266151307()
            require _49 + mem[_49] + 31 < _49 + return_data.size
            _63 = mem[_49 + mem[_49]]
            if mem[_49 + mem[_49]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_49 + mem[_49]])) + 1 < 0 or _49 + ceil32(return_data.size) + ceil32(ceil32(mem[_49 + mem[_49]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _49 + ceil32(return_data.size) + ceil32(ceil32(mem[_49 + mem[_49]])) + 1
            mem[_49 + ceil32(return_data.size)] = _63
            require _57 + _63 + 32 <= return_data.size
            s = 0
            while s < _63:
                mem[s + _49 + ceil32(return_data.size) + 32] = mem[s + _49 + _57 + 32]
                s = s + 32
                continue 
            if ceil32(_63) > _63:
                mem[_49 + ceil32(return_data.size) + _63 + 32] = 0
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _49 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _42 = mem[64]
        mem[64] = mem[64] + (32 * stor11.length) + 32
        mem[_42] = stor11.length
        if not stor11.length:
            _47 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = stor11.length
            idx = 0
            s = _42 + 32
            t = mem[64] + 96
            while idx < stor11.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_47 + 32] = (32 * stor11.length) + 96
            _82 = mem[96]
            mem[_47 + (32 * stor11.length) + 96] = mem[96]
            idx = 0
            s = 128
            t = _47 + (32 * stor11.length) + (32 * _82) + 128
            u = _47 + (32 * stor11.length) + 128
            while idx < _82:
                mem[u] = t + -_47 + -(32 * stor11.length) - 128
                _111 = mem[s]
                _112 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _112:
                    mem[v + t + 32] = mem[v + _111 + 32]
                    v = v + 32
                    continue 
                if ceil32(_112) > _112:
                    mem[t + _112 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_112) + t + 32
                u = u + 32
                continue 
        else:
            mem[0] = 11
            mem[_42 + 32] = address(stor11.field_0)
            idx = _42 + 32
            s = 0
            while _42 + (32 * stor11.length) > idx:
                mem[idx + 32] = stor11[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _113 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = stor11.length
            idx = 0
            s = _42 + 32
            t = mem[64] + 96
            while idx < stor11.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_113 + 32] = (32 * stor11.length) + 96
            _133 = mem[96]
            mem[_113 + (32 * stor11.length) + 96] = mem[96]
            idx = 0
            s = 128
            t = _113 + (32 * stor11.length) + (32 * _133) + 128
            u = _113 + (32 * stor11.length) + 128
            while idx < _133:
                mem[u] = t + -_113 + -(32 * stor11.length) - 128
                _151 = mem[s]
                _152 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _152:
                    mem[v + t + 32] = mem[v + _151 + 32]
                    v = v + 32
                    continue 
                if ceil32(_152) > _152:
                    mem[t + _152 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_152) + t + 32
                u = u + 32
                continue 
    else:
        mem[128] = 96
        s = 128
        idx = stor11.length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < stor11.length:
            mem[0] = 11
            mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor11[idx].field_0)
            staticcall stor11[idx].field_0.0x95d89b41 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _96 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _101 = mem[_96]
            require mem[_96] <= test266151307()
            require _96 + mem[_96] + 31 < _96 + return_data.size
            _104 = mem[_96 + mem[_96]]
            if mem[_96 + mem[_96]] > test266151307():
                revert with 0, 65
            if ceil32(ceil32(mem[_96 + mem[_96]])) + 1 < 0 or _96 + ceil32(return_data.size) + ceil32(ceil32(mem[_96 + mem[_96]])) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _96 + ceil32(return_data.size) + ceil32(ceil32(mem[_96 + mem[_96]])) + 1
            mem[_96 + ceil32(return_data.size)] = _104
            require _101 + _104 + 32 <= return_data.size
            s = 0
            while s < _104:
                mem[s + _96 + ceil32(return_data.size) + 32] = mem[s + _96 + _101 + 32]
                s = s + 32
                continue 
            if ceil32(_104) > _104:
                mem[_96 + ceil32(return_data.size) + _104 + 32] = 0
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _96 + ceil32(return_data.size)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _85 = mem[64]
        mem[64] = mem[64] + (32 * stor11.length) + 32
        mem[_85] = stor11.length
        if not stor11.length:
            _92 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = stor11.length
            idx = 0
            s = _85 + 32
            t = mem[64] + 96
            while idx < stor11.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_92 + 32] = (32 * stor11.length) + 96
            _114 = mem[96]
            mem[_92 + (32 * stor11.length) + 96] = mem[96]
            idx = 0
            s = 128
            t = _92 + (32 * stor11.length) + (32 * _114) + 128
            u = _92 + (32 * stor11.length) + 128
            while idx < _114:
                mem[u] = t + -_92 + -(32 * stor11.length) - 128
                _135 = mem[s]
                _136 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _136:
                    mem[v + t + 32] = mem[v + _135 + 32]
                    v = v + 32
                    continue 
                if ceil32(_136) > _136:
                    mem[t + _136 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_136) + t + 32
                u = u + 32
                continue 
        else:
            mem[0] = 11
            mem[_85 + 32] = address(stor11.field_0)
            idx = _85 + 32
            s = 0
            while _85 + (32 * stor11.length) > idx:
                mem[idx + 32] = stor11[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _137 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = stor11.length
            idx = 0
            s = _85 + 32
            t = mem[64] + 96
            while idx < stor11.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_137 + 32] = (32 * stor11.length) + 96
            _154 = mem[96]
            mem[_137 + (32 * stor11.length) + 96] = mem[96]
            idx = 0
            s = 128
            t = _137 + (32 * stor11.length) + (32 * _154) + 128
            u = _137 + (32 * stor11.length) + 128
            while idx < _154:
                mem[u] = t + -_137 + -(32 * stor11.length) - 128
                _163 = mem[s]
                _164 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _164:
                    mem[v + t + 32] = mem[v + _163 + 32]
                    v = v + 32
                    continue 
                if ceil32(_164) > _164:
                    mem[t + _164 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_164) + t + 32
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_8c78fedf(?) {
    require calldata.size - 4 >= 32
    if contractStatus:
        revert with 0, 'Contract Paused'
    require ext_code.size(stor7)
    staticcall stor7.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg1 and stor4 > -1 / arg1:
            revert with 0, 17
        if arg1 * stor4 and sub_3d301283 > -1 / arg1 * stor4:
            revert with 0, 17
        if stor5 and sub_3d301283 > -1 / stor5:
            revert with 0, 17
        if stor5 * sub_3d301283 and stor4 > -1 / stor5 * sub_3d301283:
            revert with 0, 17
        if arg1 * stor4 * sub_3d301283 < stor5 * sub_3d301283 * stor4:
            revert with 0, 'smaller than minimum bond amount'
        if stor12[msg.sender].field_0 > !(arg1 * stor4 * sub_3d301283):
            revert with 0, 17
        stor12[msg.sender].field_0 += arg1 * stor4 * sub_3d301283
        stor12[msg.sender].field_256 = block.timestamp
        if block.timestamp > !sub_b634d2e0:
            revert with 0, 17
        stor12[msg.sender].field_512 = block.timestamp + sub_b634d2e0
        stor12[msg.sender].field_768 = sub_3d301283
        require ext_code.size(stor7)
        staticcall stor7.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg1 > ext_call.return_data[0]:
            revert with 0, 'no enough balance'
        require ext_code.size(stor7)
        call stor7.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, 0x52fd04aa057ba8ca4bcc675b55de7366f607a677, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if stor10 > !(arg1 * stor4 * sub_3d301283):
            revert with 0, 17
        stor10 += arg1 * stor4 * sub_3d301283
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if arg1 and stor4 > -1 / arg1:
                revert with 0, 17
            if arg1 * stor4 and sub_3d301283 > -1 / arg1 * stor4:
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            if stor5 and sub_3d301283 > -1 / stor5:
                revert with 0, 17
            if stor5 * sub_3d301283 and stor4 > -1 / stor5 * sub_3d301283:
                revert with 0, 17
            if arg1 * stor4 * sub_3d301283 / 10^ext_call.return_data[31 len 1] < stor5 * sub_3d301283 * stor4:
                revert with 0, 'smaller than minimum bond amount'
            if stor12[msg.sender].field_0 > !(arg1 * stor4 * sub_3d301283 / 10^ext_call.return_data[31 len 1]):
                revert with 0, 17
            stor12[msg.sender].field_0 += arg1 * stor4 * sub_3d301283 / 10^ext_call.return_data[31 len 1]
            stor12[msg.sender].field_256 = block.timestamp
            if block.timestamp > !sub_b634d2e0:
                revert with 0, 17
            stor12[msg.sender].field_512 = block.timestamp + sub_b634d2e0
            stor12[msg.sender].field_768 = sub_3d301283
            require ext_code.size(stor7)
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 > ext_call.return_data[0]:
                revert with 0, 'no enough balance'
            require ext_code.size(stor7)
            call stor7.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, 0x52fd04aa057ba8ca4bcc675b55de7366f607a677, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if stor10 > !(arg1 * stor4 * sub_3d301283 / 10^uint8(ext_call.return_data[0])):
                revert with 0, 17
            stor10 += arg1 * stor4 * sub_3d301283 / 10^uint8(ext_call.return_data[0])
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg1 and stor4 > -1 / arg1:
                revert with 0, 17
            if arg1 * stor4 and sub_3d301283 > -1 / arg1 * stor4:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if stor5 and sub_3d301283 > -1 / stor5:
                revert with 0, 17
            if stor5 * sub_3d301283 and stor4 > -1 / stor5 * sub_3d301283:
                revert with 0, 17
            if arg1 * stor4 * sub_3d301283 / s * t < stor5 * sub_3d301283 * stor4:
                revert with 0, 'smaller than minimum bond amount'
            if stor12[msg.sender].field_0 > !(arg1 * stor4 * sub_3d301283 / s * t):
                revert with 0, 17
            stor12[msg.sender].field_0 += arg1 * stor4 * sub_3d301283 / s * t
            stor12[msg.sender].field_256 = block.timestamp
            if block.timestamp > !sub_b634d2e0:
                revert with 0, 17
            stor12[msg.sender].field_512 = block.timestamp + sub_b634d2e0
            stor12[msg.sender].field_768 = sub_3d301283
            require ext_code.size(stor7)
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg1 > ext_call.return_data[0]:
                revert with 0, 'no enough balance'
            require ext_code.size(stor7)
            call stor7.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, 0x52fd04aa057ba8ca4bcc675b55de7366f607a677, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if stor10 > !(arg1 * stor4 * sub_3d301283 / s * t):
                revert with 0, 17
            stor10 += arg1 * stor4 * sub_3d301283 / s * t
    if 0 >= stor11.length:
        revert with 0, 50
    require ext_code.size(address(stor11.field_0))
    staticcall address(stor11.field_0).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if stor10 and 1 > -1 / stor10:
            revert with 0, 17
        if not stor4:
            revert with 0, 18
        require ext_code.size(address(stor11.field_0))
        staticcall address(stor11.field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < stor10 / stor4:
            revert with 0, 'exceed maximum bond amount'
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if stor10 and 10^ext_call.return_data[31 len 1] > -1 / stor10:
                revert with 0, 17
            if not stor4:
                revert with 0, 18
            require ext_code.size(address(stor11.field_0))
            staticcall address(stor11.field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < stor10 * 10^uint8(ext_call.return_data[0]) / stor4:
                revert with 0, 'exceed maximum bond amount'
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if stor10 and s * t > -1 / stor10:
                revert with 0, 17
            if not stor4:
                revert with 0, 18
            require ext_code.size(address(stor11.field_0))
            staticcall address(stor11.field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < stor10 * s * t / stor4:
                revert with 0, 'exceed maximum bond amount'
    emit Bond(msg.sender, stor12[msg.sender].field_0, stor12[msg.sender].field_256, stor12[msg.sender].field_512);
}

function redeem(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor12[msg.sender].field_0:
        revert with 0, 'no exist bond'
    if block.timestamp < stor12[msg.sender].field_256:
        revert with 0, 17
    if not sub_1471ee75:
        revert with 0, 18
    if block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'can redeem once within a redeem interval; ex: 8hours'
    if block.timestamp >= stor12[msg.sender].field_512:
        if stor12[msg.sender].field_0 < stor12[msg.sender].field_0:
            revert with 0, 17
        stor12[msg.sender].field_0 = 0
        if block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 and sub_1471ee75 > -1 / block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75:
            revert with 0, 17
        if stor12[msg.sender].field_256 > !(block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75):
            revert with 0, 17
        stor12[msg.sender].field_256 += block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75
        if stor10 < stor12[msg.sender].field_0:
            revert with 0, 17
        stor10 -= stor12[msg.sender].field_0
        if arg1 >= stor11.length:
            revert with 0, 50
        if stor12[msg.sender].field_0:
            require ext_code.size(stor11[arg1].field_0)
            staticcall stor11[arg1].field_0.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if stor12[msg.sender].field_0 and 1 > -1 / stor12[msg.sender].field_0:
                    revert with 0, 17
                if not stor4:
                    revert with 0, 18
                require ext_code.size(stor11[arg1].field_0)
                staticcall stor11[arg1].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < stor12[msg.sender].field_0 / stor4:
                    revert with 0, 'no enough balance'
                require ext_code.size(stor11[arg1].field_0)
                call stor11[arg1].field_0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor12[msg.sender].field_0 / stor4
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if stor12[msg.sender].field_0 and 10^ext_call.return_data[31 len 1] > -1 / stor12[msg.sender].field_0:
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    require ext_code.size(stor11[arg1].field_0)
                    staticcall stor11[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor12[msg.sender].field_0 * 10^uint8(ext_call.return_data[0]) / stor4:
                        revert with 0, 'no enough balance'
                    require ext_code.size(stor11[arg1].field_0)
                    call stor11[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor12[msg.sender].field_0 * 10^uint8(ext_call.return_data[0]) / stor4
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if stor12[msg.sender].field_0 and s * t > -1 / stor12[msg.sender].field_0:
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    require ext_code.size(stor11[arg1].field_0)
                    staticcall stor11[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor12[msg.sender].field_0 * s * t / stor4:
                        revert with 0, 'no enough balance'
                    require ext_code.size(stor11[arg1].field_0)
                    call stor11[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor12[msg.sender].field_0 * s * t / stor4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Redeem(msg.sender, stor12[msg.sender].field_0, stor12[msg.sender].field_256, block.timestamp);
    else:
        if stor12[msg.sender].field_512 < stor12[msg.sender].field_256:
            revert with 0, 17
        if stor12[msg.sender].field_0 and block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 > -1 / stor12[msg.sender].field_0:
            revert with 0, 17
        if stor12[msg.sender].field_0 * block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 and sub_1471ee75 > -1 / stor12[msg.sender].field_0 * block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75:
            revert with 0, 17
        if not stor12[msg.sender].field_512 - stor12[msg.sender].field_256:
            revert with 0, 18
        if stor12[msg.sender].field_0 < stor12[msg.sender].field_0 * block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[msg.sender].field_512 - stor12[msg.sender].field_256:
            revert with 0, 17
        stor12[msg.sender].field_0 -= stor12[msg.sender].field_0 * block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[msg.sender].field_512 - stor12[msg.sender].field_256
        if block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 and sub_1471ee75 > -1 / block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75:
            revert with 0, 17
        if stor12[msg.sender].field_256 > !(block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75):
            revert with 0, 17
        stor12[msg.sender].field_256 += block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75
        if stor10 < stor12[msg.sender].field_0 * block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[msg.sender].field_512 - stor12[msg.sender].field_256:
            revert with 0, 17
        stor10 -= stor12[msg.sender].field_0 * block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[msg.sender].field_512 - stor12[msg.sender].field_256
        if arg1 >= stor11.length:
            revert with 0, 50
        if stor12[msg.sender].field_0 * block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[msg.sender].field_512 - stor12[msg.sender].field_256:
            require ext_code.size(stor11[arg1].field_0)
            staticcall stor11[arg1].field_0.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if stor12[msg.sender].field_0 * block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[msg.sender].field_512 - stor12[msg.sender].field_256 and 1 > -1 / stor12[msg.sender].field_0 * block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[msg.sender].field_512 - stor12[msg.sender].field_256:
                    revert with 0, 17
                if not stor4:
                    revert with 0, 18
                require ext_code.size(stor11[arg1].field_0)
                staticcall stor11[arg1].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < stor12[msg.sender].field_0 * block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[msg.sender].field_512 - stor12[msg.sender].field_256 / stor4:
                    revert with 0, 'no enough balance'
                require ext_code.size(stor11[arg1].field_0)
                call stor11[arg1].field_0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor12[msg.sender].field_0 * block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[msg.sender].field_512 - stor12[msg.sender].field_256 / stor4
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if stor12[msg.sender].field_0 * block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[msg.sender].field_512 - stor12[msg.sender].field_256 and 10^ext_call.return_data[31 len 1] > -1 / stor12[msg.sender].field_0 * block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[msg.sender].field_512 - stor12[msg.sender].field_256:
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    require ext_code.size(stor11[arg1].field_0)
                    staticcall stor11[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor12[msg.sender].field_0 * block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[msg.sender].field_512 - stor12[msg.sender].field_256 * 10^uint8(ext_call.return_data[0]) / stor4:
                        revert with 0, 'no enough balance'
                    require ext_code.size(stor11[arg1].field_0)
                    call stor11[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor12[msg.sender].field_0 * block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[msg.sender].field_512 - stor12[msg.sender].field_256 * 10^uint8(ext_call.return_data[0]) / stor4
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if stor12[msg.sender].field_0 * block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[msg.sender].field_512 - stor12[msg.sender].field_256 and s * t > -1 / stor12[msg.sender].field_0 * block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[msg.sender].field_512 - stor12[msg.sender].field_256:
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    require ext_code.size(stor11[arg1].field_0)
                    staticcall stor11[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < stor12[msg.sender].field_0 * block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[msg.sender].field_512 - stor12[msg.sender].field_256 * s * t / stor4:
                        revert with 0, 'no enough balance'
                    require ext_code.size(stor11[arg1].field_0)
                    call stor11[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor12[msg.sender].field_0 * block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[msg.sender].field_512 - stor12[msg.sender].field_256 * s * t / stor4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Redeem(msg.sender, stor12[msg.sender].field_0 * block.timestamp - stor12[msg.sender].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[msg.sender].field_512 - stor12[msg.sender].field_256, stor12[msg.sender].field_256, block.timestamp);
}

function sub_6373a35e(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if not stor9:
        revert with 0, 'no exist second token'
    if arg1 <= 0:
        revert with 0, 'invalid amount'
    if bool(arg2) != 1:
        require ext_code.size(stor7)
        call stor7.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor7)
        staticcall stor7.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            require ext_code.size(stor9)
            staticcall stor9.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg1 and 1 > -1 / arg1:
                    revert with 0, 17
                require ext_code.size(stor9)
                staticcall stor9.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= arg1:
                    revert with 0, 'no enough second token'
                require ext_code.size(stor9)
                call stor9.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                        revert with 0, 17
                    require ext_code.size(stor9)
                    staticcall stor9.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= arg1 * 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'no enough second token'
                    require ext_code.size(stor9)
                    call stor9.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * 10^uint8(ext_call.return_data[0])
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if arg1 and s * t > -1 / arg1:
                        revert with 0, 17
                    require ext_code.size(stor9)
                    staticcall stor9.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= arg1 * s * t:
                        revert with 0, 'no enough second token'
                    require ext_code.size(stor9)
                    call stor9.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * s * t
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                require ext_code.size(stor9)
                staticcall stor9.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg1 and 1 > -1 / arg1:
                        revert with 0, 17
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    require ext_code.size(stor9)
                    staticcall stor9.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= arg1 / 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'no enough second token'
                    require ext_code.size(stor9)
                    call stor9.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 / 10^uint8(ext_call.return_data[0])
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                            revert with 0, 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= arg1 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'no enough second token'
                        require ext_code.size(stor9)
                        call stor9.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if arg1 and s * t > -1 / arg1:
                            revert with 0, 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= arg1 * s * t / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'no enough second token'
                        require ext_code.size(stor9)
                        call stor9.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * s * t / 10^uint8(ext_call.return_data[0])
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                require ext_code.size(stor9)
                staticcall stor9.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg1 and 1 > -1 / arg1:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    require ext_code.size(stor9)
                    staticcall stor9.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= arg1 / s * t:
                        revert with 0, 'no enough second token'
                    require ext_code.size(stor9)
                    call stor9.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 / s * t
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= arg1 * 10^uint8(ext_call.return_data[0]) / s * t:
                            revert with 0, 'no enough second token'
                        require ext_code.size(stor9)
                        call stor9.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * 10^uint8(ext_call.return_data[0]) / s * t
                    else:
                        u = 10
                        v = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 0, 17
                            if not bool(idx):
                                u = u * u
                                v = v
                                idx = uint255(idx) * 0.5
                                continue 
                            u = u * u
                            v = u * v
                            idx = uint255(idx) * 0.5
                            continue 
                        if v > -1 / u:
                            revert with 0, 17
                        if arg1 and u * v > -1 / arg1:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= arg1 * u * v / s * t:
                            revert with 0, 'no enough second token'
                        require ext_code.size(stor9)
                        call stor9.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * u * v / s * t
    else:
        require ext_code.size(stor9)
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor9)
        staticcall stor9.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            require ext_code.size(stor7)
            staticcall stor7.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if arg1 and 1 > -1 / arg1:
                    revert with 0, 17
                require ext_code.size(stor7)
                staticcall stor7.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= arg1:
                    revert with 0, 'no enough first token'
                require ext_code.size(stor7)
                call stor7.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                        revert with 0, 17
                    require ext_code.size(stor7)
                    staticcall stor7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= arg1 * 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'no enough first token'
                    require ext_code.size(stor7)
                    call stor7.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * 10^uint8(ext_call.return_data[0])
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if arg1 and s * t > -1 / arg1:
                        revert with 0, 17
                    require ext_code.size(stor7)
                    staticcall stor7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= arg1 * s * t:
                        revert with 0, 'no enough first token'
                    require ext_code.size(stor7)
                    call stor7.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * s * t
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                require ext_code.size(stor7)
                staticcall stor7.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg1 and 1 > -1 / arg1:
                        revert with 0, 17
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    require ext_code.size(stor7)
                    staticcall stor7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= arg1 / 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'no enough first token'
                    require ext_code.size(stor7)
                    call stor7.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 / 10^uint8(ext_call.return_data[0])
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                            revert with 0, 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        require ext_code.size(stor7)
                        staticcall stor7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= arg1 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'no enough first token'
                        require ext_code.size(stor7)
                        call stor7.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * 10^uint8(ext_call.return_data[0]) / 10^uint8(ext_call.return_data[0])
                    else:
                        s = 10
                        t = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if arg1 and s * t > -1 / arg1:
                            revert with 0, 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        require ext_code.size(stor7)
                        staticcall stor7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= arg1 * s * t / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'no enough first token'
                        require ext_code.size(stor7)
                        call stor7.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * s * t / 10^uint8(ext_call.return_data[0])
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                require ext_code.size(stor7)
                staticcall stor7.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg1 and 1 > -1 / arg1:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    require ext_code.size(stor7)
                    staticcall stor7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= arg1 / s * t:
                        revert with 0, 'no enough first token'
                    require ext_code.size(stor7)
                    call stor7.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 / s * t
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        require ext_code.size(stor7)
                        staticcall stor7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= arg1 * 10^uint8(ext_call.return_data[0]) / s * t:
                            revert with 0, 'no enough first token'
                        require ext_code.size(stor7)
                        call stor7.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * 10^uint8(ext_call.return_data[0]) / s * t
                    else:
                        u = 10
                        v = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 0, 17
                            if not bool(idx):
                                u = u * u
                                v = v
                                idx = uint255(idx) * 0.5
                                continue 
                            u = u * u
                            v = u * v
                            idx = uint255(idx) * 0.5
                            continue 
                        if v > -1 / u:
                            revert with 0, 17
                        if arg1 and u * v > -1 / arg1:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        require ext_code.size(stor7)
                        staticcall stor7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= arg1 * u * v / s * t:
                            revert with 0, 'no enough first token'
                        require ext_code.size(stor7)
                        call stor7.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * u * v / s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
