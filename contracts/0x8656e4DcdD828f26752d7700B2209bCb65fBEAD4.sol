contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
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

function sub_1471ee75(?) {
    return sub_1471ee75
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
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    sub_b634d2e0 = arg1
    emit 0xf115dd5d: arg1
}

function sub_5ed2b682(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    sub_1471ee75 = arg1
    emit 0x5de63e1c: arg1
}

function sub_99024dd0(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    stor1 = arg1
    emit 0xb55b77d4: msg.sender, stor1
}

function sub_ec5566b3(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
    stor11[stor11.length].field_0 = address(arg1)
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
    stor7 = sub_b36e8137Address
    emit 0x175881da: msg.sender, address(arg1)
}

function deleteCurrency(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Multi-signer: caller is not the multi-signer'
    if stor11.length <= 1:
        revert with 0, 'can not delete currency anymore'
    if stor11.length < 1:
        revert with 'NH{q', 17
    idx = stor11.length - 1
    while idx >= 0:
        if idx >= stor11.length:
            revert with 'NH{q', 50
        mem[0] = 11
        if stor11[idx].field_0 == arg1:
            if stor11.length < 1:
                revert with 'NH{q', 17
            if stor11.length < 1:
                revert with 'NH{q', 17
            if stor11.length - 1 >= stor11.length:
                revert with 'NH{q', 50
            if idx != stor11.length - 1:
                if idx >= stor11.length:
                    revert with 'NH{q', 50
                stor11[idx].field_0 = stor11[stor11.length].field_0
            stor11[stor11.length].field_0 = 0
            if not stor11.length:
                revert with 'NH{q', 49
            mem[0] = 11
            stor11[stor11.length].field_0 = 0
            stor11.length--
        if idx:
            idx = idx - 1
            continue 
        emit 0xe6639113: arg1
    emit 0xe6639113: arg1
}

function sub_7edb1f42(?) {
    if 0 >= stor11.length:
        revert with 'NH{q', 50
    require ext_code.size(address(stor11.field_0))
    staticcall address(stor11.field_0).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if stor10 and 1 > -1 / stor10:
            revert with 'NH{q', 17
        if not stor4:
            revert with 'NH{q', 18
        return (stor10 / stor4)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        if stor10 and 10^ext_call.return_data[31 len 1] > -1 / stor10:
            revert with 'NH{q', 17
        if not stor4:
            revert with 'NH{q', 18
        return (stor10 * 10^ext_call.return_data[31 len 1] / stor4)
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if stor10 and t * s > -1 / stor10:
        revert with 'NH{q', 17
    if not stor4:
        revert with 'NH{q', 18
    return (stor10 * t * s / stor4)
}

function sub_99c0dab6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if 0 >= stor11.length:
        revert with 'NH{q', 50
    require ext_code.size(address(stor11.field_0))
    staticcall address(stor11.field_0).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if stor12[address(arg1)].field_0 and 1 > -1 / stor12[address(arg1)].field_0:
            revert with 'NH{q', 17
        if not stor4:
            revert with 'NH{q', 18
        return stor12[address(arg1)].field_0 / stor4, 
               stor12[address(arg1)].field_256,
               stor12[address(arg1)].field_512,
               stor12[address(arg1)].field_768,
               block.timestamp
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        if stor12[address(arg1)].field_0 and 10^ext_call.return_data[31 len 1] > -1 / stor12[address(arg1)].field_0:
            revert with 'NH{q', 17
        if not stor4:
            revert with 'NH{q', 18
        return stor12[address(arg1)].field_0 * 10^ext_call.return_data[31 len 1] / stor4, 
               stor12[address(arg1)].field_256,
               stor12[address(arg1)].field_512,
               stor12[address(arg1)].field_768,
               block.timestamp
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if stor12[address(arg1)].field_0 and t * s > -1 / stor12[address(arg1)].field_0:
        revert with 'NH{q', 17
    if not stor4:
        revert with 'NH{q', 18
    return stor12[address(arg1)].field_0 * t * s / stor4, 
           stor12[address(arg1)].field_256,
           stor12[address(arg1)].field_512,
           stor12[address(arg1)].field_768,
           block.timestamp
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
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _28 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _29 = mem[_28]
            require mem[_28] == mem[_28]
            if mem[_28] <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = mem[_28]
                continue 
            if idx >= stor11.length:
                revert with 'NH{q', 50
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
            if idx > -2:
                revert with 'NH{q', 17
            mem[mem[64]] = msg.sender
            mem[mem[64] + 32] = idx + 1
            mem[mem[64] + 64] = _29
            emit Withdraw(msg.sender, idx + 1, _29);
            if idx == -1:
                revert with 'NH{q', 17
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
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] > 0:
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

function sub_7d1f22db(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= stor11.length:
        revert with 0, 'invalid index'
    require ext_code.size(stor11[arg1].field_0)
    staticcall stor11[arg1].field_0.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if stor1 and 1 > -1 / stor1:
            revert with 'NH{q', 17
        if arg1 >= stor11.length:
            revert with 'NH{q', 50
        require ext_code.size(stor11[arg1].field_0)
        staticcall stor11[arg1].field_0.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            return stor1, 1
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            return stor1, 10^uint8(ext_call.return_data[0])
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        return stor1, t * s
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        if stor1 and 10^ext_call.return_data[31 len 1] > -1 / stor1:
            revert with 'NH{q', 17
        if arg1 >= stor11.length:
            revert with 'NH{q', 50
        require ext_code.size(stor11[arg1].field_0)
        staticcall stor11[arg1].field_0.0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if not ext_call.return_data[31 len 1]:
            return stor1 * 10^uint8(ext_call.return_data[0]), 1
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            return stor1 * 10^uint8(ext_call.return_data[0]), 10^uint8(ext_call.return_data[0])
        s = 10
        t = 1
        idx = ext_call.return_data[31 len 1]
        while idx > 1:
            if s > -1 / s:
                revert with 'NH{q', 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = t * s
            idx = uint255(idx) * 0.5
            continue 
        if t > -1 / s:
            revert with 'NH{q', 17
        return stor1 * 10^uint8(ext_call.return_data[0]), t * s
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if stor1 and t * s > -1 / stor1:
        revert with 'NH{q', 17
    if arg1 >= stor11.length:
        revert with 'NH{q', 50
    require ext_code.size(stor11[arg1].field_0)
    staticcall stor11[arg1].field_0.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        return stor1 * t * s, 1
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        return stor1 * t * s, 10^uint8(ext_call.return_data[0])
    u = 10
    v = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if u > -1 / u:
            revert with 'NH{q', 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = v * u
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 'NH{q', 17
    return stor1 * t * s, v * u
}

function getCurrencyList() {
    if stor11.length > test266151307():
        revert with 'NH{q', 65
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
            _48 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _55 = mem[_48]
            require mem[_48] <= test266151307()
            require _48 + mem[_48] + 31 < _48 + return_data.size
            _58 = mem[_48 + mem[_48]]
            if mem[_48 + mem[_48]] > test266151307():
                revert with 'NH{q', 65
            if _48 + ceil32(return_data.size) + ceil32(ceil32(mem[_48 + mem[_48]])) + 1 > test266151307() or ceil32(ceil32(mem[_48 + mem[_48]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _48 + ceil32(return_data.size) + ceil32(ceil32(mem[_48 + mem[_48]])) + 1
            mem[_48 + ceil32(return_data.size)] = _58
            require _55 + _58 + 32 <= return_data.size
            s = 0
            while s < _58:
                mem[_48 + ceil32(return_data.size) + s + 32] = mem[_48 + _55 + s + 32]
                s = s + 32
                continue 
            if ceil32(_58) > _58:
                mem[_48 + ceil32(return_data.size) + _58 + 32] = 0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _48 + ceil32(return_data.size)
            if idx == -1:
                revert with 'NH{q', 17
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
            _90 = mem[96]
            mem[_47 + (32 * stor11.length) + 96] = mem[96]
            idx = 0
            s = 128
            t = _47 + (32 * stor11.length) + (32 * _90) + 128
            u = _47 + (32 * stor11.length) + 128
            while idx < _90:
                mem[u] = t + -_47 + -(32 * stor11.length) - 128
                _111 = mem[s]
                _116 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _116:
                    mem[t + v + 32] = mem[_111 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_116) > _116:
                    mem[t + _116 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_116) + 32
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
            _112 = mem[64]
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
            mem[_112 + 32] = (32 * stor11.length) + 96
            _137 = mem[96]
            mem[_112 + (32 * stor11.length) + 96] = mem[96]
            idx = 0
            s = 128
            t = _112 + (32 * stor11.length) + (32 * _137) + 128
            u = _112 + (32 * stor11.length) + 128
            while idx < _137:
                mem[u] = t + -_112 + -(32 * stor11.length) - 128
                _151 = mem[s]
                _155 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _155:
                    mem[t + v + 32] = mem[_151 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_155) > _155:
                    mem[t + _155 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_155) + 32
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
            _91 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _94 = mem[_91]
            require mem[_91] <= test266151307()
            require _91 + mem[_91] + 31 < _91 + return_data.size
            _96 = mem[_91 + mem[_91]]
            if mem[_91 + mem[_91]] > test266151307():
                revert with 'NH{q', 65
            if _91 + ceil32(return_data.size) + ceil32(ceil32(mem[_91 + mem[_91]])) + 1 > test266151307() or ceil32(ceil32(mem[_91 + mem[_91]])) + 1 < 0:
                revert with 'NH{q', 65
            mem[64] = _91 + ceil32(return_data.size) + ceil32(ceil32(mem[_91 + mem[_91]])) + 1
            mem[_91 + ceil32(return_data.size)] = _96
            require _94 + _96 + 32 <= return_data.size
            s = 0
            while s < _96:
                mem[_91 + ceil32(return_data.size) + s + 32] = mem[_91 + _94 + s + 32]
                s = s + 32
                continue 
            if ceil32(_96) > _96:
                mem[_91 + ceil32(return_data.size) + _96 + 32] = 0
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = _91 + ceil32(return_data.size)
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _84 = mem[64]
        mem[64] = mem[64] + (32 * stor11.length) + 32
        mem[_84] = stor11.length
        if not stor11.length:
            _89 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = stor11.length
            idx = 0
            s = _84 + 32
            t = mem[64] + 96
            while idx < stor11.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_89 + 32] = (32 * stor11.length) + 96
            _118 = mem[96]
            mem[_89 + (32 * stor11.length) + 96] = mem[96]
            idx = 0
            s = 128
            t = _89 + (32 * stor11.length) + (32 * _118) + 128
            u = _89 + (32 * stor11.length) + 128
            while idx < _118:
                mem[u] = t + -_89 + -(32 * stor11.length) - 128
                _134 = mem[s]
                _138 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _138:
                    mem[t + v + 32] = mem[_134 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_138) > _138:
                    mem[t + _138 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_138) + 32
                u = u + 32
                continue 
        else:
            mem[0] = 11
            mem[_84 + 32] = address(stor11.field_0)
            idx = _84 + 32
            s = 0
            while _84 + (32 * stor11.length) > idx:
                mem[idx + 32] = stor11[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _135 = mem[64]
            mem[mem[64]] = 64
            mem[mem[64] + 64] = stor11.length
            idx = 0
            s = _84 + 32
            t = mem[64] + 96
            while idx < stor11.length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_135 + 32] = (32 * stor11.length) + 96
            _156 = mem[96]
            mem[_135 + (32 * stor11.length) + 96] = mem[96]
            idx = 0
            s = 128
            t = _135 + (32 * stor11.length) + (32 * _156) + 128
            u = _135 + (32 * stor11.length) + 128
            while idx < _156:
                mem[u] = t + -_135 + -(32 * stor11.length) - 128
                _163 = mem[s]
                _165 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _165:
                    mem[t + v + 32] = mem[_163 + v + 32]
                    v = v + 32
                    continue 
                if ceil32(_165) > _165:
                    mem[t + _165 + 32] = 0
                idx = idx + 1
                s = s + 32
                t = t + ceil32(_165) + 32
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_8c78fedf(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
            revert with 'NH{q', 17
        if arg1 * stor4 and stor1 > -1 / arg1 * stor4:
            revert with 'NH{q', 17
        if stor5 and stor1 > -1 / stor5:
            revert with 'NH{q', 17
        if stor5 * stor1 and stor4 > -1 / stor5 * stor1:
            revert with 'NH{q', 17
        if arg1 * stor4 * stor1 < stor5 * stor1 * stor4:
            revert with 0, 'smaller than minimum bond amount'
        if stor12[address(msg.sender)].field_0 > (-1 * arg1 * stor4 * stor1) - 1:
            revert with 'NH{q', 17
        stor12[address(msg.sender)].field_0 += arg1 * stor4 * stor1
        stor12[address(msg.sender)].field_256 = block.timestamp
        if block.timestamp > -sub_b634d2e0 - 1:
            revert with 'NH{q', 17
        stor12[address(msg.sender)].field_512 = block.timestamp + sub_b634d2e0
        stor12[address(msg.sender)].field_768 = stor1
        require ext_code.size(stor7)
        staticcall stor7.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
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
        if stor10 > (-1 * arg1 * stor4 * stor1) - 1:
            revert with 'NH{q', 17
        stor10 += arg1 * stor4 * stor1
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if arg1 and stor4 > -1 / arg1:
                revert with 'NH{q', 17
            if arg1 * stor4 and stor1 > -1 / arg1 * stor4:
                revert with 'NH{q', 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 'NH{q', 18
            if stor5 and stor1 > -1 / stor5:
                revert with 'NH{q', 17
            if stor5 * stor1 and stor4 > -1 / stor5 * stor1:
                revert with 'NH{q', 17
            if arg1 * stor4 * stor1 / 10^ext_call.return_data[31 len 1] < stor5 * stor1 * stor4:
                revert with 0, 'smaller than minimum bond amount'
            if stor12[address(msg.sender)].field_0 > -(arg1 * stor4 * stor1 / 10^ext_call.return_data[31 len 1]) - 1:
                revert with 'NH{q', 17
            stor12[address(msg.sender)].field_0 += arg1 * stor4 * stor1 / 10^ext_call.return_data[31 len 1]
            stor12[address(msg.sender)].field_256 = block.timestamp
            if block.timestamp > -sub_b634d2e0 - 1:
                revert with 'NH{q', 17
            stor12[address(msg.sender)].field_512 = block.timestamp + sub_b634d2e0
            stor12[address(msg.sender)].field_768 = stor1
            require ext_code.size(stor7)
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
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
            if stor10 > -(arg1 * stor4 * stor1 / 10^uint8(ext_call.return_data[0])) - 1:
                revert with 'NH{q', 17
            stor10 += arg1 * stor4 * stor1 / 10^uint8(ext_call.return_data[0])
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg1 and stor4 > -1 / arg1:
                revert with 'NH{q', 17
            if arg1 * stor4 and stor1 > -1 / arg1 * stor4:
                revert with 'NH{q', 17
            if not t * s:
                revert with 'NH{q', 18
            if stor5 and stor1 > -1 / stor5:
                revert with 'NH{q', 17
            if stor5 * stor1 and stor4 > -1 / stor5 * stor1:
                revert with 'NH{q', 17
            if arg1 * stor4 * stor1 / t * s < stor5 * stor1 * stor4:
                revert with 0, 'smaller than minimum bond amount'
            if stor12[address(msg.sender)].field_0 > -(arg1 * stor4 * stor1 / t * s) - 1:
                revert with 'NH{q', 17
            stor12[address(msg.sender)].field_0 += arg1 * stor4 * stor1 / t * s
            stor12[address(msg.sender)].field_256 = block.timestamp
            if block.timestamp > -sub_b634d2e0 - 1:
                revert with 'NH{q', 17
            stor12[address(msg.sender)].field_512 = block.timestamp + sub_b634d2e0
            stor12[address(msg.sender)].field_768 = stor1
            require ext_code.size(stor7)
            staticcall stor7.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
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
            if stor10 > -(arg1 * stor4 * stor1 / t * s) - 1:
                revert with 'NH{q', 17
            stor10 += arg1 * stor4 * stor1 / t * s
    if 0 >= stor11.length:
        revert with 'NH{q', 50
    require ext_code.size(address(stor11.field_0))
    staticcall address(stor11.field_0).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if stor10 and 1 > -1 / stor10:
            revert with 'NH{q', 17
        if not stor4:
            revert with 'NH{q', 18
        require ext_code.size(address(stor11.field_0))
        staticcall address(stor11.field_0).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < stor10 / stor4:
            revert with 0, 'exceed maximum bond amount'
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if stor10 and 10^ext_call.return_data[31 len 1] > -1 / stor10:
                revert with 'NH{q', 17
            if not stor4:
                revert with 'NH{q', 18
            require ext_code.size(address(stor11.field_0))
            staticcall address(stor11.field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < stor10 * 10^uint8(ext_call.return_data[0]) / stor4:
                revert with 0, 'exceed maximum bond amount'
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if stor10 and t * s > -1 / stor10:
                revert with 'NH{q', 17
            if not stor4:
                revert with 'NH{q', 18
            require ext_code.size(address(stor11.field_0))
            staticcall address(stor11.field_0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < stor10 * t * s / stor4:
                revert with 0, 'exceed maximum bond amount'
    emit Bond(msg.sender, stor12[address(msg.sender)].field_0, stor12[address(msg.sender)].field_256, stor12[address(msg.sender)].field_512);
}

function redeem(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor12[address(msg.sender)].field_0 <= 0:
        revert with 0, 'no exist bond'
    if block.timestamp < stor12[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    if not sub_1471ee75:
        revert with 'NH{q', 18
    if block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'can redeem once within a redeem interval; ex: 8hours'
    if block.timestamp >= stor12[address(msg.sender)].field_512:
        if stor12[address(msg.sender)].field_0 < stor12[address(msg.sender)].field_0:
            revert with 'NH{q', 17
        stor12[address(msg.sender)].field_0 = 0
        if block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 and sub_1471ee75 > -1 / block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75:
            revert with 'NH{q', 17
        if stor12[address(msg.sender)].field_256 > (-1 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75) - 1:
            revert with 'NH{q', 17
        stor12[address(msg.sender)].field_256 += block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75
        if stor10 < stor12[address(msg.sender)].field_0:
            revert with 'NH{q', 17
        stor10 -= stor12[address(msg.sender)].field_0
        if arg1 >= stor11.length:
            revert with 'NH{q', 50
        if stor12[address(msg.sender)].field_0 <= 0:
            emit Redeem(address(msg.sender), stor12[address(msg.sender)].field_0, stor12[address(msg.sender)].field_256, block.timestamp);
        else:
            require ext_code.size(stor11[arg1].field_0)
            staticcall stor11[arg1].field_0.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if stor12[address(msg.sender)].field_0 and 1 > -1 / stor12[address(msg.sender)].field_0:
                    revert with 'NH{q', 17
                if not stor4:
                    revert with 'NH{q', 18
                require ext_code.size(stor11[arg1].field_0)
                staticcall stor11[arg1].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < stor12[address(msg.sender)].field_0 / stor4:
                    revert with 0, 'no enough balance'
                require ext_code.size(stor11[arg1].field_0)
                call stor11[arg1].field_0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor12[address(msg.sender)].field_0 / stor4
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if stor12[address(msg.sender)].field_0 and 10^ext_call.return_data[31 len 1] > -1 / stor12[address(msg.sender)].field_0:
                        revert with 'NH{q', 17
                    if not stor4:
                        revert with 'NH{q', 18
                    require ext_code.size(stor11[arg1].field_0)
                    staticcall stor11[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < stor12[address(msg.sender)].field_0 * 10^uint8(ext_call.return_data[0]) / stor4:
                        revert with 0, 'no enough balance'
                    require ext_code.size(stor11[arg1].field_0)
                    call stor11[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor12[address(msg.sender)].field_0 * 10^uint8(ext_call.return_data[0]) / stor4
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if stor12[address(msg.sender)].field_0 and t * s > -1 / stor12[address(msg.sender)].field_0:
                        revert with 'NH{q', 17
                    if not stor4:
                        revert with 'NH{q', 18
                    require ext_code.size(stor11[arg1].field_0)
                    staticcall stor11[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < stor12[address(msg.sender)].field_0 * t * s / stor4:
                        revert with 0, 'no enough balance'
                    require ext_code.size(stor11[arg1].field_0)
                    call stor11[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor12[address(msg.sender)].field_0 * t * s / stor4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Redeem(msg.sender, stor12[address(msg.sender)].field_0, stor12[address(msg.sender)].field_256, block.timestamp);
    else:
        if stor12[address(msg.sender)].field_512 < stor12[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if stor12[address(msg.sender)].field_0 and block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 > -1 / stor12[address(msg.sender)].field_0:
            revert with 'NH{q', 17
        if stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 and sub_1471ee75 > -1 / stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75:
            revert with 'NH{q', 17
        if not stor12[address(msg.sender)].field_512 - stor12[address(msg.sender)].field_256:
            revert with 'NH{q', 18
        if stor12[address(msg.sender)].field_0 < stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[address(msg.sender)].field_512 - stor12[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        stor12[address(msg.sender)].field_0 -= stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[address(msg.sender)].field_512 - stor12[address(msg.sender)].field_256
        if block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 and sub_1471ee75 > -1 / block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75:
            revert with 'NH{q', 17
        if stor12[address(msg.sender)].field_256 > (-1 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75) - 1:
            revert with 'NH{q', 17
        stor12[address(msg.sender)].field_256 += block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75
        if stor10 < stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[address(msg.sender)].field_512 - stor12[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        stor10 -= stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[address(msg.sender)].field_512 - stor12[address(msg.sender)].field_256
        if arg1 >= stor11.length:
            revert with 'NH{q', 50
        if stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[address(msg.sender)].field_512 - stor12[address(msg.sender)].field_256 <= 0:
            emit Redeem(address(msg.sender), stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[address(msg.sender)].field_512 - stor12[address(msg.sender)].field_256, stor12[address(msg.sender)].field_256, block.timestamp);
        else:
            require ext_code.size(stor11[arg1].field_0)
            staticcall stor11[arg1].field_0.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if not ext_call.return_data[31 len 1]:
                if stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[address(msg.sender)].field_512 - stor12[address(msg.sender)].field_256 and 1 > -1 / stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[address(msg.sender)].field_512 - stor12[address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                if not stor4:
                    revert with 'NH{q', 18
                require ext_code.size(stor11[arg1].field_0)
                staticcall stor11[arg1].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[address(msg.sender)].field_512 - stor12[address(msg.sender)].field_256 / stor4:
                    revert with 0, 'no enough balance'
                require ext_code.size(stor11[arg1].field_0)
                call stor11[arg1].field_0.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[address(msg.sender)].field_512 - stor12[address(msg.sender)].field_256 / stor4
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[address(msg.sender)].field_512 - stor12[address(msg.sender)].field_256 and 10^ext_call.return_data[31 len 1] > -1 / stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[address(msg.sender)].field_512 - stor12[address(msg.sender)].field_256:
                        revert with 'NH{q', 17
                    if not stor4:
                        revert with 'NH{q', 18
                    require ext_code.size(stor11[arg1].field_0)
                    staticcall stor11[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[address(msg.sender)].field_512 - stor12[address(msg.sender)].field_256 * 10^uint8(ext_call.return_data[0]) / stor4:
                        revert with 0, 'no enough balance'
                    require ext_code.size(stor11[arg1].field_0)
                    call stor11[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[address(msg.sender)].field_512 - stor12[address(msg.sender)].field_256 * 10^uint8(ext_call.return_data[0]) / stor4
                else:
                    s = 10
                    t = 1
                    idx = ext_call.return_data[31 len 1]
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[address(msg.sender)].field_512 - stor12[address(msg.sender)].field_256 and t * s > -1 / stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[address(msg.sender)].field_512 - stor12[address(msg.sender)].field_256:
                        revert with 'NH{q', 17
                    if not stor4:
                        revert with 'NH{q', 18
                    require ext_code.size(stor11[arg1].field_0)
                    staticcall stor11[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[address(msg.sender)].field_512 - stor12[address(msg.sender)].field_256 * t * s / stor4:
                        revert with 0, 'no enough balance'
                    require ext_code.size(stor11[arg1].field_0)
                    call stor11[arg1].field_0.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[address(msg.sender)].field_512 - stor12[address(msg.sender)].field_256 * t * s / stor4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Redeem(msg.sender, stor12[address(msg.sender)].field_0 * block.timestamp - stor12[address(msg.sender)].field_256 / sub_1471ee75 * sub_1471ee75 / stor12[address(msg.sender)].field_512 - stor12[address(msg.sender)].field_256, stor12[address(msg.sender)].field_256, block.timestamp);
}

function sub_6373a35e(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    if not stor9:
        revert with 0, 'no exist second token'
    if arg1 <= 0:
        revert with 0, 'invalid amount'
    if bool(arg2) != 1:
        require ext_code.size(stor7)
        call stor7.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
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
                    revert with 'NH{q', 17
                require ext_code.size(stor9)
                staticcall stor9.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= arg1:
                    revert with 0, 'no enough second token'
                require ext_code.size(stor9)
                call stor9.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                        revert with 'NH{q', 17
                    require ext_code.size(stor9)
                    staticcall stor9.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
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
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if arg1 and t * s > -1 / arg1:
                        revert with 'NH{q', 17
                    require ext_code.size(stor9)
                    staticcall stor9.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= arg1 * t * s:
                        revert with 0, 'no enough second token'
                    require ext_code.size(stor9)
                    call stor9.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * t * s
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 'NH{q', 17
                require ext_code.size(stor9)
                staticcall stor9.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg1 and 1 > -1 / arg1:
                        revert with 'NH{q', 17
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    require ext_code.size(stor9)
                    staticcall stor9.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= arg1 / 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'no enough second token'
                    require ext_code.size(stor9)
                    call stor9.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 / 10^uint8(ext_call.return_data[0])
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 'NH{q', 17
                        if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                            revert with 'NH{q', 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
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
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = t * s
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        if arg1 and t * s > -1 / arg1:
                            revert with 'NH{q', 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= arg1 * t * s / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'no enough second token'
                        require ext_code.size(stor9)
                        call stor9.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * t * s / 10^uint8(ext_call.return_data[0])
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
                require ext_code.size(stor9)
                staticcall stor9.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg1 and 1 > -1 / arg1:
                        revert with 'NH{q', 17
                    if not t * s:
                        revert with 'NH{q', 18
                    require ext_code.size(stor9)
                    staticcall stor9.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= arg1 / t * s:
                        revert with 0, 'no enough second token'
                    require ext_code.size(stor9)
                    call stor9.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 / t * s
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 'NH{q', 17
                        if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                            revert with 'NH{q', 17
                        if not t * s:
                            revert with 'NH{q', 18
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= arg1 * 10^uint8(ext_call.return_data[0]) / t * s:
                            revert with 0, 'no enough second token'
                        require ext_code.size(stor9)
                        call stor9.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * 10^uint8(ext_call.return_data[0]) / t * s
                    else:
                        u = 10
                        v = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                u = u * u
                                v = v
                                idx = uint255(idx) * 0.5
                                continue 
                            u = u * u
                            v = v * u
                            idx = uint255(idx) * 0.5
                            continue 
                        if v > -1 / u:
                            revert with 'NH{q', 17
                        if arg1 and v * u > -1 / arg1:
                            revert with 'NH{q', 17
                        if not t * s:
                            revert with 'NH{q', 18
                        require ext_code.size(stor9)
                        staticcall stor9.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= arg1 * v * u / t * s:
                            revert with 0, 'no enough second token'
                        require ext_code.size(stor9)
                        call stor9.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * v * u / t * s
    else:
        require ext_code.size(stor9)
        call stor9.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
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
                    revert with 'NH{q', 17
                require ext_code.size(stor7)
                staticcall stor7.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= arg1:
                    revert with 0, 'no enough first token'
                require ext_code.size(stor7)
                call stor7.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
            else:
                if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                    if 10^ext_call.return_data[31 len 1] > -1:
                        revert with 'NH{q', 17
                    if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                        revert with 'NH{q', 17
                    require ext_code.size(stor7)
                    staticcall stor7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
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
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if arg1 and t * s > -1 / arg1:
                        revert with 'NH{q', 17
                    require ext_code.size(stor7)
                    staticcall stor7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= arg1 * t * s:
                        revert with 0, 'no enough first token'
                    require ext_code.size(stor7)
                    call stor7.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * t * s
        else:
            if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                if 10^ext_call.return_data[31 len 1] > -1:
                    revert with 'NH{q', 17
                require ext_code.size(stor7)
                staticcall stor7.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg1 and 1 > -1 / arg1:
                        revert with 'NH{q', 17
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 'NH{q', 18
                    require ext_code.size(stor7)
                    staticcall stor7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= arg1 / 10^uint8(ext_call.return_data[0]):
                        revert with 0, 'no enough first token'
                    require ext_code.size(stor7)
                    call stor7.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 / 10^uint8(ext_call.return_data[0])
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 'NH{q', 17
                        if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                            revert with 'NH{q', 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        require ext_code.size(stor7)
                        staticcall stor7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
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
                                revert with 'NH{q', 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = t * s
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 'NH{q', 17
                        if arg1 and t * s > -1 / arg1:
                            revert with 'NH{q', 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 'NH{q', 18
                        require ext_code.size(stor7)
                        staticcall stor7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= arg1 * t * s / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'no enough first token'
                        require ext_code.size(stor7)
                        call stor7.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * t * s / 10^uint8(ext_call.return_data[0])
            else:
                s = 10
                t = 1
                idx = ext_call.return_data[31 len 1]
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
                require ext_code.size(stor7)
                staticcall stor7.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                if not ext_call.return_data[31 len 1]:
                    if arg1 and 1 > -1 / arg1:
                        revert with 'NH{q', 17
                    if not t * s:
                        revert with 'NH{q', 18
                    require ext_code.size(stor7)
                    staticcall stor7.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= arg1 / t * s:
                        revert with 0, 'no enough first token'
                    require ext_code.size(stor7)
                    call stor7.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 / t * s
                else:
                    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
                        if 10^ext_call.return_data[31 len 1] > -1:
                            revert with 'NH{q', 17
                        if arg1 and 10^ext_call.return_data[31 len 1] > -1 / arg1:
                            revert with 'NH{q', 17
                        if not t * s:
                            revert with 'NH{q', 18
                        require ext_code.size(stor7)
                        staticcall stor7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= arg1 * 10^uint8(ext_call.return_data[0]) / t * s:
                            revert with 0, 'no enough first token'
                        require ext_code.size(stor7)
                        call stor7.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * 10^uint8(ext_call.return_data[0]) / t * s
                    else:
                        u = 10
                        v = 1
                        idx = ext_call.return_data[31 len 1]
                        while idx > 1:
                            if u > -1 / u:
                                revert with 'NH{q', 17
                            if not bool(idx):
                                u = u * u
                                v = v
                                idx = uint255(idx) * 0.5
                                continue 
                            u = u * u
                            v = v * u
                            idx = uint255(idx) * 0.5
                            continue 
                        if v > -1 / u:
                            revert with 'NH{q', 17
                        if arg1 and v * u > -1 / arg1:
                            revert with 'NH{q', 17
                        if not t * s:
                            revert with 'NH{q', 18
                        require ext_code.size(stor7)
                        staticcall stor7.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= arg1 * v * u / t * s:
                            revert with 0, 'no enough first token'
                        require ext_code.size(stor7)
                        call stor7.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * v * u / t * s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
